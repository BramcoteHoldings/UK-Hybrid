unit LEDES1998BI;

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
  TfrmLEDES1998BI = class(TForm)
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
                         AAuthor, ADescr, ARate, AClassification, ATax: string): string;
    function Discount_Detail_Line(ANFee, Aline_Type, AUnits_Hours, AAmount, ACreated, ATask,
                         AAuthor, ADescr, ARate, AClassification, ATax: string): string;
    procedure Open_File;
    procedure Close_File;
    procedure Create_File;
    procedure Create_File_Header;
  end;

var
  frmLEDES1998BI: TfrmLEDES1998BI;

implementation

{$R *.dfm}

uses
   MiscFunc, AxiomData;

procedure TfrmLEDES1998BI.Create_File;
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
                      qryFees.FieldByName('classification').AsString, qryFees.FieldByName('tax').AsString);
          qryFees.Next;
      end;
      //* there is a discount applied to this bill  *//
      if (qryBillDetails.FieldByName('discount').AsCurrency <> 0) then
      begin
         Discount_Detail_Line(IntToStr(qryFees.FieldByName('nfee').AsInteger + 1), 'IF', '1',
                      qryFees.FieldByName('amount').AsString, qryFees.FieldByName('created').AsString,
                      qryFees.FieldByName('utbms_code').AsString, qryFees.FieldByName('author').AsString,
                      qryFees.FieldByName('descr').AsString, qryFees.FieldByName('rate').AsString,
                      qryFees.FieldByName('classification').AsString, qryFees.FieldByName('tax').AsString);
      end;
   end;
   Close_File;
end;

procedure TfrmLEDES1998BI.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   odLedesFile.Title := 'Create LEDES1998B File';
   if odLedesFile.Execute then
   begin
      AFileName := odLedesFile.FileName;
      beFileName.Text := AFileName;
   end;
end;

function TfrmLEDES1998BI.Detail_Line(ANFee, Aline_type, AUnits_Hours, AAmount, ACreated, ATask,
                                    AAuthor, ADescr, ARate, AClassification, ATax: string): string;
var
   line: string;
begin
   //* bill date */  1
   line := qryBillDetails.FieldByName('invoice_date').AsString + separator;
   //* bill no */ 2
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
   //* line item total item amount */13
   line := line + FloatToStr(StrToCurr(AAmount) + StrToCurr(Atax)) + Separator;
   //* date */ 14
   line := line + ACreated + Separator;
   //* task code */ 15
   line := line + 'P240' + Separator;
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
   //* client matter number */
   line := line + qryClientRef.FieldByName('opref').AsString + Separator;
   //*PO number  */
   line := line + Separator;
   //* client tax id  */
   line := line + TableString('PHONEBOOK','NCLIENT', qryBillDetails.FieldByName('nclient').AsString, 'TAXNO') + Separator;
   //* matter name */
   line := line + MatterString(qryBillDetails.FieldByName('fileid').AsString ,'SHORTDESCR') + Separator;
   //* invoice tax total*/
   line := line + qryBillDetails.FieldByName('tax').AsString + Separator;
   //*invoice net total */
   line := line + qryBillDetails.FieldByName('total').AsString + Separator;
   //* invoice currency */
   line := line + 'AUD' + Separator;
   //* timkeeper last name */
   line := line + TableString('EMPLOYEE','CODE', AAuthor, 'SURNAME') + Separator;
   //* timekeeper first name
   line := line + TableString('EMPLOYEE','CODE', AAuthor, 'GIVENNAMES') + Separator;
   //* ACCOUNT_TYPE */
   line := line + 'O' + Separator;
//   LAW_FIRM_NAME
   line := line + Separator;
//   LAW_FIRM_ADDRESS_1
   line := line + Separator;
//   LAW_FIRM_ADDRESS_2
   line := line + Separator;
//   LAW_FIRM_CITY
   line := line + Separator;
//   LAW_FIRM_STATEorREGION
   line := line + Separator;
//   LAW_FIRM_POSTCODE
   line := line + Separator;
//   LAW_FIRM_COUNTRY
   line := line + Separator;
