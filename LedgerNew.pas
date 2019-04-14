unit LedgerNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  OracleUniProvider, Uni, DBAccess, MemDS, glComponentUtil, glComponentSelection,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxClasses, dxLayoutControl,
  dxGDIPlusClasses, dxDPIAwareUtils, cxMemo;

const
//  TChartTypeCodes: array[0..8] of string = ('GEN', 'DISB', 'DEBT', 'GSTINP', 'GSTOUT', 'CRED', 'BANK', 'FEE', 'SUND');
  TChartTypeCodes: array[0..8] of string = ('GEN', 'DISB', 'DEBT', 'GSTINP', 'GSTOUT', 'CRED', 'BANK', 'FEE', 'GSTADJ');
// AES 17/9/2009 removed Sundry Account from list
  TChartTypeDescr: array[0..8] of string = ('General', 'Disbursement Control', 'Debtor Control', 'GST Input Control', 'GST Output Control', 'Creditor Control', 'Bank Control', 'Fee Account', 'GST Adjustment Control');
//  TChartTypeDescr: array[0..8] of string = ('General', 'Disbursement Control', 'Debtor Control', 'GST Input Control', 'GST Output Control', 'Creditor Control', 'Bank Control', 'Fee Account', 'Sundry Account');

  TChartOIFCodes: array[0..3] of string = ('', 'O', 'I', 'F');
  TChartOIFDescr: array[0..3] of string = ('', 'Operating', 'Investing', 'Financing');

type
  TfrmLedgerNew = class(TForm)
    lblTypeDesc: TLabel;
    qryLedger: TUniQuery;
    lblEntityName: TLabel;
    lblAddTo: TLabel;
    qryAddTos: TUniQuery;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    neColumn: TNumberEdit;
    cbBASGroup: TComboBox;
    Label9: TLabel;
    neGSTCategory: TNumberEdit;
    Label10: TLabel;
    neCreditablePurchase: TNumberEdit;
    cbDefaultTaxCode: TComboBox;
    qryChartTypes: TUniQuery;
    prcChangeLedger: TUniStoredProc;
    qryChartTypeDescriptions: TUniQuery;
    chkActive: TCheckBox;
    chkJournalSplit: TCheckBox;
    chkAllowDirectPosting: TCheckBox;
    cbDefaultOIFCode: TComboBox;
    cbChartType: TComboBox;
    lblGlHeader: TLabel;
    lblLedgerKey: TLabel;
    cbAllEntity: TCheckBox;
    qryEntity: TUniQuery;
    qryCheckGlCode: TUniQuery;
    cbMulti: TCheckBox;
    cbMaster: TCheckBox;
    cbPrivate: TCheckBox;
    cbType: TcxComboBox;
    cmbGLReportGroup: TcxLookupComboBox;
    qryGLReportType: TUniQuery;
    dsGLReportType: TUniDataSource;
    cbAddTo: TcxLookupComboBox;
    dsAddTos: TUniDataSource;
    neReportLevel: TNumberEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    tbFMRCCode: TcxTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    tbRptDesc: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    tbAccountCode: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    mmoDescr: TcxMemo;
    dxLayoutItem6: TdxLayoutItem;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure mmoDescrKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cbAddToClick(Sender: TObject);
    procedure tbRptDescEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoDescrExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbRptDescExit(Sender: TObject);
    procedure tbRptDescKeyPress(Sender: TObject; var Key: Char);
    procedure cbAddToDropDown(Sender: TObject);
    procedure tbAccountCodeExit(Sender: TObject);
    procedure cbMultiClick(Sender: TObject);

  private
    { Private declarations }
    fmComponentSelection : TfrmGlComponentSelection;
    glComponentParseResult: TglComponentInstance;

  public
    { Public declarations }
    procedure DisplayLedger(sLedger: string);
  end;

var
  frmLedgerNew: TfrmLedgerNew;

implementation

uses
  MiscFunc, AxiomData;

{$R *.DFM}

var
  bEditing: boolean;

