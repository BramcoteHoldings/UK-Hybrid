unit MatterTask;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxSchedulerEventEditor, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxClasses,
  dxLayoutLookAndFeels, dxLayoutContainer, cxMemo, cxCheckComboBox,
  cxDropDownEdit, cxSpinEdit, cxTimeEdit, cxCalendar, cxMaskEdit,
  cxImageComboBox, cxTextEdit, Vcl.StdCtrls, cxButtons, cxLabel, cxGroupBox,
  dxLayoutControl, cxSchedulerStorage;

type
  //TcxSchedulerEventEditorCustomizedHelper = class(TcxSchedulerEventEditorFormHelper)

  //end;
  TfrmMatterTask = class(TcxSchedulerEventEditorForm)


  private
    { Private declarations }
    DefaultTax : String;
    ScaleCode: string;
    ScaleAmount: Currency;
    sBillType: string;
    FEmployee: string;
  protected
    procedure UpdateEventValuesFromControls; override;
    //function GetHelperClass: TcxSchedulerEditorHelperClass; override;
   // procedure InitializeHelper(AEvent: TcxSchedulerControlEvent); override;

   // property Helper: TcxSchedulerEventEditorCustomizedHelper read GetHelper;

  public
    { Public declarations }

  end;

var
  frmMatterTask: TfrmMatterTask;

implementation

{$R *.dfm}
uses AxiomData, MiscFunc, cxSchedulerDialogs;

{
function TfrmMatterTask.GetHelperClass: TcxSchedulerEditorHelperClass;
begin
   // define your own helper class
   Result := TcxSchedulerEventEditorCustomizedHelper;
end;

procedure TfrmMatterTask.InitializeHelper(
 AEvent: TcxSchedulerControlEvent);
begin
   inherited;
   Helper.OnIsCustomerInformationFilled := HelperIsTaskInformationFilledHandler;
end;

function TfrmMatterTask.GetHelper: TcxSchedulerEventEditorCustomizedHelper;
begin
   Result := TcxSchedulerEventEditorCustomizedHelper(inherited Helper);
end;
   }
procedure TfrmMatterTask.UpdateEventValuesFromControls;
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
      dUnits := 1;
      Event.ResourceID := 'MDS';
      Event.caption := 'Overhead - ';
      Event.LabelColor := 16777215;
      Event.Message := 'MessageText';
      // post the data from the custom editing controls
      Event.SetCustomFieldValueByIndex(0, 'MDS');  // author
      Event.SetCustomFieldValueByIndex(2, '');

      Event.SetCustomFieldValueByIndex(1, 1);
//      Event.SetCustomFieldValueByIndex(3, 6 );
      TimeType := 'O';
      Event.SetCustomFieldValueByIndex(6, 'O');
      Event.SetCustomFieldValueByIndex(7, 'GST');
      Event.SetCustomFieldValueByIndex(8, 'MDS');  // entered_by

      Event.SetCustomFieldValueByIndex(11, deStart.Date );
      //Event.SetCustomFieldValueByIndex(12, cbFeeBasis.EditValue );
      //   Event.SetCustomFieldValueByIndex(13, cmbTemplate.Text );
         //Event.SetCustomFieldValueByIndex(18, meNotes.Text );

        // sBillType := TableString('FEEBASIS','CODE',MatterString(string(cmbMatterFind.EditValue), 'FEEBASIS'),'BILLTYPE');
      if sBillType = '' then sBillType := 'Billable';
      //if (not VarIsNull(cmbTemplate.EditValue)) and (cmbTemplate.Text <> '') then
      //   sBillType := TableString('SCALECOST','CODE',string(cmbTemplate.Text),'BILLTYPE');
      lversion := dmAxiom.GetVersionInfo;
      Event.SetCustomFieldValueByIndex(14, 'O');
      Event.SetCustomFieldValueByIndex(20, 'Y' );
      Event.SetCustomFieldValueByIndex(24, lversion );
      //Event.SetCustomFieldValueByIndex(19, lblMatterDesc.Caption);
      if SystemString('USE_PROJECT_BUDGETING') = 'N' then
         Event.SetCustomFieldValueByIndex(25, 'FEE TASK')
      else
         Event.SetCustomFieldValueByIndex(25, 'TASK');
      Event.SetCustomFieldValueByIndex(26, TableString('EMPLOYEE', 'CODE', 'MDS', 'TYPE'));
      //Event.SetCustomFieldValueByIndex(27, TableString('SCALECOST','CODE',string(cmbTemplate.Text),'NSCALECOST'));
      //if SystemString('USE_PROJECT_BUDGETING') = 'Y' then
      //begin
      //   Event.SetCustomFieldValueByName('ID', TableString('SCALECOST','CODE',string(cmbTemplate.Text),'NSCALECOST'));
      //   Event.SetCustomFieldValueByName('PARENT_ID', TableString('SCALECOST','CODE',string(cmbTemplate.Text),'NSCALECOST'));
     // end;

      {if cmbMatterFind.Text <> '' then
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

      end; }
      Event.Start := deStart.Date;
      Event.Finish := deEnd.Date;

      {if (cmbTemplate.Text <> '') and (SystemString('LOCALE_NAME') <> '') and
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
      end; }
      Event.SetCustomFieldValueByName('COLOUR', 16777215);
      Event.SetCustomFieldValueByName('DAYS', 1);
      Event.Post;

   except
      on E: Exception do
        ShowMessage('Can''t post data' + #13#10 + E.Message);
   end;



end;

end.
