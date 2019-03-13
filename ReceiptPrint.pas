unit ReceiptPrint;

interface                                         

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Db, Printers, OracleUniProvider, Uni, MemDS, jpeg,
  DBAccess, daSQL, daDataModule, daDatMod, daDataView, daQueryDataView,
  ppReport, ppComm, ppRelatv, ppProd, ppClass, ppTmplat, raCodMod, ppBands,
  ppCache, ppParameter, ppDesignLayer;

type
  TfrmReceiptPrint = class(TForm)
    qryReceipt: TUniQuery;
    qryAllocs: TUniQuery;
    qryPhonebook: TUniQuery;
    qryPrintedUpdate: TUniQuery;
    qryMatter: TUniQuery;
    QryAllocTotals: TUniQuery;
    qryTransItem: TUniQuery;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReceiptAfterPrint(Sender: TObject);
    procedure qrlOperatorPrint(sender: TObject; var Value: String);
    procedure qrlAuthorPrint(sender: TObject; var Value: String);
    procedure qrlMatterDescPrint(sender: TObject; var Value: String);
    procedure qrlEntityPrint(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QRLabel82Print(sender: TObject; var Value: String);
    procedure QRDBText112Print(sender: TObject; var Value: String);
    procedure DBText112Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    FPrinter : String;
    FInvoiceCreate: TStringList;
    FPipelineName: TStringList;
    FPipelineSQL: TStringList;
//    procedure PrintReport(qrReceipt: TQuickRep); overload;
    procedure PrintReport(rbReceipt: TppReport); overload;
    procedure SetupReportForLedgerReceipt(iNreceipt : Integer);

    function ReceiptType(Code: string): string;
    function GetDefaultPrinterName : string;
  public
    { Public declarations }
    procedure PrintReceipt(iNreceipt: integer);
    property PrinterPath: string read FPrinter write FPrinter;
    property InvoiceCreate: TStringList read FInvoiceCreate write FInvoiceCreate;
  end;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}


procedure TfrmReceiptPrint.PrintReceipt(iNreceipt : integer);
var
  sReceipt, sTmp2 : string;
  iCount: integer;

   lSQL: TdaSQL;
   lDataModule: TdaDataModule;
//   lDataView: TdaDataView;
   CompCount, CompTotal: integer;
   nmatter, nmemo, nclient, nname, sSQL, nreceipt: string;
   i, x: integer;
   Buffer: string;
   Dest, Bind, acct: string;
   NewChar : char;
begin
  with qryReceipt do
  begin
    ParamByName('P_Nreceipt').AsInteger := iNreceipt;
    Open;
  end;

  with qryAllocs do
  begin
    ParamByName('P_Nreceipt').AsInteger := iNreceipt;
    Open;
  end;
  with qryAllocTotals do
  begin
    ParamByName('P_Nreceipt').AsInteger := iNreceipt;
    Open;
  end;
{
SELECT P.* FROM PHONEBOOK P,MATTER M,CLIENT C
WHERE P.SEARCH = C.SEARCH
AND C.NCLIENT = M.NCLIENT
AND M.FILEID = :FILEID
}
  if not qryAllocs.EOF then
  begin

    qryMatter.Close;
    qryMatter.ParamByName('P_FILE').AsString := MatterString(qryAllocs.FieldByName('FILEID').AsString,'NMATTER');
    qryMatter.Open;

    {with qryPhoneBook do
    begin
      ParamByName('FILEID').AsString := qryAllocs.FieldByName('FILEID').AsString;
      Open;
    end;}
    qryPhoneBook.Close;
    qryPhoneBook.ParamByName('NNAME').AsString := qryReceipt.FieldByName('NNAME').AsString;
    qryPhoneBook.Open;
    //display the right address here
  end
  else
  begin
//    bLedgerAllocs := True;
    // No matter allocation - it must be a general ledger cheque
    with qryAllocs do
    begin
      Close;
      SQL.Text := 'SELECT TRANSITEM.ACCT, TRANSITEM.CHART AS FILEID, TRANSITEM.DESCR,'+
                  'CHART.REPORT_DESC AS CLIENT_NAME FROM TRANSITEM, CHART WHERE '+
                  'OWNER_CODE = ''RECEIPT'' AND NOWNER = ' + IntToStr(iNReceipt) +
                  ' AND CHART.BANK = TRANSITEM.ACCT AND CHART.CODE = TRANSITEM.CHART';
      Open;
{
  Code Modified 21.01.2003 GG

  Now need to search on Entity as well

      if FieldByName('FILEID').AsString = TableString('BANK', 'ACCT', FieldByName('ACCT').AsString, 'CASH_AT_BANK') then
}
      if FieldByName('FILEID').AsString =
          TableStringEntity('BANK', 'ACCT', FieldByName('ACCT').AsString, 'CASH_AT_BANK', dmAxiom.Entity) then
        Next;
    end;
  end;

  sReceipt := TableString('PRINTER', 'CODE', FPrinter, 'TEMPLATE');

   if UpperCase(copy(sReceipt,0,length('RECEIPT_'))) = 'RECEIPT_' then
   begin
      // trap any curreny cheque_1 that might be in the worng case
      // so we don't break any current installs
      if UpperCase(sReceipt) = 'RECEIPT_1' then
        sReceipt := 'Receipt_1';

    try
      dmAxiom.qryRB_Items.Close;
      Report.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
      Report.Template.DatabaseSettings.NameField := 'ITEM_Name';
      Report.Template.DatabaseSettings.TemplateField := 'Template';
      Report.Template.DatabaseSettings.Name := sReceipt;
