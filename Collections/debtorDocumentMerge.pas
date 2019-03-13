unit debtorDocumentMerge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Word2000, OleServer, cxPC, cxControls, DB, MemDS, DBAccess, OracleUniProvider, Uni,
  cxCheckBox, cxLabel, cxContainer, cxEdit, cxTextEdit,
  cxLookAndFeelPainters, StdCtrls, cxButtons, Buttons, cxGroupBox, cxMemo,
  cxGraphics, cxLookAndFeels, cxPCdxBarPopupMenu, ppParameter,
  ppDesignLayer, ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd,
  ppReport;

type
  TfrmDebtorDocumentMerge = class(TForm)
    pcMerge: TcxPageControl;
    tabWord: TcxTabSheet;
    tabEmail: TcxTabSheet;
    qryDataSource: TUniQuery;
    cxEdOutfile: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxBcShow: TcxCheckBox;
    cxCbPrint: TcxCheckBox;
    btnProcessWord: TBitBtn;
    cxMemo1: TcxMemo;
    cxGroupBox1: TcxGroupBox;
    mmEmail: TcxMemo;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edTo: TcxTextEdit;
    edCC: TcxTextEdit;
    cxLabel4: TcxLabel;
    edSubject: TcxTextEdit;
    spAxiomEmail: TUniStoredProc;
    btnSendEmail: TBitBtn;
    edFrom: TcxTextEdit;
    cxLabel5: TcxLabel;
    qryDebtorNotesInsert: TUniQuery;
    tabStatement: TcxTabSheet;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    btnProcessStatement: TBitBtn;
    ppStatement: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    cxLabel6: TcxLabel;
    cxEdStmntOutfile: TcxTextEdit;

    procedure exportDataSource(iNmemo: integer; sDataFile: string);
    procedure btnProcessWordClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function mergeEmail(sIn: string): string;
    procedure btnSendEmailClick(Sender: TObject);
    procedure btnProcessStatementClick(Sender: TObject);
    procedure BillPrintBeforePrint(Sender: TObject);

  private
    { Private declarations }
    iNmemo: integer;
    iTaskKey : integer;
    sTemplate, sEmail, sFrom, sDebtorNote, sGeneratedDocumentName, sTaskDesc: string;
    bOk: boolean;
    FAuto: boolean;

    procedure addDebtorNotes;
    procedure checkDirectory(sDir: string);
    procedure SaveToDB;
  public
    { Public declarations }

    property ok: boolean read bOk;
    property AutoProcess: boolean read FAuto write FAuto;

    procedure wordMerge(iNmemo: integer; sTemplate, sDebtorNote, sGeneratedDocumentName, sTaskDesc: string;iTaskKey : integer; bAuto, bShow, bPrint: boolean);
    procedure emailMerge(iNmemo: integer; sEmail, sSubject, sAssign, sAlert, sAlert2, sDebtorNote, sTaskDesc: string;iTaskKey : integer; bAuto: boolean);
    procedure StatementMerge(iNmemo: integer; sTemplate, sDebtorNote, sGeneratedDocumentName, sTaskDesc: string;iTaskKey : integer; bAuto, bShow, bPrint: boolean);

    procedure createWordDoc(sTemplate, sDataFile: string);
    procedure createStatement(sTemplate: string; iNmemo: integer);
  end;

var
  frmDebtorDocumentMerge: TfrmDebtorDocumentMerge;

implementation

uses ComObj, StrUtils, miscFunc, axiomData, WorkFlowDataModuleMerge,
  WorkFlowDataModule;

{$R *.dfm}

procedure TfrmDebtorDocumentMerge.wordMerge(iNmemo: integer; sTemplate, sDebtorNote, sGeneratedDocumentName, sTaskDesc: string;iTaskKey : integer; bAuto, bShow, bPrint: boolean);
begin
//  self.Width := 412;
//  self.Height := 194;
  pcMerge.activepage := tabWord;
  self.iNmemo := iNmemo;
  self.iTaskKey := iTaskKey;
  self.sTemplate := sTemplate;
  self.sDebtorNote := sDebtorNote;
  self.sTaskDesc := sTaskDesc;
  self.sGeneratedDocumentName := sGeneratedDocumentName;
  cxEdOutfile.Text := mergeEmail(sGeneratedDocumentName);

  AutoProcess := bAuto;

  cxCbPrint.Checked := bPrint;
  cxBcShow.Checked := bShow;

  if bAuto then
    btnProcessWordClick(self);
