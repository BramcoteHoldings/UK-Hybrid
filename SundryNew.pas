unit SundryNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  MemDS, citfunc, OracleUniProvider, Uni, DBAccess, TableCache, DBDateTimePicker, VirtualTable,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxLookAndFeelPainters, cxCheckBox, cxLabel, cxButtons, cxGroupBox,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, cxGraphics, Menus, cxLookAndFeels, Variants,
  dxGDIPlusClasses, dxDPIAwareUtils;

type
  TfrmSundryNew = class(TForm)
    qrySundryInsert: TUniQuery;
    qryMatter: TUniQuery;
    qrySundry: TUniQuery;
    dsSundryType: TUniDataSource;
    dsSundry: TUniDataSource;
    grpAmount: TcxGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    neUnits: TcxDBTextEdit;
    neAmount: TcxDBTextEdit;
    neTax: TcxDBTextEdit;
    neRate: TcxDBTextEdit;
    grpMatter: TcxGroupBox;
    btnMatterFind: TSpeedButton;
    drpSelectionCriteria: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    edTypeCode: TEdit;
    Label4: TLabel;
    mmoDesc: TDBMemo;
    lblInvoiceMsg: TLabel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    sttMatter: TcxLabel;
    sttClient: TcxLabel;
    sttMatterDescr: TcxLabel;
    sttInvoice: TcxLabel;
    chkPrivate: TcxDBCheckBox;
    cbTaxType: TcxDBLookupComboBox;
    qryTaxType: TUniQuery;
    dsTaxType: TUniDataSource;
    dtpCreated: TcxDBDateEdit;
    qrySundryType: TUniQuery;
    cbType: TcxDBLookupComboBox;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cbTypeChange(Sender: TObject);
    procedure mmoDescKeyPress(Sender: TObject; var Key: Char);
    procedure btnMatterFindClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoDescExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbTaxTypeChange(Sender: TObject);
    procedure neAmountEnter(Sender: TObject);
    procedure qrySundryNewRecord(DataSet: TDataSet);
    procedure edTypeCodeExit(Sender: TObject);
    procedure neAmountPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure neRatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure neUnitsPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbTypeCloseUp(Sender: TObject);
    procedure dtpCreatedPropertiesChange(Sender: TObject);
    procedure cbTypePropertiesChange(Sender: TObject);
    procedure cbTypePropertiesCloseUp(Sender: TObject);
    procedure edTypeCodeEnter(Sender: TObject);

  private
    { Private declarations }
    FEditing: boolean;
    FOldAmount, FEnterAmount: Double;
    procedure UpdateAmount(pAmount: Variant);
    function OKtoPost : boolean;
    function CalcTax(pAmount: Variant): Double;
    function SaveSundry: Integer;

  public
    { Public declarations }
    procedure DisplayMatter(iMatter: integer); overload;
    procedure DisplayMatter(sMatter: string); overload;
    procedure DisplaySundry(iSundry: integer);
    procedure CreateSundry(sMatter : string; sType : string; sDesc : string; cAmount : currency);
  end;

implementation

uses
  AxiomData, MiscFunc, MSearch, SundryBatch, Desktop;

{$R *.DFM}

procedure TfrmSundryNew.DisplayMatter(iMatter: integer);
begin
  sttMatter.Caption := TableString('MATTER', 'NMATTER', iMatter, 'FILEID');
  sttClient.Caption := MatterString(sttMatter.Caption, 'TITLE');
  sttMatterDescr.Caption := MatterString(sttMatter.Caption, 'SHORTDESCR');

  if not FEditing then
  begin
    qrySundry.Open;
    qrySundry.Insert;
  end;
end;

procedure TfrmSundryNew.DisplayMatter(sMatter: string);
begin
  sttMatter.Caption := sMatter;
  sttClient.Caption := MatterString(sttMatter.Caption, 'TITLE');
  sttMatterDescr.Caption := MatterString(sttMatter.Caption, 'SHORTDESCR');

  if not FEditing then
  begin
    qrySundry.Open;
    qrySundry.Insert;
  end;
