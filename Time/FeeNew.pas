unit FeeNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  ExtCtrls, OracleUniProvider, Uni, DBAccess, MemDS,
  stringz, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, cxDBEdit, cxMemo, cxLookAndFeelPainters,
  cxCurrencyEdit, cxButtons, cxCheckBox, cxLabel, cxButtonEdit,
  cxImageComboBox, ImgList, cxSchedulerUtils, cxEditRepositoryItems, Menus,
  cxGraphics, cxRichEdit, cxLookAndFeels,
  ppStrtch, ppMemo, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppParameter, dxCore, cxDateUtils, ppDesignLayer,
  ppRegion, System.DateUtils, ppTypes, cxClasses, cxSpinEdit, System.ImageList,
  ppRichTx;

type
  TfrmFeeNew = class(TForm)
    qryFee: TUniQuery;
    qryScaleCost: TUniQuery;
    qFeeEarners: TUniQuery;
    qFeeEarnersCODE: TStringField;
    qFeeEarnersNAME: TStringField;
    dsFeeEarners: TDataSource;
    btnCancel: TcxButton;
    btnOk: TcxButton;
    cbDept: TcxLookupComboBox;
    cbFeeBasis: TcxLookupComboBox;
    Label13: TLabel;
    Label14: TLabel;
    qryEmpDept: TUniQuery;
    dsEmpDept: TUniDataSource;
    qryFeeBasisList: TUniQuery;
    dsFeeBasisList: TUniDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbAuthor: TcxLookupComboBox;
    Label4: TLabel;
    lblUnits: TLabel;
    lblInvoiceMsg: TLabel;
    qryTaxType: TUniQuery;
    dsTaxType: TUniDataSource;
    qFeeEarnersDEPT: TStringField;
    chkPrivate: TcxCheckBox;
    cbPrint: TcxCheckBox;
    lblInvoice: TcxLabel;
    qryBillType: TUniQuery;
    Label15: TLabel;
    cbTaxType: TcxLookupComboBox;
    lblMatterDesc: TcxLabel;
    lblClient: TcxLabel;
    sbPrint: TcxButton;
    cmbTemplate: TcxLookupComboBox;
    qryScaleCostsList: TUniQuery;
    dsScaleCostsList: TUniDataSource;
    dfItems: TcxTextEdit;
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    icmbType: TcxImageComboBox;
    ImageList1: TImageList;
    dsFee: TUniDataSource;
    ppFileNoteRpt: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    pplblTransTitle: TppLabel;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    pplblMatter: TppLabel;
    pplblMatterDesc: TppLabel;
    pplblClient: TppLabel;
    pplblUnits: TppLabel;
    pplblMinutes: TppLabel;
    ppMemoDetails: TppMemo;
    pplblFooter: TppLabel;
    dtpCreated: TcxDateEdit;
    strFeeEarners: TStringz;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    chkExcludeFromBill: TCheckBox;
    ppSummaryBand1: TppSummaryBand;
    ppRegion1: TppRegion;
    ppLabel8: TppLabel;
    Label17: TLabel;
    dtpStartTime: TDateTimePicker;
    dtpEndTime: TDateTimePicker;
    Label18: TLabel;
    chkKeepOpen: TCheckBox;
    ppLine1: TppLine;
    Label19: TLabel;
    Label20: TLabel;
    neItem: TcxCurrencyEdit;
    neTimeAmount: TcxCurrencyEdit;
    Label22: TLabel;
    Label23: TLabel;
    neItemTax: TcxCurrencyEdit;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    neRate: TcxCurrencyEdit;
    neAmount: TcxCurrencyEdit;
    neValue: TcxCurrencyEdit;
    neDiscount: TcxTextEdit;
    ppLine2: TppLine;
    Label24: TLabel;
    cmbPracNums: TcxLookupComboBox;
    qryPracNum: TUniQuery;
    dsPracNum: TUniDataSource;
    mmoDesc: TcxRichEdit;
    neUnits: TcxSpinEdit;
    neTax: TcxCurrencyEdit;
    neMinutes: TcxTextEdit;
    Label9: TLabel;
    Label16: TLabel;
    edMatterFind: TcxButtonEdit;
    ppMemoNotes: TppRichText;
    mmoNotes: TcxMemo;
    procedure btnOkClick(Sender: TObject);
    procedure neRateChange(Sender: TObject);
    procedure neUnitsChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure mmoDescKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnMatterFindClick(Sender: TObject);
    procedure btnScaleClick(Sender: TObject);
    procedure mmoDescExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbFeeBasisClick(Sender: TObject);
    procedure btnExpandClick(Sender: TObject);
    procedure cbTaxTypeChange(Sender: TObject);
    procedure neAmountExit(Sender: TObject);
    procedure sbPrintClick(Sender: TObject);
    procedure neAmountEnter(Sender: TObject);
    procedure neAmountChange(Sender: TObject);
    procedure teMatterPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure teMatterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cmbTemplatePropertiesCloseUp(Sender: TObject);
    procedure cmbTemplatePropertiesInitPopup(Sender: TObject);
    procedure cmbMatterFindPropertiesCloseUp(Sender: TObject);
    procedure cmbMatterFindPropertiesInitPopup(Sender: TObject);
    procedure dfItemsPropertiesChange(Sender: TObject);
    procedure icmbTypePropertiesInitPopup(Sender: TObject);
    procedure cmbTemplatePropertiesEditValueChanged(Sender: TObject);
    procedure mmoDescEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppFileNoteRptBeforePrint(Sender: TObject);
    procedure neDiscountPropertiesChange(Sender: TObject);
    procedure dtpEndTimeChange(Sender: TObject);
    procedure dtpCreatedPropertiesChange(Sender: TObject);
    procedure cbAuthorPropertiesChange(Sender: TObject);
    procedure cmbMatterFindPropertiesChange(Sender: TObject);
    procedure dtpStartTimeChange(Sender: TObject);
    procedure cmbTemplatePropertiesChange(Sender: TObject);
    procedure mmoDescChange(Sender: TObject);
    procedure cbDeptPropertiesChange(Sender: TObject);
    procedure mmoNotesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbMatterFindPropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edMatterFindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMatterFindPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);

  private
    { Private declarations }
    FEditing: boolean;
    FBilled: boolean;
    FOldAmount, FOldAmountTax, FEnterAmount: currency;
    DefaultTax : String;
    FOldAuthor: string;
    FOldFileID: string;
    ScaleCode: string;
    FOldTask: string;
    ScaleAmount: Currency;
    bError : boolean;
    sBillType: string;
    bMatterValidated: Boolean;
    bEdited: boolean;
    FSetAuthor: string;
    FSetStartTime: TDateTime;
    FSetEndTime: TDateTime;
    FSetUnits: string;
    FSetDescription: string;
    FSetTask: string;
    procedure CalcRate;
    procedure UpdateAmount;
    function OKtoPost : boolean;
    procedure CalcTax(AAmount: double = 0);
    procedure PopulateWithoutMatter;
    procedure PopulateWithMatter;
    procedure PopulateMatterOnly;
    procedure DoBillType(FileId: string);
    function FillFeeDataSet: integer;
    procedure TemplateChange(Sender: TObject);
    procedure AuthorChange(Sender: TObject);
    function CalculateUnits: extended;
    procedure ResetFields;
    procedure SetAuthorValue(AValue: string);
    procedure SetStartTimeValue(AValue: TDateTime);
    procedure SetEndTimeValue(AValue: TDateTime);
    procedure SetUnitsValue(AValue: string);
    procedure SetDescriptionValue(AValue: string);
    procedure SetTaskValue(AValue: string);
    procedure ValidateMatter;
    procedure LoadMatter(var AFileID: string);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; const Editing: boolean);
    procedure DisplayMatter(sMatter: string; AIsEditing: Boolean = False; AMatterChanged: Boolean = False);
    procedure DisplayFee(iFee : integer; AIsEditing: Boolean = False);
    procedure CreateFee(sMatter : string; sAuthor : string; sDesc : string; sUnits : string; iMinutes : integer; cRate : currency; cAmount : currency; sFeeType : string);
    procedure CreateScale(AsMatter: String; ANMatter: Integer; AScaleCode: String; bNewFee: Boolean = True);
    function  SaveFee() : integer;
    property  SetAuthor: string read FSetAuthor write SetAuthorValue;
    property  SetStartTime: TDateTime read FSetStartTime write SetStartTimeValue;
    property  SetEndTime: TDateTime read FSetEndTime write SetEndTimeValue;
    property  SetUnits: string read FSetUnits write SetUnitsValue;
    property  SetDescription: string read FSetDescription write SetDescriptionValue;
    property  SetTask: string read FSetTask write SetTaskValue;
  end;

var
  frmFeeNew: TfrmFeeNew;

implementation

uses
  MiscFunc, AxiomData, MSearch, ScaleCosts, citfunc, Variants,glComponentUtil, dxSpellCheckerCore,
  dxSpellChecker, GenericSearch;

{$R *.DFM}

var
   iMtrSearchLimit:   integer;

// AES 06/09/2017 Added constructor so that we can pass value that determines if editing.
constructor TfrmFeeNew.Create(AOwner: TComponent; const Editing: boolean);
begin
   FEditing := Editing;
   inherited Create(AOwner);
end;

procedure TfrmFeeNew.DisplayMatter(sMatter: string; AIsEditing: Boolean; AMatterChanged: Boolean);
var
  lsAuthor : String;
begin
   edMatterFind.Text := sMatter;
