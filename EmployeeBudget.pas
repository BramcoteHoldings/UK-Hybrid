unit EmployeeBudget;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Db, ComCtrls,
  ExtCtrls, TeEngine, Series, TeeProcs, Chart, DBChart,
  OracleUniProvider, Uni, NumberEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxGroupBox, cxLabel,
  cxLookAndFeelPainters, cxCurrencyEdit, cxButtons, cxSpinEdit, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics, Menus,
  cxVariants, cxLookAndFeels, cxRadioGroup, DBAccess, MemDS, dxBevel;

type
  TfrmEmployeeBudget = class(TForm)
    qryLedger: TUniQuery;
    Label1: TLabel;
    qryThisYear: TUniQuery;
    qryAllYears: TUniQuery;
    Label14: TLabel;
    qryTrans: TUniQuery;
    cxcpBudgetAmount: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cmbYear: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    lblChart: TcxLabel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    neYearTotal: TcxCurrencyEdit;
    dsLedger: TUniDataSource;
    dfJulTime: TcxSpinEdit;
    dfAugTime: TcxSpinEdit;
    dfSepTime: TcxSpinEdit;
    dfNovTime: TcxSpinEdit;
    dfDecTime: TcxSpinEdit;
    dfJanTime: TcxSpinEdit;
    dfFebTime: TcxSpinEdit;
    dfMarTime: TcxSpinEdit;
    dfAprTime: TcxSpinEdit;
    dfMayTime: TcxSpinEdit;
    dfJunTime: TcxSpinEdit;
    dfOctTime: TcxSpinEdit;
    dfJulFee: TcxCurrencyEdit;
    dfAugFee: TcxCurrencyEdit;
    dfSepFee: TcxCurrencyEdit;
    dfOctFee: TcxCurrencyEdit;
    dfNovFee: TcxCurrencyEdit;
    dfDecFee: TcxCurrencyEdit;
    dfJanFee: TcxCurrencyEdit;
    dfFebFee: TcxCurrencyEdit;
    dfMarFee: TcxCurrencyEdit;
    dfAprFee: TcxCurrencyEdit;
    dfMayFee: TcxCurrencyEdit;
    dfJunFee: TcxCurrencyEdit;
    edtJul: TcxCurrencyEdit;
    edtAug: TcxCurrencyEdit;
    edtSep: TcxCurrencyEdit;
    edtOct: TcxCurrencyEdit;
    edtNov: TcxCurrencyEdit;
    edtDec: TcxCurrencyEdit;
    edtJan: TcxCurrencyEdit;
    edtFeb: TcxCurrencyEdit;
    edtMar: TcxCurrencyEdit;
    edtApr: TcxCurrencyEdit;
    edtMay: TcxCurrencyEdit;
    edtJun: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cmbLedger: TcxLookupComboBox;
    qryChart: TUniQuery;
    dsChart: TUniDataSource;
    edFessRecFeb: TcxCurrencyEdit;
    edFessRecNov: TcxCurrencyEdit;
    edFessRecJul: TcxCurrencyEdit;
    edFessRecAug: TcxCurrencyEdit;
    edFessRecSep: TcxCurrencyEdit;
    edFessRecOct: TcxCurrencyEdit;
    edFessRecDec: TcxCurrencyEdit;
    edFessRecJan: TcxCurrencyEdit;
    edFessRecMar: TcxCurrencyEdit;
    edFessRecApr: TcxCurrencyEdit;
    edFessRecMay: TcxCurrencyEdit;
    edFessRecJun: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    edtWIPTotal: TcxCurrencyEdit;
    cxLabel6: TcxLabel;
    edtFeeTotal: TcxCurrencyEdit;
    edtFeesRecvdTotal: TcxCurrencyEdit;
    edtTimeTotal: TcxTextEdit;
    rbWIP: TcxRadioButton;
    rbFee: TcxRadioButton;
    rbTime: TcxRadioButton;
    rbRecFees: TcxRadioButton;
    Label15: TLabel;
    btnApply: TButton;
    dxBevel1: TdxBevel;
    dfJulDaysperMonth: TcxSpinEdit;
    dfAugDaysperMonth: TcxSpinEdit;
    dfSepDaysperMonth: TcxSpinEdit;
    dfOctDaysperMonth: TcxSpinEdit;
    dfNovDaysperMonth: TcxSpinEdit;
    dfDecDaysperMonth: TcxSpinEdit;
    dfJanDaysperMonth: TcxSpinEdit;
    dfFebDaysperMonth: TcxSpinEdit;
    dfMarDaysperMonth: TcxSpinEdit;
    dfAprDaysperMonth: TcxSpinEdit;
    dfMayDaysperMonth: TcxSpinEdit;
    dfJunDaysperMonth: TcxSpinEdit;
    edtDaysperMonthTotal: TcxTextEdit;
    cxLabel4: TcxLabel;
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryLedgerCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cmbYearChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtAugPropertiesChange(Sender: TObject);
    procedure dfJulFeePropertiesChange(Sender: TObject);
    procedure dfJulTimePropertiesChange(Sender: TObject);
    procedure edFessRecJulPropertiesChange(Sender: TObject);
    procedure dfAugDaysperMonthPropertiesEditValueChanged(Sender: TObject);
  private
    ChartCode   : String;
    ChartEntity : String;
    eNewYear    : Boolean;
    iFinYearStart : integer;


    procedure CalcVariance(sMonth : String);
    procedure displayLabels;
    procedure PopWiparray(Sender: TObject; lID: integer);
    procedure PopFeearray(Sender: TObject; lID: integer);
    procedure PopUnitsarray(Sender: TObject; lID: integer);
    procedure PopRecvdFeearray(Sender: TObject; lID: integer);
    procedure ResetBudget;
    procedure PopDaysPerMontharray(Sender: TObject; lID: integer);

  public
    procedure ShowEmployee(sCode : String; sEntity : String);

  end;

