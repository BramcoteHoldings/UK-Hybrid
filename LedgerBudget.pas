unit LedgerBudget;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Db, ComCtrls,
  ExtCtrls, TeEngine, Series, TeeProcs, Chart, DBChart,
  OracleUniProvider, Uni, DBAccess, MemDS, NumberEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxGroupBox, cxLabel,
  cxLookAndFeelPainters, cxCurrencyEdit, cxButtons, cxGraphics, Menus,
  cxLookAndFeels;


const YearCaption: array[0..11] of String = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');

type
  TfrmLedgerBudget = class(TForm)
    qryLedger: TUniQuery;
    Label1: TLabel;
    qryThisYear: TUniQuery;
    qryAllYears: TUniQuery;
    Label14: TLabel;
    qryTrans: TUniQuery;
    cxcpBudgetAmount: TcxGroupBox;
    Label2: TLabel;
    edtJul: TNumberEdit;
    Label3: TLabel;
    edtAug: TNumberEdit;
    Label4: TLabel;
    edtSep: TNumberEdit;
    Label5: TLabel;
    edtOct: TNumberEdit;
    Label6: TLabel;
    edtNov: TNumberEdit;
    Label7: TLabel;
    edtDec: TNumberEdit;
    Label8: TLabel;
    edtJan: TNumberEdit;
    Label9: TLabel;
    edtFeb: TNumberEdit;
    Label10: TLabel;
    edtMar: TNumberEdit;
    Label11: TLabel;
    edtApr: TNumberEdit;
    Label12: TLabel;
    edtMay: TNumberEdit;
    edtJun: TNumberEdit;
    Label13: TLabel;
    cxcpBalanceAmount: TcxGroupBox;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    cmbYear: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    lblJulBal: TcxLabel;
    lblChart: TcxLabel;
    lblAugBal: TcxLabel;
    lblSepBal: TcxLabel;
    lblOctBal: TcxLabel;
    lblNovBal: TcxLabel;
    lblDecBal: TcxLabel;
    lblJanBal: TcxLabel;
    lblFebBal: TcxLabel;
    lblMarBal: TcxLabel;
    lblAprBal: TcxLabel;
    lblMayBal: TcxLabel;
    lblJunBal: TcxLabel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    btnApply: TcxButton;
    neYearTotal: TcxCurrencyEdit;
    lblVarJul: TcxLabel;
    lblVarAug: TcxLabel;
    lblVarSep: TcxLabel;
    lblVarOct: TcxLabel;
    lblVarNov: TcxLabel;
    lblVarDec: TcxLabel;
    lblVarJan: TcxLabel;
    lblVarFeb: TcxLabel;
    lblVarMar: TcxLabel;
    lblVarApr: TcxLabel;
    lblVarMay: TcxLabel;
    lblVarJun: TcxLabel;
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryLedgerCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cmbYearChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
  private
    ChartCode   : String;
    ChartEntity : String;
    eNewYear    : Boolean;
    iFinYearStart : integer;

    procedure CalcVariance(sMonth : String);
    procedure displayLabels;

  public
    procedure ShowLedger(sCode : String; sEntity : String);

  end;

var
  frmLedgerBudget: TfrmLedgerBudget;
  MonthArray: array[1..12] of TNumberEdit;
  MonthBalArray: array[1..12] of TcxLabel;
  MonthVarArray: array[1..12] of TcxLabel;
  MonthListArray: array[1..12] of string;

implementation

uses
  AxiomData, MiscFunc,FinYearStartReg;

{$R *.DFM}