//   edMatterFind.EditText := sMatter;
   lblClient.Caption := MatterString(sMatter, 'TITLE');
   lblMatterDesc.Caption := MatterString(sMatter, 'SHORTDESCR');

   PopulateMatterOnly;

   icmbType.EditValue := 'M';

   if(not AIsEditing) then
   begin
      if not (TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISFEEEARNER') = 'Y') then
      begin
         lsAuthor := MatterString(edMatterFind.Text, 'AUTHOR');

         if (lsAuthor <> '') then
         begin
            qFeeEarners.Close;
            qFeeEarners.SQL.Clear;
            qFeeEarners.SQL.Text := strFeeEarners.Strings.Text;
            qFeeEarners.ParamByName('Code').AsString := lsAuthor;
            qFeeEarners.Open;
         end;    //  end if

 //      cbAuthor.KeyValue := lsAuthor;

         cbAuthor.EditValue := lsAuthor;
         cbAuthorPropertiesChange(Self);

         if (cmbTemplate.Text = '') or (TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'AMOUNT') = 0) then
            neRate.Value := FeeRate('N', edMatterFind.Text, String(cbAuthor.EditValue), dtpCreated.Date);

       // comented by AES 03/07/2006 replaced by above two lines.
//       neRate.Value := TableCurrency('EMPLOYEE', 'CODE', String(cbAuthor.EditValue), 'RATE');

         cbDept.EditValue := TableString('EMPLOYEE', 'CODE', String(cbAuthor.EditValue), 'DEPT');
         cbFeeBasis.EditValue := MatterString(edMatterFind.Text, 'FEEBASIS');
         cbTaxType.EditValue := MatterString(edMatterFind.Text, 'FEE_TAX_BASIS');
 //      cbDeptClick(Self);
         UpdateAmount;
         CalcRate;
      end
      else
      begin
//       cbAuthor.EditValue := dmAxiom.UserID;
//       cbAuthorChange(Self);
//       if (cmbTemplate.Text = '') or ((TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'AMOUNT') <> 0) and
//          (TableString('SCALECOST','CODE',string(cmbTemplate.EditValue),'ZERO_FEE') = 'N')) then
//          neRate.Value := FeeRate('N', cmbMatterFind.Text, String(cbAuthor.EditValue), dtpCreated.Date);

         cbFeeBasis.EditValue := MatterString(edMatterFind.Text, 'FEEBASIS');
         cbTaxType.EditValue := MatterString(edMatterFind.Text, 'FEE_TAX_BASIS');
         //added by AES 08/10/2008
         cbAuthorPropertiesChange(Self);
         dtpStartTime.Time := GetTime;
         dtpEndTime.Time := GetTime;
      end;
//     CalcRate;
      if Self.Visible then
         cmbTemplate.SetFocus;
//       mmoDesc.SetFocus;
      dtpEndTime.DateTime := IncMinute(dtpStartTime.DateTime, StrToInt(neMinutes.Text));
   end;
   if AMatterChanged then
   begin
      if (cmbTemplate.Text = '') then
      begin
         try
            if (((TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'nvl(AMOUNT,0) as AMOUNT') <> 0) or
               (TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'nvl(RATE,0) as RATE') <> 0)) and
               (TableString('SCALECOST','CODE',string(cmbTemplate.EditValue),'ZERO_FEE') = 'N')) then
               neRate.Value := FeeRate('N', edMatterFind.Text, String(cbAuthor.EditValue), dtpCreated.Date);
         except
           neRate.Value := FeeRate('N', edMatterFind.Text, String(cbAuthor.EditValue), dtpCreated.Date);
         end;

         cbFeeBasis.EditValue := MatterString(edMatterFind.Text, 'FEEBASIS');
         cbTaxType.EditValue := MatterString(edMatterFind.Text, 'FEE_TAX_BASIS');
      end;
   end;
end;

procedure TfrmFeeNew.DisplayFee(iFee : integer; AIsEditing: Boolean);
var
   lblDesc: string;
begin
   with qryFee do
   begin
      neRate.Properties.OnChange := nil;
      Close;
      ParamByName('P_Nfee').AsInteger := iFee;
      Open;
      SetReqFieldsColour('FEE',qryFee, Self);
      if not IsEmpty then
      begin
         if (FieldByName('AUTHOR').AsString <> '') then
         begin
            qFeeEarners.Close;
            qFeeEarners.SQL.Clear;
            qFeeEarners.SQL.Text := strFeeEarners.Strings.Text;
            qFeeEarners.ParamByName('Code').AsString := FieldByName('AUTHOR').AsString;
            qFeeEarners.Open;
         end;    //  end if

         cmbTemplate.Properties.OnEditValueChanged := nil;
         cbAuthor.Properties.OnChange := nil;

         if FieldByName('BILLED').AsString = 'Y' then
         begin
            FBilled := True;
            dtpCreated.Enabled := False;
            cbTaxType.Enabled := False;
            cbAuthor.Enabled := False;
            cbDept.Enabled := False;
            neUnits.Enabled := False;
            neRate.Enabled := False;
            neAmount.Enabled := False;
            neTax.Enabled := False;
            cbFeeBasis.Enabled := False;
            lblInvoiceMsg.Visible := True;
            lblInvoice.Visible := True;
            neMinutes.Enabled := False;
            icmbType.Enabled := False;
            cmbTemplate.enabled := False;
            dfItems.Enabled := False;
            mmoDesc.Properties.ReadOnly := dmAxiom.Security.Fee.Edit;
            chkExcludeFromBill.Enabled := False;
            neValue.Enabled := False;
            neDiscount.Enabled := False;
            lblInvoice.Caption := TableString('NMEMO', 'NMEMO', FieldByName('NMEMO').AsInteger, 'REFNO');
         end
         else
         begin
            cmbTemplate.Properties.OnEditValueChanged := TemplateChange;
            cbAuthor.Properties.OnChange := AuthorChange;
         end;

 //        teMatter.Properties.Buttons.Items[0].Visible := (FieldByName('BILLED').AsString <> 'Y') and (FieldByName('NMEMO').AsInteger = 0);
         edMatterFind.Enabled := (FieldByName('BILLED').AsString <> 'Y') and (FieldByName('NMEMO').AsInteger = 0);
// AES 06/09/2017  added this to disable any events when populating existing fee
         if FEditing = True then
         begin
            neUnits.Properties.OnChange := nil;
            neRate.Properties.OnChange := nil;
            neValue.Properties.OnChange := nil;
            neDiscount.Properties.OnChange := nil;
            neAmount.Properties.OnChange := nil;
            dfItems.Properties.OnChange := nil;
            neTimeAmount.Properties.OnChange := nil;
         end;
         DisplayMatter(FieldByName('FILEID').AsString,AIsEditing);
         FOldFileID := FieldByName('FILEID').AsString;
         FOldAmount := FieldByName('AMOUNT').AsCurrency;
         FOldAmountTax := FieldByName('TAX').AsCurrency;
         FOldAuthor := FieldByName('AUTHOR').AsString;
         FOldTask := FieldByName('TASK').AsString;
         dtpCreated.Date := FieldByName('CREATED').AsDateTime;
         cbAuthor.EditValue := FieldByName('AUTHOR').AsString;
         cbDept.EditValue := FieldByName('DEPT').AsString;
         cbFeeBasis.EditValue := FieldByName('FEEBASIS').AsString;
         cbTaxType.EditValue := FieldByName('TAXCODE').AsString;
         mmoDesc.Text := qryFee.FieldByName('DESCR').AsString;
         neUnits.Text := FieldByName('UNITS').AsString;
         neMinutes.Text := FieldByName('MINS').AsString;
         neRate.Value := FieldByName('RATE').AsCurrency;
         neTax.Value := FieldByName('TAX').AsCurrency;
         cmbTemplate.EditValue := FieldByName('TASK').AsString;
         dfItems.Text := FieldByName('ITEMS').AsString;
         sBillType := FieldByName('BILLTYPE').AsString;
         FEnterAmount := FieldByName('AMOUNT').AsCurrency;
         mmoNotes.Text := qryFee.FieldByName('NOTES').AsString;
         neValue.Value := qryFee.FieldByName('VALUE').AsCurrency;
         neDiscount.Text := qryFee.FieldByName('discount').AsString;
         dtpStartTime.Time := qryFee.FieldByName('START_DATE').AsDateTime;
         dtpEndTime.Time := qryFee.FieldByName('END_DATE').AsDateTime;
         neItem.Value := qryFee.FieldByName('TASK_AMOUNT').AsCurrency;
         neTimeAmount.Value := qryFee.FieldByName('ITEM_AMOUNT').AsCurrency;
         neItemTax.Value := qryFee.FieldByName('TASK_TAX').AsCurrency;

         neItem.Enabled := False;
//         neItem.Value := 0;
//         neTimeAmount.Value := 0;
         if FieldByName('UNIT').AsString = '' then
            lblUnits.Caption := 'Items'
         else
            lblUnits.Caption := FieldByName('UNIT').AsString;
         if FieldByName('TASK').AsString <> '' then
         begin
            lblDesc := trim(TableString('SCALECOST','CODE',FieldByName('TASK').AsString,'UNIT'));
            dfItems.Enabled := (lblDesc <> '');
            if lblDesc <> '' then
               lblUnits.Caption := lblDesc;
            dfItems.Text := FieldByName('ITEMS').AsString;
//            neItem. := True;
         end;
         neAmount.Value := FieldByName('AMOUNT').AsCurrency;
         if qryFee.FieldByName('PRIVATE').AsString = 'Y' then
            chkPrivate.Checked := True
         else
            chkPrivate.Checked := False;
         chkExcludeFromBill.Checked := (qryFee.FieldByName('PRIVATE').AsString = 'Y');

         cmbPracNums.Enabled := True;
//         chkExcludeFromBill.Checked := (qryFee.FieldByName('EXCL_FROM_BILL').AsString = 'Y');

