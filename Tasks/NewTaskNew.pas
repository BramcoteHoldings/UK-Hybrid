unit NewTaskNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxSchedulerEventEditor, cxLookAndFeelPainters, cxMemo,
  cxDropDownEdit, cxCheckBox, cxSpinEdit, cxTimeEdit, cxCalendar, ExtCtrls,
  cxMaskEdit, cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  StdCtrls, cxButtons, DB, OracleUniProvider, Uni, DBAccess, MemDS, cxLabel, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, stringz,
  ImgList, cxSchedulerUtils, Menus, cxGraphics, cxCustomData,
  cxRichEdit, ComCtrls, cxLookAndFeels, cxCheckComboBox, cxGroupBox, dxBevel, dxCore, cxDateUtils,
  ppParameter, ppDesignLayer, ppCtrls, ppBands, ppStrtch, ppRegion, ppMemo,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxClasses,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, dxSkinsCore,
  cxSchedulerStorage, DateUtils, System.ImageList;

const
   NotesLabel = 'Notes: '+chr(13)+chr(10)+'(Max 4000 Characters)'+ chr(13)+chr(10)+ '%s/4000';

type
    TcxIsTaskInformationFilledEvent = function: Boolean of object;

    { TcxSchedulerEventEditorCustomizedHelper }

    TcxSchedulerEventEditorCustomizedHelper = class(TcxSchedulerEventEditorFormHelper)
    private
      FOnIsTaskInformationFilled: TcxIsTaskInformationFilledEvent;
      function IsTaskInformationFilled: Boolean;
    protected
      procedure Save(var AModalResult: TModalResult); override;
      property OnIsCustomerInformationFilled: TcxIsTaskInformationFilledEvent read FOnIsTaskInformationFilled
        write FOnIsTaskInformationFilled;
    end;

  TfrmNewTaskNew = class(TcxSchedulerEventEditorForm)
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    neUnits: TcxTextEdit;
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
    dxLayoutItem17: TdxLayoutItem;
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
    pnlEmployee: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    cmbEmployee: TcxLookupComboBox;
    UniQuery1: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DataSource1: TDataSource;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure deEndPropertiesChange(Sender: TObject);
    procedure deStartPropertiesChange(Sender: TObject);
    procedure meMessagePropertiesChange(Sender: TObject);
    procedure neRatePropertiesChange(Sender: TObject);
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
    procedure CalcTax;
    procedure UpdateAmount(AUnits, AItems: string; ARate: Double; var AValue: double;
                           var AAmount: double; var AMinutes: integer);
    procedure CalcRate;
    procedure PopulateWithoutMatter;
    procedure PopulateWithMatter;
    procedure PopulateMatterOnly;
    procedure DoBillType(FileId: string);

    function GetHelper: TcxSchedulerEventEditorCustomizedHelper;
    function HelperIsTaskInformationFilledHandler: Boolean;

  protected
    procedure LoadEventValuesIntoControls; override;
    procedure UpdateEventValuesFromControls; override;
    procedure SetActiveControl; override;
    function OKtoPost : boolean;
    function CheckReqFields(sTableName: String) : BOOLEAN;

    function IsTaskInformationFilled: Boolean; virtual;
    function GetHelperClass: TcxSchedulerEditorHelperClass; override;
    procedure InitializeHelper(AEvent: TcxSchedulerControlEvent); override;

    property Helper: TcxSchedulerEventEditorCustomizedHelper read GetHelper;

  public
    { Public declarations }
    procedure DisplayMatter(sMatter: string; AIsEditing: Boolean = False);
    procedure CreateScale(AsMatter: String; ANMatter: Integer; AScaleCode: String; bNewFee: Boolean = True);
//    constructor CreateEx(AEvent: TcxSchedulerControlEvent); override;
  end;

var
  frmNewTaskNew: TfrmNewTaskNew;

implementation

uses AxiomData, miscfunc, ScaleCosts, MSearch, Matters, citfunc,
  TableCache, cxSchedulerDialogs;

{$R *.dfm}

var
   lValue: double;
   lAmount: double;
   lMinutes: integer;

{constructor TfrmNewTaskNew.CreateEx(AEvent: TcxSchedulerControlEvent);
begin
//   inherited CreateEx(AEvent);
//   Modified := True;
//   Intersection := True;
end;
}

procedure TcxSchedulerEventEditorCustomizedHelper.Save(
 var AModalResult: TModalResult);
 begin
  // check whether or not the task information is complete
   if IsTaskInformationFilled then
      inherited Save(AModalResult)
   else
   begin
      // editor form should not be closed
      AModalResult := mrNone;
      ShowMessage('Task information is incomplete');
   end;