end;

procedure TfrmDebtorDocumentMerge.emailMerge(iNmemo: integer; sEmail, sSubject, sAssign, sAlert, sAlert2, sDebtorNote, sTaskDesc: string;iTaskKey : integer; bAuto: boolean);
var
   AAlert, AAlert2: string;
begin
   self.Width := 575;
   self.Height := 430;
   pcMerge.activepage := tabEmail;
   self.iNmemo := iNmemo;
   self.iTaskKey := iTaskKey;
   self.sEmail := sEmail;
   self.sDebtorNote := sDebtorNote;
   edTo.Text := TableString('EMPLOYEE', 'CODE', sAssign, 'EMAIL');
   AAlert  := TableString('EMPLOYEE', 'CODE', sAlert, 'EMAIL');
   AAlert2 := TableString('EMPLOYEE', 'CODE', sAlert2, 'EMAIL');
   // 10/02/2010 AES added extra test to avoid duplications
   if (edTo.Text <> AAlert) then
      edCC.Text := AAlert;
   if (AAlert <> AAlert2) and (sAlert2 <> '') then
   begin
      if edCC.Text <> '' then
         edCC.Text := edCC.Text +';';
      edCC.Text := edCC.Text + AAlert2;
   end;
   edFrom.text := TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'EMAIL');
   mmEmail.Text := mergeEmail(sEmail);
   edSubject.text := mergeEmail(sSubject);

   if bAuto then
      btnSendEmailClick(self);
end;

procedure TfrmDebtorDocumentMerge.createWordDoc(sTemplate, sDataFile: string);
var
  varWord, varDoc: Variant;
begin
  try
    checkDirectory(cxEdOutfile.Text);

    try
       varWord := GetActiveOleObject('Word.Application');
    except
       on EOleSysError do
       begin
          try
             varWord := CreateOleObject('Word.Application');
          except
             on e: Exception do
             begin
                MessageDlg('Error Starting MS Word: ' + E.Message, mtError, [mbOK], 0);
                varWord := null;
             end;
          end;
       end;
    end;

    varWord.Visible := cxBcShow.Checked;
    varDoc := varWord.Documents.Add(sTemplate);
    varDoc.Activewindow.WindowState := wdWindowStateMaximize;
    try
      varDoc.MailMerge.OpenDataSource(sDataFile,,True);
      varDoc.MailMerge.Destination := wdSendToNewDocument;
      varDoc.MailMerge.Execute();
      varDoc.Close(wdDoNotSaveChanges);
      varDoc := varWord.activeDocument;
      varDoc.Activewindow.WindowState := wdWindowStateMaximize;
      varDoc.saveAs(cxEdOutfile.Text);

      if cxCbPrint.Checked then
         varDoc.print;

{      if AutoProcess then
      begin
       varDoc.close();
       varDoc := Unassigned;
      end; }

      if ((not cxBcShow.Checked) and (not AutoProcess)) then
      begin
         varDoc.close();
         varDoc := Unassigned;
//         varWord.quit;
//         varWord := Unassigned;
      end;
    except
       on E: Exception do
              MessageDlg('Error during Merge with MS Word: ' + E.Message, mtError, [mbOK], 0);
    end;
  except
    on E: Exception do
    begin
      showMessage(E.Message);
      try
        varDoc.close();
        varDoc := Unassigned;
      except on ig: exception do
      //
      end;

      try
        varDoc.close();
        varDoc := Unassigned;
      except on ig: exception do
          varWord.quit;
      end;

      bOk := false;
    end;
  end;
 //
end;

function TfrmDebtorDocumentMerge.mergeEmail(sIn: string): string;
var sResult, sFieldName, sValue: string;
  iLoop: integer;
  Field: TField;