// AES 06/09/2017  added this to re enable any events when populating existing fee
         if FEditing = True then
         begin
            neUnits.Properties.OnChange := neUnitsChange;
            neRate.Properties.OnChange := neRateChange;
            neAmount.Properties.OnChange := neAmountChange;
            neDiscount.Properties.OnChange := neDiscountPropertiesChange;
            neValue.Properties.OnChange := neAmountChange;
            dfItems.Properties.OnChange := dfItemsPropertiesChange;
            neTimeAmount.Properties.OnChange := neRateChange;
         end;
      end;
   end;
//   neRate.Properties.OnChange := neRateChange;
end;

// Diary work: T.H - Moved code from btnSaveClick event to SaveFee to
// be able to obtain an nfee via the return value.
// Diary work: 7/6/2004 T.H - Due to existing code in Diary using the FeeNew
// Save button, had to assign ModalResult the nfee returned (if any)
procedure TfrmFeeNew.btnOkClick(Sender: TObject);
begin
 // if OKtoPost then
 //   btnOK.SetFocus;
  ModalResult := SaveFee();
end;


function TfrmFeeNew.SaveFee(): integer;
var
   bPostingFailed : boolean;
   glComponentSetup : TglComponentSetup;
   sLedgerKey,
   sLedgerKeyDr,
   ANewDocName,
   AParsedDocName,
   AParsedDir : String;
   lnFee: integer;
//   sBillType: string;
begin
//   glComponentSetup := dmAxiom.getGlComponents;
   ModalResult := mrNone;
   lnFee := FillFeeDataSet;
   if OKtoPost then
   begin
      try
         qryFee.Post;

         if not FEditing then
            MatterUpdate(qryFee.FieldByName('NMATTER').AsInteger, 'UNBILL_FEES', qryFee.FieldByName('AMOUNT').AsCurrency)
         else
         begin
            if FOldFileID <> edMatterFind.Text then
            begin
               // Take this amount off the old matter
               MatterUpdate(TableInteger('MATTER', 'FILEID', FOldFileID, 'NMATTER'), 'UNBILL_FEES', 0 - (FOldAmount + FOldAmountTax));
               // And put it on the new
               MatterUpdate(TableInteger('MATTER', 'FILEID', edMatterFind.Text, 'NMATTER'), 'UNBILL_FEES', neAmount.Value + neTax.Value);
            end
            else if FOldAmount <> qryFee.FieldByName('AMOUNT').AsCurrency then
               MatterUpdate(qryFee.FieldByName('NMATTER').AsInteger, 'UNBILL_FEES', qryFee.FieldByName('AMOUNT').AsCurrency - (FOldAmount + FOldAmountTax));
         end;

         qryFee.ApplyUpdates;

         with dmAxiom.qryTmp do
         begin
            Close;
            SQL.Text := 'update fee set notes = ' + quotedstr(mmoNotes.Text)+ ' where nfee = :nfee';
            ParamByName('NFEE').AsInteger := lnFee;
            ExecSQL;
         end;

         if ((dmAxiom.Fee_file_notes = 'Y') and (mmoNotes.Text <> '')) then
         begin
            ANewDocName := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\File Note - ' + qryFee.FieldByName('NFEE').AsString + '_'+
                                     cbAUTHOR.EditValue + '.pdf';
            AParsedDocName := ParseMacros(ANewDocName, TableInteger('MATTER','FILEID',edMatterFind.Text,'NMATTER'));
            AParsedDir := Copy(ExtractFilePath(AParsedDocName),1 ,length(ExtractFilePath(AParsedDocName))-1);
            // check directory exists, if not create it
            if (DirectoryExists(AParsedDir) = False) then
               ForceDirectories(AParsedDir);

            ppFileNoteRpt.AllowPrintToFile := True;
            ppFileNoteRpt.ShowPrintDialog := False;
            ppFileNoteRpt.DeviceType := dtPDF;
            ppFileNoteRpt.PDFSettings.OpenPDFFile := False;
            ppFileNoteRpt.TextFileName := AParsedDocName;

            try
               ppFileNoteRpt.Print;
            finally
               SaveFileNotesToDoc(dtpCREATED.Date, mmoNOTES.Text, mmoDesc.Text,
                                  edMatterFind.Text, cbAUTHOR.EditValue, AParsedDocName, qryFee.FieldByName('NFEE').AsInteger);
            end;

            if cbPrint.Checked = True then
            begin
               ppFileNoteRpt.DeviceType := dtPrinter;
               ppFileNoteRpt.ShowPrintDialog := False;
               ppFileNoteRpt.Print;
            end;
         end;
      except
         on E: Exception do
         begin
            qryFee.RestoreUpdates;
//            dmAxiom.uniInsight.Rollback;
            bPostingFailed := True;
            Screen.Cursor := crDefault;
            MsgErr('Fee posting failed:' + #13#13 + E.Message);
            SaveFee := 0;
            Raise;
         end;
      end;

      qryFee.CommitUpdates; {on success, clear the cache}
      SaveFee := qryFee.FieldByName('NFEE').AsInteger;
      Screen.Cursor := crDefault;
      if chkKeepOpen.Checked then
      begin
         ResetFields;
         SaveFee := 0;
      end
      else
         bEdited := False;
         Self.Close;
  end // End of if OKtoPost
  else
   begin
      qryFee.RestoreUpdates;
//      dmAxiom.uniInsight.Rollback;
      SaveFee := 0;
   end;
end;

function TfrmFeeNew.OKtoPost : boolean;
var
  sTmp : String;
  bOk : boolean;
  dFrom,
  dTo: TDateTime;
begin
   OKtoPost := True;
   sTmp := '';

   bOk  := CheckReqFields('FEE',qryFee);
   OKtoPost := bOk;
   if not bOk then
      exit;

   if (edMatterFind.Text <> '') then
   begin
      if ((MatterIsCurrent(edMatterFind.Text)) and (IsMatterArchived(edMatterFind.Text) = False)) then
         sTmp := sTmp + '       Matter: ' + edMatterFind.Text + ' - not found or is closed' + #13;
   end;

   if (edMatterFind.Text = '') AND (icmbType.EditValue = 'M') then
      sTmp := sTmp + '       Matter' + Chr(13);
   if cbAuthor.EditValue = '' then
      sTmp := '       Author Code' + Chr(13);
  //if cmbMatterFind.EditText = '' then
  //  sTmp := sTmp + '       Matter' + Chr(13);
   dFrom := dtpStartTime.DateTime;
   dTo := dtpEndTime.DateTime;
   if (dFrom > dTo) then
      sTmp := sTmp + '       Start time must be less than end time' + #13;
   if mmoDesc.Text = '' then
      sTmp := sTmp + '       Description' + Chr(13);
   if sTmp <> '' then
   begin
      MsgInfo('Please complete the following Fee details before posting:    ' + Chr(13) + Chr(13) + sTmp);
      OKtoPost := False
   end;
end;

procedure TfrmFeeNew.neRateChange(Sender: TObject);
begin
   bEdited := True;
   UpdateAmount;
end;

procedure TfrmFeeNew.CalcRate;
begin
   if (cmbTemplate.Text = '') or
      ((TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'AMOUNT') <> 0) and
      (TableString('SCALECOST','CODE',string(cmbTemplate.EditValue),'ZERO_FEE') = 'N')) then
//      if cmbTemplate.Text = '' then
      neRate.Value := FeeRate(cbFeeBasis.EditValue, edMatterFind.Text, cbAuthor.EditValue, dtpCreated.Date);
   UpdateAmount;
end;

procedure TfrmFeeNew.UpdateAmount;
var
   bRateItem: boolean;
begin
   bRateItem := False;
   if (cmbTemplate.Text <> '') and (not VarIsNull(cmbTemplate.EditValue)) then
   begin
      if (qryScaleCost.Active = false) then
      begin
         qryScaleCost.close;
         qryScaleCost.ParambyName('p_code').AsString := string(cmbTemplate.EditValue);
         qryScaleCost.Open();
      end;
      try
         bRateItem := ((qryScaleCost.FieldByName('RATE').AsCurrency <> 0) and
//                       (qryScaleCost.FieldByName('AMOUNT').AsCurrency <> 0) and
                       (qryScaleCost.FieldByName('DEFAULTTIME').AsInteger <> 0));
      finally
//         qryScaleCost.Close;
      end;
   end;
   if (neUnits.Text <> '') then
   begin
      if (SystemInteger('TIME_UNITS') > 0) then
      begin
         if ((lblUnits.Caption = 'Units') or (cmbTemplate.Text = '') or
            (TableCurrency('SCALECOST','CODE',string(cmbTemplate.Text), 'RATE') = 0)) then
         begin
            try
               neValue.Value := StrToFloat(neUnits.Text) * neRate.Value / (60 / SystemInteger('TIME_UNITS'));
               if (neDiscount.Text = '0') or (neDiscount.Text = '') then
                  neAmount.Value := neValue.Value
               else
                  neAmount.Value := neValue.Value * (100-StrToInt(neDiscount.Text))/100;

//               neAmount.Value := StrToFloat(neUnits.Text) * neRate.Value / (60 / SystemInteger('TIME_UNITS'));
            except
               neAmount.Value := 0.00;
               neValue.Value := 0.00;
            end;
            try
               neMinutes.Text := FloatToStr(StrToFloat(neUnits.Text) * SystemInteger('TIME_UNITS'));
            except
               neMinutes.Text := '0';
            end;
         end
         else if (lblUnits.Caption = 'Mins') or (cmbTemplate.Text = '') or
                 (TableCurrency('SCALECOST','CODE',string(cmbTemplate.Text), 'RATE') = 0) then
         begin
            try
               neValue.Value := StrToFloat(neUnits.Text) * neRate.Value / 60;
               if (neDiscount.Text = '0') or (neDiscount.Text = '') then
                  neAmount.Value := neValue.Value
               else
                  neAmount.Value := neValue.Value * (100-StrToInt(neDiscount.Text))/100;

