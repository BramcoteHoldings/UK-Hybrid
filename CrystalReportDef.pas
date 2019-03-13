unit CrystalReportDef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, DB, OracleUniProvider,
  Uni, MemDS, DBAccess, cxLookAndFeelPainters, cxButtons, cxGroupBox, Menus,
  cxGraphics, cxLookAndFeels;

type
  TfrmCrystalReportDef = class(TForm)
    qryCrReportRange: TUniQuery;
    dsCrReportRange: TUniDataSource;
    qryLast: TUniQuery;
    btnTemplateItemOk: TcxButton;
    btnTemplateItemCancel: TcxButton;
    btnTemplateRefresh: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxCompPeriod: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    cxDBDateEdit7: TcxDBDateEdit;
    cxDBDateEdit8: TcxDBDateEdit;
    cxCompYear: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label7: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    cxPeriod: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxYear: TcxDBTextEdit;
    procedure btnTemplateItemOkClick(Sender: TObject);
    procedure btnTemplateItemCancelClick(Sender: TObject);
    procedure cxYearExit(Sender: TObject);
    procedure btnTemplateRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxCompPeriodExit(Sender: TObject);
  private
    { Private declarations }
    procedure calcDates(Current: Boolean);
    procedure calcCompDates(Current: Boolean);
  public
    { Public declarations }
  end;

var
  frmCrystalReportDef: TfrmCrystalReportDef;

implementation

{$R *.dfm}

uses AxiomData,miscFunc,CustomProcedures;

procedure TfrmCrystalReportDef.btnTemplateItemOkClick(Sender: TObject);
begin
   qryCrReportRange.ApplyUpdates;
   self.close;
   RemoveFromDesktop(Self);
end;

procedure TfrmCrystalReportDef.btnTemplateItemCancelClick(Sender: TObject);
begin
   qryCrReportRange.CancelUpdates;
   self.close;
   RemoveFromDesktop(Self);
end;

procedure TfrmCrystalReportDef.calcDates(Current: Boolean);
var
  iPeriod,iYear,iFinYear,iMonth : Integer;
  yStart,yEnd,pStart,pEnd : TDate;
begin
   if (cxPeriod.Text = '') or (cxYear.Text = '') then
        exit;
   iPeriod := strToInt(cxPeriod.Text);
   iFinYear := strToInt(cxYear.Text);

   if SystemInteger('FINYEAR_START_MONTH') = 7 then
   begin
      case iPeriod of
          1:iMonth := 7;
          2:iMonth := 8;
          3:iMonth := 9;
          4:iMonth := 10;
          5:iMonth := 11;
          6:iMonth := 12;
          7:iMonth := 1;
          8:iMonth := 2;
          9:iMonth := 3;
          10:iMonth := 4;
          11:iMonth := 5;
          12:iMonth := 6;
      end;
      if iPeriod < 7 {iMonth < 6} then
         iYear := iFinYear-1
      else
         iYear := iFinYear;
      yStart := EncodeDate(iFinYear-1,7,1);
      yEnd := EncodeDate(iFinYear,6,30);
   end
   else
   begin
      case iPeriod of
          1:iMonth := 1;
          2:iMonth := 2;
          3:iMonth := 3;
          4:iMonth := 4;
          5:iMonth := 5;
          6:iMonth := 6;
          7:iMonth := 7;
          8:iMonth := 8;
          9:iMonth := 9;
          10:iMonth := 10;
          11:iMonth := 11;
          12:iMonth := 12;
      end;
      iYear := iFinYear;
      yStart := EncodeDate(iFinYear,1,1);
      yEnd := EncodeDate(iFinYear,12,31);
   end;

//   if iPeriod < 7 {iMonth < 6} then
//        iYear := iFinYear-1
//   else
//      iYear := iFinYear;

//   yStart := EncodeDate(iFinYear-1,7,1);
//   yEnd := EncodeDate(iFinYear,6,30);
   pStart := EncodeDate(iYear,iMonth,1);
   qryLast.Close;
   qryLast.paramByName('ddate').AsDateTime := pStart;
   qryLast.open;
   pEnd := qryLast.fieldByName('dout').AsDateTime;

   if qryCrReportRange.State = dsBrowse then
      qryCrReportRange.Edit;

   with qryCrReportRange do
   begin
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      try
         FieldByName('month').AsInteger := iMonth;
         FieldByName('finyearstart').AsDateTime := yStart;
         FieldByName('finyearend').AsDateTime := yEnd;
         FieldByName('currperiodstart').AsDateTime := pStart;
         FieldByName('currperiodEnd').AsDateTime := pEnd;
         ApplyUpdates;
         dmAxiom.uniInsight.Commit;
      except
         RestoreUpdates;
         dmAxiom.uniInsight.Rollback;
         raise;
      end;
      CommitUpdates;
   end;