procedure TfrmLedgerBudget.ShowLedger(sCode : String; sEntity : String);
begin
  lblChart.Caption := TableStringEntity('CHART','CODE',sCode,'COMPONENT_CODE_DISPLAY',dmAxiom.entity);
  ChartCode := sCode;
  ChartEntity := sEntity;

  qryThisYear.Close;
  qryThisYear.ParamByName('CODE').AsString := sCode;
  qryThisYear.ParamByName('ENTITY').AsString := sEntity;
  qryThisYear.Open;
  cmbYear.Text := qryThisYear.FieldByName('YEAR').AsString;
  qryThisYear.Close;

  cmbYear.Properties.Items.Clear;

  qryAllYears.Close;
  qryAllYears.ParamByName('CODE').AsString := sCode;
  qryAllYears.ParamByName('ENTITY').AsString := sEntity;
  qryAllYears.Open;

  cmbYearChange(Self);

  while not qryAllYears.Eof  do
  begin
    cmbYear.Properties.Items.Add(qryAllYears.FieldByName('YEAR').AsString);
    qryAllYears.Next;
  end;
end;

procedure TfrmLedgerBudget.btnOKClick(Sender: TObject);
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

        if iMonthCount + (iFinYearStart-1) <= 12 then
           nYear := StrToInt(cmbYear.Text) - 1
        else
           nYear := StrToInt(cmbYear.Text);

        qryLedger.FieldByName('ACCOUNTVALUE').AsCurrency := MonthArray[iMonthCount].AsCurrency;
        qryLedger.FieldByName('PERIOD').AsInteger := iMonthCount;
        qryLedger.FieldByName('CALENDAR_YEAR').AsInteger := nYear;
        qryLedger.FieldByName('ACCOUNTCODE').AsString := ChartCode;
        qryLedger.FieldByName('ENTITY').AsString := ChartEntity;
        qryLedger.FieldByName('CREATED').AsDateTime := Now;
        qryLedger.FieldByName('FINANCIAL_YEAR').AsInteger := StrToInt(cmbYear.Text);
        qryLedger.FieldByName('MONTH').AsString := MonthListArray[iMonthCount];
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

procedure TfrmLedgerBudget.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryLedger.Close;
end;


procedure TfrmLedgerBudget.qryLedgerCalcFields(DataSet: TDataSet);
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


procedure TfrmLedgerBudget.CalcVariance(sMonth : string);
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

procedure TfrmLedgerBudget.FormShow(Sender: TObject);
begin
 with Self do
 begin
   Constraints.MaxHeight := 500;
   Constraints.MaxWidth := 500;
   Constraints.MinHeight := 446;
   Constraints.MinWidth := 331;
 end;
end;

procedure TfrmLedgerBudget.cmbYearChange(Sender: TObject);
var
  iMonthCount : integer;
begin
    qryLedger.Close;
    qryLedger.ParamByName('CODE').AsString := ChartCode;
    qryLedger.ParamByName('YEAR').AsString := cmbYear.Text;
    qryLedger.ParamByName('ENTITY').AsString := ChartEntity;
    qryLedger.Open;

    if qryLedger.IsEmpty then
    begin
       eNewYear := True;
       for iMonthCount := 1 to 12 do
       begin
          MonthArray[iMonthCount].text := '';
       end;
    end
    else
    begin
       for iMonthCount := 1 to 12 do
       begin
           eNewYear := False;
           if qryLedger.Locate('PERIOD',inttostr(iMonthCount),[loCaseInsensitive]) then
           monthArray[iMonthCount].Text := qryLedger.FieldByName('ACCOUNTVALUE').AsString;
       end;
    end;

    qryTrans.Close;
    qryTrans.ParamByName('YEAR').AsString := cmbYear.Text;
    qryTrans.ParamByName('CHART').AsString := ChartCode;
    qryTrans.ParamByName('ENTITY').AsString := ChartEntity;
    qryTrans.Open;

    for iMonthCount := 1 to 12 do
    begin
        if qryTrans.Locate('MONTH',iMonthCount,[]) then
        begin
           MonthBalArray[iMonthCount].Caption := FloatToStr(qryTrans.FieldByName('AMOUNT').AsFloat );
        end
        else
           MonthBalArray[iMonthCount].Caption := '0';

        if iMonthCount <> 1 then
            MonthBalArray[iMonthCount].Caption := floattostr(strtofloat(MonthBalArray[iMonthCount-1].Caption) + qryTrans.FieldByName('AMOUNT').AsFloat);
    end;

    // calculate vars

    for iMonthCount := 1 to 12 do
    begin
        if (MonthBalArray[iMonthCount].Caption <> '') and (MonthBalArray[iMonthCount].Caption <> '0')
        and (MonthArray[iMonthCount].Text <> '') and (MonthArray[iMonthCount].Text <> '0') then
        begin
           MonthVarArray[iMonthCount].Caption := formatfloat('00.00"%"',
             ((strtofloat(MonthArray[iMonthCount].Text)/strtofloat(MonthBalArray[iMonthCount].Caption))*100)-100);
        end
        else
            MonthVarArray[iMonthCount].Caption := '';
    end;