//               neAmount.Value := StrToFloat(neUnits.Text) * neRate.Value / 60;
            except
               neAmount.Value := 0.00;
               neValue.Value := 0.00;
            end;
            try
               neMinutes.Text := neUnits.Text;
            except
               neMinutes.Text := '0';
            end;
         end
         else if (lblUnits.Caption <> 'Units') and (string(cmbTemplate.Text) <> '') then
         begin
            try
               if bRateItem then
               begin
 //                 neTimeAmount.Value := neValue.Value * (100-StrToInt(neDiscount.Text))/100;
                  if (dfItems.Text = '0') or (dfItems.Text = '') then
                     dfItems.Text := '1';
                  neItem.Value := StrToInt(dfItems.Text) * neTimeAmount.Value;
                  neValue.Value := StrToFloat(neUnits.Text) * neRate.Value / (60 / SystemInteger('TIME_UNITS')); //FeeRate('N', cmbMatterFind.Text, String(cbAuthor.EditValue), dtpCreated.Date);
                  neAmount.Value := StrToFloat(neUnits.Text) * neRate.Value / (60 / SystemInteger('TIME_UNITS'));
               end
               else
               begin
                  neValue.Value := StrToInt(dfItems.Text) * neRate.Value;
                  if (neDiscount.Text = '0') or (neDiscount.Text = '') then
                     neAmount.Value := neValue.Value
                  else
                     neAmount.Value := neValue.Value * (100-StrToInt(neDiscount.Text))/100;
               end;

//               neAmount.Value := StrToInt(dfItems.Text) * neRate.Value;
            except
               neAmount.Value := 0.00;
               neValue.Value := 0.00;
            end;
            try
               neMinutes.Text := FloatToStr(StrToFloat(neUnits.Text) * SystemInteger('TIME_UNITS'));
            except
               neMinutes.Text := '0';
            end;
         end
         else
         begin
            try
               neValue.Value := StrToFloat(neUnits.Text) * neRate.Value;
               if (neDiscount.Text = '0') or (neDiscount.Text = '') then
                  neAmount.Value := neValue.Value
               else
                  neAmount.Value := neValue.Value * (100-StrToInt(neDiscount.Text))/100;

//               neAmount.Value := StrToFloat(neUnits.Text) * neRate.Value;
            except
               neAmount.Value := 0.00;
               neValue.Value := 0.00;
            end;
         end;
         if neItem.Value <> 0 then
            CalcTax(neItem.Value)
         else
            CalcTax;
//         dtpEndTime.DateTime := IncMinute(dtpStartTime.DateTime, StrToInt(neMinutes.Text));
         dtpStartTime.DateTime := IncMinute(dtpEndTime.DateTime, StrToInt(neMinutes.Text)*-1);
      end
      else
      begin
         if bError = false then
         begin
            bError := true;
            MessageDlg('System Time Units not set in Systemfile', mtError, [mbOK], 0);
         end;
      end;
   end;
end;

procedure TfrmFeeNew.neUnitsChange(Sender: TObject);
begin
   UpdateAmount;
   bEdited := True;
end;

procedure TfrmFeeNew.btnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
   Close;
end;

procedure TfrmFeeNew.mmoDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(mmoDesc);
end;

procedure TfrmFeeNew.mmoNotesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Label19.Caption := IntToStr(length(mmoNotes.Text) )+'/4000';
end;

procedure TfrmFeeNew.CreateFee(sMatter : string; sAuthor : string; sDesc : string; sUnits : string; iMinutes : integer; cRate : currency; cAmount : currency; sFeeType : string);
begin
   if not FEditing then
   begin
      cmbTemplate.Properties.OnEditValueChanged := nil;
      cbAuthor.Properties.OnChange := nil;
      DisplayMatter(sMatter);
      cbAuthor.editValue := sAuthor;
      mmoDesc.Text := sDesc;
      neUnits.Text := sUnits;
      neMinutes.Text := IntToStr(iMinutes);
      neRate.Value := cRate;
      neAmount.Value := cAmount;
      if sFeeType = '' then
         cbFeeBasis.EditValue := '0'
      else
        cbFeeBasis.EditValue := sFeeType;
      cbFeeBasis.OnClick(Self);
      cmbTemplate.Properties.OnEditValueChanged := TemplateChange;
      cbAuthor.Properties.OnChange := AuthorChange;
      dtpEndTime.DateTime := IncMinute(dtpStartTime.DateTime, iMinutes);
   end;
end;

procedure TfrmFeeNew.FormShow(Sender: TObject);
begin
{   Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
   cbFeeBasis.EditValue := '0';
   if not FEditing then
   begin
      if TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISFEEEARNER') = 'Y' then
        cbAuthor.EditValue := dmAxiom.UserID
      else
        cbAuthor.EditValue := qFeeEarnersCODE.AsString;
      if(VarIsNull(cbAuthor.EditValue)) then
        cbDept.EditValue := -1
      else
        cbDept.EditValue := dmAxiom.UserDept;
//      cbFeeBasis.OnClick(Self);
      lblUnits.Caption := 'Units';
      with qryFee do
      begin
        ParamByName('P_Nfee').AsInteger := -1;
        Open;
      end;
   end;
   cbPrint.Checked := SettingLoadBoolean('FEECREATE', 'AUTOPRINTNOTE');
   cbAuthorChange(Self);
 //  cbDeptClick(Self);
   cbTaxTypeChange(Self);   }
   iMtrSearchLimit := SystemInteger('MTRSEARCHLIMIT');
   bMatterValidated := False;
   if FEditing then
   begin
      if (mmoDesc.Enabled = True) then
          mmoDesc.SetFocus;
      Label19.Caption := IntToStr(length(mmoNotes.Text) )+'/4000';
   end;
end;

procedure TfrmFeeNew.btnMatterFindClick(Sender: TObject);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOK then
   begin
      if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '' then
      begin
         if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
            DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)
         else
            MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
      end;
   end;
end;

procedure TfrmFeeNew.btnScaleClick(Sender: TObject);
var
  LScaleCosts: TfrmScaleCosts;
begin
  LScaleCosts := TfrmScaleCosts.Create(Self);
  try
    if LScaleCosts.ShowModal = mrOK then
      begin
        CreateScale(edMatterFind.Text,0,LScaleCosts.qryScaleCosts.FieldByName('CODE').AsString, False);
        if (neAmount.Value <> FEnterAmount) then
          CalcTax;

      end;    //  end if
  finally
    FreeAndNil(LScaleCosts);
  end;
{      ScaleCode := qryScaleCosts.FieldByName('CODE').AsString;
      mmoDesc.Text := qryScaleCosts.FieldByName('DESCR').AsString;
      lblUnits.Caption := qryScaleCosts.FieldByName('UNIT').AsString;
      if qryScaleCosts.FieldByName('AMOUNT').AsCurrency > 0 then
        neAmount.AsCurrency := qryScaleCosts.FieldByName('AMOUNT').AsCurrency
      else
      begin
        neRate.AsCurrency := qryScaleCosts.FieldByName('RATE').AsCurrency;
        UpdateAmount;
      end;
      ScaleAmount := neAmount.AsCurrency;
      qryScaleCosts.Close;
      Release;
    end;
  end;}
end;


procedure TfrmFeeNew.mmoDescExit(Sender: TObject);
begin
  Quickcode(mmoDesc);
{  if (mmoDesc.Text <> '') and (Length(mmoDesc.Text) <= 11) then
  begin
    with qryScaleCost do
    begin
      ParamByName('P_Code').AsString := UpperCase(mmoDesc.Text);
      Open;
      if not EOF then
      begin
        mmoDesc.Text := FieldByName('DESCR').AsString;
        lblUnits.Caption := FieldByName('UNIT').AsString;
        if FieldByName('AMOUNT').AsCurrency > 0.00 then
          neAmount.Value := FieldByName('AMOUNT').AsCurrency
        else
        begin
          neRate.Value := FieldByName('RATE').AsCurrency;
          UpdateAmount;
        end;
      end;
      Close;
    end;
  end;   }
  if SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y' then
      mmoDesc.Text := UpperCase(Trim(mmoDesc.Text))
  else
      mmoDesc.Text := FirstCap(mmoDesc.Text);
end;


procedure TfrmFeeNew.FormClose(Sender: TObject; var Action: TCloseAction);
var
   bCanClose: boolean;
   lResponse: integer;
begin
   bCanClose := True;
{   if bEdited then
   begin
      lResponse := MsgAskCancel('Do you want to save changes?');
      case lResponse of
         mrYes:
                  begin
                     if SaveFee() <> 1 then
                        bCanClose := False;
                  end;
         mrNo: bCanClose := True;
         mrCancel:
                  begin
                     bCanClose := False;
                     Action := caNone;
                  end;
      end;
   end;    }

   if bCanClose then
   begin
      SettingSaveBoolean('FEECREATE','AUTOPRINTNOTE', cbPrint.Checked );
      cbAuthor.Properties.OnChange := nil;
      cmbTemplate.Properties.OnEditValueChanged := nil;
      qryFee.Close;
      qryScaleCost.Close;
      qFeeEarners.Close();
      qryPracNum.Close;

      //if dmAxiom.DictionaryInstalled then
       //  dmAxiom.AddictLiveSpell.RemoveControl(mmodesc);

      Screen.Cursor := crDefault;

      Action := caFree;
   end;
end;

procedure TfrmFeeNew.FormCreate(Sender: TObject);
begin
   bEdited := False;
{   if dmAxiom.DictionaryInstalled then
   begin
      mmodesc.AddictSpell := dmAxiom.Addict;
      mmoNotes.AddictSpell := dmAxiom.Addict;
      mmoDesc.LiveSpelling := True;
   end; }

   FBilled := False;
   qFeeEarners.Open();

   qryMRUList.Close();
   qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
   qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
   qryMRUList.Open();

 //  Height := 252;