end;

procedure TfrmSundryNew.DisplaySundry(iSundry: integer);
begin

  Self.Caption := 'Sundry Edit';

  with qrySundry do
  begin
    cbType.Properties.OnChange := nil;
    Close;
    ParamByName('NSUNDRY').AsInteger := iSundry;
    Open;
    cbType.Properties.OnChange := cbTypePropertiesChange;

    if not IsEmpty then
    begin

     qryMatter.Close;
     qryMatter.ParamByName('P_FILEID').AsString := FieldByName('FILEID').AsString;
     qryMatter.Open;

     sttMatterDescr.Caption := qryMatter.FieldByName('SHORTDESCR').AsString;
     sttMatter.Caption := qryMatter.FieldByName('FILEID').AsString;

      //DisplayMatter(FieldByName('NMATTER').AsInteger);
      btnMatterFind.Enabled := FieldByName('BILLED').AsString <> 'Y';
      btnSave.Enabled := FieldByName('BILLED').AsString <> 'Y';

      if FieldByName('BILLED').AsString = 'Y' then
      begin
        dtpCreated.Enabled := False;
        cbType.Enabled := False;
        neUnits.Enabled := False;
        neRate.Enabled := False;
        neAmount.Enabled := False;
        sttInvoice.Caption := TableString('NMEMO', 'NMEMO', FieldByName('NMEMO').AsInteger, 'REFNO');
        cbTaxType.Enabled := False;
        neTax.Enabled := False;
      end;

      FOldAmount := FieldByName('AMOUNT').AsFloat;
//      dtpCreated.DateTime := FieldByName('CREATED').AsDateTime;

      //StringPopulate(cbType.Items, 'SUNDRYTYPE', 'CODE', 'UPPER(CODE) = CODE');
      //cbType.ItemIndex := cbType.Items.IndexOf(FieldByName('TYPE').AsString);
      //cbTypeChange(Self);
      //mmoDesc.Text := FieldByName('DESCR').AsString;
      //neUnits.AsInteger := FieldByName('UNITS').AsInteger;
      //neRate.AsCurrency := FieldByName('PERUNIT').AsCurrency;
      //neAmount.AsCurrency := FieldByName('AMOUNT').AsCurrency;
      //neTax.AsCurrency := FieldByName('TAX').AsCurrency;
      //if FieldByName('PRIVATE').AsString = 'Y' then
      //  chkPrivate.Checked := True
      //else
      //  chkPrivate.Checked := False;

      FEditing := True;
//      dtpCreated.ShowCheckbox := False;

    end;

  end;

end;

procedure TfrmSundryNew.CreateSundry(sMatter : string; sType : string; sDesc : string; cAmount : currency);
begin
  if not FEditing then
  begin
    DisplayMatter(sMatter);
    qrySundry.Insert;
    qrySundry.FieldByName('CREATED').AsDateTime:= Now;
    qrySundry.FieldByName('TYPE').AsString:= sType;
    qrySundry.FieldByName('DESCR').AsString := sDesc;

    qrySundry.FieldByName('RATE').AsFloat := TableCurrency('SUNDRYTYPE', 'CODE', sType, 'RATE');
    qrySundry.FieldByName('AMOUNT').AsFloat := cAmount;
  end;
end;

procedure TfrmSundryNew.btnSaveClick(Sender: TObject);
begin
   ModalResult := SaveSundry();
end;

function TfrmSundryNew.OKtoPost : boolean;
var
  sTmp : String;
begin
  OKtoPost := True;
  sTmp := '';

  if cbType.Text = '' then
    sTmp := '       Type Code' + Chr(13);

  if sttMatter.Caption = '' then
    sTmp := sTmp + '       Matter' + Chr(13);

  if mmoDesc.Text = '' then
    sTmp := sTmp + '       Description' + Chr(13);

  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Sundry details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    OKtoPost := False
  end;
