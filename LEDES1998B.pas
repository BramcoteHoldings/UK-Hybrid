unit LEDES1998B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxTextEdit, cxMaskEdit, cxButtonEdit, cxControls, cxContainer,
  cxEdit, cxLabel, cxLookAndFeelPainters, cxProgressBar, StdCtrls,
  cxButtons, cxDropDownEdit, cxCalendar, StrUtils, DB, OracleUniProvider, Uni, MemDS,
  DBAccess, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ImgList,
  ActnList, ActnMan, Menus, cxGraphics, XPStyleActnCtrls, cxLookAndFeels,
  ComCtrls, dxCore, cxDateUtils, System.Actions;

const
   Separator = '|';

type
  TfrmLEDES1998B = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    beFileName: TcxButtonEdit;
    cxLabel3: TcxLabel;
    odLedesFile: TOpenDialog;
    pbProcess: TcxButton;
    pbCancel: TcxButton;
    cxLabel4: TcxLabel;
    progressBar: TcxProgressBar;
    deProcessDate: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cmbBank: TcxLookupComboBox;
    qryBanks: TUniQuery;
    dsBanks: TUniDataSource;
    ActionManager1: TActionManager;
    actProcess: TAction;
    ImageList1: TImageList;
    qryFees: TUniQuery;
    qryFeeRange: TUniQuery;
    qryBillDetails: TUniQuery;
    qryClientID: TUniQuery;
    qryClientRef: TUniQuery;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure actProcessUpdate(Sender: TObject);
  private
    { Private declarations }
    F: TextFile;
    FRefNo: string;
    FNMemo: integer;
  public
    { Public declarations }
    AFileName: TFileName;
    FTotal_Amount: Currency;
    FTotal_Credit: Currency;
    FCreditor: integer;
    FRecord_Count: integer;
    property RefNo: string read FRefNo write FRefNo;
    property NMemo: integer read FNMemo write FNMemo;
    function Detail_Line(ANFee, Aline_Type, AUnits_Hours, AAmount, ACreated, ATask,
                         AAuthor, ADescr, ARate, AClassification: string): string;
    procedure Open_File;
    procedure Close_File;
    procedure Create_File;
    procedure Create_File_Header;
  end;

var
  frmLEDES1998B: TfrmLEDES1998B;

implementation

{$R *.dfm}

uses
   MiscFunc, AxiomData;

procedure TfrmLEDES1998B.Create_File;
begin
   with qryBillDetails do
   begin
      Close;
      ParamByName('nmemo').AsInteger := NMemo;
      Open;
      //
      Create_File_Header;
      //
      qryFeeRange.Close;
      qryFeeRange.ParamByName('nmemo').AsInteger := NMemo;
      qryFeeRange.Open;
      //
      qryClientID.Close;
      qryClientID.ParamByName('nclient').AsInteger := FieldByName('nclient').AsInteger;
      qryClientID.Open;
      //
      qryClientRef.Close;
      qryClientRef.ParamByName('nmatter').AsInteger := FieldByName('nmatter').AsInteger;
      qryClientRef.Open;
      // lets do fees
      qryFees.Close;
      qryFees.ParamByName('nmemo').AsInteger := NMemo;
      qryFees.Open;
      //
      while (qryFees.Eof = False) do
      begin
          Detail_Line(qryFees.FieldByName('nfee').AsString, 'F', qryFees.FieldByName('tot_hours').AsString,
                      qryFees.FieldByName('amount').AsString, qryFees.FieldByName('created').AsString,
                      qryFees.FieldByName('utbms_code').AsString, qryFees.FieldByName('author').AsString,
                      qryFees.FieldByName('descr').AsString, qryFees.FieldByName('rate').AsString,
                      qryFees.FieldByName('classification').AsString);
          qryFees.Next;
      end;
   end;
   Close_File;
end;

procedure TfrmLEDES1998B.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   odLedesFile.Title := 'Create LEDES1998B File';
   if odLedesFile.Execute then
   begin
      AFileName := odLedesFile.FileName;
      beFileName.Text := AFileName;
   end;
end;

function TfrmLEDES1998B.Detail_Line(ANFee, Aline_type, AUnits_Hours, AAmount, ACreated, ATask,
                                    AAuthor, ADescr, ARate, AClassification: string): string;
var
   line: string;