begin
  sResult := sIn;
  qryDataSource.Close;
  qryDataSource.ParamByName('NMEMO').AsInteger := iNmemo;
  qryDataSource.ParamByName('TASK_DESCRIPTION').AsString := sTaskDesc;

  qryDataSource.Open;
  qryDataSource.First;
  if qryDataSource.eof then
  begin
    mergeEmail := '';
    qryDataSource.close;
    exit;
  end;

  for iLoop := 0 to qryDataSource.Fields.Count - 1 do
  begin
    Field := qryDataSource.Fields[iLoop];
    sFieldName := '<<' + Field.FieldName + '>>';

    if field.DataType in [ftDateTime, ftDate, ftTime] then
    begin
      sValue := formatDateTime('DD/MM/YYYY', field.asDateTime);
    end
    else
    begin
      sValue := field.asString;
    end;
    sResult := AnsiReplaceText(sResult, sFieldName, sValue);
  end;

  mergeEmail := sResult;
  qryDataSource.close;
//
end;

procedure TfrmDebtorDocumentMerge.exportDataSource(iNmemo: integer; sDataFile: string);
var sLine, sFileText: string;
  iloop: integer;
  field: TField;
  fileStream: TStream;
  stringStream: TStringStream;
  sFieldString: string;
begin
   sFileText := '';
   qryDataSource.Close;
   qryDataSource.ParamByName('NMEMO').AsInteger := iNmemo;
   qryDataSource.ParamByName('TASK_DESCRIPTION').AsString := sTaskDesc;
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

   while (not qryDataSource.Eof) do
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

procedure TfrmDebtorDocumentMerge.btnProcessWordClick(Sender: TObject);
var
   sDataFile: string;
begin
   bOk := true;
   sDataFile := dmAxiom.GetEnvVar('TMP')+'\'+ intToStr(self.iNmemo) + '.dat';
   exportDataSource(iNmemo, sDataFile);
   createWordDoc(sTemplate, sDataFile);

   addDebtorNotes;

   SaveToDB;

   self.Close;
end;

procedure TfrmDebtorDocumentMerge.SaveToDB;
var
   tmpFileName,
   ADocName: string;
   APrec_Category,
   APrec_Classification: integer;
begin
   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;

      dmAxiom.qryMatterAttachments.Insert;
      dmAxiom.qryMatterAttachments.FieldByName('docid').AsInteger := StrToInt(dmAxiom.DocID);
      dmAxiom.qryMatterAttachments.FieldByName('fileid').AsString := TableString('NMEMO', 'NMEMO', iNMemo, 'FILEID');
      dmAxiom.qryMatterAttachments.FieldByName('nmatter').AsInteger := TableInteger('NMEMO', 'NMEMO', iNMemo, 'NMATTER');
      dmAxiom.qryMatterAttachments.FieldByName('auth1').AsString := dmAxiom.UserID;
      dmAxiom.qryMatterAttachments.FieldByName('D_CREATE').AsDateTime := Now;

      dmAxiom.qryMatterAttachments.FieldByName('IMAGEINDEX').AsInteger := 2;
      dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := ExtractFileName(tmpFileName);
      dmAxiom.qryMatterAttachments.FieldByName('DESCR').AsString := ADocName;   // ExtractFileName(tmpFileName);
      dmAxiom.qryMatterAttachments.FieldByName('SEARCH').AsString := ADocName;
      dmAxiom.qryMatterAttachments.FieldByName('FILE_EXTENSION').AsString := Copy(ExtractFileExt(tmpFileName),2, Length(ExtractFileExt(tmpFileName)));
      dmAxiom.qryMatterAttachments.FieldByName('precedent_details').AsString := ADocName;
      dmAxiom.qryMatterAttachments.FieldByName('KEYWORDS').AsString := 'Debtor Notes';
{      if APrec_Category > -1 then
         dmAxiom.qryMatterAttachments.FieldByName('NPRECCATEGORY').AsInteger := APrec_Category;
      if APrec_Classification > -1 then
         dmAxiom.qryMatterAttachments.FieldByName('NPRECCLASSIFICATION').AsInteger := APrec_Classification;
}
//       if cbPortalAccess.Checked then
//          dmSaveDoc.qryMatterAttachments.FieldByName('EXTERNAL_ACCESS').AsString := 'Y'
//       else
      dmAxiom.qryMatterAttachments.FieldByName('EXTERNAL_ACCESS').AsString := 'N';

 //      if rgStorageItemIndex = 0 then