//   FEditing := False;
   FOldAmount := 0.0;
   FOldAmountTax := 0.0;
   ScaleCode := '';

   if (SystemString('USE_DECIMAL_UNITS') = 'Y') then
   begin
      If (dmAxiom.EMP_USE_DECIMAL_UNITS = 'N') then
      begin
         neUnits.Properties.Increment := 1;
      end
      else
      begin
         neUnits.Properties.Increment := 0.5;
      end;
   end
   else
   begin
      neUnits.Properties.Increment := 1;
   end;

 //  StringPopulate(cbAuthor.Items, 'EMPLOYEE', 'CODE', 'ACTIVE = ''Y'' AND ISFEEEARNER = ''Y''');
 //  StringPopulate(cbDept.Items, 'EMPDEPT', 'CODE');
   qryEmpDept.Open;
   qryFeeBasisList.Open;
   qryTaxType.Open;
   qryPracNum.Open;
   DefaultTax := get_default_gst('Fee');
   if DefaultTax = '' then
      DefaultTax := dmAxiom.DefaultTax;

   qryScaleCostsList.Open;
   dtpCreated.Date := Now ;
   dtpStartTime.Date := Date;
   dtpEndTime.Date := Date;
   cbTaxType.EditValue := DefaultTax;
   dtpCreated.Properties.MaxDate := Date + 185;
   bError := false;

   icmbType.ItemIndex := 0;

  // show stuff
   Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
   cbFeeBasis.EditValue := '0';
   if not FEditing then
   begin
      if TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISFEEEARNER') = 'Y' then
         cbAuthor.EditValue := dmAxiom.UserID
      else
        cbAuthor.EditValue := qFeeEarnersCODE.AsString;
      // DW 20 SEP 2018 changed "EditValue" to "itemIndex"
      if(VarIsNull(cbAuthor.EditValue)) then
        cbDept.ItemIndex := -1
      else
        cbDept.EditValue := dmAxiom.UserDept;
      lblUnits.Caption := 'Items';
      with qryFee do
      begin
        ParamByName('P_Nfee').AsInteger := -1;
        Open;
      end;
   end;
   cbPrint.Checked := SettingLoadBoolean('FEECREATE', 'AUTOPRINTNOTE');

   cmbTemplate.Properties.OnEditValueChanged := TemplateChange;
   cbAuthor.Properties.OnChange := AuthorChange;

   cbAuthorPropertiesChange(Self);
   cbTaxTypeChange(Self);
   // 14 Sept 2018
//   TdxUserSpellCheckerDictionary(dmAxiom.TSSpellChecker.Dictionaries[1]).DictionaryPath := '.\Spelling\USER_' + dmAxiom.UserID + '.DIC';
   dmAxiom.TSSpellChecker.Check(TcxRichEdit(mmoDesc));
end;

procedure TfrmFeeNew.cbFeeBasisClick(Sender: TObject);
var
  iIdx: Integer;
  qryFeeType: TUniQuery;
begin
{  qryFeeType := TUniQuery.Create(nil);
  with qryFeeType do
  begin
    Session := dmAxiom.uniInsight;
    SQL.Text := 'SELECT DESCR, TAXCODE, BILLABLE, RATE FROM FEETYPE WHERE CODE = :CODE';
    ParamByName('CODE').AsString := cbFeeType.EditValue;
    Open;
    if not IsEmpty then
    begin
 //     lblFeeTypeDescr.Caption := FieldByName('DESCR').AsString;
//      iIdx := cbTaxType.Items.IndexOf(FieldByName('TAXCODE').AsString);
//      if iIdx >= 0 then
//      begin
//        cbTaxType.ItemIndex := iIdx;
//        cbTaxType.OnChange(Self);
//      end;
      if FieldByName('BILLABLE').AsString = 'N' then
      begin
        neRate.Value := 0;
        neAmount.Value := 0;
      end
      else if FieldByName('RATE').AsCurrency > 0 then
      begin
        neRate.Value := FieldByName('RATE').AsCurrency;
        CalcRate;
      end
      else
        CalcRate;
    end;
    Close;
  end;
  qryFeeType.Free;   }
end;

procedure TfrmFeeNew.btnExpandClick(Sender: TObject);
begin
{  if pnlExtra.Visible then
  begin
    // We need to hide the Extras panel
    pnlExtra.Visible := False;
//    pnlNormal.Height := Self.Height - 60;
    Self.Constraints.MinHeight := 258;
    if (Self.WindowState = wsNormal) and
       (Self.Height - pnlExtra.Height + 60 >= Self.Constraints.MinHeight) then
       Self.Height := Self.Height - pnlExtra.Height;
    btnExpand.Caption := '&Extra';
  end
  else
  begin
    // We need to show the Extras panel
    Self.Constraints.MinHeight := 400;  // was 389
    if (Self.WindowState = wsNormal) and
       (Self.Height > Self.Constraints.MinHeight) then
       Self.Height := Self.Height + pnlExtra.Height;
//    pnlNormal.Height := Self.Height - (pnlExtra.Height + 60);
    pnlExtra.Top := pnlNormal.Height;
    pnlExtra.Visible := True;
    btnExpand.Caption := 'Hid&e';
  end;  }
end;

procedure TfrmFeeNew.cbTaxTypeChange(Sender: TObject);
begin
 // lblTaxDescr.Caption := TableString('TAXTYPE', 'CODE', cbTaxType.Text, 'DESCR');
  CalcTax;
  bEdited := True;
end;

procedure TfrmFeeNew.CalcTax(AAmount: double);
var
  dAmount : Double;
begin
   if AAmount = 0 then
      dAmount := neAmount.Value
   else
      dAmount := AAmount;

{   if (cbTaxType.EditValue = 'GSTIN') then
   begin
      if (neAmount.Value = FOldAmount) then
      begin
         dAmount := neAmount.Value + neTax.Value;

      end;    //  end if

   end  //  end if
   else
   begin
      if FOldAmount <> 0 then
         neAmount.Value := FOldAmount;
   end;  }

   if AAmount = 0 then
   begin
      neTax.Value := TaxCalc(dAmount, '', cbTaxType.EditValue, dtpCreated.Date);
      neAmount.Value := dAmount;
   end
   else
   begin
      neTax.EditValue := TaxCalc(dAmount, '', cbTaxType.EditValue, dtpCreated.Date);
      if neItem.Value = 0 then
      begin
         neAmount.EditValue := dAmount;
         neAmount.Value := dAmount;
      end;
   end;

   // task items stuff
   if AAmount = 0 then
      dAmount := neItem.Value
   else
      dAmount := AAmount;

   if AAmount = 0 then
   begin
      neItemTax.Value := TaxCalc(dAmount, '', cbTaxType.EditValue, dtpCreated.Date);
      neItem.Value := dAmount;
   end
   else
   begin
      neItemTax.EditValue := TaxCalc(dAmount, '', cbTaxType.EditValue, dtpCreated.Date);
      neItem.EditValue := dAmount;
      neItem.Value := dAmount;
   end;
end;

procedure TfrmFeeNew.neAmountExit(Sender: TObject);
begin
//  if neAmount.Value <> FEnterAmount then
//    CalcTax;
   if neAmount.ModifiedAfterEnter = true then
      CalcTax;
end;

procedure TfrmFeeNew.neDiscountPropertiesChange(Sender: TObject);
begin
   bEdited := True;
   UpdateAmount;
end;

procedure TfrmFeeNew.sbPrintClick(Sender: TObject);
begin
  ppFileNoteRpt.Print;
end;

procedure TfrmFeeNew.neAmountEnter(Sender: TObject);
begin
//  FEnterAmount := neAmount.Value;
end;

procedure TfrmFeeNew.neAmountChange(Sender: TObject);
begin
   bEdited := True;
  neTax.Enabled := (neAmount.Value < 0);
end;

procedure TfrmFeeNew.cbAuthorPropertiesChange(Sender: TObject);
begin
   if (not FEditing) or (FEditing and (cbAuthor.EditValue <> FOldAuthor)) then
   begin
      // DW 20 SEP 2018 changed "EditValue" to "itemIndex"
      if(VarIsNull(cbAuthor.EditValue)) then
         cbDept.ItemIndex := -1
      else
      begin
         cbDept.EditValue := TableString('EMPLOYEE', 'CODE', String(cbAuthor.EditValue), 'DEPT'); //qFeeEarners.FieldValues['DEPT'];
//         cbDeptClick(Self);
//         if (cmbTemplate.Text = '') or (TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'AMOUNT') = 0) then
//            neRate.Value := FeeRate('N', cmbMatterFind.Text, String(cbAuthor.EditValue), dtpCreated.Date);
         FOldAuthor := cbAuthor.EditValue;
         CalcRate;
      end;
   end;
   bEdited := True;
end;

procedure TfrmFeeNew.cbDeptPropertiesChange(Sender: TObject);
begin
   bEdited := True;
end;

procedure TfrmFeeNew.CreateScale(AsMatter: String; ANMatter: Integer; AScaleCode: String; bNewFee: Boolean);
var
   LabelDesc: string;
   bRateItem: boolean;
begin
   bRateItem := False;
   if bNewFee then DisplayMatter(AsMatter);
   qryScaleCost.close;
   qryScaleCost.ParambyName('p_code').AsString := AScaleCode;
   qryScaleCost.Open();
   try
      bRateItem := ((qryScaleCost.FieldByName('RATE').AsCurrency <> 0) and
                    (qryScaleCost.FieldByName('DEFAULTTIME').AsInteger <> 0));
      LabelDesc := trim(qryScaleCost.FieldByName('UNIT').AsString);
