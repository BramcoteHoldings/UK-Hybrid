unit ChequePrint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Db, Printers, OracleUniProvider, Uni, DBAccess, MemDS,
  DBCtrls, StdCtrls, ppComm, ppRelatv, ppProd, ppClass, ppReport,daSQL,
  daDataModule, daDatMod, daDataView, daQueryDataView, ppBands, ppCache,
  ppParameter, ppDesignLayer, daODAC, Ora;

type
  TfrmChequePrint = class(TForm)
    qryCheque: TUniQuery;
    qryAllocs: TUniQuery;
    qryPhonebook: TUniQuery;
    qryPrintedUpdate: TUniQuery;
    qryCreditorInvoice: TUniQuery;
    qryPhoneBookPayee: TUniQuery;
    qryPrinter: TUniQuery;
    dsSignature: TUniDataSource;
    qrySignature: TUniQuery;
    qryMatter: TUniQuery;
    dsPhoneBookPayee: TUniDataSource;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    DBImage: TDBImage;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText144Print(sender: TObject; var Value: String);
    procedure qrlOperatorPrint(sender: TObject; var Value: String);
    procedure qrlAuthorPrint(sender: TObject; var Value: String);
    procedure qrdblAmountPrint(sender: TObject; var Value: String);
    procedure ChequeAfterPrint(Sender: TObject);
    procedure qrlblHWMailingAddressPrint(sender: TObject;
      var Value: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FCreditorInvoices: Boolean;
    FPrinter : String;


//    procedure PrintReport(qrCheque : TQuickRep); overload;
    procedure PrintReport(qrCheque : TppReport); overload;
  public
    { Public declarations }
    procedure PrintCheque(iNcheque : integer);
    property PrinterPath: string read FPrinter write FPrinter;
  end;

var
  frmChequePrint: TfrmChequePrint;

implementation

uses
  AxiomData, MiscFunc, ppTypes;

{$R *.DFM}


procedure TfrmChequePrint.PrintCheque(iNcheque : integer);
var
   sCheque, sTmp, sTmp2 : string;
//  tmppic : TPicture;\

   iCount,i,x : integer;
   nmatter, nmemo, nclient, nname, sSQL, nreceipt, ncheque, acct: string;
   lDataModule: TdaDataModule;
   lSQL: TdaSQL;
   CompCount, CompTotal: integer;
   Buffer: string;
   Dest, Bind: string;
   NewChar : char;
begin
   with qryCheque do
   begin
     ParamByName('P_Ncheque').AsInteger := iNcheque;
     Open;
   end;
   //pb- do not process creditor invoices just yet - need to checkout how the upcreds etc will work here....
 (*
   // Make sure it is worth the costly interrogation of the TransItem table
   qryCreditorInvoice.ParamByName('NCHEQUE').AsInteger := iNcheque;
   qryCreditorInvoice.Open;
   if not(qryCreditorInvoice.IsEmpty) then
   begin
     // there are Creditor invoices allocated to this cheque
    FCreditorInvoices := True;
     with qryPhoneBook do
     begin
       ParamByName('P_Search').AsString := qryCheque.FieldByName('PAYEE').AsString;
       Open;
     end;
   end
   else
 *)
   begin
     // other type of payment
     FCreditorInvoices := False;
     qryAllocs.ParamByName('P_Ncheque').AsInteger := iNcheque;
     qryAllocs.Open;

     if not(qryAllocs.IsEmpty) then
     begin

       with qryPhoneBook do
       begin
         ParamByName('FILEID').AsString := qryAllocs.FieldByName('FILEID').AsString;
         Open;
       end;
       qryMatter.Close;
       qryMatter.ParamByName('P_File').AsString := MatterString(qryAllocs.FieldByName('FILEID').AsString,'NMATTER');
       qryMatter.Open;

     end
     else
     begin
       with qryAllocs do
       begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT TRANSITEM.ACCT, TRANSITEM.AMOUNT, TRANSITEM.ACCT, TRANSITEM.CHART AS FILEID, TRANSITEM.DESCR, CHART.REPORT_DESC AS CLIENT_NAME');
         SQL.Add('FROM TRANSITEM, CHART, CHEQUE, BANK');
         SQL.Add('WHERE OWNER_CODE = ''CHEQUE''');
         SQL.Add('AND NOWNER = ' + IntToStr(iNcheque));
         SQL.Add('AND CHART.BANK = TRANSITEM.ACCT');
         SQL.Add('AND CHART.CODE = TRANSITEM.CHART');
         SQL.Add('AND CHEQUE.NCHEQUE = ' + IntToStr(iNcheque));
         SQL.Add('AND BANK.ACCT = CHEQUE.ACCT');
         SQL.Add('AND TRANSITEM.CHART <> BANK.CASH_AT_BANK');
         Open;
       end;
     end;
   end;



   sCheque := TableString('PRINTER', 'CODE', FPrinter, 'TEMPLATE');
   if sCheque = '' then
     MessageDlg('Template is not set in Printer, for printer: ' + FPrinter,mtInformation,[mbOK], 0);

  { if sCheque = 'LYNCHMEYER' then
   begin
     qrlblLM10Millions.Caption := StarNumber(qryCheque.FieldByName('AMOUNT').AsCurrency, 10000000);
     qrlblLMMillions.Caption := StarNumber(qryCheque.FieldByName('AMOUNT').AsCurrency, 1000000);
     qrlblLM100Thousands.Caption := StarNumber(qryCheque.FieldByName('AMOUNT').AsCurrency, 100000);
     qrlblLM10Thousands.Caption := StarNumber(qryCheque.FieldByName('AMOUNT').AsCurrency, 10000);
     qrlblLMThousands.Caption := StarNumber(qryCheque.FieldByName('AMOUNT').AsCurrency, 1000);
     qrlblLMHundreds.Caption := StarNumber(qryCheque.FieldByName('AMOUNT').AsCurrency, 100);
     qrlblLMTens.Caption := StarNumber(qryCheque.FieldByName('AMOUNT').AsCurrency, 10);
     qrlblLMUnits.Caption := StarNumber(qryCheque.FieldByName('AMOUNT').AsCurrency, 1);
     qrlblLMCents.Caption := IntToStr((Trunc(qryCheque.FieldByName('AMOUNT').AsCurrency * 100)) - (Trunc(qryCheque.FieldByName('AMOUNT').AsCurrency) * 100));
     sTmp2 := formatcurr('$,##0.00',qryCheque.FieldByName('AMOUNT').AsCurrency);
     for iCount := length(qryCheque.FieldByName('AMOUNT').AsString) to 7 do
        sTmp2 := '*' + sTmp2;
     qrlblAmount.Caption := sTmp2;
     QRLabel55.Caption := sTmp2;
     qrlblAmount2.Caption := sTmp2;

//       qtxtItems.Hide;
//       qlblMatterDescInt.Hide;
//       qtxtItems.Visible := False;
//       qlblMatterDescInt.Visible := False;
//       qrlblItems.Caption := '';
//       qtxtItems.Caption := '';
//       qlblMatterDescInt.Caption := '';

     qryAllocs.First;

     qryPrinter.Close;
     qryPrinter.ParamByName('CODE').AsString := FPrinter;
     qryPrinter.Open;

     qrySignature.Close;
     qrySignature.ParamByName('CODE').AsString := qryPrinter.FieldByName('SIGNATURE1').AsString;
     qrySignature.Open;
     if not qrySignature.eof then
     begin
        // calculate the width of the image so won't distort
        LMsig.Width := trunc((LMsig.Height/dbimage.picture.height) * dbimage.picture.width);
        LMsig.picture := dbimage.picture;
     end;
     qrySignature.Close;
     PrintReport(qrLynchMeyer);
   end
   //else if UpperCase(sCheque) = 'CHEQUE_1' then
   else
   }
   if UpperCase(copy(sCheque,0,length('CHEQUE_'))) = 'CHEQUE_' then
   begin
      // trap any curreny cheque_1 that might be in the worng case
      // so we don't break any current installs
      if UpperCase(sCheque) = 'CHEQUE_1' then
        sCheque := 'Cheque_1';

      dmAxiom.qryRB_Items.Close;
      Report.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
      Report.Template.DatabaseSettings.NameField := 'ITEM_Name';
      Report.Template.DatabaseSettings.TemplateField := 'Template';
      Report.Template.DatabaseSettings.Name := sCheque;
 //     Report.Template.FileName := LTemplate;
      Report.Template.LoadFromDatabase;

      x := 0;
      i := 0;
 //    nmemo   := FInvoiceCreate.Strings[0];
      nmatter := MatterString(qryAllocs.FieldByName('FILEID').AsString,'NMATTER');
 //    nclient := FInvoiceCreate.Strings[2];
// AES  18/06/2009  
 //  this appears not to be correct cheques should not be to client but to payee as set on cheque.
      nname   :=  TableString('PHONEBOOK','NCLIENT',MatterString(qryAllocs.FieldByName('FILEID').AsString,'Nclient'),'NNAME');  //  qryCheque.FieldByName('NNAME').AsString;
      if nname = '' then nname := qryCheque.FieldByName('NNAME').AsString;
      if nname = '' then nname := '0';
      ncheque:= IntToStr(iNcheque);
      nreceipt := '0';
      acct := dmAxiom.Entity;

      lDataModule := daGetDataModule(Report);

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
                     (sSQL[i] = chr(95)) or (sSQL[i] = chr(38)) or (sSQL[i] = chr(36)) then
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
                     if Trim(UpperCase(Bind)) = ':NCHEQUE' then
                     begin
                        if NCHEQUE = '' then NCHEQUE := '0';
                        Dest := Dest + ncheque + ' ';
                     end;
                     if Trim(UpperCase(Bind)) = ':NRECEIPT' then
                     begin
                     if NRECEIPT = '' then NRECEIPT := '0';
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

            lSQL.DatabaseName := dmAxiom.orsAxiom.Name; // dmAxiom.uniInsight.Server;
            lSQL.SQLText.Text := Dest;
         end;
      end;

      PrintReport(Report);
   end;

   qryCheque.Close;
   qryAllocs.Close;
   qryPhonebook.Close;
   qryMatter.Close;
   Self.Close;
end;


procedure TfrmChequePrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryCheque.Close;
   qryAllocs.Close;
   qryPhonebook.Close;

   dmAxiom.orsAxiom.Disconnect;

   Action := caFree;
end;

{
procedure TfrmChequePrint.PrintReport(qrCheque : TQuickRep);
var
  //sPrinter : string;
  bOKtoPrint : boolean;
begin
  bOKtoPrint := True;
  //sPrinter := TableString('BANK', 'ACCT', qryCheque.FieldbyName('ACCT').AsString, 'CHEQUEPRINTER');
  PrinterPath := TableString('PRINTER','CODE',FPrinter,'PATH');
  if (PrinterPath <> '') and (Printer.Printers.IndexOf(PrinterPath) < 0) then
  begin
    if MsgAsk(PrinterPath + #13 + 'is not a valid printer for your computer' + #13 + #13 + 'Do you want to print this Cheque on ' + Printer.Printers[Printer.PrinterIndex] + '?') = mrNo then
      bOKtoPrint := False;
    PrinterPath := '';
  end;

  if bOKtoPrint then
  begin
    if PrinterPath <> '' then
      qrCheque.PrinterSettings.PrinterIndex := Printer.Printers.IndexOf(PrinterPath);
    if TableString('PRINTER', 'CODE', FPrinter, 'TRAY') <> '' then
      qrCheque.PrinterSettings.OutputBin := TQRBin(TableInteger('PRINTER', 'CODE', FPrinter, 'TRAY'));
    if not dmAxiom.runningide then
       qrCheque.Print

    else
      qrCheque.PreviewModal;
  end;
end;
}

procedure TfrmChequePrint.PrintReport(qrCheque: TppReport);
var
  sPrinter : string;
  bOKtoPrint : boolean;
begin
   bOKtoPrint := True;
   sPrinter := TableString('PRINTER', 'CODE', FPrinter, 'PATH');
   if (sPrinter <> '') and (Printer.Printers.IndexOf(sPrinter) < 0) then
   begin
      if MsgAsk(sPrinter + #13 + 'is not a valid printer for your computer' + #13#13 + 'Do you want to print this Cheque on ' + Printer.Printers[Printer.PrinterIndex] + '?') = mrNo then
         bOKtoPrint := False;
      sPrinter := '';
   end;
   if bOKtoPrint then
   begin
      if sPrinter <> '' then
         qrCheque.PrinterSetup.PrinterName := sPrinter; //  IndexOf(sPrinter);
      if (TableInteger('PRINTER', 'CODE', FPrinter, 'TRAY') <> 0) then
         qrCheque.PrinterSetup.BinName := qrCheque.PrinterSetup.BinNames[TableInteger('PRINTER', 'CODE', FPrinter, 'TRAY')];
      if not dmAxiom.runningide then
         qrCheque.DeviceType := 'Printer'
      else
         qrCheque.DeviceType := 'Screen';
      qrCheque.Print;
   end;
end;


procedure TfrmChequePrint.ChequeAfterPrint(Sender: TObject);
begin
  with qryPrintedUpdate do
  begin
    ParamByName('NCHEQUE').AsInteger := qryCheque.FieldByName('NCHEQUE').AsInteger;
    ExecSQL;
  end;
end;

procedure TfrmChequePrint.QRDBText144Print(sender: TObject;
  var Value: String);
begin
  Value := Copy(Value, 2, Length(Value));
end;

procedure TfrmChequePrint.qrlOperatorPrint(sender: TObject;
  var Value: String);
begin
  Value := dmAxiom.UserID;
end;

procedure TfrmChequePrint.qrlAuthorPrint(sender: TObject;
  var Value: String);
begin
  try
    Value := MatterString(qryAllocs.FieldByName('FILEID').AsString, 'AUTHOR');
  except
    Value := '';
  end;
end;

procedure TfrmChequePrint.qrdblAmountPrint(sender: TObject;
  var Value: String);
begin
  try
    Value := Format('%m', [Abs(StrToCurr(Value))]);
  except
    // do nothing
  end;
end;

procedure TfrmChequePrint.qrlblHWMailingAddressPrint(sender: TObject;
  var Value: String);
begin
  if qryPhonebook.Active and not qryPhonebook.IsEmpty then
    Value := PhonebookMailingAddress(qryPhonebook.FieldByName('SEARCH').AsString)
  else
    Value := '';
end;

procedure TfrmChequePrint.FormCreate(Sender: TObject);
begin
//   FOdacConnection := TOraSession.Create(nil);
//   FOdacConnection.AssignConnect(dmAxiom.orsAxiom);

   dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
   dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
   dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
   dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
   dmAxiom.orsAxiom.Connect;

   qryMatter.SQL.Text := SQL_MATTER;
end;

end.