//       begin
//          TBlobField(dmAxiom.qryMatterAttachments.fieldByname('DOCUMENT')).LoadFromFile(tmpFileName);
//       end
//       else
      begin
          dmAxiom.qryMatterAttachments.FieldByName('PATH').AsString := IndexPath(tmpFileName, 'DOC_SHARE_PATH');
          dmAxiom.qryMatterAttachments.FieldByName('display_PATH').AsString := tmpFileName;
      end;

//       dmSaveDoc.qryMatterAttachments.Post;
      try
          dmAxiom.qryMatterAttachments.ApplyUpdates;
      finally
          dmAxiom.uniInsight.Commit;
//          dmAxiom.qryMatterAttachments.CommitUpdates;
      end;
   except
         dmAxiom.uniInsight.Rollback;
   end;
end;

procedure TfrmDebtorDocumentMerge.FormShow(Sender: TObject);
begin
   pcMerge.HideTabs := true;
end;

procedure TfrmDebtorDocumentMerge.btnSendEmailClick(Sender: TObject);
var
   sOracleError: string;
begin
        //nmSMTP.Host := SystemString('SMTP_SERVER');
        //nmSMTP.PostMessage.FromAddress := edFrom.text;
        //nmSMTP.PostMessage.ToAddress.Add(edTo.Text);
        //nmSMTP.PostMessage.ToCarbonCopy.Add(edCC.Text);
        //nmSMTP.PostMessage.Subject := edSubject.Text;
        //nmSMTP.PostMessage.Body.Text := mmEmail.Text;
        //nmSMTP.SendMail;


        //MailSMTP.Host := SystemString('SMTP_SERVER');
        //MailSMTP.Port := 25;
        //MailSMTP.UserId := 'dummy';
        //MailSMTP.Password := 'dummy';

        //MailSMTP.QuickSend(SystemString('SMTP_SERVER'),'subject','rich@barge-online.com','rich@barge-online.com','hello');

        //MailSMTP.Send(idMessage);

        //idMessage.Free;

        //exit;

   spAxiomEmail.ParamByName('P_FROM').AsString := edFrom.text;
   spAxiomEmail.ParamByName('P_TO').AsString := edTo.Text;
   spAxiomEmail.ParamByName('P_TEXT').AsString := mmEmail.Text;
   spAxiomEmail.ParamByName('P_SUBJECT').AsString := edSubject.Text;
   spAxiomEmail.ParamByName('P_HTML').AsString := mmEmail.Text;
   spAxiomEmail.ParamByName('P_SMTP_HOSTNAME').AsString := SystemString('smtp_server');
   spAxiomEmail.ParamByName('P_SMTP_PORTNUM').AsString := SystemString('smtp_port');

        // set the cursor
   Screen.Cursor := crSQLWait;
   try
      spAxiomEmail.ExecSQL;
   finally
      addDebtorNotes;
      Screen.Cursor := crDefault;
   end;

{   bOk := spAxiomEmail.paramByName('RESULT').AsBoolean;
   sOracleError := spAxiomEmail.paramByName('SORACLEERROR').AsString;

  if not bOk then
  begin
    MsgErr('There was an Error Sending the Email - (' + sOracleError + ')');
  end
  else
  begin
    addDebtorNotes;
  end;
}

   spAxiomEmail.Close;
   self.Close;
end;

procedure TfrmDebtorDocumentMerge.addDebtorNotes;
var
   snote: string;
begin
   snote := mergeEmail(sDebtorNote);
   qryDebtorNotesInsert.close;
   qryDebtorNotesInsert.ParamByName('NMATTER').AsInteger := TableInteger('NMEMO', 'NMEMO', iNMemo, 'NMATTER');
   qryDebtorNotesInsert.ParamByName('CREATEDBY').AsString := dmAxiom.UserID;
   qryDebtorNotesInsert.ParamByName('NOTE').AsString := sNote;
   // added for version 6
   qryDebtorNotesInsert.ParamByName('NMEMO').AsInteger := iNmemo;
   qryDebtorNotesInsert.ParamByName('ndebtortask').AsInteger := iTaskKey;
   qryDebtorNotesInsert.ExecSQL;
   qryDebtorNotesInsert.Close;
end;

procedure TfrmDebtorDocumentMerge.checkDirectory(sDir: string);
var
   sNewDir, sSub, sCreateDir,sTotalPath: string;
   iPos, iNext: Integer;