end;

function TcxSchedulerEventEditorCustomizedHelper.IsTaskInformationFilled: Boolean;
begin
   Result := True;
   if Assigned(OnIsCustomerInformationFilled) then
      Result := OnIsCustomerInformationFilled;
end;

procedure TfrmNewTaskNew.SetActiveControl;
begin
   inherited SetActiveControl;
   ActiveControl := cmbMatterFind;
end;

function TfrmNewTaskNew.IsTaskInformationFilled;
begin
   Result := True;
// if VarIsNull(teFirstName.EditValue) or VarIsNull(teLastName.EditValue)
//   or VarIsNull(cbGender.EditValue) then
//   Result := False;
end;

function TfrmNewTaskNew.GetHelperClass: TcxSchedulerEditorHelperClass;
begin
   // define your own helper class
   Result := TcxSchedulerEventEditorCustomizedHelper;
end;

procedure TfrmNewTaskNew.InitializeHelper(
 AEvent: TcxSchedulerControlEvent);
begin
   inherited;
   Helper.OnIsCustomerInformationFilled := HelperIsTaskInformationFilledHandler;
end;

function TfrmNewTaskNew.GetHelper: TcxSchedulerEventEditorCustomizedHelper;
begin
   Result := TcxSchedulerEventEditorCustomizedHelper(inherited Helper);
end;

function TfrmNewTaskNew.HelperIsTaskInformationFilledHandler: Boolean;
begin
   // helper's OnIsTaskInformationFilled event handler
   Result := IsTaskInformationFilled;
end;

