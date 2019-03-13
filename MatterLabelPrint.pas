unit MatterLabelPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleUniProvider, Uni, DBAccess, MemDS, ExtCtrls, ComCtrls,
  Word2000, OleServer, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  daSQL, daDataModule, daDatMod, daDataView, daQueryDataView, StrUtils,
  ppBands, ppCache, ppParameter, ppDesignLayer, ComObj;

type
  TfrmMatterLabelPrint = class(TForm)
    qryMatters: TUniQuery;
    dsMatters: TUniDataSource;
    qryContact: TUniQuery;
    qryClient: TUniQuery;
    qryBillTo: TUniQuery;
    qryOtherParty: TUniQuery;
    qryClientContact: TUniQuery;
    qryDataSource: TUniQuery;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure qryMattersAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure FillRow(Doc : Variant; Row : Integer;
                 Text1 : String);
  public
    { Public declarations }
    Archived: Boolean;
    NumCopies: Integer;
    MatterList: TStringList;
    function PrepareLabel: Boolean;
    function PrintLabel(PrinterName: PChar; NumCopies: Integer;
             ShowPreview: Boolean; ArchivedMatter: Boolean; LabelType: string = 'MATTERLABEL'): Boolean;
    procedure AddMatter(MatterNo: Integer);
    procedure exportDataSource(iFileId: String; sDataFile: string);
    procedure createWordDoc(sTemplate, sDataFile: string);
  end;

var
  frmMatterLabelPrint: TfrmMatterLabelPrint;

implementation

uses miscFunc, AxiomData, LabelSelect;

{$R *.dfm}

procedure TfrmMatterLabelPrint.qryMattersAfterScroll(DataSet: TDataSet);
begin
  qryContact.Open;
  if qryClientContact.IsEmpty then
  begin
//    qrdbtClientContact.DataSet := qryMatters;
//    qrdbtClientContact.DataField := 'CONTACT';
//    qryContact.SQL.Text := 'SELECT * FROM PHONEBOOK WHERE SEARCH = :TITLE';
  end;
  qryContact.Open;
end;


function TfrmMatterLabelPrint.PrepareLabel: Boolean;
var
  iCtr, jCtr: Integer;
  sUnion, sSelect: string;