//    Report.Template.FileName := LTemplate;
      Report.Template.LoadFromDatabase;
   except
      ;
   end;

    x := 0;
    i := 0;
//    nmemo   := FInvoiceCreate.Strings[0];
    nmatter := MatterString(qryAllocs.FieldByName('FILEID').AsString,'NMATTER');
//    nclient := FInvoiceCreate.Strings[2];
    nname   :=  TableString('PHONEBOOK','NCLIENT',MatterString(qryAllocs.FieldByName('FILEID').AsString,'Nclient'),'NNAME');  //   qryReceipt.FieldByName('NNAME').AsString;
    if nname = '' then nname := qryReceipt.FieldByName('NNAME').AsString;
    if nname = '' then nname := '0';
    nreceipt:= IntToStr(iNreceipt);
    acct := dmAxiom.Entity;


    if (Report.Parameters.Count > 0) then
    begin
        with Report.Parameters do
        begin
           if nmatter <> '' then
              Items['NMATTER'].Value := StrToInt(nmatter);
           Items['NNAME'].Value := StrToInt(nname);
           Items['NRECEIPT'].Value := StrToInt(nreceipt);
           Items['ACCT'].Value := acct;
        end;
    end
    else
    begin
       try
         lDataModule := daGetDataModule(Report);
       except
         Raise;
       end;

       if (lDataModule <> nil) then
       CompTotal := lDataModule.DataViewCount;

       Dest := '';
       Buffer := '';
       sSQL := '';
       for CompCount := 0 to CompTotal - 1 do
       begin
          {get SQL object}
          Dest := '';
          Buffer := '';
          sSQL := '';
          x := 0;
          i := 0;
          if (GetSQLObject(Report, lSQL, CompCount)) then
          begin
             sSQL := lSQL.SQLText.Text;

             while i < Length(sSQL) do
             begin
                if (sSQL[i] <> ':') then
                begin
                   if sSQL[i] = #10 then
                      Dest := Dest + ' ';
                   if ((sSQL[i] > chr(64)) and (sSQL[i] < chr(91))) or
                      ((sSQL[i] > chr(96)) and (sSQL[i] < chr(123))) or
                      (sSQL[i] = chr(46)) or (sSQL[i] = chr(124)) or (sSQL[i] = chr(40)) or
                      (sSQL[i] = chr(41)) or (sSQL[i] = chr(43)) or (sSQL[i] = chr(45)) or
                      (sSQL[i] = chr(42)) or (sSQL[i] = chr(47)) or
                      ((sSQL[i] > chr(47)) and (sSQL[i] < chr(58)) or
                      (sSQL[i] = chr(60)) or (sSQL[i] = chr(61)) or (sSQL[i] = chr(62))) or
                      (sSQL[i] = chr(32)) or (sSQL[i] = chr(44)) or (sSQL[i] = chr(39)) or
                      (sSQL[i] = chr(95)) or (sSQL[i] = chr(38)) then
                      Dest := Dest + sSQL[i];
                   inc(i);
                end
                else
                begin
                   if (sSQL[i+1] <> ' ') and (sSQL[i+1] <> chr(39)) then
                   begin
                      Buffer := Dest;
                      x := i;
                      Bind := '';
                      NewChar := sSQL[x];
                      while (NewChar <> ' ') and (NewChar <> #10) do
                      begin
                         Bind := Bind + NewChar;
                         inc(x);
                         NewChar := sSQL[x];
                      end;
                      if Trim(UpperCase(Bind)) = ':NMATTER' then
                      begin
                         if NMATTER = '' then NMATTER := '0';
                         Dest := Dest + NMATTER + ' ';
                      end;
                      if Trim(UpperCase(Bind)) = ':NMEMO' then
                      begin
                         if NMEMO = '' then NMEMO := '0';
                         Dest := Dest + NMEMO + ' ';
                      end;
                      if Trim(UpperCase(Bind)) = ':NCLIENT' then
                      begin
                         if NCLIENT = '' then NCLIENT := '0';
                         Dest := Dest + NCLIENT + ' ';
                      end;
                      if Trim(UpperCase(Bind)) = ':NNAME' then
                      begin
                         if NNAME = '' then NNAME := '0';
                         Dest := Dest + NNAME + ' ';
                      end;
                      if Trim(UpperCase(Bind)) = ':P_FILE' then
                      begin
                         if NMATTER = '' then NMATTER := '0';
                         Dest := Dest + NMATTER + ' ';
                      end;
                      if Trim(UpperCase(Bind)) = ':NRECEIPT' then
                      begin
                         if nreceipt = '' then nreceipt := '0';
                         Dest := Dest + nreceipt + ' ';
                      end;
                      if Trim(UpperCase(Bind)) = ':ACCT' then
                      begin
                         Dest := Dest + '''' + acct + ''' ';
                      end;
                      i := x;
                   end
                   else
                   begin
                      Dest := Dest + ':';
                      inc(i);
                   end;
                end;
             end;

             lSQL.DatabaseName := dmAxiom.orsAxiom.Name;
             lSQL.SQLText.Text := Dest;
          end;
       end;
     end;
     PrintReport(Report);
  end;

  qryReceipt.Close;
  qryAllocs.Close;
  qryMatter.Close;
  qryTransItem.Close;
  dmAxiom.qryRB_Items.Close;

  Self.Close;
end;

function TfrmReceiptPrint.ReceiptType(Code: string): string;
begin
  if Code = 'CA' then
    Result := 'Cash'
  else if Code = 'CQ' then
    Result := 'Cheque'
  else if Code = 'BC' then
    Result := 'Bank Cheque'
  else if Code = 'DD' then
    Result := 'Direct Deposit'
  else if Code = 'CC' then
    Result := 'Credit Card'
  else if Code = 'TT' then
    Result := 'Telegraphic Transfer'
  else if Code = 'IT' then
    Result := 'International Transfer'
  else
    Result := Code;
end;

procedure TfrmReceiptPrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryAllocs.Close;
  qryReceipt.Close;
  qryPhonebook.Close;

  dmAxiom.orsAxiom.Disconnect;
  Action := caFree;
end;

procedure TfrmReceiptPrint.ReceiptAfterPrint(Sender: TObject);
begin
  with qryPrintedUpdate do
  begin
    ParamByName('NRECEIPT').AsInteger := qryReceipt.FieldByName('NRECEIPT').AsInteger;
    ExecSQL;
  end;
end;

procedure TfrmReceiptPrint.qrlOperatorPrint(sender: TObject;
  var Value: String);
begin
  Value := dmAxiom.UserID;
end;

procedure TfrmReceiptPrint.qrlAuthorPrint(sender: TObject;
  var Value: String);
begin
  Value := MatterString(qryAllocs.FieldByName('FILEID').AsString, 'AUTHOR');
end;

{procedure TfrmReceiptPrint.PrintReport(qrReceipt: TQuickRep);
var
  sPrinter : string;
  bOKtoPrint : boolean;
begin
  bOKtoPrint := True;
  sPrinter := TableString('PRINTER', 'CODE', FPrinter, 'PATH');
  if (sPrinter <> '') and (Printer.Printers.IndexOf(sPrinter) < 0) then
  begin
    if MsgAsk(sPrinter + #13 + 'is not a valid printer for your computer' + #13#13 + 'Do you want to print this Receipt on ' + Printer.Printers[Printer.PrinterIndex] + '?') = mrNo then
      bOKtoPrint := False;
    sPrinter := '';
  end;
  if bOKtoPrint then
  begin
    if sPrinter <> '' then
      qrReceipt.PrinterSettings.PrinterIndex := Printer.Printers.IndexOf(sPrinter);
    if TableInteger('PRINTER', 'CODE', FPrinter, 'TRAY') <> 0 then
      qrReceipt.PrinterSettings.OutputBin := TQRBin(TableInteger('PRINTER', 'CODE', FPrinter, 'TRAY'));
    if not dmAxiom.runningide then
        qrReceipt.Print
    else
        qrReceipt.Preview;
  end;
end;
}

procedure TfrmReceiptPrint.PrintReport(rbReceipt: TppReport);
var
  sPrinter : string;
  bOKtoPrint : boolean;
begin
   bOKtoPrint := True;
   try
      sPrinter := TableString('PRINTER', 'CODE', FPrinter, 'PATH');
      if (sPrinter <> '') and (Printer.Printers.IndexOf(sPrinter) < 0) then
      begin
         if MsgAsk(sPrinter + #13 + 'is not a valid printer for your computer' + #13#13 + 'Do you want to print this Receipt on ' +
                   Printer.Printers[Printer.PrinterIndex] + '?') = mrNo then
            bOKtoPrint := False;
         sPrinter := '';
      end;
      if bOKtoPrint then
      begin
         if sPrinter <> '' then
            rbReceipt.PrinterSetup.PrinterName := sPrinter;  //  IndexOf(sPrinter);
         if TableInteger('PRINTER', 'CODE', FPrinter, 'TRAY') <> 0 then
            rbReceipt.PrinterSetup.BinName := rbReceipt.PrinterSetup.BinNames[TableInteger('PRINTER', 'CODE', FPrinter, 'TRAY')];
         if not dmAxiom.runningide then
            rbReceipt.DeviceType := 'Printer'
         else
            rbReceipt.DeviceType := 'Screen';
         rbReceipt.Print;
      end;
   except
     // silent
   end;
end;

procedure TfrmReceiptPrint.qrlMatterDescPrint(sender: TObject;
  var Value: String);
begin
  Value := MatterString(qryAllocs.FieldByName('FILEID').AsString, 'LONGDESCR');
end;

procedure TfrmReceiptPrint.qrlEntityPrint(sender: TObject;
  var Value: String);
begin
  Value := TableString('BANK', 'ACCT', qryAllocs.FieldByName('ACCT').AsString, 'NAME');
end;

procedure TfrmReceiptPrint.FormCreate(Sender: TObject);
begin
   dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
   dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
   dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
   dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
   dmAxiom.orsAxiom.Connect;

    qryMatter.SQL.Text := SQL_MATTER;
    InvoiceCreate := TStringList.Create;
end;


{-------------------------------------------------------------------------------
  Name:         SetupReportForLedgerReceipt
  Description:  Sets up the report for a ledger receipt. This receipt only uses
                the receipt and transItem queries.
  Return:       <none>
  Parameters:   Receipt number for the selected record.
  Programmer:   Brendan Jagtenberg
  Date:         11-11-2002

-------------------------------------------------------------------------------}

procedure TfrmReceiptPrint.SetupReportForLedgerReceipt(iNreceipt : Integer);
begin
  qryTransItem.ParamByName('P_Nreceipt').AsInteger := iNreceipt;
{
  Code Added 21.01.2003 GG

  Now need to include the current entity as well
}
  qryTransItem.ParamByName('Acct').AsString:= dmAxiom.Entity;
  qryTransItem.Open;

//  qrlblSGName.Caption := qryReceipt.FieldbyName('PAYOR').AsString;
{  QRDBText96.DataSet := qryReceipt;
  QRDBText96.DataField := 'DESCR';
  QRDBText110.DataField := '';
  QRDBText92.DataSet := qryReceipt;
  QRDBText92.DataField := 'PAYOR';
  QRDBText178.DataSet := qryReceipt;
  QRDBText178.DataField := 'PAYOR';
  QRDBText113.DataSet := qryTransItem;
  QRDBText113.DataField := 'CHART';
  QRDBText106.DataField := '';
  QRDBText107.DataField := '';
  QRDBText114.DataSet := qryReceipt;
  QRDBText114.DataField := 'DESCR';
  QRDBText179.DataSet := qryReceipt;
  QRDBText179.DataField := 'PAYOR';
  QRDBText167.DataField := '';
  QRDBText93.DataField := '';
  QRDBText168.DataSet := qryTransItem;
  QRDBText168.DataField := 'CHART';
  QRDBText141.DataSet := qryReceipt;
  QRDBText141.DataField := 'PAYOR';
  QRDBText94.DataSet := qryReceipt;
  QRDBText94.DataField := 'PAYOR';
  QRDBText190.DataSet := qryTransItem;
  QRDBText190.DataField := 'CHART';
  QRDBText195.DataSet := qryTransItem;
  QRDBText195.DataField := 'CHART';
  // Shaddicks
  QRDBText246.DataSet := qryReceipt;
  QRDBText246.DataField := 'PAYOR';
//  QRLabel71.Caption := TableString('EMPLOYEE','CODE',qryTransItem.FieldByName('WHO').AsString, 'NAME');
  QRDBText228.DataSet := qryTransItem;
  QRDBText228.DataField := 'CHART';
  QRDBText216.DataSet := qryAllocs;
  QRDBText216.DataField := 'DESCR';
  // end Shaddicks        }
end;

procedure TfrmReceiptPrint.QRLabel82Print(sender: TObject;
  var Value: String);
begin
   Value := dmAxiom.EntityName;
end;

procedure TfrmReceiptPrint.QRDBText112Print(sender: TObject;
  var Value: String);
begin
   Value := '';
end;

procedure TfrmReceiptPrint.DBText112Print(sender: TObject;
  var Value: String);
begin
   Value := '';
end;

function TfrmReceiptPrint.GetDefaultPrinterName : string;
begin
   if (Printer.PrinterIndex > 0)then
   begin
      Result := Printer.Printers[Printer.PrinterIndex];
   end
   else
   begin
      Result := '';
   end;
end;

end.