//   CLIENT_NAME
   line := line + Separator;
//   CLIENT_ADDRESS_1
   line := line + Separator;
//   CLIENT_ADDRESS_2
   line := line + Separator;
//   CLIENT_CITY
   line := line + Separator;
//   CLIENT_STATEorREGION
   line := line + Separator;
//   CLIENT_POSTCODE
   line := line + Separator;
//   CLIENT_COUNTRY
   line := line +  Separator;
//   LINE_ITEM_TAX_RATE
   line := line + '0.1' + Separator;
//   LINE_ITEM_TAX_TOTAL
   line := line + ATax + Separator;
//   LINE_ITEM_TAX_TYPE
   line := line + 'TAX' + Separator;
//   INVOICE_REPORTED_TAX_TOTAL
   line := line + ATax + Separator;
//   INVOICE_TAX_CURRENCY[]
   line := line + '[]';

   Writeln(F, line);
   Result := line;
end;

function TfrmLEDES1998BI.Discount_Detail_Line(ANFee, Aline_type, AUnits_Hours, AAmount, ACreated, ATask,
                                    AAuthor, ADescr, ARate, AClassification, ATax: string): string;
var
   line: string;
begin
   //* bill date */  1
   line := qryBillDetails.FieldByName('invoice_date').AsString + separator;
   //* bill no */ 2
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
   line := line + qryBillDetails.FieldByName('discount').AsString + Separator;
   //* line item total item amount */13
   line := line + qryBillDetails.FieldByName('discount').AsString + Separator;
   //* date */ 14
   line := line + qryBillDetails.FieldByName('invoice_date').AsString + Separator;
   //* task code */ 15
   line := line + 'P240' + Separator;
   //* expense code */ 16
   line := line + '' + Separator;
   //*activity code  */17
   line := line + ATask + Separator;
   //* author id  */17
   line := line + AAuthor + Separator;
   //*description */
   line := line + 'Discount' + Separator;
   //*firm id */
   line := line + SystemString('LEDES_FIRM_ID') + Separator;
   //* unit cost */
   line := line + ARate + Separator;
   //* author name */
   line := line + TableString('EMPLOYEE','CODE', AAuthor, 'NAME') + Separator;
   //classification  */
   line := line + AClassification + Separator;
   //* client matter number */
   line := line + qryClientRef.FieldByName('opref').AsString + Separator;
   //*PO number  */
   line := line + Separator;
   //* client tax id  */
   line := line + TableString('PHONEBOOK','NCLIENT', qryBillDetails.FieldByName('nclient').AsString, 'TAXNO') + Separator;
   //* matter name */
   line := line + MatterString(qryBillDetails.FieldByName('fileid').AsString ,'SHORTDESCR') + Separator;
   //* invoice tax total*/
   line := line + qryBillDetails.FieldByName('tax').AsString + Separator;
   //*invoice net total */
   line := line + qryBillDetails.FieldByName('total').AsString + Separator;
   //* invoice currency */
   line := line + 'AUD' + Separator;
   //* timkeeper last name */
   line := line + TableString('EMPLOYEE','CODE', AAuthor, 'SURNAME') + Separator;
   //* timekeeper first name
   line := line + TableString('EMPLOYEE','CODE', AAuthor, 'GIVENNAMES') + Separator;
   //* ACCOUNT_TYPE */
   line := line + 'O' + Separator;
//   LAW_FIRM_NAME
   line := line + Separator;
//   LAW_FIRM_ADDRESS_1
   line := line + Separator;
//   LAW_FIRM_ADDRESS_2
   line := line + Separator;
//   LAW_FIRM_CITY
   line := line + Separator;
//   LAW_FIRM_STATEorREGION
   line := line + Separator;
//   LAW_FIRM_POSTCODE
   line := line + Separator;
//   LAW_FIRM_COUNTRY
   line := line + Separator;
//   CLIENT_NAME
   line := line + Separator;
//   CLIENT_ADDRESS_1
   line := line + Separator;
//   CLIENT_ADDRESS_2
   line := line + Separator;
