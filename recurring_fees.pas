unit recurring_fees;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Menus, cxCalendar, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, OracleUniProvider, Uni, DBAccess, MemDS,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  DateUtils, cxNavigator, System.Math,
  cxDataControllerConditionalFormattingRulesManagerDialog;

const
   CWeek = 'Weekly';
   CMonth = 'Monthly';
   CQuarter = 'Quarterly';
   CAnnual = 'Annually';

type
  TfrmRecurringFees = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    qryRecurringFees: TUniQuery;
    dsRecurringFees: TUniDataSource;
    cxGrid1DBTableView1REASON: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1CREATED: TcxGridDBColumn;
    qryFeeInsert: TUniQuery;
    qryRecurringFeesTYPE: TStringField;
    qryRecurringFeesFILEID: TStringField;
    qryRecurringFeesREASON: TStringField;
    qryRecurringFeesAMOUNT: TFloatField;
    qryRecurringFeesUNIQUEID: TLargeintField;
    qryRecurringFeesCREATED: TDateTimeField;
    qryRecurringFeesUNITS: TIntegerField;
    qryRecurringFeesRATE: TFloatField;
    qryRecurringFeesAUTHOR: TStringField;
    qryRecurringFeesEMPCODE: TStringField;
    qryRecurringFeesTAXCODE: TStringField;
    qryRecurringFeesTAX: TFloatField;
    qryRecurringFeesTAXRATE: TFloatField;
    qryRecurringFeesWITHHOLD: TStringField;
    qryRecurringFeesNMATTER: TLargeintField;
    qryRecurringFeesTIME_TYPE: TStringField;
    qryRecurringFeesFEE_TEMPLATE: TStringField;
    qryRecurringFeesMINS: TLargeintField;
    qryRecurringFeesITEMS: TLargeintField;
    qryRecurringFeesUNIT: TStringField;
    qryRecurringFeesTASK_AMOUNT: TFloatField;
    qryRecurringFeesBILLTYPE: TStringField;
    qryRecurringFeesFEEBASIS: TStringField;
    qryRecurringFeesEMP_TYPE: TStringField;
    qryRecurringFeesVERSION: TStringField;
    qryRecurringFeesSYSTEM_DATE: TDateTimeField;
    qryRecurringFeesROWID: TStringField;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateRecurringFees(AstartDate: TDateTime; ATask: string; ANumPayments: integer;
                                  AFreq: string; AEmployee: string; AMatter: integer; AAmount: Currency);
  end;

var
  frmRecurringFees: TfrmRecurringFees;

implementation

{$R *.dfm}

uses axiomdata, miscfunc;

procedure TfrmRecurringFees.CreateRecurringFees(AstartDate: TDateTime; ATask: string;
                            ANumPayments: integer; AFreq: string; AEmployee: string;
                            AMatter: integer; AAmount: Currency);
var
   x: integer;
   LTempDate: TDateTime;
begin
   with qryRecurringFees do
   begin
      Open;
      LTempDate := AstartDate;
      for x := 1 to  ANumPayments do
      begin
         Append;
         FieldByName('created'). asDateTime := LTempDate;
         FieldByName('author'). AsString := AEmployee;
         FieldByName('nmatter').AsInteger := AMatter;
         FieldByName('fileid').AsString := MatterString(AMatter,'Fileid');
         FieldByName('reason').AsString := TableString('scalecost','code',atask,'descr');
         FieldByName('fee_template').AsString := ATask;
         if AAmount > 0 then
            FieldByName('amount').AsCurrency := AAmount  //roundto(AAmount/ANumPayments,-2)
         else
            FieldByName('amount').AsCurrency := TableCurrency('scalecost','code',atask,'rate');

         if AFreq = CMonth then
         begin
            LTempDate := IncMonth(LTempDate);
         end
         else if AFreq = CWeek then
         begin
            LTempDate := IncDay(LTempDate, 7);
         end
         else if AFreq = CQuarter then
         begin
            LTempDate := IncMonth(LTempDate, 3);
         end
         else if AFreq = CAnnual then
         begin
            LTempDate := IncMonth(LTempDate, 12);
         end;
      end;
      Post;
   end;
end;

procedure TfrmRecurringFees.cxButton1Click(Sender: TObject);
var
   dAmount: double;
   nFee: string;
begin
   try
      with qryRecurringFees do
      begin
         first;
         while not eof do
         begin
            nFee := dmAxiom.GetSeqNumber('SQNC_NFEE');
            qryFeeInsert.ParamByName('CREATED').AsDateTime := FieldByName('CREATED').AsDateTime;
            qryFeeInsert.ParamByName('DESCR').AsString := Trim(FieldByName('REASON').AsString);
            qryFeeInsert.ParamByName('UNITS').AsInteger := 1;
            qryFeeInsert.ParamByName('NFEE').AsString := nFee;
            qryFeeInsert.ParamByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
            qryFeeInsert.ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('FILEID').AsString, 'NMATTER');
            qryFeeInsert.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('FILEID').AsString, 'NCLIENT');
            qryFeeInsert.ParamByName('PARTNER').AsString := MatterString(FieldByName('FILEID').AsString, 'PARTNER');
            qryFeeInsert.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
            qryFeeInsert.ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
            qryFeeInsert.ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', FieldByName('AUTHOR').AsString, 'DEPT');
            if FieldByName('FILEID').AsString <> '' then
               qryFeeInsert.ParamByName('TAXCODE').AsString := matterString(FieldByName('FILEID').AsString,'FEE_TAX_BASIS')
            else
               qryFeeInsert.ParamByName('TAXCODE').AsString :=  dmAxiom.DefaultTax;
            dAmount := FieldByName('AMOUNT').AsCurrency;
            qryFeeInsert.ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', qryFeeInsert.ParamByName('TAXCODE').AsString, FieldByName('CREATED').AsDateTime);
            qryFeeInsert.ParamByName('AMOUNT').AsFloat := dAmount;
            qryFeeInsert.ParamByName('TIME_TYPE').AsString := 'M';
            qryFeeInsert.ParamByName('ITEMS').AsInteger := FieldByName('ITEMS').AsInteger;
            qryFeeInsert.ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', FieldByName('AUTHOR').AsString, 'TYPE');
            qryFeeInsert.ParamByName('PROGRAM_NAME').AsString := 'Recurr Fee';
         // ToDo: Version is not plugged in. Either get version, or don't store it here.
            //            qryFeeInsert.ParamByName('VERSION').AsString := dmAxiom.Version + '.' + IntToStr(dmAxiom.BuildNumber);
            qryFeeInsert.ParamByName('EMPCODE').AsString := FieldByName('EMPCODE').AsString;
            qryFeeInsert.ParamByName('TASK').AsString := FieldByName('FEE_TEMPLATE').AsString;
            qryFeeInsert.ExecSQL;
            next;
         end;
      end;
   finally
      ModalResult := mrOk;
   end;
end;

end.