end;

procedure TfrmSundryNew.UpdateAmount(pAmount: Variant);
begin
   if (qrySundry.State = dsInsert) or (qrySundry.State = dsEdit) then
   begin
      try
//         qrySundry.FieldByName('AMOUNT').AsFloat := qrySundry.FieldByName('UNITS').AsInteger * qrySundry.FieldByName('PERUNIT').AsCurrency;
         qrySundry.FieldByName('AMOUNT').AsFloat := neUnits.DataBinding.DisplayValue * neRate.DataBinding.DisplayValue;
         pAmount := qrySundry.FieldByName('AMOUNT').AsFloat;
      except
         //
      end;
      CalcTax(pAmount);
   end;
end;

procedure TfrmSundryNew.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSundryNew.cbTypeChange(Sender: TObject);
var
  iIdx       : Integer;
  sPrevDescr : String;
begin
  sPrevDescr := mmoDesc.Text;

  //lblTypeDesc.Caption := TableString('SUNDRYTYPE', 'CODE', cbType.Text, 'DESCR');
  //if (mmoDesc.Text = sPrevDescr) or (mmoDesc.Text = '') then
  //  mmoDesc.Text := lblTypeDesc.Caption;

  qrySundry.FieldByName('PERUNIT').AsFloat := TableCurrency('SUNDRYTYPE', 'CODE', qrySundry.FieldByName('TYPE').AsString, 'RATE');
