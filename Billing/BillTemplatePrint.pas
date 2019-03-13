unit BillTemplatePrint;

interface

uses
  SysUtils, Classes, ppDB, ppDBPipe, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport,
  ppTmplat, ppViewr, daDatMod, daDataView, daSQL, daQueryDataView,
  Forms, ppParameter, ppDesignLayer, Ora, daDataModule;

type
  TdmBillTemplate = class(TDataModule)
    BillPrint: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    tblRb_Item: TUniTable;
    tblRb_ItemROWID: TStringField;
    tblRb_ItemITEM_ID: TIntegerField;
    tblRb_ItemFOLDER_ID: TIntegerField;
    tblRb_ItemITEM_NAME: TStringField;
    tblRb_ItemITEM_SIZE: TIntegerField;
    tblRb_ItemITEM_TYPE: TIntegerField;
    tblRb_ItemMODIFIED: TFloatField;
    tblRb_ItemDELETED: TFloatField;
    tblRb_ItemTEMPLATE: TBlobField;
    dsRB_Item: TUniDataSource;
    plReports: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure BillPrintPreviewFormCreate(Sender: TObject);
    procedure BillPrintBeforePrint(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FInvoiceCreate: TStringList;
    FPipelineName: TStringList;
    FPipelineSQL: TStringList;
    FBillTemplate: string;
  public
    { Public declarations }
    property InvoiceCreate: TStringList read FInvoiceCreate write FInvoiceCreate;
    property BillTemplate: string read FBillTemplate write FBillTemplate;
  end;

var
  dmBillTemplate: TdmBillTemplate;

implementation

{$R *.dfm}

uses
   miscfunc, AxiomData, BillTemplates;

procedure TdmBillTemplate.BillPrintBeforePrint(Sender: TObject);
var
   lSQL: TdaSQL;
   lDataModule: TdaDataModule;
   lDataView: TdaDataView;
   CompCount, CompTotal: integer;
   nmatter, nmemo, nclient, sSQL,
   Buffer, Dest, Bind, sDetailsParam,
   AddParamList,
   sParam,
   sParamName: string;
   i, x: integer;
   NewChar: char;
   sParamList: TStringList;
begin
   nmemo := FInvoiceCreate.Strings[0];
   nmatter := FInvoiceCreate.Strings[1];
   nclient := FInvoiceCreate.Strings[2];

   AddParamList := TableString('BILLTEMPLATE','CODE', BillTemplate ,'PARAM_LIST');
   if (AddParamList <> '') then
   begin
      sParamList := TStringList.Create;
      Split(AddParamList, ';', sParamList);
   end;

   if (BillPrint.Parameters.Count > 0) then
   begin
      with BillPrint.Parameters do
      begin
         Items['NMATTER'].Value := StrToInt(nmatter);
         Items['NMEMO'].Value := StrToInt(nmemo);
         Items['NCLIENT'].Value := StrToInt(nclient);
         Items['ENTITY'].Value := dmAxiom.Entity;
         if Assigned(sParamList) then
         begin
            if sParamList.Count > 0 then
            begin
               for I := 0 to (sParamList.Count - 1) do
               begin
                  sParam := sParamList.Strings[i];
                  sParamName := Copy(sParam,1, Pos('=',sParam)-1);
                  sDetailsParam := Copy(sParam,Pos('=',sParam)+1, 1);
                  BillPrint.Parameters.Items[sParamName].Value := sDetailsParam;
               end;
            end;
            if assigned(sParamList) then FreeAndNil(sParamList);
         end;
      end;
   end
   else
   begin
      lDataModule := daGetDataModule(BillPrint);

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
         if (GetSQLObject(BillPrint, lSQL, CompCount)) then
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
                        Dest := Dest + NMATTER + ' ';
                     if Trim(UpperCase(Bind)) = ':NMEMO' then
                        Dest := Dest + NMEMO + ' ';
                     if Trim(UpperCase(Bind)) = ':NCLIENT' then
                        Dest := Dest + NCLIENT + ' ';
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
{
         if lSQL.DataPipelineName = 'TRUST_HELD' then
         begin
            sSQL := 'SELECT nvl(sum(amount),0) AS TRUST_HELD FROM alloc '+
                    'WHERE nmatter = '+NMATTER+' AND trust = ''T''';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'Fee2' then
         begin
            sSQL := 'SELECT SUM(FEE.AMOUNT) SUM_FEE_AMOUNT, '+
                    'sum(fee.amount) * .1 sum_fee_amount_1 '+
                    'FROM AXIOM.FEE FEE, AXIOM.TAXRATE TAXRATE WHERE TAXRATE.TAXCODE = FEE.TAXCODE '+
                    'AND FEE.NMEMO = '+ NMEMO + ' AND FEE.NMATTER = ' +NMATTER +
                    'GROUP BY FEE.CREATED, FEE.DESCR, FEE.AMOUNT ';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'Nmemo' then
         begin
            sSQL := 'SELECT NMEMO.REFNO, NMEMO.FEES, NMEMO.DISB,NMEMO.ANTD,NMEMO.SUND,NMEMO.INV_NOTE,'+
                         'NMEMO.DEBTORS,NMEMO.FEESTAX, NMEMO.DISBTAX,NMEMO.SUNDTAX, NMEMO.ANTDTAX,'+
                         'SUM(NMEMO.ANTD + NMEMO.FEES + NMEMO.DISB + NMEMO.ANTD + NMEMO.SUND + NMEMO.DEBTORS +'+
                         'NMEMO.FEESTAX + NMEMO.DISBTAX + NMEMO.SUNDTAX + NMEMO.ANTDTAX ) SUM_NMEMO_ANTD,'+
                         'NMEMO.DISPATCHED FROM NMEMO NMEMO WHERE NMEMO = ' +NMEMO+ ' AND NMATTER = ' +NMATTER +
                         'GROUP BY NMEMO.REFNO, NMEMO.FEES, NMEMO.DISB,NMEMO.ANTD, NMEMO.SUND, '+
                         'NMEMO.DEBTORS,NMEMO.FEESTAX, NMEMO.DISBTAX,NMEMO.SUNDTAX, NMEMO.ANTDTAX,'+
                         'NMEMO.DISPATCHED, NMEMO.INV_NOTE ';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'Phonebook' then
         begin
            sSQL := 'SELECT title, name, address, suburb||'' ''||state||'' ''||postcode as SSP '+
                    'FROM PHONEBOOK WHERE nclient = ' + NCLIENT ;
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'disbs_tax' then
         begin
            sSQL := 'SELECT 2 AS type,created,sundrytype AS author,descr,(0 - amount) AS amount,'+
                    'DECODE(alloc.billed,''Y'',0 - alloc.tax, DECODE((r.rate-r.bill_rate), '+
                    '''0'',0 - alloc.tax,ROUND((0 - alloc.amount) * ABS(r.rate)) / 100)) AS tax '+
                    'FROM alloc,taxrate r WHERE nmatter = ' +NMATTER +' AND nmemo = '+ NMEMO +
                    ' AND (ncheque > 0 OR type = ''J2'' OR type = ''DR'') AND alloc.taxcode = r.taxcode(+) '+
                    'UNION ALL '+
                    'SELECT 3 AS type,reqdate AS created,sundrytype AS author,descr,amount,tax '+
                    'FROM cheqreq WHERE nmatter = ' + NMATTER + ' AND nmemo = ' +NMEMO+
                    ' UNION ALL '+
                    'SELECT 4 AS type, created,type AS author,descr,amount,tax FROM sundry WHERE '+
                    'nmatter = '+NMATTER +' AND nmemo = '+ NMEMO +
                    ' UNION ALL '+
                    'SELECT 5 AS type,invoice_date AS created,m.author AS author,c.descr,(a.amount * -1) AS amount,'+
                    '(a.tax * -1) AS Tax FROM matter m, alloc a, invoice c WHERE m.nmatter = a.nmatter '+
                    'AND a.ninvoice = c.ninvoice AND a.nmemo = '+NMEMO+' AND m.nmatter = '+NMATTER +
                    ' ORDER BY 1, 2 ';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'Receipt' then
         begin
            sSQL := 'SELECT ''Receipt '' || RECEIPT.RCPTNO || ''  '' ||  RECEIPT.PAYOR AS RCPTNO,'+
                    'RECEIPT.AMOUNT FROM RECEIPT RECEIPT, ALLOC ALLOC WHERE ALLOC.NMATTER = '+NMATTER +
                    ' AND ALLOC.NMEMO = '+NMEMO + ' AND ALLOC.NRECEIPT = RECEIPT.NRECEIPT ';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'Trust_amount' then
         begin
            sSQL := 'SELECT Created AS CREATED, amount * -1 as dm , AMOUNT, PAYER, SPEC_PURPOSE, CLEARED,'+
                    'DCLEARDATE, DESCR, REFNO,DECODE(SUBSTR((ALLOC.AMOUNT),0,1),''0'',to_number(NULL),''-'',ABS(ALLOC.AMOUNT ),to_number(NULL)) DEBIT , '+
                    'DECODE(SUBSTR((ALLOC.AMOUNT),0,1),''-'',to_number(NULL),ABS(ALLOC.AMOUNT)) CREDIT '+
                    'FROM ALLOC WHERE NMATTER = '+ NMATTER +'AND TRUST = ''T'' '+
                    'UNION ALL '+
                    'SELECT Created AS CREATED, amount * -1 as dm , 0 AS AMOUNT, '+
                    '''Transit Register:'' as PAYER, 0 AS SPEC_PURPOSE,'+
                    ''''' AS CLEARED, to_date('''','''') AS DCLEARDATE, DESCR, REFNO,'+
                    'to_number(NULL) AS DEBIT,to_number(NULL) as CREDIT FROM TRANSIT '+
                    'WHERE NMATTER = '+NMATTER+ ' ORDER BY 1,2 ';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'Matter' then
         begin
            sSQL := 'SELECT MATTER.PARTNER, MATTER.FILEID,MATTER.LONGDESCR, '+
                    'MATTER.SHORTDESCR, MATTER.PARTNER||'' : ''||MATTER.FILEID AS FILE_NUMBER '+
                    'FROM MATTER MATTER WHERE NMATTER = '+NMATTER ;
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'disbs_TAX_FREE' then
         begin
            sSQL := 'SELECT 2 AS type,created,sundrytype AS author,alloc.descr,(0 - amount) AS amount '+
                    'FROM alloc,taxtype t WHERE nmatter = '+NMATTER+' AND nmemo = '+NMEMO +' AND '+
                    '(ncheque > 0 OR type = ''J2'' OR type = ''DR'') AND alloc.taxcode = t.code and '+
                    't.taxtype = ''FREE'' '+
                    'UNION ALL '+
                    'SELECT 3 AS type,reqdate AS created,sundrytype AS author,cheqreq.descr,amount '+
                    'FROM cheqreq,taxtype t WHERE nmatter = '+NMATTER+' AND nmemo = '+NMEMO+' AND '+
                    'cheqreq.taxcode = t.code and t.taxtype = ''FREE'' '+
                    'UNION ALL '+
                    'SELECT 4 AS type,created,type AS author,sundry.descr,amount FROM sundry,taxtype t '+
                    'WHERE nmatter = '+NMATTER+' AND nmemo = '+NMEMO+' and sundry.taxcode = t.code and '+
                    't.taxtype = ''FREE'' '+
                    'UNION ALL '+
                    'SELECT 5 AS type,invoice_date AS created,m.author AS author,c.descr,'+
                    '(a.amount * -1) AS amount FROM taxtype t, matter m, alloc a, invoice c '+
                    'WHERE m.nmatter = a.nmatter AND a.ninvoice = c.ninvoice AND a.nmemo = '+NMEMO+
                    ' AND m.nmatter = '+NMATTER+' AND  a.taxcode = t.code and    t.taxtype = ''FREE'' '+
                    'ORDER BY 1, 2';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'total_fee_disbs' then
         begin
            sSQL := 'select sum(nvl(tax_free.amount,0) + nvl(tax_disbs.amount,0)) as totalFee_Disbs from '+
                    '(SELECT (0 - amount) AS amount '+
                    'FROM alloc,taxtype t WHERE nmatter = '+NMATTER+' AND nmemo = '+NMEMO +' AND '+
                    '(ncheque > 0 OR type = ''J2'' OR type = ''DR'') AND alloc.taxcode = t.code and '+
                    't.taxtype = ''FREE'' '+
                    'UNION ALL '+
                    'SELECT amount '+
                    'FROM cheqreq,taxtype t WHERE nmatter = '+NMATTER+' AND nmemo = '+NMEMO+' AND '+
                    'cheqreq.taxcode = t.code and t.taxtype = ''FREE'' '+
                    'UNION ALL '+
                    'SELECT amount FROM sundry,taxtype t '+
                    'WHERE nmatter = '+NMATTER+' AND nmemo = '+NMEMO+' and sundry.taxcode = t.code and '+
                    't.taxtype = ''FREE'' '+
                    'UNION ALL '+
                    'SELECT (a.amount * -1) AS amount FROM taxtype t, matter m, alloc a, invoice c '+
                    'WHERE m.nmatter = a.nmatter AND a.ninvoice = c.ninvoice AND a.nmemo = '+NMEMO+
                    ' AND m.nmatter = '+NMATTER+' AND  a.taxcode = t.code and    t.taxtype = ''FREE'') tax_free, '+
                    '(SELECT (0 - amount) AS amount '+
                    'FROM alloc,taxrate r WHERE nmatter = ' +NMATTER +' AND nmemo = '+ NMEMO +
                    ' AND (ncheque > 0 OR type = ''J2'' OR type = ''DR'') AND alloc.taxcode = r.taxcode(+) '+
                    'UNION ALL '+
                    'SELECT amount FROM cheqreq WHERE nmatter = ' + NMATTER + ' AND nmemo = ' +NMEMO+
                    ' UNION ALL '+
                    'SELECT amount FROM sundry WHERE '+
                    'nmatter = '+NMATTER +' AND nmemo = '+ NMEMO +
                    ' UNION ALL '+
                    'SELECT (a.amount * -1) AS amount '+
                    'FROM matter m, alloc a, invoice c WHERE m.nmatter = a.nmatter '+
                    'AND a.ninvoice = c.ninvoice AND a.nmemo = '+NMEMO+' AND m.nmatter = '+NMATTER +') tax_disbs ';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'TRUST_HELD' then
         begin
            sSQL := 'SELECT nvl(sum(amount),0) AS TRUST_HELD FROM alloc WHERE nmatter = '+NMATTER +
                    ' AND trust = ''T'' ';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;
         if lSQL.DataPipelineName = 'NMEMO_RECEIPT_TOTAL' then
         begin
            sSQL := 'SELECT (SUM_NMEMO_ANTD - RECEIPT_AMOUNT) NMEMO_RECEIPT_TOTAL FROM '+
                    '(SELECT SUM(NMEMO.ANTD + NMEMO.FEES + NMEMO.DISB + NMEMO.ANTD + '+
                    'NMEMO.SUND + NMEMO.DEBTORS + NMEMO.FEESTAX + NMEMO.DISBTAX + '+
                    'NMEMO.SUNDTAX + NMEMO.ANTDTAX ) SUM_NMEMO_ANTD '+
                    'FROM NMEMO NMEMO WHERE NMEMO = '+ NMEMO+' AND NMATTER = '+ NMATTER +') NMEMO_TOTAL, '+
                    '(SELECT SUM(RECEIPT.AMOUNT) RECEIPT_AMOUNT FROM RECEIPT RECEIPT, ALLOC ALLOC '+
                    'WHERE ALLOC.NMATTER = '+NMATTER+' AND ALLOC.NMEMO = '+NMEMO+
                    ' AND ALLOC.NRECEIPT = RECEIPT.NRECEIPT ) RECEIPT_TOTAL ';
//            lSQL.SQLText.Clear;
            lSQL.SQLText.Text := sSQL;
         end;  }
//      end;
//   end;
end;

procedure TdmBillTemplate.BillPrintPreviewFormCreate(Sender: TObject);
begin
//   BillPrint.PreviewForm.WindowState := wsMaximized;
//   TppViewer(Report.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;


procedure TdmBillTemplate.DataModuleCreate(Sender: TObject);
begin
   InvoiceCreate := TStringList.Create;

   dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
   dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
   dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
   dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
   dmAxiom.orsAxiom.Connect;
end;

procedure TdmBillTemplate.DataModuleDestroy(Sender: TObject);
begin
   dmAxiom.orsAxiom.Disconnect;
end;

end.
