unit NewTask;

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
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, System.ImageList;

type
  TfrmNewTask = class(TcxSchedulerEventEditorForm)
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    Label9: TLabel;
    neMinutes: TcxTextEdit;
    qryTaxType: TUniQuery;
    dsTaxType: TUniDataSource;
    lblDate: TcxLabel;
    qFeeEarners: TUniQuery;
    dsFeeEarners: TDataSource;
    strFeeEarners: TStringz;
    Label1: TLabel;
    cmbMatterFind: TcxLookupComboBox;
    lblMatterDesc: TcxLabel;
    lblClient: TcxLabel;
    ImageList1: TImageList;
    qryFeeBasisList: TUniQuery;
    dsFeeBasisList: TUniDataSource;
    Label4: TLabel;
    qryScaleCost: TUniQuery;
    Label14: TLabel;
    cbFeeBasis: TcxLookupComboBox;
    cmbTemplate: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    qryScaleCostsList: TUniQuery;
    dsScaleCostsList: TUniDataSource;
    qryBillType: TUniQuery;
    qryFeeTmp: TUniQuery;
    cxLabel1: TcxLabel;
    icmbType: TcxImageComboBox;
    qFeeEarnersCODE: TStringField;
    qFeeEarnersNAME: TStringField;
    qFeeEarnersDEPT: TStringField;
    pnlNotes: TPanel;
    dxBevel1: TdxBevel;
    meNotes: TcxMemo;
    Label2: TLabel;
    btnPrint: TcxButton;
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
    pbLinktoTask: TcxButton;
    dtDate: TcxDateEdit;
    cxLabel3: TcxLabel;
    cmbEmployee: TcxLookupComboBox;
    lblEmployee: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure icbShowTimeAsPropertiesEditValueChanged(Sender: TObject);
    procedure cmbMatterFindPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnScaleClick(Sender: TObject);
    procedure icbShowTimeAsPropertiesInitPopup(Sender: TObject);
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
    procedure cmbMatterFindPropertiesInitPopup(Sender: TObject);
    procedure meMessageEnter(Sender: TObject);
    procedure neRatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure ppFileNoteRptBeforePrint(Sender: TObject);
    procedure pbLinktoTaskClick(Sender: TObject);
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
//    FEmployee: string;
    function CalculateUnits: extended;
    procedure CalcTax;
    procedure UpdateAmount(AUnits, AItems: string; ARate: Double; var AValue: double;
                           var AAmount: double; var AMinutes: integer);
    procedure CalcRate;
    procedure PopulateWithoutMatter;
    procedure PopulateWithMatter;
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
  frmNewTask: TfrmNewTask;

implementation

uses AxiomData, miscfunc, ScaleCosts, MSearch, Matters, citfunc, TimeDiary,
  TableCache, cxSchedulerStorage;

{$R *.dfm}

var
   frmTimeDiary: TfrmTimeDiary;

procedure TfrmNewTask.SetActiveControl;
begin
   inherited SetActiveControl;
   ActiveControl := cmbMatterFind;
end;

procedure TfrmNewTask.LoadEventValuesIntoControls;
begin
   inherited LoadEventValuesIntoControls;
   // call the parent’s method to load the data into the inherited editing controls located on the form

   try
   // load the data into the custom editing controls
      FEditing := False;
      btnDelete.Enabled := False;
      cmbTemplate.Properties.OnEditValueChanged := nil;
      if not VarIsNull(Event.GetCustomFieldValueByIndex(2)) then     //fileid
      begin
         cmbMatterFind.Text := Event.GetCustomFieldValueByIndex(2);
         cmbMatterFind.EditValue := Event.GetCustomFieldValueByIndex(2);
         FEditing := True;
         DisplayMatter(cmbMatterFind.Text, FEditing);
         btnDelete.Enabled := True;
      end;

      if not VarIsNull(Event.GetCustomFieldValueByIndex(3)) then
         neMinutes.Text := Event.GetCustomFieldValueByIndex(3)
      else
         neMinutes.Text := '6';

      if not VarIsNull(Event.GetCustomFieldValueByIndex(6)) then
         icmbType.EditValue := Event.GetCustomFieldValueByIndex(6);