//      neItem.Visible := False;
//      cmbTemplate.EditValue := AScaleCode;
      ScaleCode := AScaleCode;
      if trim(mmoDesc.Text) = '' then
         mmoDesc.Text := qryScaleCost.FieldByName('DESCR').AsString;
      if LabelDesc <> '' then
         lblUnits.Caption := LabelDesc;
      if bRateItem then
      begin
         neRate.Value := FeeRate('N', edMatterFind.Text, String(cbAuthor.EditValue), dtpCreated.Date);  //qryScaleCost.FieldByName('RATE').AsCurrency;
         neTimeAmount.Value := qryScaleCost.FieldByName('RATE').AsCurrency;
//         neTimeRate.Value := FeeRate('N', cmbMatterFind.Text, String(cbAuthor.EditValue), dtpCreated.Date);
         dfItems.Enabled := (LabelDesc <> '');
//         neItem.Visible := True;
         if cmbTemplate.Text <> '' then
         begin
            if dfItems.Enabled then
               dfItems.Text := '1'
            else
               dfItems.Text := '0';
         end;
      end
      else
      if qryScaleCost.FieldByName('AMOUNT').AsCurrency > 0 then
      begin
         neAmount.Value := qryScaleCost.FieldByName('AMOUNT').AsCurrency;
         neRate.Value := qryScaleCost.FieldByName('AMOUNT').AsCurrency;
         dfItems.Enabled := False;
      end
      else
      begin
         if qryScaleCost.FieldByName('RATE').AsCurrency > 0 then
         begin
            neRate.Value := qryScaleCost.FieldByName('RATE').AsCurrency;
            neItem.Value := qryScaleCost.FieldByName('RATE').AsCurrency;
            dfItems.Enabled := (LabelDesc <> '');
            if cmbTemplate.Text <> '' then
            begin
               if dfItems.Enabled then
                  dfItems.Text := '1'
               else
                  dfItems.Text := '0';
            end;
//            UpdateAmount;
         end;
      end;

      if qryScaleCost.FieldByName('ZERO_FEE').AsString = 'N' then
      begin
         UpdateAmount;
         ScaleAmount := neAmount.Value;
         if neItem.Value <> 0 then
            CalcTax(neItem.Value)
         else
            CalcTax;
      end
      else
      begin
         neAmount.Value := 0;
         neRate.Value := 0;
         neTax.Value := 0;
      end;
   finally
//      qryScaleCost.Close();
   end;
end;

procedure TfrmFeeNew.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOK then
   begin
      if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '' then
      begin
         if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
         begin
            MsgErr('You may not post Fees to a matter that is archived.');
            //cmbMatterFind.Text := '';
         end
         else if (IsMatterclosed(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
         begin
            MsgErr('You may not post Fees to a matter that is closed.');
            //cmbMatterFind.Text := '';
         end
         else if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
         begin
            edMatterFind.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
            DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString, FEditing);
            DoBillType(edMatterFind.Text);
            bMatterValidated := True;
         end
         else
            MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
      end;
   end;
end;

procedure TfrmFeeNew.ValidateMatter;
var
      bMatterChanged: Boolean;
begin
   if MatterExists(edMatterFind.Text) then
   begin
      if (MatterString(edMatterFind.Text,'PROSPECTIVE') = 'Y') then
      begin
         If not (ProspectiveFeesAllowed(edMatterFind.Text)) then
         begin
         MsgErr('You may not post Fees to a matter that is Prospective or has exceeded the allowed limit.');
         //cmbMatterFind.Text := '';
         end;
      end
      else if (IsMatterArchived(edMatterFind.Text)) then
      begin
         MsgErr('You may not post Fees to a matter that is archived.');
         //cmbMatterFind.Text := '';
      end
      else if (IsMatterClosed(edMatterFind.Text)) then
      begin
         MsgErr('You may not post Fees to a matter that is closed.');
      end
      else
      begin
         bMatterChanged := ((FOldFileID <> edMatterFind.Text) and (FOldFileID <> ''));
         DisplayMatter(edMatterFind.Text, FEditing, bMatterChanged);
         DoBillType(edMatterFind.Text);
         bMatterValidated := True;
      end;
   end
   else
   begin
      //bMatterValidated := True;
      MsgErr('The selected Matter is not valid.  Please check and re-try.');
      //cmbMatterFind.Text := '';
   end;
end;

procedure TfrmFeeNew.teMatterPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOK then
   begin
      if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '' then
      begin
         if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
            DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)
         else
            MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
      end;
   end;
end;

procedure TfrmFeeNew.teMatterPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if MatterIsCurrent(DisplayValue) then
      DisplayMatter(DisplayValue)
   else
      MsgErr('Matter ' + DisplayValue + ' has been closed');
end;

procedure TfrmFeeNew.cmbTemplatePropertiesChange(Sender: TObject);
begin
   bEdited := True;
end;

procedure TfrmFeeNew.cmbTemplatePropertiesCloseUp(Sender: TObject);
begin
   dfItems.Text := '0';
   dfItems.Enabled := False;
   if (not VarIsNull(cmbTemplate.EditValue)) then
   begin
      if ((cmbTemplate.Text <> '') and (not FBilled))
//         and (neAmount.Value <> FEnterAmount))
      then
         CreateScale(edMatterFind.Text,0,cmbTemplate.Text, False);

      if (cmbTemplate.Text <> '') and
         (not VarIsNull(cmbTemplate.EditValue)) then
      begin
         mmoDesc.SetFocus;
      end;
   end;
end;

procedure TfrmFeeNew.cmbTemplatePropertiesInitPopup(Sender: TObject);
begin
   if (icmbTYPE.EditValue = 'O') or
      VarIsNull(icmbTYPE.EditValue) then
   begin
      if qryScaleCostsList.Active then
         qryScaleCostsList.Close;
      qryScaleCostsList.SQL.Clear;
      if SystemString('LIMIT_SCALECOST_NONBILLABLE') = 'Y' then
      begin
         qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' AND BILLTYPE = ''NonBillable'' ');
         qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
      end
      else
      begin
         qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' ');
         qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
      end;
      qryScaleCostsList.Open;
   end
   else
      if (edMatterFind.Text <> '')  and
         (MatterString(string(edMatterFind.Text),'RESTRICT_WIP_TO_TASK') = 'Y') then
      begin
         if qryScaleCostsList.Active then
            qryScaleCostsList.Close;

         qryScaleCostsList.SQL.Clear;
         qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM MATTER_BUDGETS MB, SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' AND MB.TASK = S.CODE AND ');
         qryScaleCostsList.SQL.Add('MB.NMATTER = :NMATTER ORDER BY S.CODE');

         qryScaleCostsList.ParamByName('NMATTER').Value := MatterString(string(edMatterFind.Text), 'NMATTER');

         qryScaleCostsList.Open;
      end
      else
      begin
            if qryScaleCostsList.Active then
                  qryScaleCostsList.Close;
            qryScaleCostsList.SQL.Clear;
            qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM SCALECOST S ');
            qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' ');
            qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
            qryScaleCostsList.Open;
      end;
end;

procedure TfrmFeeNew.cmbMatterFindPropertiesChange(Sender: TObject);
begin
   bEdited := True;
end;

procedure TfrmFeeNew.cmbMatterFindPropertiesCloseUp(Sender: TObject);
var
   bMatterChanged: boolean;
   lFileID,
   lFoundFileID: string;
begin
{   bMatterChanged := False;
   if (cmbMatterFind.Text <> '') then
   begin
      if cmbMatterFind.Text = 'SEARCH...' then
      begin
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
         if frmMatterSearch.ShowModal = mrOK then
         begin
            if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> '' then
            begin
               if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
               begin
                  MsgErr('You may not post Fees to a matter that is archived.');
                  cmbMatterFind.Text := '';
               end
               else if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
               begin
                  DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString, FEditing);
                  DoBillType(cmbMatterFind.Text);
               end
               else
                  MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
            end;
         end;
      end
      else
      begin
         lFileID := PadFileID(cmbMatterFind.Text);
         dmAxiom.FindMatter(lFoundFileID, lFileID);
         cmbMatterFind.Text := lFoundFileID;
         if MatterExists(cmbMatterFind.Text) then
         begin
            if (IsMatterArchived(cmbMatterFind.Text)) then
            begin
               MsgErr('You may not post Fees to a matter that is archived.');
               cmbMatterFind.Text := '';
            end
            else
            begin
               bMatterChanged := ((FOldFileID <> cmbMatterFind.EditText) and (FOldFileID <> ''));
               DisplayMatter(cmbMatterFind.Text, FEditing, bMatterChanged);
               DoBillType(cmbMatterFind.Text);
            end;
         end
         else
         begin
            bMatterValidated := True;
            MsgErr('The selected Matter is not valid.  Please check and re-try.');
            cmbMatterFind.Text := '';
         end;
      end;
   end;
   bMatterValidated := False;  }
end;

procedure TfrmFeeNew.cmbMatterFindPropertiesEditValueChanged(Sender: TObject);
begin
   if (bMatterValidated = False) then
   begin
      lblMatterDesc.Caption := '';
      lblClient.Caption := '';
   end;
end;

procedure TfrmFeeNew.cmbMatterFindPropertiesInitPopup(Sender: TObject);
begin
    qryMRUList.Refresh;
end;

procedure TfrmFeeNew.dfItemsPropertiesChange(Sender: TObject);
begin
   UpdateAmount;
   bEdited := True;
end;

procedure TfrmFeeNew.PopulateWithoutMatter;
begin
   icmbType.Properties.Items.Clear;
   icmbType.Properties.Items.Add;
   icmbType.Properties.Items.Items[0].Description := 'Overhead';
   icmbType.Properties.Items.Items[0].Value := 'O';
   icmbType.Properties.Items.Items[0].Tag := 0;
   icmbType.Properties.Items.Items[0].ImageIndex := 1;
   icmbType.Properties.Items.Add;
   icmbType.Properties.Items.Items[1].Description := 'Held';
   icmbType.Properties.Items.Items[1].Value := 'H';
   icmbType.Properties.Items.Items[1].Tag := 1;
   icmbType.Properties.Items.Items[1].ImageIndex := 2;
   icmbType.EditValue := 'O';
