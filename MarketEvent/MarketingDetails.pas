unit MarketingDetails;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, cxDropDownEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, Data.DB, DBAccess, Uni, MemDS, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxMemo,
   cxGridLevel, cxClasses, cxGrid, Vcl.Buttons, nsearch, Vcl.ActnList, Vcl.DBActns,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxDBLabel,
  cxGroupBox, Vcl.ImgList, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, Vcl.ExtCtrls, ShellAPI;

type
  TfrmMarketingDetails = class(TForm)
    qryPhonebook: TUniQuery;
    dsPhonebook: TUniDataSource;
    lName: TLabel;
    lShortName: TLabel;
    lLongName: TLabel;
    eName: TDBEdit;
    eShortName: TDBEdit;
    eLongName: TDBEdit;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    lStreetAddress: TLabel;
    mStreetAddress: TDBRichEdit;
    lStreetSuburb: TLabel;
    eStreetSuburb: TcxDBButtonEdit;
    lStreetState: TLabel;
    cbStreetState: TcxDBComboBox;
    lStreetPostCode: TLabel;
    eStreetPostCode: TDBEdit;
    cbStreetCountry: TcxDBComboBox;
    lStreetCountry: TLabel;
    ckStreetDefault: TCheckBox;
    lPostalAddress: TLabel;
    mPostalAddress: TDBRichEdit;
    ckPostalDefault: TCheckBox;
    lPostalSuburb: TLabel;
    ePostalSuburb: TcxDBButtonEdit;
    lPostalState: TLabel;
    cbPostalState: TcxDBComboBox;
    lPostalPostCode: TLabel;
    ePostalPostCode: TDBEdit;
    lPostalCountry: TLabel;
    cbPostalCountry: TcxDBComboBox;
    Label16: TLabel;
    mCustAddress: TDBRichEdit;
    Label17: TLabel;
    eCustSuburb: TcxDBButtonEdit;
    Label18: TLabel;
    cmbCustState: TcxDBComboBox;
    Label19: TLabel;
    eCustPostcode: TDBEdit;
    cmbCountry: TcxDBComboBox;
    Label20: TLabel;
    ckCustomDefault: TCheckBox;
    lDXAddress: TLabel;
    eDXAddress: TDBEdit;
    lDXLocation: TLabel;
    eDXLocation: TDBEdit;
    ckDXDefault: TCheckBox;
    GroupBox2: TGroupBox;
    lInternetEMail: TLabel;
    eInternetEmail: TcxDBButtonEdit;
    Label28: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label29: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    ckEmail2Default: TCheckBox;
    ckEmail1Default: TCheckBox;
    ckEmailDefault: TCheckBox;
    Label30: TLabel;
    GroupBox3: TGroupBox;
    lPhoneWork: TLabel;
    ePhoneWork: TDBEdit;
    lPhoneHome: TLabel;
    ePhoneHome: TDBEdit;
    lPhoneMobile: TLabel;
    ePhoneMobile: TDBEdit;
    lPhoneFax: TLabel;
    ePhoneFax: TDBEdit;
    Label1: TLabel;
    qryPhonebookNotes: TUniQuery;
    dsPhonebookNotes: TUniDataSource;
    BitBtn1: TBitBtn;
    lGender: TLabel;
    cbGender: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    qryRelationship_Type: TUniQuery;
    dsRelationship_Type: TUniDataSource;
    Label2: TLabel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    barbtnClose: TdxBarButton;
    barbtnSave: TdxBarButton;
    ActionManager1: TActionManager;
    DataSetPost1: TDataSetPost;
    DataSetEdit1: TDataSetEdit;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Label3: TLabel;
    cmbRelationshipStatus: TDBLookupComboBox;
    qryRelationshipStatus: TUniQuery;
    dsRelationshipStatus: TUniDataSource;
    Label4: TLabel;
    cmbRelationshipAction: TDBLookupComboBox;
    qryRelationshipAction: TUniQuery;
    dsRelationshipAction: TUniDataSource;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    grpMarketing: TcxGroupBox;
    lblReferralType: TLabel;
    lblReferredBy: TLabel;
    lblMaintainer: TLabel;
    edReferredBy: TcxDBLabel;
    cmbReferralOther: TcxDBLookupComboBox;
    cmbMaintainer: TcxDBLookupComboBox;
    cmbReferral: TcxDBLookupComboBox;
    grpIndustry: TcxGroupBox;
    qryReferredBy: TUniQuery;
    dsReferredBy: TUniDataSource;
    dsReferralOther: TUniDataSource;
    qryReferralOther: TUniQuery;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    qryIndustry: TUniQuery;
    dsIndustry: TUniDataSource;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    cmbSystem1: TDBComboBox;
    qrySystem1: TUniQuery;
    cmbSystem2: TDBComboBox;
    qrySystem2: TUniQuery;
    cmbIndustry: TcxDBLookupComboBox;
    dxBarManager1Bar2: TdxBar;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    ImageList: TImageList;
    PageControl2: TPageControl;
    tabDiary: TTabSheet;
    Panel1: TPanel;
    dbgContactNotes: TcxGrid;
    tvContactNotes: TcxGridDBTableView;
    tvContactNotesCREATION_DATE: TcxGridDBColumn;
    tvContactNotesSTART_DT: TcxGridDBColumn;
    tvContactNotesENTEREDBY: TcxGridDBColumn;
    tvContactNotesDESCR: TcxGridDBColumn;
    dbgContactNotesLevel1: TcxGridLevel;
    dxBarDockControl1: TdxBarDockControl;
    procedure BitBtn1Click(Sender: TObject);
    procedure qryPhonebookNotesNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure barbtnCloseClick(Sender: TObject);
    procedure qryPhonebookAfterScroll(DataSet: TDataSet);
    procedure ckDefaultClick(Sender: TObject);
    procedure barbtnSaveClick(Sender: TObject);
    procedure ckEmailDefaultClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cmbReferralPropertiesChange(Sender: TObject);
    procedure cmbReferralPropertiesCloseUp(Sender: TObject);
    procedure cmbReferralOtherPropertiesEditValueChanged(Sender: TObject);
    procedure cmbReferralOtherPropertiesCloseUp(Sender: TObject);
    procedure cmbMaintainerPropertiesChange(Sender: TObject);
    procedure cmbMaintainerPropertiesCloseUp(Sender: TObject);
    procedure cmbSystem1DropDown(Sender: TObject);
    procedure cmbSystem2DropDown(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure eInternetEmailPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FPhoneBookSearch: TfrmPhoneBookSearch;
    FNName: integer;
    FSearch: string;
    FScrolling: Boolean;
    function Find: boolean;
  public
    { Public declarations }
    property NName: Integer                   read FNName               write FNName;
    property Search: String                   read FSearch              write FSearch;
  end;

var
  frmMarketingDetails: TfrmMarketingDetails;

implementation

{$R *.dfm}

uses axiomdata, miscfunc, marketrelationshiptypes, MarketRelationshipStatus,
     MarketRelationshipAction, CSearch, EmployeeFindDialog, citfunc,
     EditContactNoteDialog;


procedure TfrmMarketingDetails.barbtnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMarketingDetails.barbtnSaveClick(Sender: TObject);
begin
   if (ckEmailDefault.Checked = True) then
      qryPhonebook.FieldByName('WHICHEMAILADDRESS').AsString := '1'
   else if (ckEmail1Default.Checked = true) then
      qryPhonebook.FieldByName('WHICHEMAILADDRESS').AsString := '2'
   else if (ckEmail2Default.Checked = True) then
      qryPhonebook.FieldByName('WHICHEMAILADDRESS').AsString := '3';
end;

procedure TfrmMarketingDetails.BitBtn1Click(Sender: TObject);
var
   sReferralType: string;
begin
   if Find then
   begin
      With qryPhonebook do
      begin
         if Active then Close;
         ParamByName('NNAME').AsInteger := NName;
         Open;
      end;
      with qryPhonebookNotes do
      begin
         if Active then Close;
         ParamByName('NNAME').AsInteger := NName;
         Open;
      end;

      if not varIsNull(qryPhoneBook.FieldByName('ReferralCode').AsString) AND
                      (qryPhoneBook.FieldByName('ReferralCode').AsString <> '') then
      begin
         cmbReferral.EditValue := qryPhoneBook.FieldByName('ReferralCode').AsString;
         if qryPhoneBook.FieldByName('ReferralCode').AsString = '0' then
         begin
            edReferredBy.Visible := False;
            lblReferredBy.Visible := True;
            cmbReferralOther.Visible := True;
            qryReferralOther.Open;
         end
         else
         begin
            lblReferredBy.Visible := True;
            edReferredBy.Visible := True;
         end;

         sReferralType := qryPhoneBook.FieldByName('ReferralType').AsString;
         if UpperCase(sReferralType) = 'CONTACT' then
            edReferredBy.Caption := TableString('PHONEBOOK','NNAME',qryPhoneBook.FieldByName('ReferredBy').AsString,'SEARCH')
         else if UpperCase(sReferralType) = 'CLIENT' then
            edReferredBy.Caption := TableString('CLIENT','CODE',qryPhoneBook.FieldByName('ReferredBy').AsString,'SEARCH')
         else if UpperCase(sReferralType) = 'EMPLOYEE' then
            edReferredBy.Caption := qryPhoneBook.FieldByName('ReferredBy').AsString + '(' + qryPhoneBook.FieldByName('ReferredBy').AsString + ')'
         else if UpperCase(sReferralType) = 'OTHER' then
            edReferredBy.Caption := qryPhoneBook.FieldByName('ReferredBy').AsString;
       end;

       if not varIsNull(qryPhoneBook.FieldByName('ReferralMaintainer').AsString) then
         cmbMaintainer.EditValue := qryPhoneBook.FieldByName('ReferralMaintainer').AsString;
   end;
end;

function TfrmMarketingDetails.Find: Boolean;
begin
  if(not Assigned(FPhonebookSearch)) then
    FPhoneBookSearch := TfrmPhoneBookSearch.Create(Application.MainForm);
  Result := FPhoneBookSearch.ShowModal() = mrOk;
  if(Result) then
  begin
    NName := FPhoneBookSearch.NName;
    Search := IntToStr(FPhoneBookSearch.NName);
  end;
end;


procedure TfrmMarketingDetails.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryRelationship_Type.Close;
   qryRelationshipStatus.Close;
   qryRelationshipAction.Close;
   qryEmployee.Close;
   qryReferredBy.Close;
   qryReferralOther.Close;
   qryIndustry.Close;

   RemoveFromDesktop(Self);
end;

procedure TfrmMarketingDetails.FormShow(Sender: TObject);
begin
   qryRelationship_Type.Open;
   qryRelationshipStatus.Open;
   qryRelationshipAction.Open;
   qryEmployee.Open;
   qryReferredBy.Open;
   qryReferralOther.Open;
   qryIndustry.Open;
end;

procedure TfrmMarketingDetails.qryPhonebookAfterScroll(DataSet: TDataSet);
begin
  FScrolling := True;
  try
    ckStreetDefault.Checked := False;
    ckPostalDefault.Checked := False;
    ckDXDefault.Checked := False;
    ckCustomDefault.Checked := False;
    if(not qryPhonebook.FieldByName('WHICHADDRESS').IsNull) then
    begin
      if qryPhonebook.FieldByName('WHICHADDRESS').AsString  = 'S' then
         ckStreetDefault.Checked := True
      else
      if qryPhonebook.FieldByName('WHICHADDRESS').AsString  = 'P' then
         ckPostalDefault.Checked := True
      else
      if qryPhonebook.FieldByName('WHICHADDRESS').AsString  = 'D' then
         ckDXDefault.Checked := True
      else
      if qryPhonebook.FieldByName('WHICHADDRESS').AsString  = 'C' then
         ckCustomDefault.Checked := True
      else
        ckStreetDefault.Checked := True;
    end
    else
      ckStreetDefault.Checked := True;
    // check email default setting
    ckEmailDefault.Checked := False;
    ckEmail1Default.Checked := False;
    ckEmail2Default.Checked := False;
    if(not qryPhonebook.FieldByName('WHICHEMAILADDRESS').IsNull) then
    begin
      if qryPhonebook.FieldByName('WHICHEMAILADDRESS').AsString  = '1' then
         ckEmailDefault.Checked := True
      else
      if qryPhonebook.FieldByName('WHICHEMAILADDRESS').AsString  = '2' then
         ckEmail1Default.Checked := True
      else
      if qryPhonebook.FieldByName('WHICHEMAILADDRESS').AsString  = '3' then
         ckEmail2Default.Checked := True
      else
        ckEmailDefault.Checked := True;
    end
    else
      ckEmailDefault.Checked := True;
  finally
    FScrolling := False;
  end;
end;

procedure TfrmMarketingDetails.qryPhonebookNotesNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('NName').AsInteger := NName;
end;

procedure TfrmMarketingDetails.ckDefaultClick(Sender: TObject);
begin
   if(FScrolling) then
      Exit;
   if qryPhonebook.State in [dsBrowse] then
      qryPhonebook.Edit;
   if(TCheckBox(Sender).Checked) then
   begin
      if((Sender = ckStreetDefault) and (ckStreetDefault.Checked)) then
         qryPhonebook.FieldByName('WHICHADDRESS').Value := 'S';
      if((Sender = ckPostalDefault) and (ckPostalDefault.Checked)) then
         qryPhonebook.FieldByName('WHICHADDRESS').Value := 'P';
      if((Sender = ckDXDefault) and (ckDXDefault.Checked)) then
         qryPhonebook.FieldByName('WHICHADDRESS').Value := 'D';
      if((Sender = ckCustomDefault) and (ckCustomDefault.Checked)) then
         qryPhonebook.FieldByName('WHICHADDRESS').Value := 'C';
   end else
   begin
      if(Sender = ckStreetDefault) then
         qryPhonebook.FieldByName('WHICHADDRESS').Value := 'P'
      else if(Sender = ckPostalDefault) then
         qryPhonebook.FieldByName('WHICHADDRESS').Value := 'D'
      else if (Sender = ckDXDefault) then
         qryPhonebook.FieldByName('WHICHADDRESS').Value := 'S'
      else
         qryPhonebook.FieldByName('WHICHADDRESS').Value := 'C'
   end;
end;

procedure TfrmMarketingDetails.ckEmailDefaultClick(Sender: TObject);
begin
   if(FScrolling) then
      Exit;
   if qryPhonebook.State in [dsBrowse] then
      qryPhonebook.Edit;
   if(TCheckBox(Sender).Checked) then
   begin
      if((Sender = ckEmailDefault) and (ckEmailDefault.Checked)) then
         qryPhonebook.FieldByName('WHICHEMAILADDRESS').Value := 1;
      if((Sender = ckEmail1Default) and (ckEmail1Default.Checked)) then
         qryPhonebook.FieldByName('WHICHEMAILADDRESS').Value := 2;
      if((Sender = ckEmail2Default) and (ckEmail2Default.Checked)) then
         qryPhonebook.FieldByName('WHICHEMAILADDRESS').Value := 3;
   end else
   begin
      if(Sender = ckEmailDefault) then
         qryPhonebook.FieldByName('WHICHEMAILADDRESS').Value := 1
      else if(Sender = ckEmail1Default) then
         qryPhonebook.FieldByName('WHICHEMAILADDRESS').Value := 2
      else if (Sender = ckEmail2Default) then
         qryPhonebook.FieldByName('WHICHEMAILADDRESS').Value := 3;
   end;
end;

procedure TfrmMarketingDetails.cmbMaintainerPropertiesChange(Sender: TObject);
begin
   try
      // Check state before editing
      if not (qryPhoneBook.State = dsEdit) then
        qryPhoneBook.Edit;

      if not varIsNull(cmbMaintainer.EditValue) then
      begin
        if (String(cmbMaintainer.EditValue) <> '') OR (cmbMaintainer.Text <> '') then
          qryPhoneBook.FieldByName('ReferralMaintainer').AsString := cmbMaintainer.EditValue
        else
          qryPhoneBook.FieldByName('ReferralMaintainer').AsVariant := Null;
      end
      else
        qryPhoneBook.FieldByName('ReferralMaintainer').AsVariant := Null;
   except
   // silent
   end;
end;

procedure TfrmMarketingDetails.cmbMaintainerPropertiesCloseUp(Sender: TObject);
begin
  // Check state before editing
  if not (qryPhoneBook.State = dsEdit) then
    qryPhoneBook.Edit;

   try
         if not varIsNull(cmbMaintainer.EditValue) then
         begin
            if (String(cmbMaintainer.EditValue) <> '') OR (cmbMaintainer.Text <> '') then
               qryPhoneBook.FieldByName('ReferralMaintainer').AsString := cmbMaintainer.EditValue
            else
               qryPhoneBook.FieldByName('ReferralMaintainer').AsVariant := Null;
         end
         else
            qryPhoneBook.FieldByName('ReferralMaintainer').AsVariant := Null;
   except
   // silent
   end;
end;

procedure TfrmMarketingDetails.cmbReferralOtherPropertiesCloseUp(
  Sender: TObject);
begin
  // Check state before editing
 // if not (qPhoneBook.State = dsEdit) then
 //   qPhoneBook.Edit;

  // Other type referral
   try
      qryPhonebook.FieldByName('referredBy').AsString := cmbReferralOther.Text; //edReferredByOther.Text;
      qryPhonebook.FieldByName('referralCode').AsInteger := 0;
   except
   // silent trap
   end;
end;

procedure TfrmMarketingDetails.cmbReferralOtherPropertiesEditValueChanged(
  Sender: TObject);
begin
   with dmAxiom.qryTmp do
   begin
      try
         if (cmbreferral.Text = 'Other') and
            (cmbReferralOther.Text <> '') then
         begin
            SQL.Clear;
            SQL.Text := 'select ''x'' from REFERRAL_SOURCE where upper(referral) = ' + QuotedStr(Uppercase(string(cmbReferralOther.EditValue))) ;
            Open;
            if (EOF ) then
            begin
               Close;
               SQL.Clear;
               SQL.Text := 'Insert into REFERRAL_SOURCE values (' + QuotedStr(string(cmbReferralOther.EditValue)) + ')';
               ExecSQL;
               dmAxiom.uniInsight.Commit;
            end;
         end;
      except
         dmAxiom.uniInsight.Rollback;
      end;
   end;
end;

procedure TfrmMarketingDetails.cmbReferralPropertiesChange(Sender: TObject);
begin
  if not (qryPhonebook.State = dsEdit) then
    qryPhonebook.Edit;

  if varIsNull(cmbReferral.EditValue) then
  begin
    qryPhonebook.FieldByName('referralCode').AsVariant := Null;
    qryPhonebook.FieldByName('referredBy').AsVariant := Null;
    qryPhonebook.FieldByName('referredBy_nname').Clear;
    qryPhonebook.FieldByName('referredBy_nclient').Clear;
    qryPhonebook.FieldByName('referredBy_emp').Clear;
  end
  else if (String(cmbReferral.EditValue) = '') OR (cmbReferral.Text = '') then
  begin
    qryPhonebook.FieldByName('referralCode').AsVariant := Null;
    qryPhonebook.FieldByName('referredBy').AsVariant := Null;
    qryPhonebook.FieldByName('referredBy_nname').Clear;
    qryPhonebook.FieldByName('referredBy_nclient').Clear;
    qryPhonebook.FieldByName('referredBy_emp').Clear;
  end;
end;

procedure TfrmMarketingDetails.cmbReferralPropertiesCloseUp(Sender: TObject);
var
  referType : string;
  selectCode, selectID: string;
  ReferTypeID: integer;
begin
   try
      referType := '';
      if not varIsNull(cmbReferral.EditValue) then
      begin
        if String(cmbReferral.EditValue) <> '' then
        begin
          // A valid selection was made, so show referral label
          lblReferredBy.Visible := True;
          edReferredBy.Caption := '';
          edReferredBy.Visible := True;

          ReferTypeID := Integer(cmbReferral.EditValue);
          cmbReferralOther.Text := qryPhoneBook.FieldByName('ReferredBy').AsString; //'';
          cmbReferralOther.Visible := False;

          // If referral is not Other
          if cmbReferral.EditValue <> 0 then
          begin
            qryReferredBy.First;
            while not qryReferredBy.Eof do
            begin
              // Compare code in drop down menu and of that in query result
              if qryReferredBy.FieldByName('Code').AsInteger = Integer(cmbReferral.EditValue) then
              begin
                // Once code is found, determine the referral table to look up
                referType := qryReferredBy.FieldByName('ReferralType').AsString;
                break;
              end;
              qryReferredBy.Next;
            end; // End of while not qryReferredBy.Eof

            if (referType <> '') then
            begin
              // Check query state before editing
    //          if not (qPhoneBook.State = dsEdit) then
    //            qPhoneBook.Edit;

              // If client, open the client search screen
              if referType = 'CLIENT' then
              begin
                if not FormExists(frmClientSearch) then
                  frmClientSearch := TfrmClientSearch.Create(self);

                if frmClientSearch.ShowModal = mrOk then
                begin
                  selectCode := frmClientSearch.qryClientList.FieldByName('CODE').AsString;
                  selectID := frmClientSearch.qryClientList.FieldByName('nclient').AsString;
                  edReferredBy.Caption := frmClientSearch.qryClientList.FieldByName('SEARCH').AsString + ' (' + selectCode + ')';
                  qryPhoneBook.FieldByName('referredBy_nclient').AsString := selectID;
    //              qPhoneBook.FieldByName('referralCode').AsInteger := ReferTypeID;   // Integer(cmbReferral.EditValue);
                  qryPhoneBook.FieldByName('referredBy_emp').Clear;
                  qryPhoneBook.FieldByName('referredBy_nname').Clear;
                  qryPhoneBook.FieldByName('referredBy').AsString := selectCode;
                  qryPhoneBook.FieldByName('ReferralType').AsString := referType;
                end
                else
                begin
                  qryPhoneBook.FieldByName('referredBy').Clear;
                  qryPhoneBook.FieldByName('referralCode').Clear;
                  qryPhoneBook.FieldByName('referredBy_nclient').Clear;
                end;
              end
              // If contact, open the phone book search screen
              else if referType = 'CONTACT' then
              begin
    //            if not FormExists(frmPhoneBookSearch) then
                frmPhoneBookSearch := TfrmPhoneBookSearch.Create(self);

                if frmPhoneBookSearch.ShowModal = mrOk then
                begin
                  selectCode := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsString;
                  edReferredBy.Caption := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString + ' (' + frmPhoneBookSearch.qryPhoneBook.FieldByName('ADDRESS').AsString + ')';
                  { Instead of displaying selectCode, display address as it is more meaningful to users }
                  // edReferredBy.Caption := frmPhoneBookSearch.qryPhoneBook.FieldByName('NAME').AsString + ' (' + selectCode + ')';
                  qryPhoneBook.FieldByName('referredBy_nname').AsString := selectCode;
    //              qPhoneBook.FieldByName('referralCode').AsInteger := ReferTypeID;  // Integer(cmbReferral.EditValue);
                  qryPhoneBook.FieldByName('referredBy_nclient').Clear;
                  qryPhoneBook.FieldByName('referredBy_emp').Clear;
                  qryPhoneBook.FieldByName('referredBy').AsString := selectCode;
                  qryPhoneBook.FieldByName('ReferralType').AsString := referType;
                end
                else
                begin
                  qryPhoneBook.FieldByName('referredBy').Clear;
                  qryPhoneBook.FieldByName('referralCode').Clear;
                  qryPhoneBook.FieldByName('referredBy_nname').Clear;
                end;
              end
              // If employee ...
              else if referType = 'EMPLOYEE' then
              begin
                if not FormExists(fmEmployeeFindDialog) then
                  fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(self);

                if fmEmployeeFindDialog.ShowModal = mrOK then
                begin
                  selectCode := fmEmployeeFindDialog.lbEmployees.EditValue;
                  edReferredBy.Caption := fmEmployeeFindDialog.lbEmployees.Text + ' (' + selectCode + ')';
                  qryPhoneBook.FieldByName('referredBy_emp').AsString := selectCode;
    //              qPhoneBook.FieldByName('referralCode').AsInteger := ReferTypeID;  // Integer(cmbReferral.EditValue);
                  qryPhoneBook.FieldByName('referredBy_nclient').Clear;
                  qryPhoneBook.FieldByName('referredBy_nname').Clear;
                  qryPhoneBook.FieldByName('referredBy').AsString := selectCode;
                  qryPhoneBook.FieldByName('ReferralType').AsString := referType;
    //              qPhoneBook.FieldByName('REFERREDBY').AsString := cmbReferral.EditValue;
                end
                else
                begin
                  qryPhoneBook.FieldByName('referredBy').Clear;
                  qryPhoneBook.FieldByName('referralCode').Clear;
                  qryPhoneBook.FieldByName('referredBy_emp').clear;
                end;
              end; // If/else referType = CLIENT
            end; // End of if (referType <> '')
          end // End of if cmbReferral.EditValue <> 0 (other)
          else
          begin
            edReferredBy.Visible := False;
            cmbReferralOther.Visible := True;
            qryReferralOther.Open;
            cmbReferralOther.EditValue := '';
            cmbReferralOther.Text := '';
            qryPhoneBook.FieldByName('referredBy').Clear;
            qryPhoneBook.FieldByName('ReferralType').AsString := referType;
          end; // End of else (cmbReferral.EditValue <> 0 (other))
        end; // End of if String(cmbReferral.EditValue) <> ''
      end; // End of if not varIsNull(cmbReferral.EditValue)
    except
    // silent trap
    end;
end;

procedure TfrmMarketingDetails.cmbSystem1DropDown(Sender: TObject);
begin
   cmbSystem1.Items.Clear;
   qrySystem1.Open;
   while qrySystem1.Eof = False do
   begin
      cmbSystem1.Items.Add(qrySystem1.FieldByName('system1').AsString);
      qrySystem1.Next;
   end;
   qrySystem1.Close;
end;

procedure TfrmMarketingDetails.cmbSystem2DropDown(Sender: TObject);
begin
   cmbSystem2.Items.Clear;
   qrySystem2.Open;
   while qrySystem2.Eof = False do
   begin
      cmbSystem2.Items.Add(qrySystem2.FieldByName('system2').AsString);
      qrySystem2.Next;
   end;
   qrySystem2.Close;
end;

procedure TfrmMarketingDetails.dxBarButton2Click(Sender: TObject);
var
   fmMarketRelationshipTypes: TfrmMarketRelationshipTypes;
begin
   try
      fmMarketRelationshipTypes := TfrmMarketRelationshipTypes.Create(Self);
      fmMarketRelationshipTypes.ShowModal;
   finally
      fmMarketRelationshipTypes.Free;
      qryRelationship_Type.Refresh;
   end;
end;

procedure TfrmMarketingDetails.dxBarButton3Click(Sender: TObject);
var
   fmMarketRelationshipStatus: TfrmMarketRelationshipStatus;
begin
   try
      fmMarketRelationshipStatus := TfrmMarketRelationshipStatus.Create(Self);
      fmMarketRelationshipStatus.ShowModal;
   finally
      fmMarketRelationshipStatus.Free;
      qryRelationshipStatus.Refresh;
   end;
end;

procedure TfrmMarketingDetails.dxBarButton4Click(Sender: TObject);
var
   fmMarketRelationshipAction: TfrmMarketRelationshipAction;
begin
   try
      fmMarketRelationshipAction := TfrmMarketRelationshipAction.Create(Self);
      fmMarketRelationshipAction.ShowModal;
   finally
      fmMarketRelationshipAction.Free;
      qryRelationshipAction.Refresh;
   end;
end;

procedure TfrmMarketingDetails.dxBarButton5Click(Sender: TObject);
begin
  fmEditContactNoteDialog := TfmEditContactNoteDialog.Create(self);
  try
    fmEditContactNoteDialog.ContactDateTime := Now();
    fmEditContactNoteDialog.ContactNote     := '';
    fmEditContactNoteDialog.NName           := NName;
    fmEditContactNoteDialog.NewNote         := True;
    if(fmEditContactNoteDialog.ShowModal() = mrOk) then
    begin
      qryPhonebookNotes.Refresh();
    end;
  finally
    FreeAndNil(fmEditContactNoteDialog);
  end;
end;

procedure TfrmMarketingDetails.dxBarButton6Click(Sender: TObject);
begin
  fmEditContactNoteDialog := TfmEditContactNoteDialog.Create(self);
  try
    fmEditContactNoteDialog.ContactDateTime := qryPhonebookNotes.FieldByName('START_DT').AsDateTime;
    fmEditContactNoteDialog.ContactNote     := qryPhonebookNotes.FieldByName('DESCR').AsString;
    fmEditContactNoteDialog.NName           := NName;
    fmEditContactNoteDialog.NDiary          := qryPhonebookNotes.FieldByName('NDIARY').AsInteger;
    if(fmEditContactNoteDialog.ShowModal() = mrOk) then
    begin
      qryPhonebookNotes.Refresh();
    end;
  finally
    FreeAndNil(fmEditContactNoteDialog);
  end;
end;

procedure TfrmMarketingDetails.dxBarButton7Click(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to delete the selected contact note?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      qryPhonebookNotes.Delete();
end;

procedure TfrmMarketingDetails.eInternetEmailPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   ShellExecute(Handle, nil, PChar('mailto:' + TcxDBButtonEdit(Sender).Text), nil, nil, SW_SHOWNORMAL);
end;

end.