begin
    // break down the path and create check each directory

  sNewDir := ExtractFilePath(sDir);

  iPos := pos('\', sNewDir);

  sTotalPath := copy(sNewDir,0,iPos);
  sSub := copy(sNewDir, iPos + 1, 9999);

  while sSub <> '' do
  begin
    iPos := pos('\', sSub);

    sCreateDir := copy(sSub, 0, iPos - 1);
    sSub := copy(sSub, iPos + 1, 9999);

    sTotalPath := sTotalPath + '\' + sCreateDir;

    if not DirectoryExists(sTotalPath) then
      if not createDir(sTotalPath) then
        raise Exception.Create('Error could not create directory ' + sTotalPath);

  end;
end;

procedure TfrmDebtorDocumentMerge.StatementMerge(iNmemo: integer; sTemplate, sDebtorNote, sGeneratedDocumentName, sTaskDesc: string;iTaskKey : integer; bAuto, bShow, bPrint: boolean);
begin
  pcMerge.activepage := tabStatement;
  self.iNmemo := iNmemo;
  self.iTaskKey := iTaskKey;
  self.sTemplate := sTemplate;
  self.sDebtorNote := sDebtorNote;
  self.sTaskDesc := sTaskDesc;
  self.sGeneratedDocumentName := sGeneratedDocumentName;
  cxEdStmntOutfile.Text := mergeEmail(sGeneratedDocumentName);

  AutoProcess := bAuto;

  cxCbPrint.Checked := bPrint;
  cxBcShow.Checked := bShow;

  if bAuto then
    btnProcessStatementClick(self);
end;

procedure TfrmDebtorDocumentMerge.btnProcessStatementClick(
  Sender: TObject);
var
   sDataFile: string;
begin
   bOk := true;
//   sDataFile := dmAxiom.GetEnvVar('TMP')+'\'+ intToStr(self.iNmemo) + '.dat';
//   exportDataSource(iNmemo, sDataFile);
   createStatement(sTemplate, iNmemo);

   addDebtorNotes;

   SaveToDB;

   self.Close;
end;

procedure TfrmDebtorDocumentMerge.createStatement(sTemplate: string; iNmemo: integer);
begin
   try
      try
         checkDirectory(cxEdOutfile.Text);
         try
            ppStatement.Template.FileName := sTemplate;
            ppStatement.Template.LoadFromFile;
            ppStatement.BeforePrint := BillPrintBeforePrint;
         except
           // ;
         end;

         try
            if (ppStatement.Parameters.Count > 0) then
            begin
               with ppStatement.Parameters do
               begin
                  Items['NBILL_TO'].Value := TableInteger('nmemo','nmemo',iNmemo,'nbill_to');
                  Items['ENTITY'].Value := dmAxiom.Entity;
               end;
            end;

            if cxCbPrint.Checked then
            begin
               ppStatement.AllowPrintToFile := True;
               ppStatement.ShowPrintDialog := False;
               ppStatement.DeviceType := 'Printer';
//               Report.DeviceType := dtPDF;
//               Report.PDFSettings.OpenPDFFile := False;
               ppStatement.TextFileName := cxEdStmntOutfile.Text;
               ppStatement.Print;
            end
            else
            begin
               ppStatement.AllowPrintToFile := True;
               ppStatement.ShowPrintDialog := False;
               ppStatement.DeviceType := 'Screen';
               ppStatement.Print;
            end;

{           if AutoProcess then
            begin
               Report.Cancel;
            end;

            if ((not cxBcShow.Checked) and (not AutoProcess)) then
            begin
               Report.Cancel;
            end;    }
         except
          //
         end;
      finally
         ppStatement.Template.Free;
      end;
   except
      on E: Exception do
      begin
         showMessage(E.Message);

         bOk := false;
      end;
   end;
end;

procedure TfrmDebtorDocumentMerge.BillPrintBeforePrint(Sender: TObject);
begin
   if (ppStatement.Parameters.Count > 0) then
   begin
      with ppStatement.Parameters do
      begin
//         Items['NMATTER'].Value := StrToInt(nmatter);
//         Items['NMEMO'].Value := StrToInt(nmemo);
//         Items['NCLIENT'].Value := StrToInt(nclient);
      end;
   end
end;

end.