end;

procedure TfrmFeeNew.PopulateWithMatter;
begin
   icmbType.Properties.Items.Clear;
   icmbType.Properties.Items.Add;
   icmbType.Properties.Items.Items[0].Description := 'Matter';
   icmbType.Properties.Items.Items[0].Value := 'M';
   icmbType.Properties.Items.Items[0].Tag := 0;
   icmbType.Properties.Items.Items[0].ImageIndex := 0;
   icmbType.Properties.Items.Add;
   icmbType.Properties.Items.Items[1].Description := 'Overhead';
   icmbType.Properties.Items.Items[1].Value := 'O';
   icmbType.Properties.Items.Items[1].Tag := 1;
   icmbType.Properties.Items.Items[1].ImageIndex := 1;
   icmbType.Properties.Items.Add;
   icmbType.Properties.Items.Items[2].Description := 'Held';
   icmbType.Properties.Items.Items[2].Value := 'H';
   icmbType.Properties.Items.Items[2].Tag := 2;
   icmbType.Properties.Items.Items[2].ImageIndex := 2;
end;

procedure TfrmFeeNew.PopulateMatterOnly;
begin
   icmbType.Properties.Items.Clear;
   icmbType.Properties.Items.Add;
   icmbType.Properties.Items.Items[0].Description := 'Matter';
   icmbType.Properties.Items.Items[0].Value := 'M';
   icmbType.Properties.Items.Items[0].Tag := 0;
   icmbType.Properties.Items.Items[0].ImageIndex := 0;
end;

procedure TfrmFeeNew.icmbTypePropertiesInitPopup(Sender: TObject);
begin
   inherited;
   if edMatterFind.Text = '' then
      PopulateWithoutMatter
   else
   if edMatterFind.EditValue <> '' then
      PopulateMatterOnly
   else
   if icmbType.Properties.Items.Count = 2 then
      PopulateWithMatter;
end;

procedure TfrmFeeNew.cmbTemplatePropertiesEditValueChanged(
  Sender: TObject);
begin
{   if not FEditing and (cmbTemplate.Text <> '') then
   begin
      CreateScale(cmbMatterFind.EditText,0,cmbTemplate.EditValue, False);
      CalcRate;
   end
   else if FEditing and (cmbTemplate.Text <> '') or (TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'AMOUNT') <> 0) and
      (TableString('SCALECOST','CODE',string(cmbTemplate.EditValue),'ZERO_FEE') = 'N') then
   begin
      CreateScale(cmbMatterFind.EditText,0,cmbTemplate.EditValue, False);  //  qryScaleCostsList.FieldByName('CODE').AsString);
//      if (neAmount.Value <> FEnterAmount) then
//         CalcTax;
      CalcRate;
   end
   else
   begin
      dfItems.Visible := False;
      CalcRate;
   end;    }
end;

procedure TfrmFeeNew.DoBillType(FileId: string);
begin
   qryBillType.Close;
   qryBillType.ParamByName('p_nmatter').AsInteger := TableInteger('MATTER', 'FILEID', FileId, 'NMATTER');
   qryBillType.Open;
   if not qryBillType.Eof then
      sBillType := qryBillType.FieldByName('BillType').AsString
   else
      sBillType := 'Billable';
end;

procedure TfrmFeeNew.dtpCreatedPropertiesChange(Sender: TObject);
begin
   dtpStartTime.Date := dtpCreated.Date;
   dtpEndTime.Date := dtpCreated.Date;
   bEdited := True;
end;

procedure TfrmFeeNew.dtpEndTimeChange(Sender: TObject);
begin
   neUnits.EditValue := CalculateUnits;
   bEdited := True;
end;

procedure TfrmFeeNew.dtpStartTimeChange(Sender: TObject);
begin
   bEdited := True;
end;

procedure TfrmFeeNew.edMatterFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   sNewFileID: string;
begin
   if (Key = vk_Return) then
   begin
      try
         sNewFileID := PadFileID(edMatterFind.Text);
         if (length(sNewFileID) >= iMtrSearchLimit) then
         begin
            try
               LoadMatter(sNewFileID);
            finally
//               edMatterFind.Text := sNewFileID;
            end;
         end
      finally

      end;
   end;
end;

procedure TfrmFeeNew.edMatterFindPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   sNewFileID: string;
begin
   sNewFileID := PadFileID(edMatterFind.Text);
   if (length(sNewFileID) >= iMtrSearchLimit) then
   begin
      try
         LoadMatter(sNewFileID);
      finally
         DisplayValue := sNewFileID;
      end;
   end
end;

procedure TfrmFeeNew.LoadMatter(var AFileID: string);
var
  LFileID: String;
begin
   LFileID := Uppercase(AFileID);
   with dmAxiom.qryNew do
   begin
      Close;
      SQL.Text := 'SELECT matter.fileid as code, phonebook.search||'' ''||matter.shortdescr as descr, ''N'' AS DEFAULTITEM '+
                  'FROM phonebook, matter WHERE matter.nclient = phonebook.nclient ';
      if dmAxiom.Security.Employee.ChangeEntity = False then
      begin
         SQL.Text := SQL.Text + ' AND efematteraccess (matter.nmatter, :author, :entity, :defentity) = 0 ';
         ParamByName('AUTHOR').AsString := dmAxiom.UserID;
         ParamByName('DEFENTITY').AsString := dmAxiom.EmpEntity;
         ParamByName('ENTITY').AsString := dmAxiom.Entity;
      end
      else
         SQL.Text := SQL.Text + 'and matter.entity = '+ QuotedStr(dmAxiom.Entity) ;

      if (Trim(LFileID) <> '') then
         SQL.Text := SQL.Text + ' and contains(matter.dummy,'+ QuotedStr(trim('%'+LFileID+'%')) +') > 0';
      Prepare;
      Open;
      if (dmAxiom.qryNew.RecordCount > 1) and (Trim(LFileID) <> '') then
      begin
         try
            frmGenericSearch := TfrmGenericSearch.Create(Self);
            frmGenericSearch.Caption := 'Select Matter...';
            frmGenericSearch.SQL := SQL.Text;
            if frmGenericSearch.ShowModal = mrOK then
            begin
               LFileID := frmGenericSearch.qrySource.FieldByName('CODE').AsString;
               AFileID := LFileID;
            end
            else
               LFileID := '';
         finally
            begin
               frmGenericSearch.Free();
               Close;
            end;
         end;
      end
      else
      if (dmAxiom.qryNew.RecordCount > 1) and (Trim(LFileID) = '') then
      begin
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
         if frmMatterSearch.ShowModal = mrOk then
         begin
            LFileID := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
            AFileID := LFileID;
         end;
      end
      else
      begin
         if (dmAxiom.qryNew.RecordCount = 1) then
         begin
            LFileID := dmAxiom.qryNew.FieldByName('code').AsString;
            AFileID := LFileID;
         end
         else
         begin
            MsgErr('The selected Matter is not valid.  Please check and re-try.');
            LFileID := '';
            Exit;
         end;
      end;
   end;

   if ((Trim(LFileID) <> '') and MatterExists(LFileID)) then
   begin
      if (IsMatterPrivate(StrToInt(MatterString(LFileID, 'NMATTER')),MatterString(LFileID, 'RESTRICT_ACCESS')) AND
          (dmAxiom.SecureMatterAccess = 'N')) then
      begin
         MsgInfo('This matter is marked as private. You do not have permission to view it.');
      end
      else
      begin
         try
 //           ValidateMatter;
            DisplayMatter(LFileID);
         finally
            edMatterFind.Text := LFileID;
//            edMatterFind.EditText := LFileID;
         end;
      end;
   end
   else
      if (LFileID <> '') then
         MsgErr('The selected Matter is not valid.  Please check and re-try.');

end;


function TfrmFeeNew.FillFeeDataSet: integer;
begin
   if FEditing then
      qryFee.Edit
   else
   begin
      qryFee.Insert;
      qryFee.FieldByName('NFEE').AsInteger := GetSequenceNumber('SQNC_NFEE');
      qryFee.FieldByName('TASK').AsString := ScaleCode;
      qryFee.FieldByName('PROGRAM_NAME').AsString := 'Fee Creation';
      qryFee.FieldByName('EMPCODE').AsString := dmAxiom.UserID;
      qryFee.FieldByName('BILLED').AsString := 'N';

{      if neItem.Visible  then
         qryFee.FieldByName('TASK_AMOUNT').AsCurrency := neItem.Value
      else
         qryFee.FieldByName('TASK_AMOUNT').AsCurrency := ScaleAmount; }
   end;
//
   qryFee.FieldByName('CREATED').AsDateTime := dtpCreated.Date;
   qryFee.FieldByName('TASK').AsString := ScaleCode;
   if (neItem.Visible = True) then
      qryFee.FieldByName('TASK_AMOUNT').AsCurrency := neItem.Value
   else
      qryFee.FieldByName('TASK_AMOUNT').AsCurrency := ScaleAmount;

   qryFee.FieldByName('TASK_TAX').AsCurrency := neItemTax.Value;
