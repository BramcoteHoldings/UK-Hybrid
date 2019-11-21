unit TimeDiaryNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxSchedulerEventEditor, cxLookAndFeelPainters, cxMemo,
  cxDropDownEdit, cxCheckBox, cxSpinEdit, cxTimeEdit, cxCalendar, ExtCtrls,
  cxMaskEdit, cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  StdCtrls, cxButtons, DB, OracleUniProvider, Uni, DBAccess, MemDS, cxLabel, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, stringz,
  ImgList, cxSchedulerUtils, Menus, cxGraphics, cxCustomData, cxRichEdit, ComCtrls,
  cxLookAndFeels, cxCheckComboBox, cxGroupBox, dxBevel, dxCore, cxDateUtils,
  ppParameter, ppDesignLayer, ppCtrls, ppBands, ppStrtch, ppRegion, ppMemo,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxClasses,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, dxSkinsCore, dxSpellCheckerCore,
  dxSpellChecker, System.ImageList;

const
   NotesLabel = 'Notes: '+chr(13)+chr(10)+'(Max 4000 Characters)'+ chr(13)+chr(10)+ '%s/4000';

type
  TfrmTimeDiaryNew = class(TcxSchedulerEventEditorForm)
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    neRate: TcxCurrencyEdit;
    neAmount: TcxCurrencyEdit;
    neMinutes: TcxTextEdit;
    cbTaxType: TcxLookupComboBox;
    qryTaxType: TUniQuery;
    dsTaxType: TUniDataSource;
    lblDate: TcxLabel;
    qFeeEarners: TUniQuery;
    dsFeeEarners: TDataSource;
    strFeeEarners: TStringz;
    lblMatterDesc: TcxLabel;
    lblClient: TcxLabel;
    ImageList1: TImageList;
    qryFeeBasisList: TUniQuery;
    dsFeeBasisList: TUniDataSource;
    neTax: TcxCurrencyEdit;
    qryScaleCost: TUniQuery;
    Label14: TLabel;
    cbFeeBasis: TcxLookupComboBox;
    cmbTemplate: TcxLookupComboBox;
    qryScaleCostsList: TUniQuery;
    dsScaleCostsList: TUniDataSource;
    dfItems: TcxTextEdit;
    qryBillType: TUniQuery;
    qryFeeTmp: TUniQuery;
    icmbType: TcxImageComboBox;
    qFeeEarnersCODE: TStringField;
    qFeeEarnersNAME: TStringField;
    qFeeEarnersDEPT: TStringField;
    meNotes: TcxMemo;
    ppFileNoteRpt: TppReport;
    ppHeaderBand1: TppHeaderBand;
    pplblTransTitle: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
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
    ppRegion1: TppRegion;
    ppLabel8: TppLabel;
    ppMemoNotes: TppMemo;
    ppSummaryBand1: TppSummaryBand;
    pplblFooter: TppLabel;
    ppLine1: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    cmbMatterFind: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    pnlMatter: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    pnlTax: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    liUnits: TdxLayoutItem;
    liItems: TdxLayoutItem;
    pnlNotes: TdxLayoutGroup;
    liNotes: TdxLayoutItem;
    dxLayoutSeparatorItem7: TdxLayoutSeparatorItem;
    pnlTasks: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    btnPrint: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    neUnits: TcxSpinEdit;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    neTimeAmount: TcxCurrencyEdit;
    dxLayoutItem24: TdxLayoutItem;
    neItem: TcxCurrencyEdit;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    neItemTax: TcxCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure teEndPropertiesEditValueChanged(Sender: TObject);
    procedure icbShowTimeAsPropertiesEditValueChanged(Sender: TObject);
    procedure cmbMatterFindPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnScaleClick(Sender: TObject);
    procedure icbShowTimeAsPropertiesInitPopup(Sender: TObject);
    procedure teStartPropertiesChange(Sender: TObject);
    procedure meMessageExit(Sender: TObject);
    procedure cmbMatterFindPropertiesCloseUp(Sender: TObject);
    procedure cbFeeBasisClick(Sender: TObject);
    procedure neUnitsPropertiesChange(Sender: TObject);
    procedure icmbTypePropertiesInitPopup(Sender: TObject);
    procedure cmbMatterFindExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure neUnitsPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure meMessageKeyPress(Sender: TObject; var Key: Char);
    procedure cmbTemplatePropertiesCloseUp(Sender: TObject);
    procedure cmbTemplatePropertiesInitPopup(Sender: TObject);
    procedure dfItemsPropertiesChange(Sender: TObject);
    procedure cmbTemplatePropertiesEditValueChanged(Sender: TObject);
    procedure cmbTemplatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cmbMatterFindPropertiesInitPopup(Sender: TObject);
    procedure meMessageEnter(Sender: TObject);
    procedure neRatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure ppFileNoteRptBeforePrint(Sender: TObject);
    procedure meNotesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbMatterFindPropertiesEditValueChanged(Sender: TObject);
    procedure neRatePropertiesChange(Sender: TObject);
    procedure meMessagePropertiesChange(Sender: TObject);
    procedure meNotesPropertiesChange(Sender: TObject);
    procedure cmbMatterFindKeyPress(Sender: TObject; var Key: Char);
    procedure icmbTypePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FEditing: boolean;
    DefaultTax : String;
    FOldAmount, FOldAmountTax, FEnterAmount: currency;
    ScaleCode: string;
    ScaleAmount: Currency;
    bError : boolean;
    bBeenHere : Boolean;
    sBillType: string;
    FEmployee: string;
    function CalculateUnits: extended;
    procedure CalcTax(AAmount: double = 0);
    procedure UpdateAmount(bFromTimeEdit: boolean = False);
    procedure CalcRate;
    procedure PopulateWithoutMatter;
    procedure PopulateWithMatter;
    procedure PopulateMatterOnly;
    procedure DoBillType(FileId: string);
  protected
    procedure LoadEventValuesIntoControls; override;
    procedure UpdateEventValuesFromControls; override;
    procedure SetActiveControl; override;
    function OKtoPost : boolean;
    function CheckReqFields(sTableName: String) : BOOLEAN;

  public
    { Public declarations }
    procedure DisplayMatter(sMatter: string; AIsEditing: Boolean = False);
    procedure CreateScale(AsMatter: String; ANMatter: Integer; AScaleCode: String; bNewFee: Boolean = True);
  end;

var
  frmTimeDiaryNew: TfrmTimeDiaryNew;

implementation