//      dfItems.Visible := False;

      if not VarIsNull(Event.GetCustomFieldValueByIndex(12)) then
         cbFeeBasis.EditValue := Event.GetCustomFieldValueByIndex(12);
      if not VarIsNull(Event.GetCustomFieldValueByIndex(13)) then
         cmbTemplate.EditValue := Event.GetCustomFieldValueByIndex(13);
      if not VarIsNull(Event.GetCustomFieldValueByIndex(14)) then
         sBillType := Event.GetCustomFieldValueByIndex(14);

      if not VarIsNull(Event.GetCustomFieldValueByIndex(11)) then
         dtDate.Date := Event.GetCustomFieldValueByIndex(11);
      lblDate.Caption := FormatDateTime('dddd, mmmm d, yyyy', dtDate.Date);

      if not VarIsNull(Event.GetCustomFieldValueByIndex(18)) then
         meNotes.Text := Event.GetCustomFieldValueByIndex(18);
   except
      on E: Exception do
         ShowMessage('Can''t load data' + #13#10 + E.Message);
   end;
end;

procedure TfrmNewTask.UpdateEventValuesFromControls;
var
   TimeType,
   lversion: string;
   cFeeRate: Currency;
   dUnits, dValue, dAmount: double;
   iMins: integer;
begin
   inherited UpdateEventValuesFromControls; // call the parent’s method to post the data from the inherited editing controls located on the form
   try
      dUnits := CalculateUnits;
      Event.ResourceID := dmAxiom.EmployeeId;
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
      Event.SetCustomFieldValueByIndex(0, cmbEmployee.EditValue);  // author

      if cmbMatterFind.Text <> '' then
         Event.SetCustomFieldValueByIndex(2, cmbMatterFind.EditValue)  //file id
      else
         Event.SetCustomFieldValueByIndex(2, '');

      Event.SetCustomFieldValueByIndex(1, dUnits );
//      Event.SetCustomFieldValueByIndex(3, 6 );
      TimeType := icmbType.EditValue;
      Event.SetCustomFieldValueByIndex(6, TimeType);
      Event.SetCustomFieldValueByIndex(7, 'GST');
      Event.SetCustomFieldValueByIndex(8, dmAxiom.UserID);  // entered_by
      if cmbMatterFind.Text <> '' then
         Event.SetCustomFieldValueByIndex(9, StrToInt(MatterString(cmbMatterFind.Text, 'NMATTER')));  //  TableInteger('MATTER','FILEID',cmbMatterFind.Text, 'NMATTER'));

      Event.SetCustomFieldValueByIndex(11, dtDate.Date );
      Event.SetCustomFieldValueByIndex(12, cbFeeBasis.EditValue );
      Event.SetCustomFieldValueByIndex(13, cmbTemplate.Text );
      Event.SetCustomFieldValueByIndex(18, meNotes.Text );

      if (cmbMatterFind.Text <> '') then
         sBillType := TableString('FEEBASIS','CODE',MatterString(string(cmbMatterFind.EditValue), 'FEEBASIS'),'BILLTYPE');
      if sBillType = '' then sBillType := 'Billable';
      if (not VarIsNull(cmbTemplate.EditValue)) and (cmbTemplate.Text <> '') then
         sBillType := TableString('SCALECOST','CODE',string(cmbTemplate.Text),'BILLTYPE');
      lversion := dmAxiom.GetVersionInfo;
      Event.SetCustomFieldValueByIndex(14, sBillType );
      Event.SetCustomFieldValueByIndex(20, 'Y' );
      Event.SetCustomFieldValueByIndex(24, lversion );
      Event.SetCustomFieldValueByIndex(19, lblMatterDesc.Caption);
      Event.SetCustomFieldValueByIndex(25, 'TASK');
      Event.SetCustomFieldValueByIndex(26, TableString('EMPLOYEE', 'CODE', string(cmbEmployee.EditValue), 'TYPE'));
      Event.SetCustomFieldValueByIndex(27, 'N');

      if cmbMatterFind.Text <> '' then
      begin
         cFeeRate := FeeRate('N', cmbMatterFind.Text, cmbEmployee.EditValue, deStart.CurrentDate);
         Event.SetCustomFieldValueByIndex(5, cFeeRate);

         dValue := 0;
         dAmount := 0;
         iMins := 6;
         UpdateAmount(FloatToStr(dUnits), '1', cFeeRate, dValue, dAmount, iMins);
         Event.SetCustomFieldValueByIndex(4, dAmount);
         Event.SetCustomFieldValueByIndex(5, cFeeRate);
         Event.SetCustomFieldValueByIndex(3, iMins);
         Event.SetCustomFieldValueByIndex(17, TaxCalc(dAmount, '', 'GST', deStart.CurrentDate));
      end;
      Event.Post;

   except
      on E: Exception do
        ShowMessage('Can''t post data' + #13#10 + E.Message);
   end;
end;

procedure TfrmNewTask.DisplayMatter(sMatter: string; AIsEditing: Boolean);
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
      if not (TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISFEEEARNER') = 'Y') then
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


procedure TfrmNewTask.FormCreate(Sender: TObject);
begin
   inherited;
   if dmAxiom.DictionaryInstalled then
   begin
//      dmAxiom.AddictLiveSpell.AddControl(Self.meMessage);
//      AutoLiveSpell.LiveControl :=  meMessage;
//      AutoLiveSpell.LiveSpelling := True;
   end;

   if SystemString('ENFORCE_TIME_DESC_UPPER') = 'Y' then
      meMessage.Properties.CharCase := ecUpperCase
   else
      meMessage.Properties.CharCase := ecNormal;


   qFeeEarners.Open;
//   FEmployee := dmAxiom.Employee;
   qryMRUList.Close;
   qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
   qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
   qryMRUList.Open;

   qryFeeTmp.Close;
   qryFeeTmp.ParamByName('Author').AsString := dmAxiom.UserID;
   qryFeetmp.Open;

   qryScaleCostsList.Open();

   FEditing := False;

   qryFeeBasisList.Open;
   qryTaxType.Open;
   DefaultTax := get_default_gst('Fee');
   if DefaultTax = '' then
      DefaultTax := dmAxiom.DefaultTax;

//  cbTaxType.EditValue := DefaultTax;
  cbFeeBasis.EditValue := '0';

//  lblItems.Visible := False;

  icmbType.ItemIndex := 0;
//  teStart.Properties.Increment := dmAxiom.TimeUnits;
//  teEnd.Properties.Increment := dmAxiom.TimeUnits;
  cmbEmployee.EditValue := dmAxiom.UserID;
  dtDate.Date := Date();
  bBeenHere := False;
//  cmbMatterFind.SetFocus;
end;

procedure TfrmNewTask.FormShow(Sender: TObject);
begin
   inherited;

//   Self.Caption := 'Time entry for ' + TableString('employee','code',FEmployee,'name');//   dmAxiom.UserName;
   Self.Caption := 'Task for ' + dmAxiom.UserName;
   cbFeeBasis.OnClick(Self);

//   cmbMatterFind.SetFocus;
end;

procedure TfrmNewTask.icbShowTimeAsPropertiesEditValueChanged(
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

procedure TfrmNewTask.cmbMatterFindPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
   ARefNo: string;
begin
   inherited;
   if (DisplayValue <> '') and (cmbMatterFind.Text <> 'SEARCH...') then
   begin
      ARefNo := UpperCase(string(DisplayValue));
      if MatterIsCurrent(ARefNo) then
      begin
         if DebtorStopWork(MatterString(ARefNo,'DEBTORSTATUS')) then
            MsgInfo('This matter has been flagged as "Stop Work". No time can be recorded')
         else
         begin
            DisplayMatter(ARefNo, FEditing);

		      DoBillType(ARefNo);
//            UpdateAmount;
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

function TfrmNewTask.CalculateUnits: extended;
var
   Hour, Min, Sec, MSec: Word;
begin
   DecodeTime((teEnd.Time - teStart.Time), Hour, Min, Sec, MSec);
   CalculateUnits := Round((((Hour*60)+ Min)/dmAxiom.TimeUnits));
end;

procedure TfrmNewTask.btnPrintClick(Sender: TObject);
begin
  inherited;
   ppFileNoteRpt.Print;
end;

procedure TfrmNewTask.btnScaleClick(Sender: TObject);
  var
  LScaleCosts: TfrmScaleCosts;
begin
  inherited;
  LScaleCosts := TfrmScaleCosts.Create(Self);
  try
    if LScaleCosts.ShowModal = mrOK then
      begin
        CreateScale(cmbMatterFind.EditText,0,LScaleCosts.qryScaleCosts.FieldByName('CODE').AsString, False);

      end;    //  end if
  finally
    FreeAndNil(LScaleCosts);
  end;
end;

procedure TfrmNewTask.icbShowTimeAsPropertiesInitPopup(
  Sender: TObject);
begin
   inherited;
   icbShowTimeAs.Properties.Images := ImageList1;
end;

procedure TfrmNewTask.CreateScale(AsMatter: String; ANMatter: Integer;

  AScaleCode: String; bNewFee: Boolean);
var
   LabelDesc: string;
begin
   if bNewFee then DisplayMatter(AsMatter);
   qryScaleCost.ParambyName('p_code').AsString := AScaleCode;
   qryScaleCost.Open();
   try
      LabelDesc := trim(qryScaleCost.FieldByName('UNIT').AsString);
      ScaleCode := AScaleCode;
      meMessage.Text := qryScaleCost.FieldByName('DESCR').AsString;
   finally
      qryScaleCost.Close();
   end;
end;

procedure TfrmNewTask.pbLinktoTaskClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmNewTask.CalcTax;
var
  dAmount : Double;
begin

end;

procedure TfrmNewTask.UpdateAmount(AUnits, AItems: string; ARate: Double; var AValue: double;
                                   var AAmount: double; var AMinutes: integer);
var
   Hour, Min, Sec, MSec: Word;
   bRateItem: boolean;
   AItem: double;
begin
   bRateItem := False;
   if (cmbTemplate.Text <> '') then
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

   if (AUnits <> '') then
   begin
      if (SystemInteger('TIME_UNITS') > 0) then
      begin
         try
            if (bRateItem = False) then
            begin
 //              neTimeAmount.Value := neValue.Value * (100-StrToInt(neDiscount.Text))/100;
               if (AItems = '0') or (AItems = '') then
                  AItems := '1';
               AItem := StrToInt(AItems) * ARate;
               AAmount := StrToFloat(AUnits) * ARate / (60 / SystemInteger('TIME_UNITS'));
            end
            else
            begin
               AAmount := StrToInt(AItems) * ARate;
            end;

//            neAmount.Value := StrToInt(dfItems.Text) * neRate.Value;
         except
            AAmount := 0.00;
            AValue := 0.00;
         end;

         try
            AMinutes := round(StrToFloat(AUnits) * SystemInteger('TIME_UNITS'));
         except
            AMinutes := 6;
         end;

         CalcTax;
//       dtpEndTime.DateTime := IncMinute(dtpStartTime.DateTime, StrToInt(neMinutes.Text));
//         dtpStartTime.DateTime := IncMinute(dtpEndTime.DateTime, StrToInt(neMinutes.Text)*-1);
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

procedure TfrmNewTask.meMessageExit(Sender: TObject);
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
       end;
       Close;
     end;
   end;
   meMessage.EditModified := True;
end;

procedure TfrmNewTask.cmbMatterFindPropertiesCloseUp(Sender: TObject);
var
   i: integer;
   ASortOrder: TcxDataSortOrder;
   ASort: string;
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
         end
         else
            cmbMatterFind.Clear;
      end
      else
      if MatterIsCurrent(UpperCase(cmbMatterFind.Text)) then
      begin
         DisplayMatter(UpperCase(cmbMatterFind.Text)) ;
//         cbTaxType.EditValue := MatterString(UpperCase(cmbMatterFind.Text),'FEE_TAX_BASIS');
		   DoBillType(UpperCase(cmbMatterFind.Text));

      end
      else
      begin
         MsgErr('Matter ' + cmbMatterFind.Text + ' is closed');
      end;
   end;
end;

procedure TfrmNewTask.DoBillType(FileId: string);
begin
   qryBillType.Close;
   qryBillType.ParamByName('p_nmatter').AsInteger := TableInteger('MATTER', 'FILEID', FileId, 'NMATTER');
   qryBillType.Open;
   if not qryBillType.Eof then
      sBillType := qryBillType.FieldByName('BillType').AsString
   else
      sBillType := 'Billable';
end;

procedure TfrmNewTask.cbFeeBasisClick(Sender: TObject);
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

procedure TfrmNewTask.CalcRate;
begin
end;

procedure TfrmNewTask.neRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
//   UpdateAmount;
end;

procedure TfrmNewTask.neUnitsPropertiesChange(Sender: TObject);
begin
  inherited;
//  UpdateAmount;
end;

procedure TfrmNewTask.icmbTypePropertiesInitPopup(Sender: TObject);
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

procedure TfrmNewTask.cmbMatterFindExit(Sender: TObject);
begin
   inherited;
   if cmbMatterFind.Text = '' then
      PopulateWithoutMatter;
end;

procedure TfrmNewTask.btnOkClick(Sender: TObject);
begin
   inherited;
   if (not OKtoPost()) then
      ModalResult := mrRetry;
end;

function TfrmNewTask.OKtoPost : boolean;
var
   sTmp : String;
   bOKtoPost: boolean;
begin
   OKtoPost := True;
   sTmp := '';

   bOKtoPost := CheckReqFields('FEETMP');
//   OKtoPost := bOKtoPost;
   if not bOKtoPost then
   begin
      Result := bOKtoPost;
      exit;
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

procedure TfrmNewTask.neUnitsPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   inherited;
//   UpdateAmount;
end;

procedure TfrmNewTask.PopulateWithoutMatter;
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

procedure TfrmNewTask.ppFileNoteRptBeforePrint(Sender: TObject);
begin
  inherited;
  pplblMatter.Caption := cmbMatterFind.EditText;
  pplblMatterDesc.Caption := lblMatterDesc.Caption;
  pplblClient.Caption := lblClient.Caption;
  pplblMinutes.Caption := neMinutes.Text;
  ppMemoDetails.Lines := meMessage.Lines;
  pplblFooter.Caption := 'Task entry dated ' + lblDate.Caption + ' entered for ' +
                         cmbEmployee.EditValue + ' ' + TableString('employee','code', string(cmbEmployee.EditValue),'name');
  pplblTransTitle.Caption := dmAxiom.EntityName;
  ppMemoNotes.Lines := meNotes.Lines;
end;

procedure TfrmNewTask.PopulateWithMatter;
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

procedure TfrmNewTask.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   qFeeEarners.Close;
   if ModalResult = mrRetry then
      Action := caNone;
end;

procedure TfrmNewTask.meMessageKeyPress(Sender: TObject;
  var Key: Char);
begin
   inherited;
   if Key = ' ' then
      QuickCode(Sender);
end;

procedure TfrmNewTask.cmbTemplatePropertiesCloseUp(Sender: TObject);
begin
   inherited;
   if (cmbTemplate.Text <> '') then
   begin
      cmbTemplate.EditValue := cmbTemplate.Text;
      CreateScale(cmbMatterFind.EditText,0,cmbTemplate.Text{cmbTemplate.EditValue}, False);      //  qryScaleCostsList.FieldByName('CODE').AsString);
   end;
end;

procedure TfrmNewTask.cmbTemplatePropertiesInitPopup(Sender: TObject);
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

procedure TfrmNewTask.dfItemsPropertiesChange(Sender: TObject);
begin
   inherited;
//   UpdateAmount(True);
end;

function TfrmNewTask.CheckReqFields(sTableName: String) : BOOLEAN;
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

procedure TfrmNewTask.cmbMatterFindPropertiesInitPopup(
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

procedure TfrmNewTask.meMessageEnter(Sender: TObject);
begin
  inherited;
   if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
      TcxMemo(Sender).SelStart := Length(TcxMemo(Sender).Text) + 1
   else
      TcxMemo(Sender).SelectAll;
end;

end.