procedure TfrmNewTaskNew.LoadEventValuesIntoControls;
begin
   inherited LoadEventValuesIntoControls;
   // call the parent’s method to load the data into the inherited editing controls located on the form

   try
   // load the data into the custom editing controls
      FEditing := False;
      btnDelete.Enabled := False;
      cmbTemplate.Properties.OnEditValueChanged := nil;
      if (VarIsNull(Event.GetCustomFieldValueByIndex(2)) = False) then   // fileid
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

      if not VarIsNull(Event.GetCustomFieldValueByName('RATE')) then
         neRate.EditValue := Event.GetCustomFieldValueByName('RATE');

      //deStart.Date := now;
      deStart.Date := date;
      teStart.Time := now - date;
      //deEnd.Date := incMinute(now,neMinutes.EditValue) ;
      teEnd.Time := incMinute(now,neMinutes.EditValue);
      deEnd.Date := trunc(date);

      neUnits.EditValue := CalculateUnits;

      lblDate.Caption := FormatDateTime('dddd, mmmm d, yyyy', deStart.Date);

      if not VarIsNull(Event.GetCustomFieldValueByIndex(18)) then
         meNotes.Text := Event.GetCustomFieldValueByIndex(18);

      if not VarIsNull(Event.GetCustomFieldValueByIndex(0)) then
        cmbEmployee.EditValue := Event.GetCustomFieldValueByIndex(0);

      UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);

      Modified := True;
      Intersection := True;
   except
      on E: Exception do
         ShowMessage('Can''t load data' + #13#10 + E.Message);
   end;
end;

procedure TfrmNewTaskNew.UpdateEventValuesFromControls;
var
   TimeType,
   lversion: string;
   cFeeRate: Currency;
   dUnits, dValue, dAmount: double;
   iMins: integer;
begin
   inherited UpdateEventValuesFromControls;
   // call the parent’s method to post the data from the inherited editing controls located on the form
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

      Event.SetCustomFieldValueByIndex(11, deStart.Date );
      Event.SetCustomFieldValueByIndex(12, cbFeeBasis.EditValue );
      if (not VarIsNull(cmbTemplate.EditValue)) and (cmbTemplate.Text <> '') then
         Event.SetCustomFieldValueByIndex(13, cmbTemplate.Text );
      if meNotes.Text <> '' then
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
      if SystemString('USE_PROJECT_BUDGETING') = 'N' then
         Event.SetCustomFieldValueByIndex(25, 'FEE TASK')
      else
         Event.SetCustomFieldValueByIndex(25, 'TASK');
      Event.SetCustomFieldValueByIndex(26, TableString('EMPLOYEE', 'CODE', string(cmbEmployee.EditValue), 'TYPE'));
      Event.SetCustomFieldValueByIndex(27, TableString('SCALECOST','CODE',string(cmbTemplate.Text),'NSCALECOST'));
      if SystemString('USE_PROJECT_BUDGETING') = 'Y' then
      begin
         Event.SetCustomFieldValueByName('ID', TableString('SCALECOST','CODE',string(cmbTemplate.Text),'NSCALECOST'));
         Event.SetCustomFieldValueByName('PARENT_ID', TableString('SCALECOST','CODE',string(cmbTemplate.Text),'NSCALECOST'));
      end;

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
      Event.Start := deStart.Date;
      Event.Finish := deEnd.Date;

      if (cmbTemplate.Text <> '') and (SystemString('LOCALE_NAME') <> '') and
         (SystemString('USE_PROJECT_BUDGETING') = 'Y') then
      begin
         if VarIsNull(Event.GetCustomFieldValueByName('NPROJECTTEMPL')) = False then
         begin
            with dmAxiom.qryTmp do
            begin
               Close;
               SQL.Text := 'select budget_low, budget_high, time_estimate, max_time_estimate '+
                           ' from PROJ_TEMPL_SCALECOST_LINK where NPROJECTTEMPL = :NPROJECTTEMPL '+
                           ' and NSCALECOST = :NSCALECOST ';
               ParamByName('NPROJECTTEMPL').AsInteger := Event.GetCustomFieldValueByName('NPROJECTTEMPL');
               ParamByName('NSCALECOST').AsString := TableString('SCALECOST','CODE',cmbTemplate.Text,'NSCALECOST');
               Open;
               Event.SetCustomFieldValueByName('BUDGET_LOW', FieldByName('budget_low').AsFloat);
               Event.SetCustomFieldValueByName('BUDGET_HIGH', FieldByName('budget_HIGH').AsFloat);
               Event.SetCustomFieldValueByName('TIME_ESTIMATE', FieldByName('TIME_ESTIMATE').AsFloat);
               Event.SetCustomFieldValueByName('MAX_TIME_ESTIMATE', FieldByName('MAX_TIME_ESTIMATE').AsFloat);
               Close;
            end;
         end;
      end;
      Event.SetCustomFieldValueByName('COLOUR', 16777215);
      Event.SetCustomFieldValueByName('DAYS', 1);
      Event.Post;

   except
      on E: Exception do
        ShowMessage('Can''t post data' + #13#10 + E.Message);
   end;


{   inherited UpdateEventValuesFromControls; // call the parent’s method to post the data from the inherited editing controls located on the form
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
      Event.SetCustomFieldValueByIndex(0, FEmployee );  // author
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
      Event.SetCustomFieldValueByIndex(18, meNotes.Text );


      if (cmbMatterFind.Text <> '') then
         sBillType := TableString('FEEBASIS','CODE',MatterString(string(cmbMatterFind.EditValue), 'FEEBASIS'),'BILLTYPE');
      if sBillType = '' then sBillType := 'Billable';
      if (not VarIsNull(cmbTemplate.EditValue)) and (cmbTemplate.Text <> '') then
         sBillType := TableString('SCALECOST','CODE',string(cmbTemplate.Text),'BILLTYPE');

      Event.SetCustomFieldValueByIndex(14, sBillType );
//      Event.SetCustomFieldValueByIndex(15, TableString('EMPLOYEE','CODE',FEmployee ,'TYPE'));
      Event.SetCustomFieldValueByIndex(17, neTax.Value);
   except
      on E: Exception do
        ShowMessage('Can''t post data' + #13#10 + E.Message);
   end;    }
end;

procedure TfrmNewTaskNew.DisplayMatter(sMatter: string; AIsEditing: Boolean);
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


procedure TfrmNewTaskNew.FormCreate(Sender: TObject);
begin
   inherited;
   pnlTime.Visible := False;
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

   FEmployee := dmAxiom.UserID;
   qryMRUList.Close;
   qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
   qryMRUList.ParamByName('P_Author').AsString := FEmployee;  //dmAxiom.UserID;
   qryMRUList.Open;

   qryFeeTmp.Close;
   qryFeeTmp.ParamByName('Author').AsString := FEmployee;
   qryFeetmp.Open;

   qFeeEarners.Open;

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

  cmbEmployee.EditValue := dmAxiom.UserID;
  bBeenHere := False;
//  cmbMatterFind.SetFocus;
end;

procedure TfrmNewTaskNew.FormShow(Sender: TObject);
begin
   inherited;
   LoadEventValuesIntoControls;
   Self.Caption := 'Task for ' + dmAxiom.UserName;
   cbFeeBasis.OnClick(Self);
end;

procedure TfrmNewTaskNew.teEndPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  neUnits.EditValue := CalculateUnits;
end;

procedure TfrmNewTaskNew.icbShowTimeAsPropertiesEditValueChanged(
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

procedure TfrmNewTaskNew.cmbMatterFindPropertiesValidate(
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

function TfrmNewTaskNew.CalculateUnits: extended;
var
   Hour, Min, Sec, MSec: Word;
begin
   DecodeTime((deEnd.Date - deStart.Date), Hour, Min, Sec, MSec);
   CalculateUnits := Round((((Hour*60)+ Min)/dmAxiom.TimeUnits));
end;

procedure TfrmNewTaskNew.btnPrintClick(Sender: TObject);
begin
  inherited;
   ppFileNoteRpt.Print;
end;

procedure TfrmNewTaskNew.btnScaleClick(Sender: TObject);
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

procedure TfrmNewTaskNew.icbShowTimeAsPropertiesInitPopup(
  Sender: TObject);
begin
   inherited;
   icbShowTimeAs.Properties.Images := ImageList1;
end;

procedure TfrmNewTaskNew.CreateScale(AsMatter: String; ANMatter: Integer;
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
               if (dfItems.Enabled = True){Visible} then
                  dfItems.Text := '1'
               else
                  dfItems.Text := '0';
            end;
            UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
         end;
      end;
      if qryScaleCost.FieldByName('ZERO_FEE').AsString = 'N' then
      begin
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
   end;
end;

procedure TfrmNewTaskNew.CalcTax;
var
  dAmount : Double;
begin
   dAmount := neAmount.EditValue;

   if (cbTaxType.EditValue = 'GSTIN') then
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
   end;

  neTax.Value := TaxCalc(dAmount, '', cbTaxType.EditValue, deStart.Date);
  neAmount.Value := dAmount;
end;

procedure TfrmNewTaskNew.UpdateAmount(AUnits, AItems: string; ARate: Double; var AValue: double;
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

             neAmount.Value := AAmount;
         except
            AAmount := 0.00;
            AValue := 0.00;
         end;

         try
            AMinutes := round(StrToFloat(AUnits) * SystemInteger('TIME_UNITS'));
         except
            AMinutes := 6;
         end;
         if AMinutes = 0 then
            AMinutes := 6;

         CalcTax;
         if (deEnd.Date <> Nulldate) then
            deEnd.Date := IncMinute(deStart.Date, AMinutes);
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

procedure TfrmNewTaskNew.teStartPropertiesChange(Sender: TObject);
begin
  inherited;
  neUnits.EditValue := CalculateUnits;
  UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
end;

procedure TfrmNewTaskNew.meMessageExit(Sender: TObject);
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
           UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
         end;
       end;
       Close;
     end;
   end;
   meMessage.EditModified := True;
end;

procedure TfrmNewTaskNew.cmbMatterFindPropertiesCloseUp(Sender: TObject);
var
   i: integer;
   ASortOrder: TcxDataSortOrder;
   ASort,
   ARefNo: string;
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
            UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
         end
         else
            cmbMatterFind.Clear;
      end
      else
      begin
         ARefNo := PadFileID(cmbMatterFind.Text);
         if MatterIsCurrent(UpperCase(ARefNo)) then
         begin
            DisplayMatter(UpperCase(ARefNo));
            cbTaxType.EditValue := MatterString(UpperCase(cmbMatterFind.Text),'FEE_TAX_BASIS');
		      DoBillType(UpperCase(cmbMatterFind.Text));
            if (cmbTemplate.Text = '') then
               if (TableCurrency('SCALECOST','CODE',UpperCase(string(cmbTemplate.Text)),'AMOUNT') = 0) then
               neRate.Value := FeeRate('N', UpperCase(cmbMatterFind.Text), FEmployee {dmAxiom.UserID}, deStart.Date);
            UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
         end
         else
         begin
            MsgErr('Matter ' + cmbMatterFind.Text + ' is closed');
         end;
      end;
   end;
   Modified := True;
end;

procedure TfrmNewTaskNew.cmbMatterFindPropertiesEditValueChanged(
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
            UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
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

end;

procedure TfrmNewTaskNew.DoBillType(FileId: string);
begin
   qryBillType.Close;
   qryBillType.ParamByName('p_nmatter').AsInteger := TableInteger('MATTER', 'FILEID', FileId, 'NMATTER');
   qryBillType.Open;
   if not qryBillType.Eof then
      sBillType := qryBillType.FieldByName('BillType').AsString
   else
      sBillType := 'Billable';
end;

procedure TfrmNewTaskNew.cbFeeBasisClick(Sender: TObject);
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

procedure TfrmNewTaskNew.CalcRate;
begin
   if (not FEditing) then
   begin
      neRate.Value := FeeRate(cbFeeBasis.EditValue, cmbMatterFind.Text, FEmployee {dmAxiom.UserID}, deStart.Date );
      UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
   end;
end;

procedure TfrmNewTaskNew.neRatePropertiesChange(Sender: TObject);
begin
  inherited;
   Modified := True;
end;

procedure TfrmNewTaskNew.neRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
   UpdateAmount(neUnits.Text, dfItems.Text, DisplayValue, lvalue, lAmount, lMinutes);
   neAmount.Value := lAmount;
   CalcTax;
end;

procedure TfrmNewTaskNew.neUnitsPropertiesChange(Sender: TObject);
begin
  inherited;
  UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
  neMinutes.Text := IntToStr(lMinutes);
  CalcTax;
end;

procedure TfrmNewTaskNew.icmbTypePropertiesInitPopup(Sender: TObject);
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

procedure TfrmNewTaskNew.cmbMatterFindExit(Sender: TObject);
begin
   inherited;
   if cmbMatterFind.Text = '' then
      PopulateWithoutMatter;
end;

procedure TfrmNewTaskNew.btnOkClick(Sender: TObject);
begin
   inherited;
//   if (not OKtoPost()) then
//      ModalResult := mrRetry;
end;

function TfrmNewTaskNew.OKtoPost : boolean;
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

procedure TfrmNewTaskNew.neUnitsPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   inherited;
   UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
   CalcTax;
end;

procedure TfrmNewTaskNew.PopulateWithoutMatter;
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

procedure TfrmNewTaskNew.ppFileNoteRptBeforePrint(Sender: TObject);
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

procedure TfrmNewTaskNew.PopulateWithMatter;
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

procedure TfrmNewTaskNew.PopulateMatterOnly;
begin
   icmbType.Properties.Items.Clear;
   icmbType.Properties.Items.Add;
   icmbType.Properties.Items.Items[0].Description := 'Matter';
   icmbType.Properties.Items.Items[0].Value := 'M';
   icmbType.Properties.Items.Items[0].Tag := 0;
   icmbType.Properties.Items.Items[0].ImageIndex := 0;
end;

procedure TfrmNewTaskNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if ModalResult = mrRetry then
      Action := caNone;
   inherited;
end;

procedure TfrmNewTaskNew.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   qFeeEarners.Close;
   qryScaleCostsList.Close;
   inherited;
end;

procedure TfrmNewTaskNew.meMessageKeyPress(Sender: TObject;
  var Key: Char);
begin
   inherited;
   if Key = ' ' then
      QuickCode(Sender);
end;

procedure TfrmNewTaskNew.meMessagePropertiesChange(Sender: TObject);
begin
  inherited;
   Modified := True;
end;

procedure TfrmNewTaskNew.meNotesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   liNotes.CaptionOptions.Text := Format( NotesLabel ,[IntToStr(length(meNotes.Text) )]);
//   Label5.Caption := IntToStr(length(meNotes.Text) )+'/4000';
end;

procedure TfrmNewTaskNew.cmbTemplatePropertiesCloseUp(Sender: TObject);
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

procedure TfrmNewTaskNew.cmbTemplatePropertiesInitPopup(Sender: TObject);
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

procedure TfrmNewTaskNew.deEndPropertiesChange(Sender: TObject);
begin
  inherited;
   neUnits.EditValue := CalculateUnits;
end;

procedure TfrmNewTaskNew.deStartPropertiesChange(Sender: TObject);
begin
  inherited;
   neUnits.EditValue := CalculateUnits;
end;

procedure TfrmNewTaskNew.dfItemsPropertiesChange(Sender: TObject);
begin
   inherited;
   UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
end;

procedure TfrmNewTaskNew.cmbTemplatePropertiesEditValueChanged(
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
      UpdateAmount(neUnits.Text, dfItems.Text, neRate.Value, lvalue, lAmount, lMinutes);
      if (neAmount.Value <> FEnterAmount) then
         CalcTax;
   end;
end;

function TfrmNewTaskNew.CheckReqFields(sTableName: String) : BOOLEAN;
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

procedure TfrmNewTaskNew.cmbTemplatePropertiesValidate(Sender: TObject;
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

procedure TfrmNewTaskNew.cmbMatterFindPropertiesInitPopup(
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

procedure TfrmNewTaskNew.meMessageEnter(Sender: TObject);
begin
  inherited;
   if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
      TcxMemo(Sender).SelStart := Length(TcxMemo(Sender).Text) + 1
   else
      TcxMemo(Sender).SelectAll;
end;

end.