uses AxiomData, miscfunc, ScaleCosts, MSearch, Matters, citfunc, TimeDiary,
  TableCache, cxSchedulerStorage;

{$R *.dfm}

var
   frmTimeDiary: TfrmTimeDiary;

procedure TfrmTimeDiaryNew.SetActiveControl;
begin
   inherited SetActiveControl;
   ActiveControl := cmbMatterFind;
end;

procedure TfrmTimeDiaryNew.LoadEventValuesIntoControls;
begin
   inherited LoadEventValuesIntoControls;
   // call the parent’s method to load the data into the inherited editing controls located on the form

   try
   // load the data into the custom editing controls
      FEditing := False;
      cmbTemplate.Properties.OnEditValueChanged := nil;
      if not VarIsNull(Event.GetCustomFieldValueByIndex(2)) then     //fileid
      begin
         cmbMatterFind.Text := Event.GetCustomFieldValueByIndex(2);
         cmbMatterFind.EditValue := Event.GetCustomFieldValueByIndex(2);
         FEditing := True;
         DisplayMatter(cmbMatterFind.Text, FEditing);
      end;
      if not VarIsNull(Event.getCustomFieldValueByIndex(16)) then
         if Event.getCustomFieldValueByIndex(16) = 'Item' then
            liItems.Caption := Event.getCustomFieldValueByIndex(16);

      if not VarIsNull(Event.GetCustomFieldValueByIndex(1)) then
         neUnits.EditValue := Event.GetCustomFieldValueByIndex(1);
      if not VarIsNull(Event.GetCustomFieldValueByIndex(3)) then
         neMinutes.Text := Event.GetCustomFieldValueByIndex(3);
      if not VarIsNull(Event.GetCustomFieldValueByIndex(4)) then
      begin
         neAmount.EditValue := Event.GetCustomFieldValueByIndex(4);
         FEnterAmount := neAmount.EditValue;
      end;

      if not VarIsNull(Event.GetCustomFieldValueByIndex(5)) then
         neRate.Text := Event.GetCustomFieldValueByIndex(5);

      if not VarIsNull(Event.GetCustomFieldValueByIndex(6)) then
         icmbType.EditValue := Event.GetCustomFieldValueByIndex(6);

      if not VarIsNull(Event.GetCustomFieldValueByIndex(7)) then
         cbTaxType.EditValue := Event.GetCustomFieldValueByIndex(7);
//      dfItems.Visible := False;
      dfItems.Enabled := False;
      if not VarIsNull(Event.GetCustomFieldValueByIndex(10)) then
      begin
         dfItems.Properties.OnChange := nil;
         dfItems.EditValue := Event.GetCustomFieldValueByIndex(10);
//         dfItems.Visible := True;
         dfItems.Enabled := False;
//         lblItems.Visible := True;
         dfItems.Properties.OnChange := dfItemsPropertiesChange;
      end;
      if not VarIsNull(Event.GetCustomFieldValueByIndex(12)) then
         cbFeeBasis.EditValue := Event.GetCustomFieldValueByIndex(12);
      if not VarIsNull(Event.GetCustomFieldValueByIndex(13)) then
         cmbTemplate.EditValue := Event.GetCustomFieldValueByIndex(13);
      if not VarIsNull(Event.GetCustomFieldValueByIndex(14)) then
         sBillType := Event.GetCustomFieldValueByIndex(14);
      lblDate.Caption := FormatDateTime('dddd, mmmm d, yyyy', deStart.Date);

      if not VarIsNull(Event.GetCustomFieldValueByIndex(17)) then
         neTax.Value := Event.GetCustomFieldValueByIndex(17);

      if not VarIsNull(Event.GetCustomFieldValueByIndex(18)) then
         meNotes.Text := Event.GetCustomFieldValueByIndex(18);

      if VarIsNull(Event.GetCustomFieldValueByIndex(20)) = False then
         neItem.Value := Event.GetCustomFieldValueByIndex(20);

      if VarIsNull(Event.GetCustomFieldValueByIndex(21)) = False then
         neItemTax.Value := Event.GetCustomFieldValueByIndex(21);

      if not FEditing then
      begin
         neUnits.EditValue := CalculateUnits;
         CalcRate;
      end;
      CalcTax;
      dfItems.Enabled := (cmbTemplate.Text <> '');
      cmbTemplate.Properties.OnEditValueChanged := cmbTemplatePropertiesEditValueChanged;
      liNotes.CaptionOptions.Text := Format( NotesLabel ,[IntToStr(length(meNotes.Text) )]);