var
  frmEmployeeBudget: TfrmEmployeeBudget;
  MonthWIPArray: array[1..12] of TcxCurrencyEdit;
  MonthFeeArray: array[1..12] of TcxCurrencyEdit;
  MonthTimeArray: array[1..12] of TcxSpinEdit;
  MonthListArray: array[1..12] of string;
  MonthFeeRecArray: array[1..12] of TcxCurrencyEdit;
  MonthDaysArray: array[1..12] of TcxSpinEdit;

implementation

uses
  AxiomData, MiscFunc,LedgerBudget,FinYearStartReg;

{$R *.DFM}

procedure TfrmEmployeeBudget.ShowEmployee(sCode : String; sEntity : String);
begin
   lblChart.Caption := sCode;
   ChartCode := sCode;
   ChartEntity := sEntity;

   qryChart.ParamByName('ENTITY').AsString := sEntity;
   qryChart.Open;

   cmbYear.Properties.Items.Clear;

   qryAllYears.Close;
   qryAllYears.ParamByName('CODE').AsString := sCode;
   qryAllYears.ParamByName('ENTITY').AsString := sEntity;
   qryAllYears.Open;


   while not qryAllYears.Eof  do
   begin
     cmbYear.Properties.Items.Add(qryAllYears.FieldByName('YEAR').AsString);
     qryAllYears.Next;
   end;

   qryThisYear.Close;
   qryThisYear.ParamByName('CODE').AsString := sCode;
   qryThisYear.ParamByName('ENTITY').AsString := sEntity;
   qryThisYear.Open;
   cmbYear.Text := qryThisYear.FieldByName('YEAR').AsString;
   qryThisYear.Close;

   cmbYearChange(Self);
end;

procedure TfrmEmployeeBudget.btnOKClick(Sender: TObject);
var
  iMonthCount : Integer;
  nYear: Integer;