begin
   //* bill date */  1
   line := qryBillDetails.FieldByName('invoice_date').AsString + separator;
   //* dill no */ 2
   line := line + qryBillDetails.FieldByName('draft_bill_no').AsString + separator;
   //* client_id */ 3
   line := line + qryClientID.FieldByName('clientid').AsString + Separator;
   //* matter # */ 4
   line := line + qryBillDetails.FieldByName('fileid').AsString + separator;
   //* bill total*/ 5
   line := line + qryBillDetails.FieldByName('total').AsString + separator;
   //* billing start date*/ 6
   line := line + qryFeeRange.FieldByName('date_from').AsString + Separator;
   //billing end date */7
   line := line + qryFeeRange.FieldByName('date_to').AsString + Separator;
   //*invoice description  */ 8
   line := line + qryBillDetails.FieldByName('inv_note').AsString + Separator;
   //* seq*/  9
   line := line + ANFee + Separator;
   //* tran type */ 10
   line := line + Aline_type + Separator;
   //* units / hours */11
   line := line + AUnits_Hours + Separator;
   //* adjustment */12
   line := line + '0' + Separator;
   //* item amount */13
   line := line + AAmount + Separator;
   //* date */ 14
   line := line + ACreated + Separator;
   //* task code */ 15
   line := line + '' + Separator;
   //* expense code */ 16
   line := line + '' + Separator;
   //*activity code  */17
   line := line + ATask + Separator;
   //* author id  */17
   line := line + AAuthor + Separator;
   //*description */
   line := line + ADescr + Separator;
   //*firm id */
   line := line + SystemString('LEDES_FIRM_ID') + Separator;
   //* unit cost */
   line := line + ARate + Separator;
   //* author name */
   line := line + TableString('EMPLOYEE','CODE', AAuthor, 'NAME') + Separator;
   //classification  */
   line := line + AClassification + Separator;
   //* matter number */
   line := line + qryClientRef.FieldByName('opref').AsString;
   line := line + Separator + '[]';
   Writeln(F, line);
   Result := line;
end;

procedure TfrmLEDES1998B.FormCreate(Sender: TObject);
begin
   qryBanks.Open;
end;

procedure TfrmLEDES1998B.actProcessUpdate(Sender: TObject);
begin
   actProcess.Enabled := VarIsNull(deProcessDate.EditValue) and
                         (beFileName.Text <> '');
end;

procedure TfrmLEDES1998B.Open_File;
var
   filename: string;
begin
	filename := 'LEDES' + PadStr(IntToStr(GetNextSequence('SEQ_EFTFILE')),4,'0')+'.dat';

   filename := SystemString('EFT_FILE_DIR') + '\' + filename;

	AssignFile(F, filename);
   Rewrite(F);
end;

procedure TfrmLEDES1998B.Close_File;
begin
	CloseFile(F);
end;

procedure TfrmLEDES1998B.Create_File_Header;
var
   Line: string;
begin
   Line := 'LEDES98B[]';
   Writeln(F,Line);
   Line := '';
	Line := 'INVOICE_DATE'+ Separator;
   Line := Line + 'INVOICE_NUMBER'+ Separator;
   Line := Line + 'CLIENT_ID'+ Separator;
   Line := Line + 'LAW_FIRM_MATTER_ID'+ Separator;
   Line := Line + 'INVOICE_TOTAL'+ Separator;
   Line := Line + 'BILLING_START_DATE'+ Separator;
   Line := Line + 'BILLING_END_DATE'+ Separator;
   Line := Line + 'INVOICE_DESCRIPTION'+ Separator;
   Line := Line + 'LINE_ITEM_NUMBER'+ Separator;
   Line := Line + 'EXP/FEE/INV_ADJ_TYPE'+ Separator;
   Line := Line + 'LINE_ITEM_NUMBER_OF_UNITS'+ Separator;
   Line := Line + 'LINE_ITEM_ADJUSTMENT_AMOUNT'+ Separator;
   Line := Line + 'LINE_ITEM_TOTAL'+ Separator;
   Line := Line + 'LINE_ITEM_DATE'+ Separator;
   Line := Line + 'LINE_ITEM_TASK_CODE'+ Separator;
   Line := Line + 'LINE_ITEM_EXPENSE_CODE'+ Separator;
   Line := Line + 'LINE_ITEM_ACTIVITY_CODE'+ Separator;
   Line := Line + 'TIMEKEEPER_ID'+ Separator;
   Line := Line + 'LINE_ITEM_DESCRIPTION'+ Separator;
   Line := Line + 'LAW_FIRM_ID'+ Separator;
   Line := Line + 'LINE_ITEM_UNIT_COST'+ Separator;
   Line := Line + 'TIMEKEEPER_NAME'+ Separator;
   Line := Line + 'TIMEKEEPER_CLASSIFICATION'+ Separator;
   Line := Line + 'CLIENT_MATTER_ID[]';
   Writeln(F, Line);
end;

end.
