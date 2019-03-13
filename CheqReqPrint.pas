unit CheqReqPrint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Db, Printers, OracleUniProvider, Uni, DBAccess, MemDS,
  ppBands, ppCache, ppClass, ppComm, ppRelatv,
  ppProd, ppReport, daSQL, daDataModule, daDatMod, daDataView, daQueryDataView,
  ppParameter, ppDesignLayer, ppPreviewFormSettings, ppDB, ppDBPipe,
  ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppVar, ppModule, raCodMod;

type
  TfrmCheqReqPrint = class(TForm)
    qryDetail: TUniQuery;
    qryHeader: TUniQuery;
    CheqReqPrint: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    qryGetCheqReq: TUniQuery;
    rptCheqReq: TppReport;
    plHeader: TppDBPipeline;
    plDetail: TppDBPipeline;
    dsHeader: TUniDataSource;
    dsDetail: TUniDataSource;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel13: TppLabel;
    ppDBMemo1: TppDBMemo;
    pplblEnteredBy: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppLabel19: TppLabel;
    ppDBText17: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryHeaderCalcFields(DataSet: TDataSet);
    procedure qryDetailMATTERGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure rptCheqReqBeforePrint(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
//    procedure PrintReport(qrCheqReq: TQuickRep); overload;
    procedure PrintReport(pprptCheqReq: TppReport); overload;
  public
    { Public declarations }
    procedure PrintCheqReq(NCheqReq: integer);
    procedure PrintInvoice(NCheque: integer);
  end;

implementation

uses
  AxiomData, MiscFunc, ppTypes;

{$R *.DFM}

var
  nmatter, nmemo, nclient, nname, nreceipt, ncheque, acct, sLedger, sFileID: string;
  Ancheqreq: integer;

procedure TfrmCheqReqPrint.PrintCheqReq(NCheqReq: integer);
var
   sChqReq: string;
   sTmp, sTmp2 : string;
   iCount: integer;
   lDataModule: TdaDataModule;
   lSQL: TdaSQL;
   CompCount, CompTotal, x, i: integer;
   Buffer: string;
   Dest, Bind,   sSQL: string;
   NewChar : char;
begin
   with qryHeader do
   begin
      SQL.Clear;
      SQL.Add('SELECT C.REQDATE as DueDate, C.PAYEE, C.DESCR, C.AMOUNT');
      SQL.Add('     , C.NCHEQREQ || '' '' as Refno, C.TAX, C.BANK, C.NOTE');
      SQL.Add('     , C.HELD, C.ANTICIPATED, (C.AMOUNT+C.TAX) AS Total');
      SQL.Add('     , C.FILEID, C.LEDGER, C.NOTE, C.NCHEQREQ');
      SQL.Add('     , E.Name, B.NAME AS BANKNAME, B.TRUST, C.NNAME');
      SQL.Add('     , case when HELD = ''W'' then ''To be held until funds received'' ');
      SQL.Add('       when HELD = ''Y'' then ''Held'' end as HoldDescr, C.CHQNO');
      SQL.Add('FROM CHEQREQ C, EMPLOYEE E, BANK B');
      SQL.Add('WHERE C.NCHEQREQ = ' + IntToStr(NCheqReq));
      SQL.Add('  AND C.AUTHOR = E.CODE');
      SQL.Add('  AND C.BANK = B.ACCT');
      Open;

      if not IsEmpty then
      begin
         if FieldByName('FILEID').AsString <> '' then
         begin
            qryDetail.SQL.Clear;
            qryDetail.SQL.Add('SELECT ''Matter'' as Type, M.FILEID as Refno');
            qryDetail.SQL.Add('     , P.SEARCH AS DESCR, M.SHORTDESCR AS MATTER');
            qryDetail.SQL.Add('     , C.AMOUNT+C.TAX as Amount, C.NOTE, C.CHQNO');
            qryDetail.SQL.Add('FROM MATTER M, CHEQREQ C, PHONEBOOK P');
            qryDetail.SQL.Add('WHERE M.NCLIENT = P.NCLIENT ');
            qryDetail.SQL.Add('AND M.FILEID = ' +
              QuotedStr(FieldByName('FILEID').AsString));
            qryDetail.SQL.Add('  AND C.NCHEQREQ = ' + IntToStr(NCheqReq));
         end
         else
         begin
            qryDetail.SQL.Clear;
            qryDetail.SQL.Add('SELECT ''Ledger'' as Type, C.COMPONENT_CODE_DISPLAY as Refno');
            qryDetail.SQL.Add('     , C.REPORT_DESC AS DESCR, Null as Matter');
            qryDetail.SQL.Add('     , CR.AMOUNT+CR.TAX as Amount, CR.Note, CR.CHQNO');
            qryDetail.SQL.Add('FROM CHART C, CHEQREQ CR');
            qryDetail.SQL.Add('WHERE C.BANK = ' + QuotedStr(dmAxiom.Entity));
            qryDetail.SQL.Add('  AND C.CODE = ' +
              QuotedStr(FieldByName('LEDGER').AsString));
            qryDetail.SQL.Add('  AND CR.NCHEQREQ = ' + IntToStr(NCheqReq));
         end;
         qryDetail.Open;
      end;
   end;


//   sChqReq := TableString('RB_ITEM', 'ITEM_NAME', 'CHEQREQ', 'ITEM_NAME');
   qryGetCheqReq.Open;
   sChqReq := qryGetCheqReq.FieldByName('item_name').AsString;
   qryGetCheqReq.Close;
   if UpperCase(copy(sChqReq,0,length('CHEQREQ'))) = 'CHEQREQ' then
   begin
      dmAxiom.qryRB_Items.Close;
      CheqReqPrint.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
      CheqReqPrint.Template.DatabaseSettings.NameField := 'ITEM_Name';
      CheqReqPrint.Template.DatabaseSettings.TemplateField := 'Template';
      CheqReqPrint.Template.DatabaseSettings.Name := sChqReq;
      CheqReqPrint.Template.LoadFromDatabase;

 //    nmemo   := FInvoiceCreate.Strings[0];
      nmatter := MatterString(qryHeader.FieldByName('FILEID').AsString,'NMATTER');
      Ancheqreq := NCheqReq;
      if qryDetail.FieldByName('Type').AsString = 'Matter' then
         sFileID := qryHeader.FieldByName('FILEID').AsString;
      if qryDetail.FieldByName('Type').AsString = 'Ledger' then
         sLedger := qryDetail.FieldByName('REFNO').AsString;
 //    nclient := FInvoiceCreate.Strings[2];
      nname   :=  TableString('PHONEBOOK','NCLIENT',MatterString(qryHeader.FieldByName('FILEID').AsString,'Nclient'),'NNAME');  //  qryCheque.FieldByName('NNAME').AsString;
      if nname = '' then nname := qryHeader.FieldByName('NNAME').AsString;
      if nname = '' then nname := '0';

      nreceipt := '0';
      acct := dmAxiom.Entity;

      if (CheqReqPrint.Parameters.Count > 0) then
      begin
         with CheqReqPrint.Parameters do
         begin
            if sFileID = '' then
               Items['FILEID'].Value := 0
            else
               Items['FILEID'].Value := sFileID;
            Items['NCHEQREQ'].Value := ancheqreq;
            if (sLedger = '') then
               Items['LEDGER'].Value := 0
            else
               Items['LEDGER'].Value := sLedger;
            Items['ENTITY'].Value := dmAxiom.Entity;
         end;
      end
      else
      begin
         lDataModule := daGetDataModule(CheqReqPrint);

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
            if (GetSQLObject(CheqReqPrint, lSQL, CompCount)) then
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
                        if Trim(UpperCase(Bind)) = ':NCHEQREQ' then
                        begin
                           Dest := Dest + IntToStr(ancheqreq) + ' ';
                        end;
                        if Trim(UpperCase(Bind)) = ':FILEID' then
                        begin
                           Dest := Dest + ''''+sfileid+''' ';
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
      PrintReport(CheqReqPrint);
   end
   else
   begin
      PrintReport(rptCheqReq);
   end;
  Self.Close;
end;

procedure TfrmCheqReqPrint.PrintInvoice(NCheque: integer);
begin
  with qryHeader do
  begin
    SQL.Clear;
    SQL.Add('SELECT I.DUE_DATE as DueDate, I.CREDITOR as Payee, I.DESCR');
    SQL.Add('     , I.AMOUNT, I.REFNO, 0 as TAX, B.ACCT as Bank, Null as Note');
    SQL.Add('     , Null as Held, Null as Anticipated, I.AMOUNT AS Total');
    SQL.Add('     , Null as FileID, Null as Ledger, 0 as nname');
    SQL.Add('     , Null as Name, B.NAME AS BANKNAME, ''G'' as Trust');
    SQL.Add('FROM INVOICE I, ENTITY E, BANK B');
    SQL.Add('WHERE I.NCHEQUE = ' + IntToStr(NCheque));
    SQL.Add('  AND I.ACCT = E.CODE');
    SQL.Add('  AND E.DEFAULT_BANK = B.ACCT');
    Open;

    if not IsEmpty then
    begin
      qryDetail.SQL.Clear;
      qryDetail.SQL.Add('SELECT ''Matter'' as Type, A.FILEID as Refno');
      qryDetail.SQL.Add('     , P.SEARCH AS DESCR, M.SHORTDESCR AS MATTER');
      qryDetail.SQL.Add('     , 0-(A.AMOUNT+A.TAX) as Amount');
      qryDetail.SQL.Add('FROM ALLOC A, MATTER M, PHONEBOOK P');
      qryDetail.SQL.Add('WHERE A.NCHEQUE = ' + IntToStr(NCheque));
      qryDetail.SQL.Add('  AND A.NMATTER = M.NMATTER');
      qryDetail.SQL.Add('  AND M.NCLIENT = P.NCLIENT');
      qryDetail.SQL.Add('UNION');
      qryDetail.SQL.Add('SELECT ''Ledger'' as Type, C.COMPONENT_CODE_DISPLAY as REFNO');
      qryDetail.SQL.Add('     , C.REPORT_DESC AS DESCR, Null AS MATTER');
      qryDetail.SQL.Add('     , 0-T.AMOUNT as Amount');
      qryDetail.SQL.Add('FROM TRANSITEM T, CHART C');
      qryDetail.SQL.Add('WHERE C.BANK = T.ACCT AND C.CODE = T.CHART');
      qryDetail.SQL.Add('  AND T.OWNER_CODE = ''INVOICE'' AND NOWNER = ' + IntToStr(NCheque));
      qryDetail.Open;

//      qrlblNumber.Caption := 'Invoice';
//      qrlblAmount.Enabled := False;
//      qrdblblAmount.Enabled := False;
//      qrlblTax.Enabled := False;
//      qrdblblTax.Enabled := False;

      PrintReport(rptCheqReq);
    end;
  end;

  Self.Close;
end;


procedure TfrmCheqReqPrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryHeader.Close;
  qryDetail.Close;

   dmAxiom.orsAxiom.Disconnect;

  Action := caFree;
end; 
{
procedure TfrmCheqReqPrint.PrintReport(qrCheqReq: TQuickRep);
begin
  qrCheqReq.Print;
end; }

procedure TfrmCheqReqPrint.PrintReport(pprptCheqReq: TppReport);
var
   ANewDocName, AParsedDocName, ASubject, AParsedDir: string;
begin
{   if dmAxiom.runningide then
   begin
      pprptCheqReq.DeviceType := 'Screen';
      pprptCheqReq.PreviewFormSettings.WindowState := wsMaximized;
      pprptCheqReq.Print;
   end
   else   }
   begin
      if (SystemString('SaveCheqReq_as_pdf') = 'Y') and
         (qryHeader.FieldByName('FILEID').AsString <> '') then
      begin
         ANewDocName := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\CheqReq_' +
                                     qryHeader.FieldByName('REFNO').AsString + '.pdf';
         AParsedDocName := ParseMacros(ANewDocName, TableInteger('MATTER','FILEID',qryHeader.FieldByName('FILEID').AsString,'NMATTER'));
         AParsedDir := Copy(ExtractFilePath(AParsedDocName),1 ,length(ExtractFilePath(AParsedDocName))-1);
         // check directory exists, if not create it
         if not DirectoryExists(AParsedDir) then
            ForceDirectories(AParsedDir);

         pprptCheqReq.AllowPrintToFile := True;
         pprptCheqReq.ShowPrintDialog := False;
         pprptCheqReq.DeviceType := 'PDF';
         pprptCheqReq.PDFSettings.OpenPDFFile := False;
         pprptCheqReq.TextFileName := AParsedDocName;
         pprptCheqReq.ModalPreview := False;

         try
            pprptCheqReq.Print;
         finally
            SaveCheqReq('CheqReq# '+ qryHeader.FieldByName('REFNO').AsString,
                         dmAxiom.UserID, AParsedDocName,'Generated CheqReq',
                         qryHeader.FieldByName('FILEID').AsString,'','','', qryHeader.FieldByName('NCHEQREQ').AsInteger );
         end;
      end
      else
      begin
         pprptCheqReq.DeviceType := 'Printer';
         pprptCheqReq.PreviewFormSettings.WindowState := wsMaximized;
         pprptCheqReq.Print;
      end;
   end;
end;

{
procedure TfrmCheqReqPrint.qrCheqReqPrintBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qrlblEntity.Caption := dmAxiom.EntityName;
  qrlblEnteredBy.Caption := '(' + dmAxiom.UserID + ') ' + TableString('EMPLOYEE', 'CODE', dmAxiom.UserID,
    'NAME');
  if qryHeader.FieldByName('TRUST').AsString = 'T' then
  begin
    qrttlTitle.Color := clSilver;
    qrlblEntity.Color := clSilver;
    qrlbltitle.Color := clSilver;
    qrsysPrinted.Color := clSilver;
    qrlblTitle.Caption := 'Trust Cheque Requisition';
  end;
  if qryHeader.FieldByName('NOTE').AsString = '' then
    qrttlTitle.Height := qrlblNote.Top - 2;;
end;      }

procedure TfrmCheqReqPrint.qryHeaderCalcFields(DataSet: TDataSet);
begin
  if qryHeader.FieldByName('HELD').AsString = 'W' then
    qryHeader.FieldByName('HoldDescr').AsString :=
      'To be held until funds received'
  else if qryHeader.FieldByName('HELD').AsString = 'Y' then
    qryHeader.FieldByName('HoldDescr').AsString := 'Held';
end;

procedure TfrmCheqReqPrint.qryDetailMATTERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (qryDetail.FieldByName('Type').AsString = 'Matter') then
    if (qryHeader.FieldByName('ANTICIPATED').AsString = 'Y')
      and (qryHeader.FieldByName('TRUST').AsString = 'G') then
      Text := qryDetail.FieldByName('MATTER').AsString
        + #13'Anticipated Disbursement: To be billed.';
end;

procedure TfrmCheqReqPrint.rptCheqReqBeforePrint(Sender: TObject);
begin
   pplblEnteredBy.Text := '(' + dmAxiom.UserID + ') ' + TableString('EMPLOYEE', 'CODE', dmAxiom.UserID,
    'NAME');
end;

procedure TfrmCheqReqPrint.FormCreate(Sender: TObject);
begin
   dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
   dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
   dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
   dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
   dmAxiom.orsAxiom.Connect;
end;

procedure TfrmCheqReqPrint.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
   Text := dmAxiom.EntityName;
end;

end.