begin
    if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;
 // save the values back to the budget table

   try
      for iMonthCount := 1 to 12 do
      begin
        if (not qryLedger.Locate('PERIOD', IntToStr(iMonthCount), [])) then
           qryLedger.Insert
        else
           qryLedger.Edit;

        if (iMonthCount + (iFinYearStart-1) <= 12) and (SystemInteger('FINYEAR_START_MONTH') <> 1) then
           nYear := StrToInt(cmbYear.Text) - 1
        else
           nYear := StrToInt(cmbYear.Text);

        qryLedger.FieldByName('WIP').AsCurrency := MonthWIPArray[iMonthCount].Value;
        qryLedger.FieldByName('BILLEDFEES').AsCurrency := MonthFeeArray[iMonthCount].Value;
        qryLedger.FieldByName('TIME').AsCurrency := MonthTimeArray[iMonthCount].Value;
        qryLedger.FieldByName('RECEIVEDFEES').AsCurrency := MonthFeeRecArray[iMonthCount].Value;
        qryLedger.FieldByName('EMPLOYEE').AsString := ChartCode;
        qryLedger.FieldByName('PERIOD').AsInteger := iMonthCount;
        qryLedger.FieldByName('DEPARTMENT').AsString := TableString('EMPLOYEE','CODE',ChartCode,'DEPT');
        qryLedger.FieldByName('CALENDAR_YEAR').AsInteger := nYear;
        qryLedger.FieldByName('ACCOUNTCODE').AsString := VarToStrEx(cmbLedger.EditValue);
        qryLedger.FieldByName('ENTITY').AsString := ChartEntity;
        qryLedger.FieldByName('CREATED').AsDateTime := Now;
        qryLedger.FieldByName('FINANCIAL_YEAR').AsInteger := StrToInt(cmbYear.Text);
        qryLedger.FieldByName('MONTH').AsString := MonthListArray[iMonthCount];
        qryLedger.FieldByName('DAYS_PER_MONTH').AsInteger := MonthDaysArray[iMonthCount].Value;
        qryLedger.Post;
      end;

      qryLedger.ApplyUpdates;
      dmAxiom.uniInsight.Commit;
    except
      on E:Exception do
      begin
          MsgErr('Posting failed:' + #13#13 + E.Message);
          dmAxiom.uniInsight.Rollback;
      end;
    end;
end;

procedure TfrmEmployeeBudget.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryLedger.Close;
end;


procedure TfrmEmployeeBudget.qryLedgerCalcFields(DataSet: TDataSet);
begin
  CalcVariance('JUL');
  CalcVariance('AUG');
  CalcVariance('SEP');
  CalcVariance('OCT');
  CalcVariance('NOV');
  CalcVariance('DEC');
  CalcVariance('JAN');
  CalcVariance('FEB');
  CalcVariance('MAR');
  CalcVariance('APR');
  CalcVariance('MAY');
  CalcVariance('JUN');
end;


procedure TfrmEmployeeBudget.CalcVariance(sMonth : string);
begin
  try
    qryLedger.FieldByName(sMonth + 'Var').AsFloat := (qryLedger.FieldByName(sMonth + 'BUD').AsFloat / qryLedger.FieldByName(sMonth + 'BAL').AsFloat * 100)-100;

  except
    qryLedger.FieldByName(sMonth + 'Var').AsFloat := 0;
  end;

  try
    qryLedger.FieldByName(sMonth + 'PYVar').AsFloat := (qryLedger.FieldByName(sMonth + 'PY').AsFloat / qryLedger.FieldByName(sMonth + 'BUD').AsFloat * 100)-100;
  except
    qryLedger.FieldByName(sMonth + 'PYVar').AsFloat := 0;
  end;

end;

procedure TfrmEmployeeBudget.FormShow(Sender: TObject);
begin
{ with Self do
 begin
   Constraints.MaxHeight := 552;
   Constraints.MaxWidth := 552;
   Constraints.MinHeight := 446;
   Constraints.MinWidth := 331;
 end; }
end;

procedure TfrmEmployeeBudget.cmbYearChange(Sender: TObject);
var
  iMonthCount, TotalTime : integer;
  TotalWip,TotalFees,TotalRecvdFees: currency;
  TotalDaysPerMonth: double;
begin
   ResetBudget;
   TotalWip := 0;
   TotalFees := 0;
   TotalTime := 0;
   TotalRecvdFees := 0;
   TotalDaysPerMonth := 0;
   qryLedger.Close;
   qryLedger.ParamByName('CODE').AsString := ChartCode;
   qryLedger.ParamByName('YEAR').AsString := cmbYear.Text;
   qryLedger.ParamByName('ENTITY').AsString := ChartEntity;
   qryLedger.Open;

   cmbLedger.EditValue := qryLedger.fieldByName('ACCOUNTCODE').AsString;

   if qryLedger.IsEmpty then
   begin
      eNewYear := True;
      for iMonthCount := 1 to 12 do
      begin
         MonthWIPArray[iMonthCount].text := '';
         MonthFeeArray[iMonthCount].text := '';
         MonthTimeArray[iMonthCount].text := '';
         MonthFeeRecArray[iMonthCount].text := '';
      end;
   end
   else
   begin
      for iMonthCount := 1 to 12 do
      begin
         eNewYear := False;
         monthWIPArray[iMonthCount].Value := 0;
         MonthFeeArray[iMonthCount].Value := 0;
         MonthTimeArray[iMonthCount].Value := 0;
         MonthFeeRecArray[iMonthCount].Value := 0;
         if qryLedger.Locate('PERIOD',inttostr(iMonthCount),[loCaseInsensitive]) then
         begin
            monthWIPArray[iMonthCount].Value    := qryLedger.FieldByName('WIP').AsCurrency;
            MonthFeeArray[iMonthCount].Value    := qryLedger.FieldByName('BILLEDFEES').AsCurrency;
            MonthTimeArray[iMonthCount].Value   := qryLedger.FieldByName('TIME').AsCurrency;
            MonthFeeRecArray[iMonthCount].Value := qryLedger.FieldByName('RECEIVEDFEES').AsCurrency;
            MonthDaysArray[iMonthCount].Value   := qryLedger.FieldByName('DAYS_PER_MONTH').AsFloat;
            TotalWip            := TotalWip + qryLedger.FieldByName('WIP').AsCurrency;
            TotalFees           := TotalFees + qryLedger.FieldByName('BILLEDFEES').AsCurrency;
            TotalTime           := TotalTime + qryLedger.FieldByName('TIME').AsInteger;
            TotalRecvdFees      := TotalRecvdFees + qryLedger.FieldByName('RECEIVEDFEES').AsCurrency;
            TotalDaysPerMonth   := TotalDaysPerMonth + qryLedger.FieldByName('DAYS_PER_MONTH').AsFloat;
         end;
      end;
   end;
   edtWIPTotal.Value := TotalWip;
   edtFeeTotal.Value := TotalFees;
   edtTimeTotal.Text := IntToStr(TotalTime);
   edtFeesRecvdTotal.Value := TotalRecvdFees;
   edtDaysperMonthTotal.EditValue := FloatToStr(TotalDaysPerMonth);
end;

procedure TfrmEmployeeBudget.btnSaveClick(Sender: TObject);
var
  iMonthCount : integer;
begin
// save the values back to the budget table

    for iMonthCount := 1 to 12 do
    begin
       if not qryLedger.Locate('PERIOD',inttostr(iMonthCount),[]) then
          qryLedger.Insert
       else
          qryLedger.Edit;

       qryLedger.FieldByName('WIP').AsString := MonthWIPArray[iMonthCount].Text;
       qryLedger.FieldByName('BILLEDFEES').AsString := MonthFeeArray[iMonthCount].Text;
       qryLedger.FieldByName('TIME').AsString := MonthTimeArray[iMonthCount].Text;
       qryLedger.FieldByName('PERIOD').AsInteger := iMonthCount;
       qryLedger.FieldByName('FINANCIAL_YEAR').AsString := cmbYear.Text;
       qryLedger.FieldByName('ACCOUNTCODE').AsString := ChartCode;
       qryLedger.FieldByName('RECEIVEDFEES').AsCurrency := MonthFeeRecArray[iMonthCount].Value;
   {
     Code Added 20.01.2003 GG

     Use the current entity as the second part of the primary key
   }
       qryLedger.ParamByName('ENTITY').AsString := ChartEntity;
       qryLedger.Post;
    end;

    qryLedger.ApplyUpdates;
end;

procedure TfrmEmployeeBudget.FormCreate(Sender: TObject);
var iLoop,iYear : integer;
begin
   MonthWIPArray[1] := edtJul;
   MonthWIPArray[2] := edtAug;
   MonthWIPArray[3] := edtSep;
   MonthWIPArray[4] := edtOct;
   MonthWIPArray[5] := edtNov;
   MonthWIPArray[6] := edtDec;
   MonthWIPArray[7] := edtJan;
   MonthWIPArray[8] := edtFeb;
   MonthWIPArray[9] := edtMar;
   MonthWIPArray[10] := edtApr;
   MonthWIPArray[11] := edtMay;
   MonthWIPArray[12] := edtJun;

   MonthFeeArray[1] := dfJulFee;
   MonthFeeArray[2] := dfAugFee;
   MonthFeeArray[3] := dfSepFee;
   MonthFeeArray[4] := dfOctFee;
   MonthFeeArray[5] := dfNovFee;
   MonthFeeArray[6] := dfDecFee;
   MonthFeeArray[7] := dfJanFee;
   MonthFeeArray[8] := dfFebFee;
   MonthFeeArray[9] := dfMarFee;
   MonthFeeArray[10] := dfAprFee;
   MonthFeeArray[11] := dfMayFee;
   MonthFeeArray[12] := dfJunFee;

   MonthTimeArray[1] := dfJulTime;
   MonthTimeArray[2] := dfAugTime;
   MonthTimeArray[3] := dfSepTime;
   MonthTimeArray[4] := dfOctTime;
   MonthTimeArray[5] := dfNovTime;
   MonthTimeArray[6] := dfDecTime;
   MonthTimeArray[7] := dfJanTime;
   MonthTimeArray[8] := dfFebTime;
   MonthTimeArray[9] := dfMarTime;
   MonthTimeArray[10] := dfAprTime;
   MonthTimeArray[11] := dfMayTime;
   MonthTimeArray[12] := dfJunTime;

   MonthFeeRecArray[1] := edFessRecJul;
   MonthFeeRecArray[2] := edFessRecAug;
   MonthFeeRecArray[3] := edFessRecSep;
   MonthFeeRecArray[4] := edFessRecOct;
   MonthFeeRecArray[5] := edFessRecNov;
   MonthFeeRecArray[6] := edFessRecDec;
   MonthFeeRecArray[7] := edFessRecJan;
   MonthFeeRecArray[8] := edFessRecFeb;
   MonthFeeRecArray[9] := edFessRecMar;
   MonthFeeRecArray[10] := edFessRecApr;
   MonthFeeRecArray[11] := edFessRecMay;
   MonthFeeRecArray[12] := edFessRecJun;

   MonthDaysArray[1] := dfJulDaysperMonth;
   MonthDaysArray[2] := dfAugDaysperMonth;
   MonthDaysArray[3] := dfSepDaysperMonth;
   MonthDaysArray[4] := dfOctDaysperMonth;
   MonthDaysArray[5] := dfNovDaysperMonth;
   MonthDaysArray[6] := dfDecDaysperMonth;
   MonthDaysArray[7] := dfJanDaysperMonth;
   MonthDaysArray[8] := dfFebDaysperMonth;
   MonthDaysArray[9] := dfMarDaysperMonth;
   MonthDaysArray[10] := dfAprDaysperMonth;
   MonthDaysArray[11] := dfMayDaysperMonth;
   MonthDaysArray[12] := dfJunDaysperMonth;

    {MonthListArray[1] := '7';
    MonthListArray[2] := '8';
    MonthListArray[3] := '9';
    MonthListArray[4] := '10';
    MonthListArray[5] := '11';
    MonthListArray[6] := '12';
    MonthListArray[7] := '1';
    MonthListArray[8] := '2';
    MonthListArray[9] := '3';
    MonthListArray[10] := '4';
    MonthListArray[11] := '5';
    MonthListArray[12] := '6';  }

    if finYearStart <> nil then
        iFinYearStart := finYearStart.FinYearStart
    else
    iFinYearStart := 7;

    for iLoop := 1 to 12 do
    begin
    iYear := iLoop + (iFinYearStart-1);
    if iYear > 12 then
        iYear := iYear -12;

    MonthListArray[iLoop] := intToStr(iYear);
    end;

    displayLabels;
end;

procedure TfrmEmployeeBudget.btnApplyClick(Sender: TObject);
var
  iMonthCount : integer;
begin
   for iMonthCount := 1 to 12 do
   begin
      if rbWIP.Checked then
         MonthWIPArray[iMonthCount].EditValue := neYearTotal.EditValue/12;
      if rbFee.Checked then
         MonthFeeArray[iMonthCount].EditValue := neYearTotal.EditValue/12;
      if rbTime.Checked then
         MonthTimeArray[iMonthCount].EditValue := neYearTotal.EditValue/12;
      if rbRecFees.Checked then
         MonthFeeRecArray[iMonthCount].EditValue := neYearTotal.EditValue/12;
   end;
end;

procedure TfrmEmployeeBudget.displayLabels;
var iLoop : integer;
tmpLabel : TLabel;
iCaptionIndex : integer;
begin
   for iLoop := 0 to cxcpBudgetAmount.ControlCount-1 do
   if cxcpBudgetAmount.Controls[iLoop] is TLabel then
   begin
      tmpLabel := cxcpBudgetAmount.Controls[iLoop] as Tlabel;
      iCaptionIndex := tmpLabel.Tag;
      iCaptionIndex := iCaptionIndex + (iFinYearStart-1);
      if  iCaptionIndex > 11 then
         iCaptionIndex := iCaptionIndex - 12;
      tmpLabel.Caption := YearCaption[iCaptionIndex];
   end;
end;

procedure TfrmEmployeeBudget.edtAugPropertiesChange(Sender: TObject);
begin
   PopWiparray(Sender,TcxCurrencyEdit(Sender).Tag );
end;

procedure TfrmEmployeeBudget.PopWiparray(Sender: TObject; lID: integer);
var
   TotalWip: currency;
   iMonthCount: integer;
begin
   TotalWip := 0;
   monthWIPArray[lID].Value := TcxCurrencyEdit(Sender).Value;
   for iMonthCount := 1 to 12 do
   begin
      TotalWip := TotalWip + monthWIPArray[iMonthCount].Value;
   end;
   edtWIPTotal.Value := TotalWip;
end;

procedure TfrmEmployeeBudget.dfAugDaysperMonthPropertiesEditValueChanged(
  Sender: TObject);
begin
  PopDaysPerMontharray(Sender,TcxSpinEdit(Sender).Tag );
end;

procedure TfrmEmployeeBudget.dfJulFeePropertiesChange(Sender: TObject);
begin
   PopFeearray(Sender,TcxCurrencyEdit(Sender).Tag );
end;

procedure TfrmEmployeeBudget.PopFeearray(Sender: TObject; lID: integer);
var
   TotalFee: currency;
   iMonthCount: integer;
begin
   TotalFee := 0;
   MonthFeeArray[lID].Value := TcxCurrencyEdit(Sender).Value;
   for iMonthCount := 1 to 12 do
   begin
      TotalFee := TotalFee + MonthFeeArray[iMonthCount].Value;
   end;
   edtFeeTotal.Value := TotalFee;
end;

procedure TfrmEmployeeBudget.PopUnitsarray(Sender: TObject; lID: integer);
var
   TotalTime: integer;
   iMonthCount: integer;
begin
   TotalTime := 0;
   MonthTimeArray[lID].Value := TcxCurrencyEdit(Sender).Value;
   for iMonthCount := 1 to 12 do
   begin
      TotalTime := TotalTime + MonthTimeArray[iMonthCount].Value;
   end;
   edtTimeTotal.Text := IntTostr(TotalTime);
end;

procedure TfrmEmployeeBudget.PopRecvdFeearray(Sender: TObject; lID: integer);
var
   TotalRecvdFees: currency;
   iMonthCount: integer;
begin
   TotalRecvdFees := 0;
   MonthFeeRecArray[lID].Value := TcxCurrencyEdit(Sender).Value;
   for iMonthCount := 1 to 12 do
   begin
      TotalRecvdFees := TotalRecvdFees + MonthFeeRecArray[iMonthCount].Value;
   end;
   edtFeesRecvdTotal.Value := TotalRecvdFees;
end;

procedure TfrmEmployeeBudget.dfJulTimePropertiesChange(Sender: TObject);
begin
   PopUnitsarray(Sender,TcxCurrencyEdit(Sender).Tag );
end;

procedure TfrmEmployeeBudget.edFessRecJulPropertiesChange(Sender: TObject);
begin
    PopRecvdFeearray(Sender,TcxCurrencyEdit(Sender).Tag );
end;

procedure TfrmEmployeeBudget.ResetBudget;
var
   i: integer;
   ChildControl: TControl;
begin
   for i := 0 to cxcpBudgetAmount.ControlCount - 1 do
   begin
      ChildControl := cxcpBudgetAmount.Controls[I];
      if (ChildControl is TcxCurrencyEdit) then
         TcxCurrencyEdit(ChildControl).Value := 0;

      if (ChildControl is TcxSpinEdit) then
         TcxSpinEdit(ChildControl).Value := 0;
   end;
end;

procedure TfrmEmployeeBudget.PopDaysPerMontharray(Sender: TObject; lID: integer);
var
   TotalTime: integer;
   iMonthCount: integer;
begin
   TotalTime := 0;
   MonthDaysArray[lID].Value := TcxSpinEdit(Sender).Value;
   for iMonthCount := 1 to 12 do
   begin
      TotalTime := TotalTime + MonthDaysArray[iMonthCount].Value;
   end;
   edtDaysperMonthTotal.Text := IntTostr(TotalTime);
end;

end.