begin
  sUnion := '';
  if not(Archived) then
  begin
    sSelect := 'SELECT NMatter, FileId, LabelCode, Title, NClient, Author, Controller, '+
               'Partner, LongDescr, Opref, Bill_To, Type, Contact, Party1, Billing_Plan, Opened FROM MATTER';
  end;
{  else
  begin
    sSelect := 'SELECT NArchive, NMatter, FileId, '''', Title, NClient, Author, Controller, Partner, LongDescr, Opref, Bill_To, Type, Contact, Party1, Billing_Plan, Opened FROM ARCHIVE';
    qrdbtArchiveNo.DataField := 'NARCHIVE';
    qrdbtArchiveNo.Visible := True;
    qrlArchivePrefix.Enabled := True;
  end; }
  
  with qryMatters do
  begin
    Close;
    SQL.Clear;
    for jCtr := 0 to MatterList.Count-1 do
    begin
      for iCtr := 1 to NumCopies do
      begin
        SQL.Add(sUnion);
        SQL.Add(sSelect);
        SQL.Add('WHERE NMatter = ' + MatterList.Strings[jCtr]);
        sUnion:='UNION ALL';
      end;
    end;
    Open;
  end;

  qryClient.Open;
  qryBillTo.Open;
  qryClientContact.Open;

  if not qryMatters.IsEmpty then
    Result := True
  else
    Result := False;
end;


function TfrmMatterLabelPrint.PrintLabel(PrinterName: PChar; NumCopies: Integer;
  ShowPreview: Boolean; ArchivedMatter: Boolean; LabelType: string): Boolean;
var
  SavePath, LMatLabel,
  FileName: string;
  LNMatter: string;
  x, i, MatterCount: integer;
  nmatter, sSQL: string;
  lSQL: TdaSQL;
  lDataModule: TdaDataModule;
  CompCount, CompTotal: integer;
  Buffer: string;
  Dest, Bind: string;
  NewChar : char;
  sPrinter : string;
  bOKtoPrint : boolean;
begin
   // select the label to use
   // TO-DO
   {
   qrCurrent := qrMatterLabelShaddicks;

   Result := True;
   // ??? should look at this so that we may pass more printer settings to the DLL
   qrCurrent.PrinterSettings.PrinterIndex := GetPrinterIndex(PrinterName);
   self.Archived := ArchivedMatter;
   self.NumCopies := NumCopies;
   if not self.PrepareLabel then
     Result := False
   else
   begin
     if ShowPreview then
       qrCurrent.Preview
     else
       qrCurrent.Print;
   end;
   }
//   self.PrepareLabel;
   SavePath := dmAxiom.MatLabelPath;
   for MatterCount := 0 to MatterList.Count - 1 do
   begin
      LNMatter := MatterList.Strings[MatterCount];

      if LabelType = 'MATTERLABEL' then
      begin
         if (SettingLoadBoolean('sys','MATTERLABEL', 'MSWordLabel')) then
         begin
            LMatLabel := dmAxiom.MatLabel;
            if pos('+', LMatLabel) > 0 then
            begin
               FileName := Copy(LMatLabel,0,pos('+', LMatLabel)-1);
               Delete(LMatLabel,1,pos('+', LMatLabel));
               FileName := FileName + '_' + MatterString(StrToInt(LNMatter),LMatLabel);
            end
            else
               FileName := LMatLabel;

            if RightStr(SavePath, 1) = '\' then
               SavePath := Copy(SavePath,1, length(SavePath)-1);
            FileName := IncludeTrailingBackslash(SavePath) + FileName;
            exportDataSource(MatterList[0],FileName+'.dat');
            createWordDoc(IncludeTrailingBackslash(SavePath) + dmAxiom.MatLabelFileName,FileName+'.dat');
         end
         else
         begin
          try
             begin
//                 Report.Template.DatabaseSettings
                 dmAxiom.qryRB_Items.Close;
                 Report.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
                 Report.Template.DatabaseSettings.NameField := 'ITEM_Name';
                 Report.Template.DatabaseSettings.TemplateField := 'Template';
                 if LabelType = 'MATTERLABEL' then
                   Report.Template.DatabaseSettings.Name := 'Label'
                 else
                   Report.Template.DatabaseSettings.Name := 'ArchiveLabel';
                 Report.Template.LoadFromDatabase;

                 x := 0;
                 i := 0;
                 nmatter := LNMatter;

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
                 if PrinterName <> '' then
                    Report.PrinterSetup.PrinterName := PrinterName;  //  IndexOf(sPrinter);
                 if not dmAxiom.runningide then
                    Report.DeviceType := 'Printer'
                 else
                    Report.DeviceType := 'Screen';
                 Report.Print;
             end;
          except
//
          end;
       end;
      end;
   end;
end;

procedure TfrmMatterLabelPrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dmAxiom.orsAxiom.Disconnect;
end;

procedure TfrmMatterLabelPrint.FormCreate(Sender: TObject);
begin
   matterList := TStringList.Create;

   dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
   dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
   dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
   dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
   dmAxiom.orsAxiom.Connect;
end;

procedure TfrmMatterLabelPrint.AddMatter(MatterNo: Integer);
begin
  matterList.Add(IntToStr(MatterNo));
end;

// export data

procedure TfrmMatterLabelPrint.exportDataSource(iFileId: String; sDataFile: string);
var sLine, sFileText: string;
  iloop: integer;
  field: TField;
  fileStream: TStream;
  stringStream: TStringStream;
  sFieldString: string;
begin
  sFileText := '';
  qryDataSource.Close;
  qryDataSource.ParamByName('NMATTER').AsString := iFileId;
  qryDataSource.Open;

  qryDataSource.First;
  sLine := '';
  for iLoop := 0 to qryDataSource.Fields.Count - 1 do
  begin
    field := qryDataSource.Fields[iLoop];
    if iLoop > 0 then
      sLine := sLine + ',';
    sLine := sLine + '"' + field.FieldName + '"';
        //fileStream.Write
  end;

  sFileText := sFileText + sLine;

  while not qryDataSource.Eof do
  begin
    sLine := '';
    sLine := sLine + #13#10;
    for iLoop := 0 to qryDataSource.Fields.Count - 1 do
    begin
      if iLoop > 0 then
        sLine := sLine + ',';
      field := qryDataSource.Fields[iLoop];

      if field.DataType in [ftDateTime, ftDate, ftTime] then
      begin
        sFieldString := formatDateTime('DD/MM/YYYY', field.asDateTime);
      end
      else
      begin
        sFieldString := field.asString;
      end;

      sLine := sLine + '"' + sFieldString + '"';

    end;
    sFileText := sFileText + sLine;
    qryDataSource.Next;
  end;

  try
    stringStream := TStringStream.Create(sFileText);
    if fileExists(sDataFile) then
      DeleteFile(sDataFile);
    fileStream := TFileStream.Create(sDataFile, fmCreate);
    fileStream.CopyFrom(stringStream, stringStream.Size);
  finally
    fileStream.Free;
    stringStream.free;
  end;
end;

procedure TfrmMatterLabelPrint.FillRow(Doc : Variant; Row : Integer;
                 Text1 : String);
begin
  Doc.Tables.Item(1).Cell(Row,1).Range.InsertAfter(Text1);
end;

procedure TfrmMatterLabelPrint.createWordDoc(sTemplate, sDataFile: string);
var
  varWord,
  varDoc,
  Range,
  Cell,
  Table,
  EmptyParam,
  SelectionParam: OleVariant;
  s,
  APrinter,
  AMacro,
  ALabelType: string;
  frmLabelSelect: TfrmLabelSelect;
  Labelselected: integer;
begin
   if not FileExists(sTemplate) then
   begin
       MsgErr('Error word document ' + sTemplate + ' not found');
       exit;
   end;

   try
      Labelselected := -1;
      if dmAxiom.MatLabelTemplateName = '7171' then
      begin
         try
            ALabelType := '7171';
            frmLabelSelect := TfrmLabelSelect.Create(Self);
            frmLabelSelect.cxPageControl1.ActivePageIndex := 0;  //     tab7171
            if frmLabelSelect.ShowModal = mrOK then
               Labelselected := frmLabelSelect.rg7171.Properties.Items[frmLabelSelect.rg7171.ItemIndex].Value;
         finally
            FreeAndNil(frmLabelSelect);
         end;
      end
      else if dmAxiom.MatLabelTemplateName = '7165' then
      begin
         try
            ALabelType := '7165';
            frmLabelSelect := TfrmLabelSelect.Create(Self);
            frmLabelSelect.cxPageControl1.ActivePageIndex := 1;  //     tab7165
            if frmLabelSelect.ShowModal = mrOK then
               Labelselected := frmLabelSelect.rg7165.Properties.Items[frmLabelSelect.rg7165.ItemIndex].Value;
         finally
            FreeAndNil(frmLabelSelect);
         end;
      end;

      try
         varWord := CreateOleObject('Word.Application');
//         MsgInfo('Word started');
         varWord.Visible := false;
//         MsgInfo('Word visibility set to false');
         APrinter := dmAxiom.LabelPrinter;
         if APrinter = '' then
            APrinter := SettingLoadString('sys', 'MATTERLABEL', 'PRINTER');

         if (APrinter <> '') then
            varWord.WordBasic.FilePrintSetup(Printer := APrinter,DoNotSetAsSysDefault := 1);

//            varWord.ActivePrinter := APrinter;

         try
           varDoc := varWord.Documents.Add(sTemplate);
//           MsgInfo('Template added');
         finally
            varDoc.MailMerge.OpenDataSource(sDataFile, True);
//            MsgInfo('datasource opened');
            varDoc.MailMerge.Destination := wdSendToNewDocument;
//            MsgInfo('document destination set');
            varDoc.MailMerge.Execute();
//            MsgInfo('mailmerge executed');
            varDoc.Saved := True;
//            MsgInfo('merge saved');
            varDoc.Close(wdDoNotSaveChanges);
//            MsgInfo('template document closed with wdDoNotSaveChanges option');
            varWord.Documents.Item(1).Activate;
//            MsgInfo('make the first document in document list active');
            varDoc := varWord.activeDocument;
//            MsgInfo('handle to active document acquired saved');
            // run macro if defined
            AMacro := SystemString('WORD_LABEL_MACRO');
            if (AMacro <> '') then
            begin
               varWord.Run(AMacro);
//               MsgInfo('macro executed');
            end;

            if Labelselected <> -1 then
            begin
               Table := varDoc.Tables;

//              Cell := Table.Item(1).Cell(Labelselected, 1);
//            Cell := Table.Cell(Labelselected + 1, 1);
 //           Table.Item ( 1 ).Cell( 1 , Labelselected + 1 );
//            Range := Cell.WordRange;
//            Range.Select;
//              table.Columns(1).Cells(Labelselected+1).Range.Select;
               varWord.Options.MeasurementUnit:= wdCentimeters;

               if ALabelType = '7171' then
               begin
                  Cell := Table.Item(1).Cell(Labelselected, 1);
                  case LabelSelected of
                     1:  begin
                           varDoc.PageSetup.TopMargin := '2.85 cm';
                         end;
                     2:  begin
                           varDoc.PageSetup.TopMargin := '8.85 cm';
                         end;
                     3:  begin
                           varDoc.PageSetup.TopMargin := '14.00 cm';
                         end;
                     4:  begin
                           varDoc.PageSetup.TopMargin := '20.85 cm';
                         end;
                  end;
               end
               else if ALabelType = '7165' then
               begin
                  case LabelSelected of
                     1:  begin
                           Cell := Table.Item(1).Cell(1, 1);
                           varDoc.PageSetup.TopMargin := '0.00 cm';
                         end;
                     2:  begin
                           Cell := Table.Item(1).Cell(2, 1);
                           varDoc.PageSetup.TopMargin := '7.00 cm';
                         end;
                     3:  begin
                           Cell := Table.Item(1).Cell(3, 1);
                           varDoc.PageSetup.TopMargin := '13.75 cm';
                         end;
                     4:  begin
                           Cell := Table.Item(1).Cell(4, 1);
                           varDoc.PageSetup.TopMargin := '20.50 cm';
                         end;
                     5:  begin
                           Cell := Table.Item(1).Cell(1, 3);
                           varDoc.PageSetup.TopMargin := '0.00 cm';
                           varDoc.PageSetup.LeftMargin := '11.15 cm';
                         end;
                     6:  begin
                           Cell := Table.Item(1).Cell(2, 3);
                           varDoc.PageSetup.TopMargin := '7.00 cm';
                           varDoc.PageSetup.LeftMargin := '11.15 cm';
                         end;
                     7:  begin
                           Cell := Table.Item(1).Cell(3, 3);
                           varDoc.PageSetup.TopMargin := '13.75 cm';
                           varDoc.PageSetup.LeftMargin := '11.15 cm';
                         end;
                     8:  begin
                           Cell := Table.Item(1).Cell(4, 3);
                           varDoc.PageSetup.TopMargin := '20.50 cm';
                           varDoc.PageSetup.LeftMargin := '11.15 cm';
                         end;
                  end;
               end;
               Range := Cell.Range;
               Cell.Range.Select;
               SelectionParam := wdPrintSelection;
               varDoc.PrintOut(False, False, SelectionParam);
               varDoc.Close(wdDoNotSaveChanges);
            end
            else
               varWord.WordBasic.FilePrint;
         end;
      finally
//         varDoc.saved := true;
//         varDoc.close();
         varDoc := unAssigned;
         varWord.quit;
         varWord := unAssigned;
      end;
   except
      on E: Exception do
      begin
         showMessage(E.Message);
        //bOk := false;
         varWord.quit;
      end;
   end;
  //
end;

end.