end;


procedure TfrmCrystalReportDef.cxYearExit(Sender: TObject);
begin
  calcDates(True);
end;

procedure TfrmCrystalReportDef.btnTemplateRefreshClick(Sender: TObject);
begin
   with TfrmCustomProcedure.create(self) do
   begin
      showModal;
      free;
   end;
end;

procedure TfrmCrystalReportDef.FormCreate(Sender: TObject);
begin
   qryCrReportRange.open;
end;

procedure TfrmCrystalReportDef.cxCompPeriodExit(Sender: TObject);
begin
   calcCompDates(False);
end;

procedure TfrmCrystalReportDef.calcCompDates(Current: Boolean);
var
  iPeriod,iYear,iFinYear,iMonth : Integer;
  yStart,yEnd,pStart,pEnd : TDate;
begin
   if (cxCompPeriod.Text = '') or (cxCompYear.Text = '') then
        exit;
   iPeriod := strToInt(cxCompPeriod.Text);
   iFinYear := strToInt(cxCompYear.Text);

      if SystemInteger('FINYEAR_START_MONTH') = 7 then
   begin
      case iPeriod of
          1:iMonth := 7;
          2:iMonth := 8;
          3:iMonth := 9;
          4:iMonth := 10;
          5:iMonth := 11;
          6:iMonth := 12;
          7:iMonth := 1;
          8:iMonth := 2;
          9:iMonth := 3;
          10:iMonth := 4;
          11:iMonth := 5;
          12:iMonth := 6;
      end;
      if iPeriod < 7 {iMonth < 6} then
         iYear := iFinYear-1
      else
         iYear := iFinYear;
      yStart := EncodeDate(iFinYear-1,7,1);
      yEnd := EncodeDate(iFinYear,6,30);
   end
   else
   begin
      case iPeriod of
          1:iMonth := 1;
          2:iMonth := 2;
          3:iMonth := 3;
          4:iMonth := 4;
          5:iMonth := 5;
          6:iMonth := 6;
          7:iMonth := 7;
          8:iMonth := 8;
          9:iMonth := 9;
          10:iMonth := 10;
          11:iMonth := 11;
          12:iMonth := 12;
      end;
      iYear := iFinYear;
      yStart := EncodeDate(iFinYear,1,1);
      yEnd := EncodeDate(iFinYear,12,31);
   end;

{   case iPeriod of
       1:iMonth := 7;
       2:iMonth := 8;
       3:iMonth := 9;
       4:iMonth := 10;
       5:iMonth := 11;
       6:iMonth := 12;
       7:iMonth := 1;
       8:iMonth := 2;
       9:iMonth := 3;
       10:iMonth := 4;
       11:iMonth := 5;
       12:iMonth := 6;
   end; }

//   if iPeriod < 7 {iMonth < 6} then
//        iYear := iFinYear-1
//   else
//      iYear := iFinYear;

//   yStart := EncodeDate(iFinYear-1,7,1);
//   yEnd := EncodeDate(iFinYear,6,30);
   pStart := EncodeDate(iYear,iMonth,1);
   qryLast.Close;
   qryLast.paramByName('ddate').AsDateTime := pStart;
   qryLast.open;
   pEnd := qryLast.fieldByName('dout').AsDateTime;

   if qryCrReportRange.State = dsBrowse then
      qryCrReportRange.Edit;

   with qryCrReportRange do
   begin
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      try
         FieldByName('comp_month').AsInteger := iMonth;
         FieldByName('comp_finyearstart').AsDateTime := yStart;
         FieldByName('comp_finyearend').AsDateTime := yEnd;
         FieldByName('comp_currperiodstart').AsDateTime := pStart;
         FieldByName('comp_currperiodEnd').AsDateTime := pEnd;
         ApplyUpdates;
         dmAxiom.uniInsight.Commit;
      except
         RestoreUpdates;
         dmAxiom.uniInsight.Rollback;
         raise;
      end;
      CommitUpdates;
   end;
end;

end.