//   CLIENT_CITY
   line := line + Separator;
//   CLIENT_STATEorREGION
   line := line + Separator;
//   CLIENT_POSTCODE
   line := line + Separator;
//   CLIENT_COUNTRY
   line := line +  Separator;
//   LINE_ITEM_TAX_RATE
   line := line + '0.1' + Separator;
//   LINE_ITEM_TAX_TOTAL
   line := line + qryBillDetails.FieldByName('discount_gst').AsString + Separator;
//   LINE_ITEM_TAX_TYPE
   line := line + 'TAX' + Separator;
//   INVOICE_REPORTED_TAX_TOTAL
   line := line + qryBillDetails.FieldByName('discount_gst').AsString + Separator;
//   INVOICE_TAX_CURRENCY[]
   line := line + '[]';

   Writeln(F, line);
   Result := line;
end;

procedure TfrmLEDES1998BI.FormCreate(Sender: TObject);
begin
   qryBanks.Open;
end;

procedure TfrmLEDES1998BI.actProcessUpdate(Sender: TObject);
begin
   actProcess.Enabled := VarIsNull(deProcessDate.EditValue) and
                         (beFileName.Text <> '');
end;

procedure TfrmLEDES1998BI.Open_File;
var
   filename: string;
begin
	filename := 'LEDES' + PadStr(IntToStr(GetNextSequence('SEQ_EFTFILE')),4,'0')+'.txt';

   filename := SystemString('EFT_FILE_DIR') + '\' + filename;

	AssignFile(F, filename);
   Rewrite(F);
end;

procedure TfrmLEDES1998BI.Close_File;
begin
	CloseFile(F);
end;

procedure TfrmLEDES1998BI.Create_File_Header;
var
   Line: string;
begin
   Line := 'LEDES98BI V2[]';
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
   Line := Line + 'CLIENT_MATTER_ID'+ Separator;
   Line := Line + 'PO_NUMBER'+ Separator;
   Line := Line + 'CLIENT_TAX_ID'+ Separator;
   Line := Line + 'MATTER_NAME'+ Separator;
   Line := Line + 'INVOICE_TAX_TOTAL'+ Separator;
   Line := Line + 'INVOICE_NET_TOTAL'+ Separator;
   Line := Line + 'INVOICE_CURRENCY'+ Separator;
   Line := Line + 'TIMEKEEPER_LAST_NAME'+ Separator;
   Line := Line + 'TIMEKEEPER_FIRST_NAME'+ Separator;
   Line := Line + 'ACCOUNT_TYPE'+ Separator;
   Line := Line + 'LAW_FIRM_NAME'+ Separator;
   Line := Line + 'LAW_FIRM_ADDRESS_1'+ Separator;
   Line := Line + 'LAW_FIRM_ADDRESS_2'+ Separator;
   Line := Line + 'LAW_FIRM_CITY'+ Separator;
   Line := Line + 'LAW_FIRM_STATEorREGION'+ Separator;
   Line := Line + 'LAW_FIRM_POSTCODE'+ Separator;
   Line := Line + 'LAW_FIRM_COUNTRY'+ Separator;
   Line := Line + 'CLIENT_NAME'+ Separator;
   Line := Line + 'CLIENT_ADDRESS_1'+ Separator;
   Line := Line + 'CLIENT_ADDRESS_2'+ Separator;
   Line := Line + 'CLIENT_CITY'+ Separator;
   Line := Line + 'CLIENT_STATEorREGION'+ Separator;
   Line := Line + 'CLIENT_POSTCODE'+ Separator;
   Line := Line + 'CLIENT_COUNTRY'+ Separator;
   Line := Line + 'LINE_ITEM_TAX_RATE'+ Separator;
   Line := Line + 'LINE_ITEM_TAX_TOTAL'+ Separator;
   Line := Line + 'LINE_ITEM_TAX_TYPE'+ Separator;
   Line := Line + 'INVOICE_REPORTED_TAX_TOTAL'+ Separator;
   Line := Line + 'INVOICE_TAX_CURRENCY[]';
   Writeln(F, Line);
end;

end.
