unit BulkCheqPayments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBar, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, DBAccess, OraSmart;

type
  TfrmBulkChequePosting = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryLedger: TUniQuery;
    qryLedgerTYPE: TStringField;
    qryLedgerREFNO: TStringField;
    qryLedgerLONGDESC: TStringField;
    qryLedgerREASON: TStringField;
    qryLedgerAMOUNT: TFloatField;
    qryLedgerBILLED: TStringField;
    qryLedgerUNIQUEID: TFloatField;
    qryLedgerTAXCODE: TStringField;
    qryLedgerTAX: TFloatField;
    qryLedgerROWID: TStringField;
    qryLedgerWITHHOLD: TStringField;
    qryLedgerSUNDRYTYPE: TStringField;
    dsLedger: TUniDataSource;
    procedure qryLedgerAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    function GetDefaultTax(sType : String; sDefaultTax : String) : String;
  public
    { Public declarations }
    procedure AutoChequeFromCheqReq(iNCheqReq: integer);
  end;

var
  frmBulkChequePosting: TfrmBulkChequePosting;

implementation

uses AxiomData, miscfunc, citfunc;

{$R *.dfm}

procedure TfrmBulkChequePosting.AutoChequeFromCheqReq(iNCheqReq: integer);
var
  qryCheqReq: TUniQuery;
  iCheqreqAmount,iCheqreqTax : Currency;
  lsDefaultTax : String;
begin
   qryCheqReq := TUniQuery.Create(Self);
   with qryCheqreq do
   begin
     Session := dmAxiom.uniInsight;
     SQL.Text := 'SELECT * FROM CHEQREQ WHERE NCHEQREQ = :NCHEQREQ';
     Params[0].AsInteger := iNCheqReq;
     Open;
     if not IsEmpty then
     begin

       qryLedgerTYPE.OnChange := nil;
       qryLedgerAMOUNT.OnChange := nil;
       qryLedgerTAXCODE.OnChange := nil;
       qryLedger.AfterInsert := nil;
       qryLedger.AfterPost := nil;
       qryLedger.AfterScroll := nil;
       qryLedger.Insert;

       // get the amount owing on the cheqreq

{         qryCheqreqBal.Close;
         qryCheqreqBal.ParamByName('NCHEQREQ').AsInteger := iNCheqReq;
         qryCheqreqBal.open;

         iCheqreqAmount := qryCheqreqBal.FieldByName('AMOUNT').AsCurrency;
         iCheqreqTax := qryCheqreqBal.FieldByName('TAX').AsCurrency;
         qryCheqReqBal.Close;
}

         if iCheqreqAmount = 0.00 then
         begin
             iCheqreqAmount := FieldByName('AMOUNT').AsFloat;
             iCheqreqTax := FieldByName('Tax').AsFloat
         end;

         if UpperCase(FieldByName('TAXCODE').AsString) = 'GSTNC' then
         // ignore the tax component, as the tax is not being paid to the creditor
           iCheqreqTax := 0;

       if FieldByName('FILEID').AsString <> '' then
       begin
         qryLedger.FieldByName('TYPE').AsString := 'Matter';
         qryLedger.FieldByName('REFNO').AsString := FieldByName('FILEID').AsString;
         qryLedger.FieldByName('LONGDESC').AsString := MatterString(FieldByName('FILEID').AsString, 'MATLOCATE');
       end
       else
       begin
         qryLedger.FieldByName('TYPE').AsString := 'Ledger';
         qryLedger.FieldByName('REFNO').AsString := FieldByName('LEDGER').AsString;
         qryLedger.FieldByName('LONGDESC').AsString := LedgerString(FieldByName('LEDGER').AsString, 'REPORT_DESC');
       end;
       qryLedger.FieldByName('REASON').AsString := FieldByName('DESCR').AsString;
       qryLedger.FieldByName('SUNDRYTYPE').AsString := FieldByName('SUNDRYTYPE').AsString;

       if (FieldByName('BILLED').AsString = 'Y') and (FieldByName('NMEMO').AsInteger > 0) then
       begin
         qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount + iCheqreqTax;

         lsDefaultTax := GetDefaultTax('ChequeAntDisb', 'NOTAX');

         qryLedger.FieldByName('TAXCODE').AsString := lsDefaultTax;
         qryLedger.FieldByName('TAX').AsFloat := 0;
         qryLedger.FieldByName('BILLED').AsString := 'Y';
       end
       else
       begin
         qryLedger.FieldByName('AMOUNT').AsFloat := iCheqreqAmount;
         qryLedger.FieldByName('TAXCODE').AsString := FieldByName('TAXCODE').AsString;
         qryLedger.FieldByName('TAX').AsFloat :=  iCheqreqTax;
         qryLedger.FieldByName('BILLED').AsString := 'N';
//         dbgrLedger.Columns[colTAXCODE].ReadOnly:= False;
//         dbgrLedger.Columns[colTAXCODE].Font.Color:= clWindowText;
       end;
       qryLedger.FieldByName('UNIQUEID').AsInteger := iNCheqReq;
       qryLedger.Post;

//       qryLedgerAMOUNT.OnChange := qryLedgerAMOUNTChange;
//       qryLedgerTAXCODE.OnChange := qryLedgerTAXCODEChange;
       qryLedger.AfterInsert := qryLedgerAfterInsert;

//       UpdateTotal;
//       dbgrLedger.SetFocus;
//       dbgrLedger.SelectedIndex := colAMOUNT;
//       qryLedgerTYPE.OnChange := qryLedgerTYPEChange;
//       qryLedger.AfterScroll := qryLedgerAfterScroll;
     end;
     Close;
   end;
   qryCheqReq.Free;
end;

function TfrmBulkChequePosting.GetDefaultTax(sType : String; sDefaultTax : String) : String;
var
  lsDefaultTax : String;
begin
  lsDefaultTax := Get_Default_GST(sType);

  if (lsDefaultTax = '') then
     lsDefaultTax := sDefaultTax;

  Result := lsDefaultTax;

end;

procedure TfrmBulkChequePosting.qryLedgerAfterInsert(DataSet: TDataSet);
begin
{  if AllocType = '' then
  begin
    if (qryBank.FieldByName('TRUST').AsString = 'T') OR (qryBank.FieldByName('TRUST').AsString = 'G') then
      qryLedger.FieldByName('TYPE').AsString := 'Matter'
    else
      qryLedger.FieldByName('TYPE').AsString := 'Ledger';
  end
  else
    qryLedger.FieldByName('TYPE').AsString := AllocType;
  qryLedger.Edit;
  qryLedger.FieldByName('REASON').AsString := DefaultDescr;
  if qryLedger.FieldByName('BILLED').Value = Null then
    qryLedger.FieldByName('BILLED').AsString := 'N';

  if qryLedger.FieldByName('TYPE').AsString = 'Matter' then
  begin
    if fLedgerTaxCode= '' then
      qryLedger.FieldByName('TAXCODE').AsString:= DefaultTax
    else
      qryLedger.FieldByName('TAXCODE').AsString:= fLedgerTaxCode;
  end
  else
    // TYPE = 'Ledger'
  begin

    if (fLedgerTaxCode = '') then
      qryLedger.FieldByName('TAXCODE').AsString:= GetDefaultTax('ChequeLedger', 'NCR')
    else
      qryLedger.FieldByName('TAXCODE').AsString:= fLedgerTaxCode;

  end; }
end;

end.