//  iIdx := cbTaxType.Properties.Items.IndexOf(TableString('SUNDRYTYPE', 'DESCR', cbType.Text, 'TAXCODE'));
  qrySundry.FieldByName('TAXCODE').AsString := TableString('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'TAXCODE');
  //cbTaxType.EditValue := TableString('SUNDRYTYPE', 'DESCR', string(cbType.EditValue), 'TAXCODE');
  cbTaxType.Properties.OnChange(Self);

{  if iIdx >= 0 then
  begin
    cbTaxType.Properties.ItemIndex := iIdx;
    cbTaxType.OnChange(Self);
  end;    }

  UpdateAmount(neAmount.DataBinding.Field.AsVariant);
  edTypeCode.Text := qrySundry.FieldByName('TYPE').AsString;
  mmoDesc.Text := cbType.Text;
end;

procedure TfrmSundryNew.mmoDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(mmoDesc);
end;

procedure TfrmSundryNew.btnMatterFindClick(Sender: TObject);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOK then
   begin
      if FEditing then
      begin
         qrySundry.Edit;
         qrySundry.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
         qrySundry.FieldByName('NMATTER').AsString := dmAxiom.qryMSearch.FieldByName('NMATTER').AsString;
         qrySundry.Post;
      end;

      if (MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) and
         ( not IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger)
      else
         MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
   end;
end;

procedure TfrmSundryNew.FormShow(Sender: TObject);
begin
   if not FEditing then
   begin
    //StringPopulate(cbType.Items, 'SUNDRYTYPE', 'CODE', 'UPPER(CODE) = CODE');
    //cbType.ItemIndex := cbType.Items.IndexOf(SettingLoadString('SundryNew', 'Type'));
    //if cbType.ItemIndex = -1 then
    //  cbType.ItemIndex := 0;
    // cbTypeChange(Self);

//    dtpCreated.ShowCheckbox := false;

{
  Code Added 11.9.2002 GG

  Open the matter search if we aren't editing, or if we haven't already got the matter number
  because we are creating a new sundry, and the first thing we need is a matter number
}
      if not qrySundry.Active then
         btnMatterFind.Click;

      if (sttMatter.Caption <> '') then
      begin
     {
       Code Modified 16.12.2002 GG

       Set default tax type
     }
         cbTaxType.EditValue := dmAxiom.DefaultTax;
     //    cbTaxType.ItemIndex := cbTaxType.Items.IndexOf(dmAxiom.DefaultTax);
     //    cbTaxType.Text:= dmAxiom.DefaultTax;

         qrySundry.Edit;
         qrySundry.FieldByName('TAXCODE').AsString := dmAxiom.DefaultTax;
         qrySundry.Post; 
      end;
   end;
end;

procedure TfrmSundryNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //qrySundry.Close;
  qryMatter.Close;
//  qrySundryType.Close;
  qryTaxType.Close;

  Action := caFree;
end;

procedure TfrmSundryNew.mmoDescExit(Sender: TObject);
begin
  Quickcode(mmoDesc);
end;

procedure TfrmSundryNew.FormCreate(Sender: TObject);
begin
  FEditing := False;
  qryTaxType.Open;
//  StringPopulate(cbTaxType.Items, 'TAXTYPE', 'CODE');
//  cbTaxType.ItemIndex := cbTaxType.Items.IndexOf(dmAxiom.DefaultTax);
  //cbTaxType.OnChange(Self);
//  dtpCreated.DateTime := Now;
  dtpCreated.Properties.MaxDate := Date;
  qrySundryType.ParamByName('Entity').AsString := dmAxiom.Entity;
  qrySundryType.Open;
//  dmTableCache.LoadVirtualTable(vtSundryType,'SUNDRYTYPE','ENTITY = ''' + dmAxiom.Entity + ''' and active = ''Y'' ','DESCR');

//  lblTaxDescr.Caption := '';
end;

procedure TfrmSundryNew.cbTaxTypeChange(Sender: TObject);
begin
//  lblTaxDescr.Caption := TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'DESCR');
  if (((qrySundry.State = dsInsert) or (qrySundry.State = dsEdit)) and (cbTaxType.EditValue <> null)) then
    CalcTax(neAmount.DataBinding.Field.AsVariant);
end;


function TfrmSundryNew.CalcTax(pAmount: variant): Double;
var
  dAmount: Double;
begin
   if pAmount > 0 then
      dAmount := pAmount
   else
      dAmount := qrySundry.FieldByName('AMOUNT').AsFloat;

   try
      qrySundry.FieldByName('TAX').AsFloat := TaxCalc(dAmount, '', string(cbTaxType.EditValue), dtpCreated.Date);
   except
   ;
   end;
   neAmount.EditValue := dAmount;
   neTax.EditValue := qrySundry.FieldByName('TAX').AsFloat;
   qrySundry.FieldByName('AMOUNT').AsFloat := dAmount;

   qrySundry.FieldByName('BILLING_TAXCODE').AsString := TableString('TAXTYPE', 'CODE', string(cbTaxType.EditValue), 'tax_code_billing');
   if qrySundry.FieldByName('BILLING_TAXCODE').IsNull = False then
   begin
      qrySundry.FieldByName('BILLED_TAX').AsFloat := TaxCalc(dAmount, 'BILL', string(cbTaxType.EditValue), dtpCreated.Date);
      qrySundry.FieldByName('BILLED_AMOUNT').AsFloat := dAmount;
   end
   else
   begin
      qrySundry.FieldByName('BILLED_TAX').AsFloat := 0;
      qrySundry.FieldByName('BILLED_AMOUNT').AsFloat := 0;
   end;

   Result := dAmount;
end;

procedure TfrmSundryNew.neAmountEnter(Sender: TObject);
begin
//  FEnterAmount := qrySundry.FieldByName('AMOUNT').AsCurrency;
end;

procedure TfrmSundryNew.qrySundryNewRecord(DataSet: TDataSet);
begin
   if qrySundry.Active then
    begin
      qrySundry.Edit;
      qrySundry.FieldByName('CREATED').AsDateTime := Date;
      qrySundry.FieldByName('ACCT').AsString := dmAxiom.Entity;
      qrySundry.FieldByName('PRIVATE').AsString := 'N';
      qrySundry.FieldByName('UNITS').AsInteger := 1;
      qrySundry.FieldByName('AMOUNT').AsInteger := 0;
      qrySundry.FieldByName('TAX').AsInteger := 0;
    end;
          end;

procedure TfrmSundryNew.edTypeCodeEnter(Sender: TObject);
begin
   if (cbType.Text <> '') and (edTypeCode.Text = '') and not FEditing then
   begin
      qrySundry.FieldByName('PERUNIT').AsCurrency := TableCurrency('SUNDRYTYPE', 'CODE', qrySundry.FieldByName('TYPE').AsString, 'RATE');
      qrySundry.FieldByName('TAXCODE').AsString := TableString('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'TAXCODE');

      //cbTaxType.EditValue := TableString('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'TAXCODE');
      cbTaxType.Properties.OnChange(Self);

      UpdateAmount(neAmount.DataBinding.Field.AsVariant);
      edTypeCode.Text := qrySundry.FieldByName('TYPE').AsString;
      mmoDesc.Text := cbType.Text;
      qrySundry.FieldByName('DESCR').AsString := cbType.Text;
   end;
end;

procedure TfrmSundryNew.edTypeCodeExit(Sender: TObject);
var
  sDescr : String;
begin
  // look up the sundry type
  sDescr := cbType.text; //dmTableCache.VGetString(vtSundryType,'CODE',edTypeCode.Text,'DESCR');
  if (sDescr <> '') then
  begin
    qrySundry.FieldByName('TYPE').AsString := edTypeCode.Text;
    cbType.OnClick(Self);
  end;
end;

procedure TfrmSundryNew.neAmountPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  dAmount: Double;
begin
//      if qrySundry.FieldByName('AMOUNT').AsFloat <> FEnterAmount then
   neAmount.EditValue := DisplayValue;
   qrySundry.FieldByName('AMOUNT').AsFloat := DisplayValue;
   DisplayValue := CalcTax(DisplayValue);
end;

procedure TfrmSundryNew.neRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
//   if neAmount.DataBinding.Field.AsVariant > 0 then
      UpdateAmount(neAmount.DataBinding.Field.AsVariant);
end;

procedure TfrmSundryNew.neUnitsPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
//   if neAmount.DataBinding.Field.AsVariant > 0 then
      UpdateAmount(neAmount.DataBinding.Field.AsVariant);
end;

procedure TfrmSundryNew.cbTypeCloseUp(Sender: TObject);
begin
   if cbType.Text <> '' then
   begin
      qrySundry.FieldByName('DESCR').AsString := cbType.Text;
      mmoDesc.Text := cbType.Text;
   end;
end;

procedure TfrmSundryNew.cbTypePropertiesChange(Sender: TObject);
var
  iIdx       : Integer;
  sPrevDescr : String;
  sTaxCode : String;
  sTaxType : String;
  dTaxRate : Double;
begin
   sPrevDescr := mmoDesc.Text;

   if not(VarIsNull(cbType.EditValue)) then
   begin
      if qrySundry.State = dsBrowse then
         qrySundry.Edit;
      sTaxCode := '';
      sTaxType := '';
      // if the sundry type has no tax code set
      if (TableString('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'TAXCODE') = '') then
      begin
          // if there is a default tax code
          if (TableString('TAXTYPE', 'DEFAULTTAX', 'Y', 'CODE') <> '') then
          begin
              sTaxType :=  TableString('TAXTYPE', 'DEFAULTTAX', 'Y', 'CODE');
              // if there is a tax rate set up for the default tax code
              if (TableString('TAXRATE', 'TAXCODE', sTaxType, 'TAXCODE') <> '') then
              begin
                  sTaxCode := TableString('TAXRATE', 'TAXCODE', sTaxType, 'TAXCODE');
                  dTaxRate := TableFloat('TAXRATE', 'TAXCODE', sTaxCode, 'BILL_RATE');
                  dTaxRate := abs(dTaxRate);
              end
              else
              begin
                  MsgInfo('There is no Tax Code set on this Sundry type and the default tax code does not have a tax rate.  You need to set the tax rate for the default tax code');
              end;
          end
          else
          begin
              MsgInfo('There is no Tax Code set on this Sundry type and no default tax code.  You need to set a default tax code');
          end;
      end
      else
      begin
          // get the tax code for the sundry type and the tax rate
          sTaxCode := TableString('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'TAXCODE');
          dTaxRate := TableFloat('TAXRATE', 'TAXCODE', sTaxCode, 'BILL_RATE');
          dTaxRate := abs(dTaxRate);
      end;
      // check if the matter has a tax rate which is less than the tax rate for the sundry type
      if (sttMatter.Caption <> '') then
      begin
          if (TableString('MATTER', 'FILEID', sttMatter.Caption, 'FEE_TAX_BASIS') <> '') then
          begin
             sTaxType := TableString('MATTER', 'FILEID', sttMatter.Caption, 'FEE_TAX_BASIS');
             if (abs(TableFloat('TAXRATE', 'TAXCODE', sTaxType, 'BILL_RATE')) < dTaxRate)  then
             begin
                sTaxCode := sTaxType;
                dTaxRate := abs(TableFloat('TAXRATE', 'TAXCODE', sTaxType, 'BILL_RATE'));
             end;
          end;
      end;

      qrySundry.FieldByName('PERUNIT').AsFloat := TableCurrency('SUNDRYTYPE', 'CODE', qrySundry.FieldByName('TYPE').AsString, 'RATE');
      qrySundry.FieldByName('TAXCODE').AsString := sTaxCode;

      //cbTaxType.EditValue := TableString('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'TAXCODE');
      cbTaxType.Properties.OnChange(Self);

      UpdateAmount(neAmount.DataBinding.Field.AsVariant);
      edTypeCode.Text := qrySundry.FieldByName('TYPE').AsString;
      mmoDesc.Text := cbType.Text;
      qrySundry.FieldByName('DESCR').AsString := cbType.Text;
   end
   else
      edTypeCode.Text := '';
end;

procedure TfrmSundryNew.cbTypePropertiesCloseUp(Sender: TObject);
var
  iIdx:        Integer;
  sPrevDescr:  String;
  sTaxCode:    String;
  sTaxType:    String;
  dTaxRate:    Double;
begin
   sPrevDescr := mmoDesc.Text;

   if not(VarIsNull(cbType.EditValue)) then
   begin
      if qrySundry.State = dsBrowse then
         qrySundry.Edit;
      sTaxCode := '';
      sTaxType := '';
      // if the sundry type has no tax code set
      if (TableString('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'TAXCODE') = '') then
      begin
         // if there is a default tax code
         if (TableString('TAXTYPE', 'DEFAULTTAX', 'Y', 'CODE') <> '') then
         begin
            sTaxType :=  TableString('TAXTYPE', 'DEFAULTTAX', 'Y', 'CODE');
            // if there is a tax rate set up for the default tax code
            if (TableString('TAXRATE', 'TAXCODE', sTaxType, 'TAXCODE') <> '') then
            begin
               sTaxCode := TableString('TAXRATE', 'TAXCODE', sTaxType, 'TAXCODE');
               dTaxRate := TableFloat('TAXRATE', 'TAXCODE', sTaxCode, 'BILL_RATE');
               dTaxRate := abs(dTaxRate);
            end
            else
            begin
               MsgInfo('There is no Tax Code set on this Sundry type and the default tax code does not have a tax rate.  You need to set the tax rate for the default tax code');
            end;
         end
         else
         begin
            MsgInfo('There is no Tax Code set on this Sundry type and no default tax code.  You need to set a default tax code');
         end;
      end
      else
      begin
         // get the tax code for the sundry type and the tax rate
         sTaxCode := TableString('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'TAXCODE');
         dTaxRate := TableFloat('TAXRATE', 'TAXCODE', sTaxCode, 'BILL_RATE');
         dTaxRate := abs(dTaxRate);
      end;
      // check if the matter has a tax rate which is less than the tax rate for the sundry type
      if (sttMatter.Caption <> '') then
      begin
         if (TableString('MATTER', 'FILEID', sttMatter.Caption, 'FEE_TAX_BASIS') <> '') then
         begin
            sTaxType := TableString('MATTER', 'FILEID', sttMatter.Caption, 'FEE_TAX_BASIS');
            if (abs(TableFloat('TAXRATE', 'TAXCODE', sTaxType, 'BILL_RATE')) < dTaxRate)  then
            begin
               sTaxCode := sTaxType;
               dTaxRate := abs(TableFloat('TAXRATE', 'TAXCODE', sTaxType, 'BILL_RATE'));
               cbTaxType.EditText := sTaxCode;
            end;
         end;
      end;

      qrySundry.FieldByName('PERUNIT').AsFloat := TableCurrency('SUNDRYTYPE', 'CODE', qrySundry.FieldByName('TYPE').AsString, 'RATE');
      qrySundry.FieldByName('TAXCODE').AsString := sTaxCode;
      //cbTaxType.EditValue := TableString('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'TAXCODE');
      cbTaxType.Properties.OnChange(Self);

      UpdateAmount(neAmount.DataBinding.Field.AsVariant);
      edTypeCode.Text := qrySundry.FieldByName('TYPE').AsString;
      mmoDesc.Text := cbType.Text;
      qrySundry.FieldByName('DESCR').AsString := cbType.Text;
   end;
end;

procedure TfrmSundryNew.dtpCreatedPropertiesChange(Sender: TObject);
begin
   try
      //
   except
      dtpCreated.Date := Now;
   end;
end;

function TfrmSundryNew.SaveSundry: Integer;
var
  bPostingFailed : boolean;
begin
   ModalResult := mrNone;
   if OKtoPost then
   begin
      btnSave.SetFocus;
      try
         with qryMatter do
         begin
            Close;
            ParamByName('P_FileID').AsString := sttMatter.Caption;
            Open;
         end;

         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Rollback;
         dmAxiom.uniInsight.StartTransaction;

       // set the sequence

         if not FEditing then
         begin
            qrySundry.FieldByName('NSUNDRY').AsString := dmAxiom.GetSeqNumber('SUNDRY_NSUNDRY');
            qrySundry.FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
            qrySundry.FieldByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
            qrySundry.FieldByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
            //qrySundry.FieldByName('AMOUNT').AsCurrency := neAmount.Field.AsCurrency;

            qrySundry.FieldByName('BILLED').AsString := 'N';
         end;

         if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
           PostLedgers(dtpCreated.Date
             , qrySundry.FieldByName('AMOUNT').AsFloat - FOldAmount
             , sttMatter.Caption
             , 'SUNDRY'
             , qrySundry.FieldByName('NSUNDRY').AsInteger
             , mmoDesc.Lines.Text
             , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR')
             , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR')
             , qryMatter.FieldByName('AUTHOR').AsString
             , TableString('SUNDRYTYPE', 'CODE', string(cbType.Editvalue), 'TAXCODE'));

         //qrySundry.Edit;
         //qrySundry.FieldByName('AMOUNT').AsFloat := neAmount.Field.AsFloat;
         qrySundry.ApplyUpdates;
         dmAxiom.uniInsight.Commit;

//         qrySundry.CommitUpdates; {on success, clear the cache}
         SaveSundry := qrySundry.FieldByName('NSUNDRY').AsInteger;
         SettingSave('SundryNew', 'Type', cbType.Text);
         Self.Close;
      except
         on E: Exception do
         begin
            dmAxiom.uniInsight.Rollback;
            bPostingFailed := True;
            MsgErr('Sundry posting failed:' + chr(13) + chr(13) + E.Message);
            SaveSundry := 0;
            Raise;
         end;
      end;
   end
   else
   begin
      try
         qrySundry.RestoreUpdates;
         dmAxiom.uniInsight.Rollback;
         SaveSundry := 0;
      except
        //
      end;
   end;
end;

end.