//      Label5.Caption := IntToStr(length(meNotes.Text) )+'/4000';
      if not VarIsNull(Event.GetCustomFieldValueByIndex(11)) then
         deStart.Date := Event.GetCustomFieldValueByIndex(11);
   except
      on E: Exception do
         ShowMessage('Can''t load data' + #13#10 + E.Message);
   end;
end;

procedure TfrmTimeDiaryNew.UpdateEventValuesFromControls;
var
   TimeType: string;
begin
   inherited UpdateEventValuesFromControls; // call the parent’s method to post the data from the inherited editing controls located on the form
   try
      Event.ResourceID := TableInteger('employee','code',FEmployee, 'nemployee');  //dmAxiom.EmployeeId;
      if icmbType.EditValue = 'O' then
      begin
        Event.caption := 'Overhead - ' + meMessage.Text;
        Event.LabelColor := EventLabelColors[2];
      end
      else
      if icmbType.EditValue = 'H' then
      begin
         Event.caption := 'Hold - ' + meMessage.Text;
         Event.LabelColor := EventLabelColors[3];
      end
      else
      begin
         Event.caption :=  cmbMatterFind.Text + ' - ' + lblMatterDesc.Caption + Copy(TableString('PHONEBOOK','nclient',TableInteger('MATTER','FILEID',cmbMatterFind.Text,'NCLIENT'),'name'),1,40) + ' - ' + Copy(meMessage.Text, 1, 40);
         Event.LabelColor := EventLabelColors[1];
      end;
      Event.Message := meMessage.Text;
      // post the data from the custom editing controls
      Event.SetCustomFieldValueByIndex(0, FEmployee {dmAxiom.UserID});  // author
      Event.SetCustomFieldValueByIndex(1, neUnits.EditValue);  //units
      if cmbMatterFind.Text <> '' then
         Event.SetCustomFieldValueByIndex(2, cmbMatterFind.EditValue)  //file id
      else
         Event.SetCustomFieldValueByIndex(2, '');

      Event.SetCustomFieldValueByIndex(3, neUnits.EditValue);
      Event.SetCustomFieldValueByIndex(4, neAmount.EditValue);
      Event.SetCustomFieldValueByIndex(5, neRate.EditValue);
      TimeType := icmbType.EditValue;
      Event.SetCustomFieldValueByIndex(6, TimeType);
      Event.SetCustomFieldValueByIndex(7, cbTaxType.EditValue);
      Event.SetCustomFieldValueByIndex(8, dmAxiom.UserID);  // entered_by
      if cmbMatterFind.Text <> '' then
         Event.SetCustomFieldValueByIndex(9, StrToInt(MatterString(cmbMatterFind.Text, 'NMATTER')));  //  TableInteger('MATTER','FILEID',cmbMatterFind.Text, 'NMATTER'));
      Event.SetCustomFieldValueByIndex(10, dfItems.EditValue);
      Event.SetCustomFieldValueByIndex(11, deStart.Date);
      Event.SetCustomFieldValueByIndex(12, cbFeeBasis.EditValue );
      Event.SetCustomFieldValueByIndex(13, cmbTemplate.Text );

      if (cmbMatterFind.Text <> '') then
         sBillType := TableString('FEEBASIS','CODE',MatterString(string(cmbMatterFind.EditValue), 'FEEBASIS'),'BILLTYPE');
      if sBillType = '' then sBillType := 'Billable';
      if (not VarIsNull(cmbTemplate.EditValue)) and (cmbTemplate.Text <> '') then
         sBillType := TableString('SCALECOST','CODE',string(cmbTemplate.Text),'BILLTYPE');

      Event.SetCustomFieldValueByIndex(14, sBillType );
//      Event.SetCustomFieldValueByIndex(15, TableString('EMPLOYEE','CODE',FEmployee {dmAxiom.UserID},'TYPE'));
      Event.SetCustomFieldValueByIndex(17, neTax.Value);
      Event.SetCustomFieldValueByIndex(18, meNotes.Text);
      Event.SetCustomFieldValueByIndex(19, lblClient.Caption + ' ' +lblMatterDesc.Caption );
      Event.SetCustomFieldValueByIndex(20, neItem.Value );
      Event.SetCustomFieldValueByIndex(21, neItemTax.Value );
   except
      on E: Exception do
        ShowMessage('Can''t post data' + #13#10 + E.Message);
   end;
end;

procedure TfrmTimeDiaryNew.DisplayMatter(sMatter: string; AIsEditing: Boolean);
var
  lsAuthor : String;
begin
   cmbMatterFind.EditValue := sMatter;
   lblClient.Caption := MatterString(cmbMatterFind.EditText, 'TITLE');
   lblMatterDesc.Caption := MatterString(cmbMatterFind.EditText, 'SHORTDESCR');
   cbFeeBasis.EditValue := MatterString(cmbMatterFind.EditText, 'FEEBASIS');

   PopulateWithMatter;

   icmbType.EditValue := 'M';

   if(not AIsEditing) then
   begin
      if not (TableString('EMPLOYEE', 'CODE', FEmployee {dmAxiom.UserID}, 'ISFEEEARNER') = 'Y') then
      begin
         lsAuthor := MatterString(cmbMatterFind.EditText, 'AUTHOR');
//         cbFeeBasis.EditValue := MatterString

         if (lsAuthor <> '') then
         begin
            qFeeEarners.Close;
            qFeeEarners.SQL.Clear;
            qFeeEarners.SQL.Text := strFeeEarners.Strings.Text;
            qFeeEarners.ParamByName('Code').AsString := lsAuthor;
            qFeeEarners.Open;
         end;    //  end if
      end;
   end;

   if Self.Visible then
      cmbTemplate.SetFocus;  //  meMessage.SetFocus;
end;


procedure TfrmTimeDiaryNew.FormCreate(Sender: TObject);
begin
   inherited;
   pnlTime.Visible := False;
//   if dmAxiom.DictionaryInstalled then
//   begin
//      dmAxiom.AddictLiveSpell.AddControl(Self.meMessage);
//      AutoLiveSpell.LiveControl :=  meMessage;
//      AutoLiveSpell.LiveSpelling := True;
//   end;

   neRate.Properties.OnChange := nil;
   if (SystemString('USE_DECIMAL_UNITS') = 'Y') then
   begin
      If (dmAxiom.EMP_USE_DECIMAL_UNITS = 'N') then
      begin
         neUnits.Properties.ValueType := vtInt;
         neUnits.Properties.Increment := 1;
      end
      else
      begin
         neUnits.Properties.ValueType := vtFloat;
         neUnits.Properties.Increment := 0.5;
      end;
   end
   else
   begin
      neUnits.Properties.ValueType := vtInt;
      neUnits.Properties.Increment := 1;
   end;

   if SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y' then
      meMessage.Properties.CharCase := ecUpperCase
   else
      meMessage.Properties.CharCase := ecNormal;

   FEmployee := dmAxiom.UserID;
   qryMRUList.Close;
   qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
   qryMRUList.ParamByName('P_Author').AsString := FEmployee;  //dmAxiom.UserID;
   qryMRUList.Open;

   qryFeeTmp.Close;
   qryFeeTmp.ParamByName('Author').AsString := FEmployee;
   qryFeetmp.Open;

   qryScaleCostsList.Open();

   FEditing := False;

   qryFeeBasisList.Open;
   qryTaxType.Open;
   DefaultTax := get_default_gst('Fee');
   if DefaultTax = '' then
      DefaultTax := dmAxiom.DefaultTax;

  cbTaxType.EditValue := DefaultTax;
  cbFeeBasis.EditValue := '0';


//  lblItems.Visible := False;

  icmbType.ItemIndex := 0;
//  teStart.Properties.Increment := dmAxiom.TimeUnits;
//  teEnd.Properties.Increment := dmAxiom.TimeUnits;
  bBeenHere := False;
//  cmbMatterFind.SetFocus;
   // 14 Sept 2018
//   TdxUserSpellCheckerDictionary(dmAxiom.TSSpellChecker.Dictionaries[1]).DictionaryPath := '.\Spelling\USER_' + dmAxiom.UserID + '.DIC';
   //dmAxiom.TSSpellChecker.Check(TcxRichEdit(tvFeeListDESCR));

end;

procedure TfrmTimeDiaryNew.FormShow(Sender: TObject);
begin
   inherited;
   deStart.Date := Event.Start;

   Self.Caption := 'Time entry for ' + TableString('employee','code',FEmployee,'name');//   dmAxiom.UserName;
//   Self.Caption := Self.Caption + ' for ' + dmAxiom.UserName;
   cbFeeBasis.OnClick(Self);
//   cmbMatterFind.SetFocus;
   neRate.Properties.OnChange := neRatePropertiesChange;
end;

procedure TfrmTimeDiaryNew.teEndPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  neUnits.EditValue := CalculateUnits;
end;

procedure TfrmTimeDiaryNew.icbShowTimeAsPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   if icbShowTimeAs.EditValue <> 'M' then
   begin
      cmbMatterFind.ClearSelection;
      lblMatterDesc.Clear;
      lblClient.Clear;
   end;
end;

procedure TfrmTimeDiaryNew.cmbMatterFindPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
   ARefNo: string;
begin
   inherited;
   Error := False;
   if (DisplayValue <> '') and (cmbMatterFind.Text <> 'SEARCH...') then
   begin
      ARefNo := PadFileID( UpperCase(string(DisplayValue)));
      if MatterIsCurrent(ARefNo) then
      begin
         if DebtorStopWork(MatterString(ARefNo,'DEBTORSTATUS')) then
         begin
            Error := True;
            ErrorText := 'This matter has been flagged as "Stop Work". No time can be recorded'; // MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded')
            DisplayValue := '';
            icmbType.EditValue := 'O';
            //MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded');
         end
         else if (MatterString(ARefNo,'PROSPECTIVE') = 'Y') then
         begin
            If not (ProspectiveFeesAllowed(ARefNo)) then
            begin
              Error := True;
              ErrorText := 'This matter has been flagged as "Prospective". No time can be recorded'; // MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded')
              DisplayValue := '';
              icmbType.EditValue := 'O';
            end;
         end
         else
         begin
            DisplayMatter(ARefNo, FEditing);
            try
               cbTaxType.EditValue := MatterString(ARefNo,'FEE_TAX_BASIS');
            except
               cbTaxType.EditValue := 'GST';
            end;
            if (cmbTemplate.Text = '') then
               if (TableCurrency('SCALECOST','CODE',cmbTemplate.Text, 'AMOUNT') = 0) then
                  if (TableString('SCALECOST','CODE',cmbTemplate.Text, 'ZERO_FEE') = 'N') then
                     neRate.Value := FeeRate('N', ARefNo, FEmployee {dmAxiom.UserID}, deStart.CurrentDate);
		      DoBillType(ARefNo);
            UpdateAmount;
         end;
      end
      else
      begin
         Error := True;
         MsgErr('Matter ' + ARefNo + ' is closed');
      end;
   end
   else
   begin
      lblClient.Clear;
      lblMatterDesc.Clear;
   end;
end;

function TfrmTimeDiaryNew.CalculateUnits: extended;
   function CalcUnits(ACalculatedUnits: extended): double;
   var
      iunits: double;
      iFracUnits,
      iElapsedTime: double;
   begin
      if iUnits = 0 then
         iUnits := 1
      else
         iUnits := ACalculatedUnits;

      iElapsedTime := teEnd.Time - teStart.Time;
      if (dmAxiom.TimeUnits <> 0) then
      begin
         if ((iUnits * (dmAxiom.TimeUnits*60)) > ACalculatedUnits) then
             iUnits := (iUnits * dmAxiom.TimeUnits)
         else
 //            iUnits := (((FElapsedUnits div 60) div iMinsPerUnit));
      end;
      iFracUnits := DBNumberRounding(frac(ACalculatedUnits),1);
      iUnits := trunc(ACalculatedUnits);
      if iFracUnits > 0 then
      begin
         if (SystemString('USE_DECIMAL_UNITS') = 'Y') then
         begin
            If (dmAxiom.EMP_USE_DECIMAL_UNITS = 'N') then
               iUnits := iUnits + 1
            else
               iUnits := (iUnits + 0.5);
         end
         else
            iUnits := iUnits + 1;
      end;
      Result := iUnits;
   end;
var
   Hour, Min, Sec, MSec: Word;
   CalculatedUnits: extended;
begin
   DecodeTime((teEnd.Time - teStart.Time), Hour, Min, Sec, MSec);
   if (SystemString('USE_DECIMAL_UNITS') = 'Y') then
   begin
      If (dmAxiom.EMP_USE_DECIMAL_UNITS = 'N') then
         CalculatedUnits := Round((((Hour*60)+ Min)/dmAxiom.TimeUnits))
      else
          CalculatedUnits := DBNumberRounding((((Hour*60)+ Min)/dmAxiom.TimeUnits), 1);
   end
   else
      CalculatedUnits := Round((((Hour*60)+ Min)/dmAxiom.TimeUnits));
   Result := CalcUnits(CalculatedUnits);
end;

procedure TfrmTimeDiaryNew.btnPrintClick(Sender: TObject);
begin
  inherited;
   ppFileNoteRpt.Print;
end;

procedure TfrmTimeDiaryNew.btnScaleClick(Sender: TObject);
  var
  LScaleCosts: TfrmScaleCosts;
begin
  inherited;
  LScaleCosts := TfrmScaleCosts.Create(Self);
  try
    if LScaleCosts.ShowModal = mrOK then
      begin
        CreateScale(cmbMatterFind.EditText,0,LScaleCosts.qryScaleCosts.FieldByName('CODE').AsString, False);
        if (neAmount.Value <> FEnterAmount) then
          CalcTax;
      end;    //  end if
  finally
    FreeAndNil(LScaleCosts);
  end;
end;

procedure TfrmTimeDiaryNew.icbShowTimeAsPropertiesInitPopup(
  Sender: TObject);
begin
   inherited;
   icbShowTimeAs.Properties.Images := ImageList1;
end;

procedure TfrmTimeDiaryNew.CreateScale(AsMatter: String; ANMatter: Integer;
  AScaleCode: String; bNewFee: Boolean);
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

      ScaleCode := AScaleCode;
      if trim(meMessage.Text) = '' then
         meMessage.Text := qryScaleCost.FieldByName('DESCR').AsString;
      if LabelDesc <> '' then
         liItems.Caption := LabelDesc;
      if bRateItem then
      begin
         neRate.Value := FeeRate('N', cmbMatterFind.Text, dmAxiom.UserID, deStart.Date);
         neTimeAmount.Value := qryScaleCost.FieldByName('RATE').AsCurrency;

         dfItems.Enabled := (LabelDesc <> '');
//         neItem.Visible := True;
         if cmbTemplate.Text <> '' then
         begin
            if (dfItems.Enabled = True) then
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
               if (dfItems.Enabled = True) then
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

{
   if bNewFee then DisplayMatter(AsMatter);
   qryScaleCost.ParambyName('p_code').AsString := AScaleCode;
   qryScaleCost.Open();
   try
      LabelDesc := trim(qryScaleCost.FieldByName('UNIT').AsString);
      ScaleCode := AScaleCode;
      meMessage.Text := qryScaleCost.FieldByName('DESCR').AsString;
      if LabelDesc <> '' then
      begin
         liItems.Caption := LabelDesc;
         liItems.Visible := True;
      end;
      if qryScaleCost.FieldByName('AMOUNT').AsCurrency > 0 then
      begin
         neRate.Value := qryScaleCost.FieldByName('AMOUNT').AsCurrency;
         dfItems.Enabled := False;
//         dfItems.Visible := False;
//         lblItems.Visible := False;
      end
      else
      begin
         if qryScaleCost.FieldByName('RATE').AsCurrency > 0 then
         begin
            neRate.Value := qryScaleCost.FieldByName('RATE').AsCurrency;
            dfItems.Enabled := (LabelDesc <> '');
//            dfItems.Visible := (LabelDesc <> '');
//            lblItems.Visible := (LabelDesc <> '');
            if cmbTemplate.Text <> '' then
            begin
               if (dfItems.Enabled = True){Visible then
 {                 dfItems.Text := '1'
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
         CalcTax;
      end
      else
      begin
         neAmount.Value := 0;
         neRate.Value := 0;
         neTax.Value := 0;
      end;
   finally
      qryScaleCost.Close();
   end;          }
end;

procedure TfrmTimeDiaryNew.CalcTax(AAmount: double);
var
  dAmount : Double;
begin
   if AAmount = 0 then
      dAmount := neAmount.Value
   else
      dAmount := AAmount;

   if AAmount = 0 then
   begin
      neTax.Value := TaxCalc(dAmount, '', cbTaxType.EditValue, deStart.Date);
      neAmount.Value := dAmount;
   end
   else
   begin
      neTax.EditValue := TaxCalc(dAmount, '', cbTaxType.EditValue, deStart.Date);
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
      neItemTax.Value := TaxCalc(dAmount, '', cbTaxType.EditValue, deStart.Date);
      neItem.Value := dAmount;
   end
   else
   begin
      neItemTax.EditValue := TaxCalc(dAmount, '', cbTaxType.EditValue, deStart.Date);
      neItem.EditValue := dAmount;
      neItem.Value := dAmount;
   end;
end;

procedure TfrmTimeDiaryNew.UpdateAmount(bFromTimeEdit: boolean);
var
   Hour, Min, Sec, MSec: Word;
   ARate: double;
   sTmp: string;
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
                       (qryScaleCost.FieldByName('DEFAULTTIME').AsInteger <> 0));
      finally
//
      end;
   end;

   if (neRate.Value = 0) then
   begin
      if (AnsiPos('$', neRate.Text) > 0)  then
      begin
         sTmp := neRate.Text;
         Delete(sTmp,1, 1);
      end
      else
         sTmp := neRate.Text;
      ARate := StrToFloat(sTmp);
   end
   else
   begin
      if (AnsiPos('$', neRate.Text) > 0)  then
      begin
         sTmp := neRate.Text;
         Delete(sTmp,1, 1);
      end
      else
         sTmp := neRate.Text;

      if neRate.Value <> StrToFloat(sTmp) then
         ARate := StrToFloat(sTmp)
      else
         ARate := neRate.Value;
   end;

   if (dmAxiom.TimeUnits > 0) then
   begin
      if ((not liItems.Visible) or (cmbTemplate.Text = '') or
         (TableCurrency('SCALECOST','CODE',string(cmbTemplate.Text), 'RATE') = 0)) then
      begin
         try
            if ARate > 0 then
               neAmount.Value := neUnits.Value * ARate / (60 / dmAxiom.TimeUnits);
         except
            neAmount.Value := 0.00;
         end;
         try
            begin
               neMinutes.Text := FloatToStr(neUnits.Value * dmAxiom.TimeUnits);
               if not bFromTimeEdit then
               begin
                  DecodeTime(teStart.Time, Hour, Min, Sec, MSec);
                  if neMinutes.EditValue >= 60 then
                  begin
                     Min := Min + neMinutes.EditValue;   // StrToInt(neMinutes.Text);
                     if Min <= 60 then
                     begin
                        Min := Min - 60;
                        Hour := Hour + 1;
                     end
                     else
                     begin
                        Hour := Hour + Min div 60;
                        Min := Min mod 60;
                     end;
                     teEnd.Time := EncodeTime(Hour,Min,Sec, MSec);
                  end
                  else
                  begin
                     Min := Min + neMinutes.EditValue;
                     if Min >= 60 then
                     begin
                        Min := Min - 60;
                        Hour := Hour + 1;
                     end;
                     teEnd.Time := EncodeTime(Hour,Min,Sec, MSec);
                  end;

               end;
            end;
         except
           neMinutes.Text := '0';
         end;
      end
      else if (liUnits.Caption = 'Mins:') or (cmbTemplate.Text = '') or
               (TableCurrency('SCALECOST','CODE',string(cmbTemplate.EditValue), 'RATE') = 0) then
      begin
         try
            if ARate > 0 then
               neAmount.Value := neUnits.Value * ARate / 60;
         except
           neAmount.Value := 0.00;
         end;
         try
           neMinutes.Text := neUnits.Text;
           if not bFromTimeEdit then
           begin
              DecodeTime(teStart.Time, Hour, Min, Sec, MSec);
              if StrToInt(neMinutes.Text) < 60 then
              begin
                 Min := Min + StrToInt(neMinutes.Text);
                 if Min <= 60 then
                 begin
                    Min := Min - 60;
                    Hour := Hour + 1;
                 end
                 else
                 begin
                    Hour := Hour + Min div 60;
                    Min := Min mod 60;
                 end;
                 teEnd.Time := EncodeTime(Hour,Min,Sec, MSec);
              end;
           end;
         except
           neMinutes.Text := '0';
         end;
      end
      else if (bRateItem = True) and (string(cmbTemplate.EditValue) <> '') then
      begin
         try
            if ARate > 0 then
            begin
               neItem.Value := StrToFloat(dfItems.Text) * neTimeAmount.Value;
               neAmount.Value := neUnits.Value * neRate.Value / (60 / dmAxiom.TimeUnits);
            end;
          except
             neItem.Value := 0.00;
         end;
         try
            if VarIsNull(neUnits.Value) = False then
            begin
               neMinutes.Text := FloatToStr(neUnits.Value * dmAxiom.TimeUnits);
               if not bFromTimeEdit then
               begin
                  DecodeTime(teStart.Time, Hour, Min, Sec, MSec);
                  if StrToInt(neMinutes.Text) < 60 then
                  begin
                     Min := Min + StrToInt(neMinutes.Text);
                     if Min >= 60 then
                     begin
                        Min := Min - 60;
                        Hour := Hour + 1;
                     end;
                  end
                  else
                  begin
                     Hour := Hour + Min div 60;
                     Min := Min mod 60;
                  end;
                   teEnd.Time := EncodeTime(Hour, Min, Sec, MSec);
               end;
            end;
         except
             neMinutes.Text := '0';
         end;
      end
      else
      begin
          try
            if ARate > 0 then
               neAmount.Value := neUnits.Value * ARate;
          except
            neAmount.Value := 0.00;
          end;
      end;
      CalcTax;
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

procedure TfrmTimeDiaryNew.teStartPropertiesChange(Sender: TObject);
begin
  inherited;
  neUnits.EditValue := CalculateUnits;
  UpdateAmount(True);
end;

procedure TfrmTimeDiaryNew.meMessageExit(Sender: TObject);
begin
   inherited;
   Quickcode(meMessage);
   if (meMessage.Text <> '') and (Length(meMessage.Text) <= 11) then
   begin
     with qryScaleCost do
     begin
       ParamByName('P_Code').AsString := UpperCase(meMessage.Text);
       Open;
       if not EOF then
       begin
         meMessage.Text := FieldByName('DESCR').AsString;
         liUnits.Caption := FieldByName('UNIT').AsString;
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
   end;
   meMessage.EditModified := True;
end;

procedure TfrmTimeDiaryNew.cmbMatterFindPropertiesCloseUp(Sender: TObject);
var
   i: integer;
   ASortOrder: TcxDataSortOrder;
   ASort,
   ARefNo,
   lFoundFileID: string;
begin
   inherited;
   ASort := '';
   for i := 0 to (TcxLookupComboBox(Sender).Properties.ListColumns.Count - 1) do
   begin
      ASortOrder := TcxLookupComboBox(Sender).Properties.ListColumns[i].SortOrder;
      if ASortOrder in [soAscending, soDescending] then
      begin
         if ASortOrder = soAscending then
            ASort := 'Asc'
         else
            ASort := 'Desc';
         break;
      end;
   end;
   if Asort <> '' then
   begin
      SettingSave('TIME_DIARY','MATTER_ORDER_TYPE',ASort);
      SettingSave('TIME_DIARY','MATTER_ORDER_COLUMN',i);
   end;
   
   if cmbMatterFind.Text <> '' then
   begin
      if cmbMatterFind.Text = 'SEARCH...' then
      begin
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

         if frmMatterSearch.ShowModal = mrOk then
         begin
            cmbMatterFind.EditValue := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
            DisplayMatter(cmbMatterFind.Text, FEditing);
            DoBillType(cmbMatterFind.Text);
            if (cmbTemplate.Text = '') then
               if (TableCurrency('SCALECOST','CODE',string(cmbTemplate.Text),'AMOUNT') = 0) then
               neRate.Value := FeeRate('N', cmbMatterFind.Text, FEmployee {dmAxiom.UserID}, deStart.Date);
            UpdateAmount;
         end
         else
            cmbMatterFind.Clear;
      end
      else
      begin
         ARefNo := PadFileID(cmbMatterFind.Text);
         dmAxiom.FindMatter(lFoundFileID, ARefNo);
//      cmbMatterFind.Text := lFoundFileID;
         if MatterIsCurrent(UpperCase(lFoundFileID)) then
         begin
            DisplayMatter(UpperCase(lFoundFileID));
            cbTaxType.EditValue := MatterString(UpperCase(cmbMatterFind.Text),'FEE_TAX_BASIS');
		      DoBillType(UpperCase(cmbMatterFind.Text));
            if (cmbTemplate.Text = '') then
               if (TableCurrency('SCALECOST','CODE',UpperCase(string(cmbTemplate.Text)),'AMOUNT') = 0) then
               neRate.Value := FeeRate('N', UpperCase(cmbMatterFind.Text), FEmployee {dmAxiom.UserID}, deStart.Date);
            UpdateAmount;
         end
         else
         begin
            MsgErr('Matter ' + cmbMatterFind.Text + ' is closed');
         end;
      end;
   end;
end;

procedure TfrmTimeDiaryNew.cmbMatterFindPropertiesEditValueChanged(
  Sender: TObject);
var
   ARefNo: string;
begin
   inherited;
   if (cmbMatterFind.Text <> '') and (cmbMatterFind.Text <> 'SEARCH...') then
   begin
      ARefNo := PadFileID( UpperCase(string(cmbMatterFind.Text)));
      if MatterIsCurrent(ARefNo) then
      begin
         if DebtorStopWork(MatterString(ARefNo,'DEBTORSTATUS')) then
         begin
            icmbType.EditValue := 'O';
            MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded');
            cmbMatterFind.Text := '';
            cmbMatterFind.Clear;
         end
         else if (MatterString(ARefNo,'PROSPECTIVE') = 'Y') then
         begin
            If not (ProspectiveFeesAllowed(ARefNo)) then
            begin
              MsgInfo('This matter has been flagged as "Prospective". No time can be recorded');
              cmbMatterFind.Text := '';
              icmbType.EditValue := 'O';
              cmbMatterFind.Clear;
            end;
         end
         else
         begin
            DisplayMatter(ARefNo, FEditing);
            try
               cbTaxType.EditValue := MatterString(ARefNo,'FEE_TAX_BASIS');
            except
               cbTaxType.EditValue := 'GST';
            end;
            if (cmbTemplate.Text = '') then
               if (TableCurrency('SCALECOST','CODE',cmbTemplate.Text, 'AMOUNT') = 0) then
                  if (TableString('SCALECOST','CODE',cmbTemplate.Text, 'ZERO_FEE') = 'N') then
                     neRate.Value := FeeRate('N', ARefNo, FEmployee {dmAxiom.UserID}, deStart.CurrentDate);
		      DoBillType(ARefNo);
            UpdateAmount;
         end;
      end
      else
      begin
         MsgErr('Matter ' + ARefNo + ' is closed');
      end;
   end
   else
   begin
      lblClient.Clear;
      lblMatterDesc.Clear;
   end;
   Modified := True;
end;

procedure TfrmTimeDiaryNew.DoBillType(FileId: string);
begin
   qryBillType.Close;
   qryBillType.ParamByName('p_nmatter').AsInteger := TableInteger('MATTER', 'FILEID', FileId, 'NMATTER');
   qryBillType.Open;
   if not qryBillType.Eof then
      sBillType := qryBillType.FieldByName('BillType').AsString
   else
      sBillType := 'Billable';
end;

procedure TfrmTimeDiaryNew.cbFeeBasisClick(Sender: TObject);
  var
  iIdx: Integer;
  qryFeeType: TUniQuery;
begin
  inherited;
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
  qryFeeType.Free;  }
end;

procedure TfrmTimeDiaryNew.CalcRate;
begin
   if (not FEditing) then
   begin
      neRate.Value := FeeRate(cbFeeBasis.EditValue, cmbMatterFind.Text, FEmployee {dmAxiom.UserID}, deStart.Date );
      UpdateAmount;
   end;
end;

procedure TfrmTimeDiaryNew.neRatePropertiesChange(Sender: TObject);
begin
   inherited;
   UpdateAmount;
   Modified := True;
end;

procedure TfrmTimeDiaryNew.neRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
//   UpdateAmount;
end;

procedure TfrmTimeDiaryNew.neUnitsPropertiesChange(Sender: TObject);
begin
  inherited;
  UpdateAmount;
   Modified := True;
end;

procedure TfrmTimeDiaryNew.icmbTypePropertiesEditValueChanged(Sender: TObject);
begin
   inherited;
   if icmbType.EditValue = 'O' then
   begin
      cmbMatterFind.Clear;
      lblMatterDesc.Clear;
      lblClient.Clear;
   end;
end;

procedure TfrmTimeDiaryNew.icmbTypePropertiesInitPopup(Sender: TObject);
begin
   inherited;
   if cmbMatterFind.Text = '' then
      PopulateWithoutMatter
   else
   if cmbMatterFind.EditValue <> '' then
      PopulateWithMatter
   else
   if icmbType.Properties.Items.Count = 2 then
      PopulateWithMatter;
end;

procedure TfrmTimeDiaryNew.cmbMatterFindExit(Sender: TObject);
begin
   inherited;
   if cmbMatterFind.Text = '' then
      PopulateWithoutMatter;
end;

procedure TfrmTimeDiaryNew.cmbMatterFindKeyPress(Sender: TObject;
  var Key: Char);
var
   lFileID,
   lFoundFileID: string;
begin
{   if (key = #$D) then
   begin
      lFileID := PadFileID(cmbMatterFind.Text);
      dmAxiom.FindMatter(lFoundFileID, lFileID);
      cmbMatterFind.Text := lFoundFileID;
      cmbMatterFind.ValidateEdit();
   end; }
end;

procedure TfrmTimeDiaryNew.btnOkClick(Sender: TObject);
begin
   inherited;
   if (OKtoPost()) then
        ModalResult := mrOK;
   //if (not OKtoPost()) then
   //   ModalResult := mrRetry;
end;

function TfrmTimeDiaryNew.OKtoPost : boolean;
var
   sTmp : String;
   bOKtoPost: boolean;
begin
   OKtoPost := True;
   sTmp := '';

   //bOKtoPost := CheckReqFields('FEETMP');
//   OKtoPost := bOKtoPost;
   //if not bOKtoPost then
   if (not CheckReqFields('FEETMP')) then
   begin
      sTmp := sTmp + '       Fee Template' + Chr(13);
      //Result := bOKtoPost;
      //exit;
   end;

   if (cmbMatterFind.EditText = '') AND (icmbType.EditValue = 'M') then
      sTmp := sTmp + '       Matter' + Chr(13);
   if meMessage.Text = '' then
      sTmp := sTmp + '       Description' + Chr(13);
   if sTmp <> '' then
   begin
      MsgInfo('Please complete the following Fee details before posting:    ' + Chr(13) + Chr(13) + sTmp);
      Result := False
   end;
//   FModified := bOKtoPost;
end;

procedure TfrmTimeDiaryNew.neUnitsPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   inherited;
   UpdateAmount;
end;

procedure TfrmTimeDiaryNew.PopulateWithoutMatter;
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
end;

procedure TfrmTimeDiaryNew.ppFileNoteRptBeforePrint(Sender: TObject);
var
   ldCreated: TDateTime;
begin
  inherited;
  pplblMatter.Caption := cmbMatterFind.EditText;
  pplblMatterDesc.Caption := lblMatterDesc.Caption;
  pplblClient.Caption := lblClient.Caption;
  pplblMinutes.Caption := neMinutes.Text;
  pplblUnits.Caption := neUnits.Text;
  ppMemoDetails.Lines := meMessage.Lines;
//  Event.Post;
  if Event.GetCustomFieldValueByIndex(11) = null then
     ldCreated := Now()
  else
     ldCreated := Event.GetCustomFieldValueByIndex(11);
  pplblFooter.Caption := 'Fee entry dated ' +  FormatDateTime('dd/mm/yyyy hh:nn:ss',deStart.Date) + ' entered for ' +
                         femployee + ' ' + TableString('employee','code',femployee,'name');
  pplblTransTitle.Caption := dmAxiom.EntityName;
  ppMemoNotes.Text := meNotes.Text;
end;

procedure TfrmTimeDiaryNew.PopulateWithMatter;
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

procedure TfrmTimeDiaryNew.PopulateMatterOnly;
begin
   icmbType.Properties.Items.Clear;
   icmbType.Properties.Items.Add;
   icmbType.Properties.Items.Items[0].Description := 'Matter';
   icmbType.Properties.Items.Items[0].Value := 'M';
   icmbType.Properties.Items.Items[0].Tag := 0;
   icmbType.Properties.Items.Items[0].ImageIndex := 0;
end;

procedure TfrmTimeDiaryNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   if ModalResult = mrRetry then
      Action := caNone;
end;

procedure TfrmTimeDiaryNew.meMessageKeyPress(Sender: TObject;
  var Key: Char);
begin
   inherited;
   if Key = ' ' then
      QuickCode(Sender);
end;

procedure TfrmTimeDiaryNew.meMessagePropertiesChange(Sender: TObject);
begin
   inherited;
   Modified := True;
end;

procedure TfrmTimeDiaryNew.meNotesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   liNotes.CaptionOptions.Text := Format( NotesLabel ,[IntToStr(length(meNotes.Text) )]);
//   Label5.Caption := IntToStr(length(meNotes.Text) )+'/4000';
end;

procedure TfrmTimeDiaryNew.meNotesPropertiesChange(Sender: TObject);
begin
  inherited;
   Modified := True;
end;

procedure TfrmTimeDiaryNew.cmbTemplatePropertiesCloseUp(Sender: TObject);
begin
   inherited;
   if (cmbTemplate.Text <> '') then
   begin
      cmbTemplate.EditValue := cmbTemplate.Text;
      CreateScale(cmbMatterFind.EditText,0,cmbTemplate.Text{cmbTemplate.EditValue}, False);      //  qryScaleCostsList.FieldByName('CODE').AsString);
      if (neAmount.Value <> FEnterAmount) then
         CalcTax;
   end;
end;

procedure TfrmTimeDiaryNew.cmbTemplatePropertiesInitPopup(Sender: TObject);
begin
   inherited;
   qryScaleCostsList.Refresh;
   if (icmbType.EditValue = 'O') or
      VarIsNull(icmbType.EditValue) then
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
      if (not VarIsNull(cmbMatterFind.EditValue)) and
         (MatterString(string(cmbMatterFind.EditValue),'RESTRICT_WIP_TO_TASK') = 'Y') then
      begin
         if qryScaleCostsList.Active then
            qryScaleCostsList.Close;

         qryScaleCostsList.SQL.Clear;
         qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM MATTER_BUDGETS MB, SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' AND MB.TASK = S.CODE AND ');
         qryScaleCostsList.SQL.Add('MB.NMATTER = :NMATTER ORDER BY S.CODE');

         qryScaleCostsList.ParamByName('NMATTER').Value := MatterString(string(cmbMatterFind.EditValue), 'NMATTER');

//         LookupProp := TcxLookupComboBox(AEdit).Properties;
//         LookupProp.ListSource := dsScaleCostsList;
         qryScaleCostsList.Open;
      end
      else
      if (icmbTYPE.EditValue = 'M') and (SystemString('LIMIT_SCALECOST_BILLABLE') = 'Y') then
      begin
         if qryScaleCostsList.Active then
               qryScaleCostsList.Close;
         qryScaleCostsList.SQL.Clear;
         qryScaleCostsList.SQL.Add('SELECT distinct S.* FROM SCALECOST S ');
         qryScaleCostsList.SQL.Add('WHERE S.ACTIVE = ''Y'' AND BILLTYPE = ''Billable''  ');
         qryScaleCostsList.SQL.Add('ORDER BY S.CODE');
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

procedure TfrmTimeDiaryNew.dfItemsPropertiesChange(Sender: TObject);
begin
   inherited;
   UpdateAmount(True);
end;

procedure TfrmTimeDiaryNew.cmbTemplatePropertiesEditValueChanged(
  Sender: TObject);
begin
   inherited;
   if (cmbTemplate.Text <> '') then
   begin
      dfItems.Enabled := False;
      cmbTemplate.EditValue := cmbTemplate.Text;
      CreateScale(cmbMatterFind.EditText,0,cmbTemplate.Text{cmbTemplate.EditValue}, False);

      {         if (TableCurrency('SCALECOST','CODE',cmbTemplate.Text, 'AMOUNT') = 0) then
            if (TableString('SCALECOST','CODE',cmbTemplate.Text, 'ZERO_FEE') = 'N') then
   //            neRate.Value := FeeRate('N', cmbMatterFind.Text, FEmployee {dmAxiom.UserID} {MatterString(cmbMatterFind.EditText, 'AUTHOR'), deStart.Date);
}
      UpdateAmount(True);
      if (neAmount.Value <> FEnterAmount) then
         CalcTax;
   end;
   Modified := True;
end;

function TfrmTimeDiaryNew.CheckReqFields(sTableName: String) : BOOLEAN;
var
   sMessage : String;
   iloop    : Integer;
   AList    : TcxSchedulerStorageFields;
begin
   sMessage := '';
   dmTableCache.LoadVirtualTable(dmTableCache.vtReqFields,'REQFIELD','');
   UpdateEventValuesFromControls;

   if (Event.GetCustomFieldValueByIndex(13) = null) or
      (Event.GetCustomFieldValueByIndex(13) = '') then
   begin
   // can this field be null?
      dmTableCache.vtReqFields.First;
      while not dmTableCache.vtReqFields.eof do
      begin
         if (dmTableCache.vtReqFields.FieldByName('TABLE_NAME').AsString = sTableName) and
            (dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString = 'FEE_TEMPLATE') then
         begin
            if  dmTableCache.vtReqFields.FieldByName('MESSAGE').AsString <> '' then
               sMessage := sMessage + dmTableCache.vtReqFields.FieldByName('MESSAGE').AsString + #13
            else
               sMessage := sMessage + 'Field '+dmTableCache.vtReqFields.FieldByName('FIELD_NAME').AsString +' must contain a value ' + #13;
         end;
         dmTableCache.vtReqFields.next;
      end;
   end;

   if (sMessage <> '') then
      MessageDlg(sMessage, mtError, [mbOk], 0);

   Result := (sMessage = '');
end;

procedure TfrmTimeDiaryNew.cmbTemplatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   inherited;
   if (DisplayValue <> '') then
   begin
      CreateScale(cmbMatterFind.EditText,0,cmbTemplate.Text{cmbTemplate.EditValue}, False);  //  qryScaleCostsList.FieldByName('CODE').AsString);
      if (neAmount.Value <> FEnterAmount) then
         CalcTax;
   end;
end;

procedure TfrmTimeDiaryNew.cmbMatterFindPropertiesInitPopup(
  Sender: TObject);
var
   ASort: string;
   ASortColumn: integer;
begin
   qryMRUList.Refresh;
   ASort := SettingLoadString('TIME_DIARY','MATTER_ORDER_TYPE');
   ASortColumn := SettingLoadInteger('TIME_DIARY','MATTER_ORDER_COLUMN');
   if Asort <> '' then
   begin
      if ASort = 'Asc' then
         TcxLookupComboBox(Sender).Properties.ListColumns[ASortColumn].SortOrder := soAscending
      else
         TcxLookupComboBox(Sender).Properties.ListColumns[ASortColumn].SortOrder := soDescending;
   end;
   inherited
end;

procedure TfrmTimeDiaryNew.meMessageEnter(Sender: TObject);
begin
  inherited;
   if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
      TcxMemo(Sender).SelStart := Length(TcxMemo(Sender).Text) + 1
   else
      TcxMemo(Sender).SelectAll;
end;

end.