//
   qryFee.FieldByName('ITEM_AMOUNT').AsCurrency := neTimeAmount.Value;
   qryFee.FieldByName('AMOUNT').AsCurrency := neAmount.Value;
   qryFee.FieldByName('AUTHOR').AsString := cbAuthor.EditValue;
   qryFee.FieldByName('PARTNER').AsString := MatterString(edMatterFind.Text, 'PARTNER');
   qryFee.FieldByName('BANK_ACCT').AsString := dmAxiom.Entity;
   qryFee.FieldByName('DEPT').AsString := cbDept.EditValue;
   if (mmoDesc.Text <> '') then
      qryFee.FieldByName('DESCR').AsString := mmoDesc.Text;   // Lines.Text;
   qryFee.FieldByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', edMatterFind.Text, 'NMATTER');
   qryFee.FieldByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', edMatterFind.Text, 'NCLIENT');
   qryFee.FieldByName('FILEID').AsString := edMatterFind.Text;
   qryFee.FieldByName('UNIT').AsString := lblUnits.Caption;
   qryFee.FieldByName('UNITS').AsString := neUnits.Text;
   qryFee.FieldByName('RATE').AsCurrency := neRate.Value;
   qryFee.FieldByName('MINS').AsInteger := StrToInt(neMinutes.Text);
   qryFee.FieldByName('TYPE').AsString := 'N';
   qryFee.FieldByName('TAXCODE').AsString := cbTaxType.EditValue;
   qryFee.FieldByName('TAX').AsCurrency := neTax.Value;
   qryFee.FieldByName('ITEMS').AsInteger := StrToInt(dfItems.Text);
   qryFee.FieldByName('LABELCOLOUR').AsInteger := $000C1DFC;   //EventLabelColors[5];  RED
   qryFee.FieldByName('TIME_TYPE').AsString := icmbType.EditValue;
   qryFee.FieldByName('EMP_TYPE').AsString := TableString('EMPLOYEE','CODE',string(cbAuthor.EditValue),'TYPE');
   qryFee.FieldByName('VERSION').AsString := dmAxiom.GetVersionInfo;

   qryFee.FieldByName('START_DATE').AsDateTime := dtpStartTime.DateTime;
   qryFee.FieldByName('END_DATE').AsDateTime := dtpEndTime.DateTime;
   if (neValue.Value = 0) then
      qryFee.FieldByName('VALUE').AsCurrency := neAmount.Value
   else
      qryFee.FieldByName('VALUE').AsCurrency := neValue.Value;

   qryFee.FieldByName('DISCOUNT').AsString := neDiscount.Text;
   if (cmbTemplate.Text <> '') then
      qryFee.FieldByName('nscalecost').AsString := TableString('SCALECOST','CODE',string(cmbTemplate.EditValue),'nscalecost');

{   if chkPrivate.Checked then
      qryFee.FieldByName('PRIVATE').AsString := 'Y'
   else
      qryFee.FieldByName('PRIVATE').AsString := 'N';   }

   if (chkExcludeFromBill.Checked = True) then
      qryFee.FieldByName('PRIVATE').AsString := 'Y'
   else
      qryFee.FieldByName('PRIVATE').AsString := 'N';


{   if chkExcludeFromBill.Checked then
      qryFee.FieldByName('EXCL_FROM_BILL').AsString := 'Y'
   else
      qryFee.FieldByName('EXCL_FROM_BILL').AsString := 'N';  }

   sBillType := TableString('FEEBASIS','CODE',MatterString(string(edMatterFind.Text), 'FEEBASIS'),'BILLTYPE');
   if sBillType = '' then sBillType := 'Billable';

	qryFee.FieldByName('BILLTYPE').AsString := sBillType;

   if (not VarIsNull(cmbTemplate.EditValue)) then
   begin
      try
         qryFee.FieldByName('TASK').AsString := cmbTemplate.EditValue;
      except
         qryFee.FieldByName('TASK').Clear;
      end;
   end;

   if (not VarIsNull(cmbTemplate.EditValue)) and (cmbTemplate.EditValue <> '') then
   begin
      qryFee.FieldByName('TASK').AsString := cmbTemplate.EditValue;
      qryFee.FieldByName('BILLTYPE').AsString := TableString('SCALECOST','CODE',string(cmbTemplate.EditValue),'BILLTYPE');
      if qryFee.FieldByName('BILLTYPE').AsString = 'NonBillable' then
         qryFee.FieldByName('NMEMO').Clear;
   end;
   Result := qryFee.FieldByName('NFEE').AsInteger;
end;

procedure TfrmFeeNew.TemplateChange(Sender: TObject);
begin
   if (cmbTemplate.Text <> '') and (not VarIsNull(cmbTemplate.EditValue)) then
   begin
      if trim(mmoDesc.Text) = '' then
         mmoDesc.Text := TableString('SCALECOST','CODE',string(cmbTemplate.EditValue) ,'DESCR');
      if ((TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'nvl(RATE,0) as RATE') <> 0) or
         (TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'nvl(AMOUNT,0) as RATE') <> 0) and
         (TableString('SCALECOST','CODE',string(cmbTemplate.EditValue),'ZERO_FEE') = 'N')) then
      begin
         CreateScale(edMatterFind.Text,0,cmbTemplate.EditValue, False);
         CalcRate;
      end;
   end
   else
   begin
      if cmbTemplate.Text = '' then
      begin
         dfItems.Enabled := False;
         cmbTemplate.EditValue := '';
         CalcRate;
      end;
   end;
end;

procedure TfrmFeeNew.AuthorChange(Sender: TObject);
begin
   if (not FEditing) or (FEditing and (cbAuthor.EditValue <> FOldAuthor)) then
   begin
      if(VarIsNull(cbAuthor.EditValue)) then
         cbDept.EditValue := -1
      else
      begin
         cbDept.EditValue := TableString('EMPLOYEE', 'CODE', String(cbAuthor.EditValue), 'DEPT'); //qFeeEarners.FieldValues['DEPT'];
//         cbDeptClick(Self);
//         if (cmbTemplate.Text = '') or (TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue),'AMOUNT') = 0) then
//            neRate.Value := FeeRate('N', cmbMatterFind.Text, String(cbAuthor.EditValue), dtpCreated.Date);
         FOldAuthor := cbAuthor.EditValue;
      end;
      if (cmbTemplate.Text = '') then
         CalcRate;
   end;
end;

procedure TfrmFeeNew.mmoDescChange(Sender: TObject);
begin
   bEdited := True;
end;

procedure TfrmFeeNew.mmoDescEnter(Sender: TObject);
begin
//   TcxMemo(Sender).SetSelection(Length(TcxMemo(Sender).Lines.Text) ,0);
{   if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
      TcxMemo(Sender).SelStart := Length(TcxMemo(Sender).Text) + 1
   else
      TcxMemo(Sender).SelectAll; }

{
   if ((cmbTemplate.Text <> '') and (not FBilled) and
      (neAmount.Value <> FEnterAmount)) then
      CreateScale(cmbMatterFind.EditText,0,cmbTemplate.EditValue, False);  //  qryScaleCostsList.FieldByName('CODE').AsString);
}
   if (neAmount.Value <> FEnterAmount) then
      CalcTax;

   if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
      TcxRichEdit(Sender).SelStart := Length(TcxRichEdit(Sender).Text) + 1
   else
      TcxRichEdit(Sender).SelectAll;

end;

procedure TfrmFeeNew.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if dmAxiom.DictionaryInstalled then
   begin
      if Key = VK_F7 then
         dmAxiom.TSSpellChecker.Check( mmoDesc);
   end;
end;

procedure TfrmFeeNew.ppFileNoteRptBeforePrint(Sender: TObject);
begin
  pplblMatter.Caption := edMatterFind.Text;
  pplblMatterDesc.Caption := lblMatterDesc.Caption;
  pplblClient.Caption := lblClient.Caption;
  pplblMinutes.Caption := neMinutes.Text;
  pplblUnits.Caption := neUnits.Text;
  ppMemoDetails.Lines := mmoDesc.Lines;
  pplblFooter.Caption := 'Fee entry dated ' + FormatDateTime('dd/mm/yyyy hh:nn:ss',dtpCreated.Date) +
                         ' entered for ' + cbAuthor.EditValue + ' (' + cbAuthor.EditText+')';
  pplblTransTitle.Caption := dmAxiom.EntityName;
  ppMemoNotes.Text := mmoNotes.Text;
end;

function TfrmFeeNew.CalculateUnits: extended;
var
   Hour, Min, Sec, MSec: Word;
begin
   DecodeTime((dtpEndTime.Time - dtpStartTime.Time), Hour, Min, Sec, MSec);
   CalculateUnits := Round((((Hour*60)+ Min)/dmAxiom.TimeUnits));
end;

procedure TfrmFeeNew.ResetFields;
begin
   FEditing := False;
   FOldFileID := '0';
   FOldAmount := 0;
   FOldAmountTax := 0;
   edMatterFind.Text := '';
   lblMatterDesc.Clear;
   lblClient.Clear;
   mmoDesc.Text := '';
   neUnits.Text := '1';
   neMinutes.Text := '6';
   neTax.Value := 0;
   cmbTemplate.EditValue := '';
   dfItems.Text := '1';
   FEnterAmount := 0;
   mmoNotes.Text := '';
   neDiscount.Text := '0';
   dtpStartTime.Time := qryFee.FieldByName('START_DATE').AsDateTime;
   dtpEndTime.Time := qryFee.FieldByName('END_DATE').AsDateTime;

   neAmount.Value := 0;
   chkPrivate.Checked := False;
end;

procedure TfrmFeeNew.SetAuthorValue(AValue: string);
begin
   cbAuthor.EditValue := AValue;
end;

procedure TfrmFeeNew.SetStartTimeValue(AValue: TDateTime);
begin
   dtpStartTime.DateTime := AValue;
end;

procedure TfrmFeeNew.SetEndTimeValue(AValue: TDateTime);
begin
   dtpEndTime.DateTime := AValue;
end;

procedure TfrmFeeNew.SetUnitsValue(AValue: string);
begin
   neUnits.Text := AValue;
end;

procedure TfrmFeeNew.SetDescriptionValue(AValue: string);
begin
   mmoDesc.Text := AValue;
end;

procedure TfrmFeeNew.SetTaskValue(AValue: string);
begin
   cmbTemplate.EditValue := AValue;
end;

end.