end;

procedure TfrmLedgerBudget.btnSaveClick(Sender: TObject);
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

       qryLedger.FieldByName('ACCOUNTVALUE').AsString := MonthArray[iMonthCount].Text;
       qryLedger.FieldByName('PERIOD').AsInteger := iMonthCount;
       qryLedger.FieldByName('FINANCIAL_YEAR').AsString := cmbYear.Text;
       qryLedger.FieldByName('ACCOUNTCODE').AsString := ChartCode;
   {
     Code Added 20.01.2003 GG

     Use the current entity as the second part of the primary key
   }
       qryLedger.ParamByName('ENTITY').AsString := ChartEntity;
       qryLedger.Post;
    end;

    qryLedger.ApplyUpdates;
end;

procedure TfrmLedgerBudget.FormCreate(Sender: TObject);
var iLoop,iYear : integer;

begin
    MonthArray[1] := edtJul;
    MonthArray[2] := edtAug;
    MonthArray[3] := edtSep;
    MonthArray[4] := edtOct;
    MonthArray[5] := edtNov;
    MonthArray[6] := edtDec;
    MonthArray[7] := edtJan;
    MonthArray[8] := edtFeb;
    MonthArray[9] := edtMar;
    MonthArray[10] := edtApr;
    MonthArray[11] := edtMay;
    MonthArray[12] := edtJun;

    MonthBalArray[1] := lblJulBal;
    MonthBalArray[2] := lblAugBal;
    MonthBalArray[3] := lblSepBal;
    MonthBalArray[4] := lblOctBal;
    MonthBalArray[5] := lblNovBal;
    MonthBalArray[6] := lblDecBal;
    MonthBalArray[7] := lblJanBal;
    MonthBalArray[8] := lblFebBal;
    MonthBalArray[9] := lblMarBal;
    MonthBalArray[10] := lblAprBal;
    MonthBalArray[11] := lblMayBal;
    MonthBalArray[12] := lblJunBal;

    MonthVarArray[1] := lblVarJul;
    MonthVarArray[2] := lblVarAug;
    MonthVarArray[3] := lblVarSep;
    MonthVarArray[4] := lblVarOct;
    MonthVarArray[5] := lblVarNov;
    MonthVarArray[6] := lblVarDec;
    MonthVarArray[7] := lblVarJan;
    MonthVarArray[8] := lblVarFeb;
    MonthVarArray[9] := lblVarMar;
    MonthVarArray[10] := lblVarApr;
    MonthVarArray[11] := lblVarMay;
    MonthVarArray[12] := lblVarJun;


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
    MonthListArray[12] := '6'; }

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

procedure TfrmLedgerBudget.btnApplyClick(Sender: TObject);
var
  iMonthCount : integer;
begin
    for iMonthCount := 1 to 12 do
    begin
        MonthArray[iMonthCount].AsCurrency := neYearTotal.EditValue/12;
    end;
end;

procedure TfrmLedgerBudget.displayLabels;
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
    for iLoop := 0 to cxcpBalanceAmount.ControlCount-1 do
    if cxcpBalanceAmount.Controls[iLoop] is TLabel then
    begin
        tmpLabel := cxcpBalanceAmount.Controls[iLoop] as Tlabel;
        iCaptionIndex := tmpLabel.Tag;
        iCaptionIndex := iCaptionIndex + (iFinYearStart-1);
        if  iCaptionIndex > 11 then
                iCaptionIndex := iCaptionIndex - 12;
        tmpLabel.Caption := YearCaption[iCaptionIndex];
    end;
end;

end.