procedure ArrToStrL(AArr: array of string; ASL: TStrings);
var
  i: Integer;
begin
  ASL.Clear();
  for i := Low(AArr) to High(AArr) do
    ASL.Add(AArr[i]);
end;

function ArrFindItem(AArr: array of string; AFind: string): integer;
var
  i: Integer;
begin
  Result := -1;
  for i := Low(AArr) to High(AArr) do
    if (AFind = AArr[i]) then
      Result := i;
end;


procedure TfrmLedgerNew.FormShow(Sender: TObject);
var inumberComponents: integer;
  glComponentSetup: TglComponentSetup;
begin
   glComponentSetup := dmAxiom.getGlComponents;
   inumberComponents := glComponentSetup.numberComponents;

   if (inumberComponents > 1) and not bEditing then
      cbMulti.Visible := true;

   lblEntityName.Caption := dmAxiom.EntityName;
   if (cbChartType.ItemIndex < 0) then
      cbChartType.ItemIndex := ArrFindItem(TChartTypeCodes, 'GEN');
end;


procedure TfrmLedgerNew.DisplayLedger(sLedger: string);
begin
  //glComponentSetup := dmAxiom.getGlComponents;
  //iGlComponentLength := glComponentSetup.getComponentLength('ACCOUNT');

   qryLedger.Close;
   qryLedger.SQL.Text := 'SELECT C.*, C.ROWID FROM CHART C WHERE C.BANK = ''' + dmAxiom.Entity + ''' AND C.CODE = ''' + sLedger + '''';
   qryLedger.Open;

   if not qryLedger.IsEmpty then
   begin
      Self.Caption := 'Account Ledger Code Edit';
      bEditing := True;

      cbAllEntity.Enabled := false;
      cbAllEntity.checked := false;

      lblLedgerKey.caption := qryLedger.FieldByName('CODE').AsString;
{
  Code Modified 16.12.2002 GG

  Well, this is just silly.  If new Chart Types are added, this will fall over.
  Let's do it properly...

    if qryLedger.FieldByName('TYPE').AsString = 'I' then
      cbType.ItemIndex := 2
    else if qryLedger.FieldByName('TYPE').AsString = 'E' then
      cbType.ItemIndex := 1
    else if qryLedger.FieldByName('TYPE').AsString = 'A' then
      cbType.ItemIndex := 0
    else if qryLedger.FieldByName('TYPE').AsString = 'L' then
      cbType.ItemIndex := 3
    else if qryLedger.FieldByName('TYPE').AsString = 'O' then
      cbType.ItemIndex := 5
    else
      cbType.ItemIndex := 4;
}
      try
         qryChartTypeDescriptions.ParamByName('CODE').AsString := qryLedger.FieldByName('TYPE').AsString;
         qryChartTypeDescriptions.Open;
         cbType.ItemIndex := cbType.Properties.Items.IndexOf(qryChartTypeDescriptions.FieldByName('DESCR').AsString)
      finally
         qryChartTypeDescriptions.Close
      end;

      mmoDescr.Text := qryLedger.FieldByName('DESCR').AsString;
      tbRptDesc.Text := qryLedger.FieldByName('REPORT_DESC').AsString;
      neColumn.AsInteger := qryLedger.FieldByName('COL').AsInteger;

      tbAccountCode.Text := qryLedger.fieldByName('COMPONENT_CODE_DISPLAY').AsString;

      //GST fields
      neGSTCategory.AsInteger := qryLedger.FieldbyName('GSTCATEGORY').AsInteger;
      neCreditablePurchase.AsInteger := qryLedger.FieldbyName('CRDTPUR').AsInteger;

      if qryLedger.FieldByName('ADDTO').AsString <> '' then
      begin
         cbAddToDropDown(Self);
         cbAddTo.EditValue := qryLedger.FieldByName('ADDTO').AsString;  //  ItemIndex := cbAddTo.Items.IndexOf(qryLedger.FieldByName('ADDTO').AsString);
         qryAddTos.locate('CODE', qryLedger.FieldByName('ADDTO').AsString, []);
         lblAddTo.Caption := qryAddTos.FieldByName('REPORT_DESC').AsString
      end;
      cbBASGroup.ItemIndex := cbBASGroup.Items.IndexOf(TableString('BASGROUP', 'CODE', qryLedger.FieldByName('BASGROUP').AsString, 'DESCR'));
{
Code Modified 16.12.2002 GG

Added these to properly show BAS Group, and to show Default Tax Type
}
      cbBASGroup.Text := qryLedger.FieldByName('BASGROUP').AsString;
      cbDefaultTaxCode.ItemIndex := cbDefaultTaxCode.Items.IndexOf(TableString('TAXTYPE', 'CODE', qryLedger.FieldByName('DEFAULT_TAXCODE').AsString, 'CODE'));
      cbDefaultTaxCode.Text := qryLedger.FieldByName('DEFAULT_TAXCODE').AsString;

      if (not qryLedger.FieldByName('OIFDEFAULTCODE').IsNull) then
         cbDefaultOIFCode.ItemIndex := ArrFindItem(TChartOIFCodes, qryLedger.FieldByName('OIFDEFAULTCODE').AsString)
      else
         cbDefaultOIFCode.ItemIndex := 0;

      cbChartType.ItemIndex := ArrFindItem(TChartTypeCodes, qryLedger.FieldByName('CHARTTYPE').AsString);

      chkActive.Checked := (qryLedger.FieldByName('ACTIVE').AsString = 'Y');
      chkJournalSplit.Checked := (qryLedger.FieldByName('IS_JOURNAL_SPLIT').AsString = 'Y');
      chkAllowDirectPosting.Checked := (qryLedger.FieldByName('ALLOW_DIRECT_POSTING').AsString = 'Y');

   end else
   begin
      bEditing := False;
      cbDefaultOIFCode.ItemIndex := 0;
      cbChartType.ItemIndex := ArrFindItem(TChartTypeCodes, 'GEN');
   end;

   cbPrivate.Checked := qryLedger.FieldByName('PRIVATE').AsString = 'Y';
   tbFMRCCode.Text := qryLedger.FieldByName('FMRCCODE').AsString;
   cmbGLReportGroup.EditValue := qryLedger.FieldByName('GLREPCODE').AsString;
   neReportLevel.AsInteger := qryLedger.FieldByName('REPORT_LEVEL').AsInteger;
end;


procedure TfrmLedgerNew.btnSaveClick(Sender: TObject);
var iCount, iLoop: Integer;
  aglParseResult: array of TglComponentInstance;
  selectResult: TStringList;
begin

  // has the code been changed ?

  // rb,  make sure the code has not changed.
  if bEditing and (qryLedger.FieldByName('CODE').AsString <> lblLedgerKey.caption) then
  begin
    MsgErr('Error the primary key has changed, please close this screen and try again');
    exit;
    {if MessageDlg('You are about to change a ledger code, are you sure', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      prcChangeLedger.close;

      prcChangeLedger.paramByName('SENTITY').AsString := dmAxiom.Entity;
      prcChangeLedger.paramByName('SOLD').AsString := qryLedger.FieldByName('CODE').AsString;
      prcChangeLedger.paramByName('SNEW').AsString := lblLedgerKey.caption;
      prcChangeLedger.Execute;
      Self.Close;
      Exit;
    end;
    }
  end;

  {
  add code to handle gl components
  }

  if (not bEditing) and (glComponentParseResult = nil) and not cbMulti.checked then
  begin
    showMessage('You must enter an Account code');
    exit;
  end;

  if (not bEditing) and (tbAccountCode.Text = '') and cbMulti.checked then
  begin
    showMessage('You must enter an Account code');
    exit;
  end;

  if (glComponentParseResult <> nil) and (not cbMulti.checked) then
  begin
    if not glComponentParseResult.valid then
    begin
      showmessage('You must enter a valid account code');
      exit;
    end;
  end;


  if tbRptDesc.Text = '' then
    tbRptDesc.Text := mmoDescr.Text;

  if bEditing then
    qryLedger.Edit
  else
  begin
    qryLedger.Open;
  end;

  // loop through all the entites
  qryEntity.close;
  qryEntity.SQL.Clear;
  if cbAllEntity.checked and not bEditing then
    qryEntity.SQL.Add('select * from entity where active = ''Y''')
  else
  begin
    qryEntity.SQL.Add('select * from entity where active = ''Y'' and code = :CODE');
    qryEntity.ParamByName('CODE').AsString := dmAxiom.Entity;
  end;

  qryEntity.Open;
  qryEntity.First;

  try

    // if cb multi is checked then get a list of components to add
    // other wise just add single entry to glComponentParseResult
    if cbMulti.Checked then
    begin
      if fmComponentSelection = nil then
        fmComponentSelection := TfrmGlComponentSelection.create(self);

      fmComponentSelection.setAccountCode(tbAccountCode.text);
      if fmComponentSelection.ShowModal <> mrOK then
        exit;

        
      selectResult := fmComponentSelection.getResultAsStrings;
      SetLength(aglParseResult, selectResult.Count);


      for iloop := 0 to selectResult.Count - 1 do
      begin
        glComponentParseResult := dmAxiom.getGlComponents.parseString(selectResult[iLoop],false,not cbMaster.checked);
        if glComponentParseResult.Valid then
          aglParseResult[iLoop] := glComponentParseResult
        else
          glComponentParseResult.displayError;
      end;
      selectResult.Free;

    end
    else
    begin
      SetLength(aglParseResult, 1);
      aglParseResult[0] := glComponentParseResult;

    end;
    if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;

    for iLoop := 0 to high(aglParseResult) do
    begin
      glComponentParseResult := aglParseResult[iLoop];

      if (not bEditing) then
        lblLedgerKey.caption := '';
      qryEntity.first;
      while not qryEntity.Eof do
      begin
    // if the ledger key is empty then create using the squence

        if (not bEditing) and (lblLedgerKey.caption = '') then
        begin
          lblLedgerKey.caption := dmAxiom.GetSeqNumber('SQNC_CHART');
        end;

        if not bEditing then
          qryLedger.Insert;

        if glComponentParseResult <> nil then
        begin
          glComponentParseResult.populateChart(qryLedger);
        end;

  // check to see if the ledger code is already used.
        qryCheckGlCode.ParamByName('DISPLAY').AsString := qryLedger.fieldByname('COMPONENT_CODE_DISPLAY').AsString;
        qryCheckGlCode.ParamByName('BANK').AsString := qryEntity.fieldByname('CODE').AsString;

        if bEditing then
          qryCheckGlCode.ParamByName('CODE').AsString := lblLedgerKey.caption
        else
          qryCheckGlCode.ParamByName('CODE').AsString := '';


        qryCheckGlCode.Open;
        iCount := qryCheckGlCode.fieldByName('cnt').AsInteger;
        qryCheckGlCode.Close;
        if iCount > 0 then
        begin
          raise Exception.Create('Error Account code ' + qryLedger.fieldByname('COMPONENT_CODE_DISPLAY').AsString + ' already used in ' + qryEntity.fieldByname('NAME').AsString);
        end;


        qryLedger.FieldByName('BANK').AsString := qryEntity.fieldByname('CODE').AsString;
        if not bEditing then
          qryLedger.FieldByName('CODE').AsString := lblLedgerKey.caption;
        qryLedger.FieldByName('DESCR').AsString := mmoDescr.Text;
        qryLedger.FieldByName('REPORT_DESC').AsString := tbRptDesc.Text;
        qryLedger.FieldByName('ADDTO').AsVariant := cbAddTo.EditValue;
        qryLedger.FieldByName('FMRCCODE').AsString := tbFMRCCode.Text;
        qryLedger.FieldByName('report_level').AsInteger := neReportLevel.AsInteger;
        if cbPrivate.Checked then
           qryLedger.FieldByName('PRIVATE').AsString := 'Y'
        else
           qryLedger.FieldByName('PRIVATE').AsString := 'N';

        qryLedger.FieldByName('Modified').AsDateTime := now;
        qryLedger.FieldByName('Modified_By').AsString := dmAxiom.UserID;

        if not bEditing then
           qryLedger.FieldByName('CREATED').AsDateTime := now;

  {
    Code Modified 16.12.2002 GG

    Well, this is just silly.  If new Chart Types are added, this will fall over.
    Let's do it properly...

      if cbType.Text = 'Income' then
        qryLedger.FieldByName('TYPE').AsString := 'I'
      else if cbType.Text = 'Expense' then
        qryLedger.FieldByName('TYPE').AsString := 'E'
      else if cbType.Text = 'Asset' then
        qryLedger.FieldByName('TYPE').AsString := 'A'
      else if cbType.Text = 'Liability' then
        qryLedger.FieldByName('TYPE').AsString := 'L'
      else if cbType.Text = 'Owner''s Equity' then
        qryLedger.FieldByName('TYPE').AsString := 'O'
      else
        qryLedger.FieldByName('TYPE').AsString := 'N';
  }
        try
          qryChartTypes.ParamByName('DESCR').AsString := cbType.Text;
          qryChartTypes.Open;
          qryLedger.FieldByName('TYPE').AsString := qryChartTypes.FieldByName('CODE').AsString
        finally
          qryChartTypes.Close
        end;

        qryLedger.FieldByName('COL').AsInteger := neColumn.AsInteger;

  //fields for GST
        qryLedger.FieldbyName('GSTCATEGORY').AsInteger := neGSTCategory.AsInteger;
        qryLedger.FieldbyName('CRDTPUR').AsInteger := neCreditablePurchase.AsInteger;

        qryLedger.FieldByName('BASGROUP').AsString := TableString('BASGROUP', 'DESCR', cbBASGroup.Text, 'CODE');

        if (chkActive.Checked) then
          qryLedger.FieldByName('ACTIVE').AsString := 'Y'
        else
          qryLedger.FieldByName('ACTIVE').AsString := 'N';

        if (chkJournalSplit.Checked) then
          qryLedger.FieldByName('IS_JOURNAL_SPLIT').AsString := 'Y'
        else
          qryLedger.FieldByName('IS_JOURNAL_SPLIT').AsString := 'N';

        if (chkAllowDirectPosting.Checked) then
          qryLedger.FieldByName('ALLOW_DIRECT_POSTING').AsString := 'Y'
        else
          qryLedger.FieldByName('ALLOW_DIRECT_POSTING').AsString := 'N';

        if (cbDefaultOIFCode.ItemIndex > 0) then
          qryLedger.FieldByName('OIFDEFAULTCODE').AsString := TChartOIFCodes[cbDefaultOIFCode.ItemIndex]
        else
          qryLedger.FieldByName('OIFDEFAULTCODE').Clear();

        qryLedger.FieldByName('CHARTTYPE').AsString := TChartTypeCodes[cbChartType.ItemIndex];
        qryLedger.FieldByName('COL').AsInteger := neColumn.AsInteger;
{
  Code added 13.12.2002 GG

  Add the default tax code for this account.
}
        qryLedger.FieldByName('DEFAULT_TAXCODE').AsString := cbDefaultTaxCode.Text;
        qryLedger.FieldByName('GLREPCODE').AsVariant := cmbGLReportGroup.EditValue;
        
        qryLedger.Post;
        qryEntity.Next;
      end;
    end;


    qryEntity.close;
    qryLedger.ApplyUpdates;

    dmAxiom.uniInsight.Commit;
    qryLedger.Close;
    ModalResult := mrOk;

  except on e: Exception do
    begin
      dmAxiom.uniInsight.Rollback;
      MsgErr('Error adding Ledger code' + #13#13 + e.message);
      qryLedger.Close;
    end;

  end;
  fmComponentSelection.free;
  fmComponentSelection := nil;
  aglParseResult := nil;



end;


procedure TfrmLedgerNew.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;


procedure TfrmLedgerNew.mmoDescrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    QuickCode(Sender)
end;


procedure TfrmLedgerNew.cbAddToClick(Sender: TObject);
var
  bFound: boolean;
begin
  bFound := qryAddTos.Locate('CODE', cbAddTo.Text, []);
  if bFound then
    lblAddTo.Caption := qryAddTos.FieldByName('REPORT_DESC').AsString
  else
    lblAddTo.Caption := '';
end;

procedure TfrmLedgerNew.tbRptDescEnter(Sender: TObject);
begin
  if tbRptDesc.Text = '' then
    tbRptDesc.Text := mmoDescr.Lines.Text;
end;

procedure TfrmLedgerNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryLedger.Close;
  qryAddTos.Close;
  qryGLReportType.Close;
end;

procedure TfrmLedgerNew.mmoDescrExit(Sender: TObject);
begin
  Quickcode(Sender);
end;

procedure TfrmLedgerNew.FormCreate(Sender: TObject);
begin
  ArrToStrL(TChartTypeDescr, cbChartType.Items);
  ArrToStrL(TChartOIFDescr, cbDefaultOIFCode.Items);


  bEditing := False;
  StringPopulate(cbBASGroup.Items, 'BASGROUP', 'DESCR');
{
  Code Added 16.12.2002 GG

  Populate the Default Taxcode drop-down list and the Type drop-down list
}
  StringPopulate(cbType.Properties.Items, 'CHARTTYPE', 'DESCR');
  StringPopulate(cbDefaultTaxCode.Items, 'TAXTYPE', 'CODE');

  lblGlHeader.caption := dmAxiom.getGlComponents.componentHeader;
  fmComponentSelection := nil;
  // default Bas Group to Default
  cbBASGroup.ItemIndex := 0;
  qryGLReportType.Open;
  qryAddTos.Close;
  qryAddTos.ParamByName('P_Entity').AsString := dmAxiom.Entity;
  qryAddTos.Open;
end;

procedure TfrmLedgerNew.tbRptDescExit(Sender: TObject);
begin
  Quickcode(Sender);
end;

procedure TfrmLedgerNew.tbRptDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    QuickCode(Sender)
end;

procedure TfrmLedgerNew.cbAddToDropDown(Sender: TObject);
begin
{  qryAddTos.Close;
  qryAddTos.ParamByName('P_Entity').AsString := dmAxiom.Entity;
  //qryAddTos.ParamByName('REPORT_LEVEL').AsInteger := neReportLevel.AsInteger;
  qryAddTos.Open;
  cbAddTo.Items.Clear;
  while not qryAddTos.EOF do
  begin
    cbAddTo.Items.Add(qryAddTos.FieldByName('COMPONENT_CODE_DISPLAY').AsString);
    qryAddTos.Next;
  end;   }
end;

procedure TfrmLedgerNew.tbAccountCodeExit(Sender: TObject);
var sNewCode: string;
  iGlComponentLength: integer;
  glComponentSetup: TglComponentSetup;
begin

  if cbMulti.Checked then
        // if this is checked we only want the user to enter the account part
  begin
    glComponentSetup := dmAxiom.getGlComponents;
    iGlComponentLength := glComponentSetup.getComponentLength('ACCOUNT');
    if (iGlComponentLength <> 0) and (length(tbAccountCode.Text) <> iGlComponentLength) then
    begin
      MsgErr('Error account incorrect length');
    end;
  end
  else
  begin

    sNewCode := tbAccountCode.Text;
                // validate the code

    glComponentParseResult := dmAxiom.getGlComponents.parseString(sNewCode,false,not cbMaster.checked);
    if glComponentParseResult.Valid then
      tbAccountCode.Text := glComponentParseResult.fullCode
    else
      glComponentParseResult.displayError;
  end;


end;

procedure TfrmLedgerNew.cbMultiClick(Sender: TObject);
begin
        tbAccountCode.Text := '';
        glComponentParseResult.Free;
        glComponentParseResult := nil;
        lblGlHeader.Visible := not cbMulti.checked;
end;

end.

