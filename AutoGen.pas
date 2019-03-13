unit AutoGen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Db, Buttons, Mask, Spin, ComCtrls,
  ToolWin, Qrctrls, quickrpt, ImgList, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, OraSmart, DBAccess,
  dxBar;

type
  TfrmAutoGen = class(TForm)
    qryAutoGen: TUniQuery;
    dsAutoGen: TUniDataSource;
    dbtbAmount: TDBEdit;
    lblAmount: TLabel;
    lblDesc: TLabel;
    dbmmoDesc: TDBMemo;
    lblType: TLabel;
    lblLastRun: TLabel;
    dblblLastRun: TDBText;
    lblLastModified: TLabel;
    dblblLastModified: TDBText;
    gbFreq: TGroupBox;
    lblEvery: TLabel;
    spnFreq: TSpinEdit;
    cbFreq: TComboBox;
    lblStart: TLabel;
    dtpStart: TDateTimePicker;
    ilstToolbar: TImageList;
    cbType: TComboBox;
    gbFee: TGroupBox;
    lblFile: TLabel;
    lblAuthor: TLabel;
    lblDept: TLabel;
    btnFeeMatter: TBitBtn;
    pagReports: TPageControl;
    tabAutoGen: TTabSheet;
    qrAutoGen: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    qryAutoGenClient: TStringField;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    gbSundry: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnSundryMatter: TBitBtn;
    cbFeeAuthor: TComboBox;
    cbFeeDept: TComboBox;
    cbSundryType: TComboBox;
    lblFeeClient: TLabel;
    lblSundryClient: TLabel;
    lblSundryTypeDesc: TLabel;
    lblFeeAuthorName: TLabel;
    lblFeeDeptDesc: TLabel;
    gbBank: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    lblBankPayee: TLabel;
    lblBankClient: TLabel;
    lblBankName: TLabel;
    btnBankMatter: TBitBtn;
    cbBank: TComboBox;
    lblBankLedgerDesc: TLabel;
    btnBankLedger: TBitBtn;
    Label7: TLabel;
    tbBankLedger: TEdit;
    tbBankFile: TEdit;
    tbBankPayee: TEdit;
    tbFeeFile: TEdit;
    tbSundryFile: TEdit;
    Label5: TLabel;
    dtpFinish: TDateTimePicker;
    qryNew: TUniQuery;
    qryMatter: TUniQuery;
    qryAutoGenProcess: TUniQuery;
    qryAutoGenFILEID: TStringField;
    qryAutoGenAMOUNT: TFloatField;
    qryAutoGenDESCR: TStringField;
    qryAutoGenEVERY: TStringField;
    qryAutoGenLASTRUN: TDateTimeField;
    qryAutoGenLASTMODIFIED: TDateTimeField;
    qryAutoGenAUTHOR: TStringField;
    qryAutoGenDEPT: TStringField;
    qryAutoGenUPDATEON: TDateTimeField;
    qryAutoGenBANK: TStringField;
    qryAutoGenFREQ: TIntegerField;
    qryAutoGenTYPE: TStringField;
    qryAutoGenLEDGER: TStringField;
    qryAutoGenPAYEE: TStringField;
    qryAutoGenSUNDRYTYPE: TStringField;
    qryAutoGenFINISH: TDateTimeField;
    qryAutoGenROWID: TStringField;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    procedure btnFeeMatterClick(Sender: TObject);
    procedure qryAutoGenBeforePost(DataSet: TDataSet);
    procedure qryAutoGenAfterScroll(DataSet: TDataSet);
    procedure qryAutoGenAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure spnFreqChange(Sender: TObject);
    procedure cbFreqClick(Sender: TObject);
    procedure dtpStartChange(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnPrintClick(Sender: TObject);
    procedure qryAutoGenCalcFields(DataSet: TDataSet);
    procedure btnBankMatterClick(Sender: TObject);
    procedure btnSundryMatterClick(Sender: TObject);
    procedure cbFeeAuthorClick(Sender: TObject);
    procedure cbSundryTypeClick(Sender: TObject);
    procedure cbFeeDeptClick(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure tbtnProcessClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmAutoGen: TfrmAutoGen;

implementation

uses
  MSearch, MiscFunc, AxiomData, Process, citfunc;

{$R *.DFM}

procedure TfrmAutoGen.btnFeeMatterClick(Sender: TObject);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOk then
   begin
      if not qryAutoGen.Modified then
         qryAutoGen.Edit;
      qryAutoGen.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      lblFeeClient.Caption := MatterString(qryAutoGen.FieldByName('FILEID').AsString, 'TITLE');
      tbFeeFile.Text := qryAutoGen.FieldByName('FILEID').AsString;
   end;
end;


procedure TfrmAutoGen.qryAutoGenBeforePost(DataSet: TDataSet);
begin
  if not qryAutoGen.Modified then
    qryAutoGen.Edit;
  qryAutoGen.FieldByName('FREQ').AsInteger := spnFreq.Value;
  qryAutoGen.FieldByName('EVERY').AsString := cbFreq.Text;
  qryAutoGen.FieldByName('LASTMODIFIED').AsDateTime := Now;
  qryAutoGen.FieldByName('UPDATEON').AsDateTime := Trunc(dtpStart.Date);
  qryAutoGen.FieldByName('TYPE').AsString := cbType.Text;
  if qryAutoGen.FieldByName('TYPE').AsString = 'Fee' then
  begin
    qryAutoGen.FieldByName('FILEID').AsString := tbFeeFile.Text;
    qryAutoGen.FieldByName('AUTHOR').AsString := cbFeeAuthor.Text;
    qryAutoGen.FieldByName('DEPT').AsString := cbFeeDept.Text;
  end
  else if qryAutoGen.FieldByName('TYPE').AsString = 'Sundry' then
  begin
    qryAutoGen.FieldByName('FILEID').AsString := tbSundryFile.Text;
    qryAutoGen.FieldByName('SUNDRYTYPE').AsString := cbSundryType.Text;
  end;
  if dtpFinish.Checked then
    qryAutoGen.FieldByName('FINISH').AsDateTime := Trunc(dtpFinish.Date);
end;


procedure TfrmAutoGen.qryAutoGenAfterScroll(DataSet: TDataSet);
begin
  if qryAutoGen.FieldByName('TYPE').AsString = 'Fee' then
  begin
    gbSundry.Visible := False;
    gbBank.Visible := False;
    gbFee.Visible := True;
    tbFeeFile.Text := qryAutoGen.FieldByName('FILEID').AsString;
    lblFeeClient.Caption := MatterString(qryAutoGen.FieldByName('FILEID').AsString, 'TITLE');
    cbFeeAuthor.ItemIndex := cbFeeAuthor.Items.IndexOf(qryAutoGen.FieldByName('AUTHOR').AsString);
    cbFeeAuthor.OnClick(Self);
    cbFeeDept.ItemIndex := cbFeeDept.Items.IndexOf(qryAutoGen.FieldByName('DEPT').AsString);
    cbFeeDept.OnClick(Self);
  end
  else if qryAutoGen.FieldByName('TYPE').AsString = 'Sundry' then
  begin
    gbBank.Visible := False;
    gbFee.Visible := False;
    gbSundry.Visible := True;
    tbSundryFile.Text := qryAutoGen.FieldByName('FILEID').AsString;
    lblSundryClient.Caption := MatterString(qryAutoGen.FieldByName('FILEID').AsString, 'TITLE');
    cbSundryType.ItemIndex := cbSundryType.Items.IndexOf(qryAutoGen.FieldByName('SUNDRYTYPE').AsString);
    cbSundryType.OnClick(Self);
  end
  else if (qryAutoGen.FieldByName('TYPE').AsString = 'Cheque Requisition')
       or (qryAutoGen.FieldByName('TYPE').AsString = 'Matter Payment')
       or (qryAutoGen.FieldByName('TYPE').AsString = 'Matter Deposit')
       or (qryAutoGen.FieldByName('TYPE').AsString = 'Ledger Payment')
       or (qryAutoGen.FieldByName('TYPE').AsString = 'Ledger Deposit') then
  begin
    gbFee.Visible := False;
    gbSundry.Visible := False;
    gbBank.Visible := True;
    cbBank.ItemIndex := cbBank.Items.IndexOf(qryAutoGen.FieldByName('BANK').AsString);
    cbBank.OnClick(Self);
    tbBankFile.Text := qryAutoGen.FieldByName('FILEID').AsString;
    lblBankClient.Caption := MatterString(qryAutoGen.FieldByName('FILEID').AsString, 'TITLE');
    tbBankLedger.Text := qryAutoGen.FieldByName('LEDGER').AsString;
    lblBankLedgerDesc.Caption := LedgerString(qryAutoGen.FieldByName('LEDGER').AsString, 'REPORT_DESC');
    tbBankPayee.Text := qryAutoGen.FieldByName('PAYEE').AsString;
  end;

  // Decode the Frequency
  spnFreq.Value := qryAutoGen.FieldByName('FREQ').AsInteger;
  cbFreq.ItemIndex := cbFreq.Items.IndexOf(qryAutoGen.FieldByName('EVERY').AsString);
  dtpStart.date := qryAutoGen.FieldByName('UPDATEON').AsDateTime;
  cbType.ItemIndex := cbType.Items.IndexOf(qryAutoGen.FieldByName('TYPE').AsString);
  if not qryAutoGen.FieldByName('FINISH').IsNull then
  begin
    dtpFinish.Checked := True;
    dtpFinish.Date := qryAutoGen.FieldByName('FINISH').AsDateTime;
  end
  else
    dtpFinish.Checked := False;
{  if qryAutoGen.BOF then
  begin
    tbtnFirst.Enabled := False;
    tbtnPrev.Enabled := False;
  end
  else
  begin
    tbtnFirst.Enabled := True;
    tbtnPrev.Enabled := True;
  end;
  if qryAutoGen.EOF then
  begin
    tbtnNext.Enabled := False;
    tbtnLast.Enabled := False;
  end
  else
  begin
    tbtnNext.Enabled := True;
    tbtnLast.Enabled := True;
  end;       }
end;


procedure TfrmAutoGen.qryAutoGenAfterInsert(DataSet: TDataSet);
begin
  qryAutoGen.FieldByname('FREQ').AsInteger := 1;
  qryAutoGen.FieldByname('EVERY').AsString := 'Months';
  qryAutoGen.FieldByName('UPDATEON').AsDateTime := Now;
  qryAutoGen.FieldByName('TYPE').AsInteger := 1;
  qryAutoGen.FieldByName('AUTHOR').AsString := dmAxiom.UserID;
end;


procedure TfrmAutoGen.FormShow(Sender: TObject);
begin
  Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;

  cbFeeAuthor.Items := dmAxiom.Employees;
  StringPopulate(cbFeeDept.Items, 'EMPDEPT', 'CODE');
  qryAutoGen.Open;
end;

procedure TfrmAutoGen.spnFreqChange(Sender: TObject);
begin
  if not qryAutoGen.Modified then
    qryAutoGen.Edit;
  qryAutoGen.FieldByName('FREQ').AsInteger := spnFreq.Value;
end;

procedure TfrmAutoGen.cbFreqClick(Sender: TObject);
begin
  if not qryAutoGen.Modified then
    qryAutoGen.Edit;
  qryAutoGen.FieldByName('EVERY').AsString := cbFreq.Text;
end;

procedure TfrmAutoGen.dtpStartChange(Sender: TObject);
begin
  if not qryAutoGen.Modified then
    qryAutoGen.Edit;
  qryAutoGen.FieldByName('UPDATEON').AsDateTime := dtpStart.Date;
end;

procedure TfrmAutoGen.tbtnFirstClick(Sender: TObject);
begin
  if qryAutoGen.Modified then
    qryAutoGen.Post;
  qryAutoGen.First;
end;

procedure TfrmAutoGen.tbtnPrevClick(Sender: TObject);
begin
  if qryAutoGen.Modified then
    qryAutoGen.Post;
  qryAutoGen.Prior;
end;

procedure TfrmAutoGen.tbtnNextClick(Sender: TObject);
begin
  if qryAutoGen.Modified then
    qryAutoGen.Post;
  qryAutoGen.Next;
end;

procedure TfrmAutoGen.tbtnLastClick(Sender: TObject);
begin
  if qryAutoGen.Modified then
    qryAutoGen.Post;
  qryAutoGen.Last;
end;

procedure TfrmAutoGen.tbtnNewClick(Sender: TObject);
begin
  if qryAutoGen.Modified then
    qryAutoGen.Post;
  qryAutoGen.Insert;
end;

procedure TfrmAutoGen.tbtnDeleteClick(Sender: TObject);
begin
  if qryAutoGen.Modified then
    qryAutoGen.Post;
  qryAutoGen.Delete;
end;

procedure TfrmAutoGen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qryAutoGen.Modified then
    if MsgAsk('Do you want to save your changes?') = mrYes then
      qryAutoGen.Post;
  qryAutoGen.Close;
  RemoveFromDesktop(Self);
//  Action := caFree;
end;


procedure TfrmAutoGen.tbtnPrintClick(Sender: TObject);
begin
  qrAutoGen.PreviewModal;
end;

procedure TfrmAutoGen.qryAutoGenCalcFields(DataSet: TDataSet);
begin
  qryAutoGen.FieldByName('Client').AsString := MatterString(qryAutoGen.FieldByName('FILEID').AsString, 'TITLE');
end;


procedure TfrmAutoGen.btnBankMatterClick(Sender: TObject);
begin
  if frmMatterSearch.ShowModal = mrOk then
  begin
    if not qryAutoGen.Modified then
      qryAutoGen.Edit;
    qryAutoGen.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
    tbBankFile.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
    lblBankClient.Caption := MatterString(qryAutoGen.FieldByName('FILEID').AsString, 'TITLE');
  end;
end;

procedure TfrmAutoGen.btnSundryMatterClick(Sender: TObject);
begin
  if frmMatterSearch.ShowModal = mrOk then
  begin
    if not qryAutoGen.Modified then
      qryAutoGen.Edit;
    qryAutoGen.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
    tbSundryFile.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
    lblSundryClient.Caption := MatterString(qryAutoGen.FieldByName('FILEID').AsString, 'TITLE');
  end;
end;

procedure TfrmAutoGen.cbFeeAuthorClick(Sender: TObject);
begin
  if qryAutoGen.FieldByName('AUTHOR').AsString <> cbFeeAuthor.Text then
  begin
    if not qryAutoGen.Modified then
      qryAutoGen.Edit;
    qryAutoGen.FieldByName('AUTHOR').AsString := cbFeeAuthor.Text;
  end;
  lblFeeAuthorName.Caption := TableString('EMPLOYEE', 'CODE', qryAutoGen.FieldByName('AUTHOR').AsString, 'NAME');
end;

procedure TfrmAutoGen.cbSundryTypeClick(Sender: TObject);
begin
  lblSundryTypeDesc.Caption := TableString('SUNDRYTYPE', 'CODE', qryAutoGen.FieldByName('SUNDRYTYPE').AsString, 'DESCR');
end;

procedure TfrmAutoGen.cbFeeDeptClick(Sender: TObject);
begin
  if qryAutoGen.FieldByName('DEPT').AsString <> cbFeeDept.Text then
  begin
    if not qryAutoGen.Modified then
      qryAutoGen.Edit;
    qryAutoGen.FieldByName('DEPT').AsString := cbFeeDept.Text;
  end;
  lblFeeDeptDesc.Caption := TableString('EMPDEPT', 'CODE', cbFeeDept.Text, 'DESCR');
end;

procedure TfrmAutoGen.cbBankClick(Sender: TObject);
begin
  lblBankName.Caption := TableString('BANK', 'ACCT', qryAutoGen.FieldByName('BANK').AsString, 'NAME');
end;

procedure TfrmAutoGen.tbtnProcessClick(Sender: TObject);
var
  wYear, wMonth, wDay: Word;
  iMax: integer;
  dAmount: double;
  dtUpdate: TDateTime;
  sDesc: string;
  bModified: boolean;
  frmProcess: TfrmProcess;
begin
  with qryNew do
  begin
    Close;
    SQL.Text := 'SELECT COUNT(AMOUNT) AS CNT FROM AUTOGEN';
    Open;
    if IsEmpty then
      iMax := 0
    else
      iMax := FieldByName('CNT').AsInteger;
    Close;
  end;
  if iMax > 0 then
  begin
    frmProcess := TfrmProcess.Create(Self);
    frmProcess.lblProcess.Caption := 'Generating Automatic Transactions';
    frmProcess.pbProcess.Max := iMax;
    frmProcess.Show;
    Application.ProcessMessages;

    with qryAutoGenProcess do
    begin
      Close;
      Open;
      while not EOF do
      begin
        frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
        Application.ProcessMessages;
        dtUpdate := FieldByName('UPDATEON').AsDateTime;
        if FieldByName('FINISH').IsNull then
        begin
          while dtUpdate <= Date do
          begin
            // Insert fields into the description
            if Pos('[', FieldByName('DESCR').AsString) > 0 then
            begin
              sDesc := FieldByName('DESCR').AsString;
              repeat
                bModified := False;
                if Pos('[DATE]', sDesc) > 0 then
                begin
                  sDesc := Copy(sDesc, 1, Pos('[DATE]', sDesc) - 1) + FormatDateTime('ddddd', dtUpdate) + Copy(sDesc, Pos('[DATE]', sDesc) + 6, 999);
                  bModified := True;
                end;
                if Pos('[LONGDATE]', sDesc) > 0 then
                begin
                  sDesc := Copy(sDesc, 1, Pos('[LONGDATE]', sDesc) - 1) + FormatDateTime('dddddd', dtUpdate) + Copy(sDesc, Pos('[LONGDATE]', sDesc) + 10, 999);
                  bModified := True;
                end;
                if Pos('[MONTH]', sDesc) > 0 then
                begin
                  sDesc := Copy(sDesc, 1, Pos('[MONTH]', sDesc) - 1) + FormatDateTime('mmmm', dtUpdate) + Copy(sDesc, Pos('[MONTH]', sDesc) + 7, 999);
                  bModified := True;
                end;
                if Pos('[YEAR]', sDesc) > 0 then
                begin
                  sDesc := Copy(sDesc, 1, Pos('[YEAR]', sDesc) - 1) + FormatDateTime('yyyy', dtUpdate) + Copy(sDesc, Pos('[YEAR]', sDesc) + 6, 999);
                  bModified := True;
                end;
              until not bModified;
            end;
            // Now make the actual transaction
            if FieldByName('TYPE').AsString = 'Fee' then
            begin
              // Find the matter
              qryMatter.Close;
              qryMatter.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
              qryMatter.Open;
              if not qryMatter.IsEmpty and qryMatter.FieldByName('COMPLETED').IsNull then
              begin
                // Insert the new fee
                qryNew.SQL.Text := 'SELECT F.*, F.ROWID FROM FEE F WHERE F.NFEE = -1';
                qryNew.Open;
                qryNew.Insert;
                qryNew.FieldByName('CREATED').AsDateTime := dtUpdate;
                qryNew.FieldByName('AMOUNT').AsCurrency := FieldByName('AMOUNT').AsCurrency;
                qryNew.FieldByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
                qryNew.FieldByName('PARTNER').AsString :=  qryMatter.FieldByName('PARTNER').AsString;
                qryNew.FieldByName('BANK_ACCT').AsString := dmAxiom.Entity;
                qryNew.FieldByName('BILLED').AsString := 'N';
                qryNew.FieldByName('DEPT').AsString := FieldByName('DEPT').AsString;
                qryNew.FieldByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', FieldByName('AUTHOR').AsString, 'TYPE');
                qryNew.FieldByName('DESCR').AsString := sDesc;
                qryNew.FieldByName('FILEID').AsString := FieldByName('FILEID').AsString;
                qryNew.FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                qryNew.FieldByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
                qryNew.FieldByName('NMEMO').AsInteger := 0;
                qryNew.FieldByName('UNITS').AsInteger := 0;
                qryNew.FieldByName('PRIVATE').AsString := 'N';
                qryNew.FieldByName('TYPE').AsString := 'N';
                qryNew.FieldByName('TAXCODE').AsString := dmAxiom.DefaultTax;
                dAmount := qryNew.FieldByName('AMOUNT').AsCurrency;
                qryNew.FieldByName('TAX').AsCurrency := TaxCalc(dAmount, '', dmAxiom.DefaultTax, dtUpdate);

                qryNew.Post;
                MatterUpdate(qryNew.FieldByName('NMATTER').AsInteger, 'UNBILL_FEES', FieldByName('AMOUNT').AsCurrency);

                if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR') <> '' then
                  PostLedgers(dtUpdate
                    , qryNew.FieldByName('AMOUNT').AsCurrency
                    , qryNew.FieldByName('FILEID').AsString
                    , 'FEE'
                    , qryNew.FieldByName('NFEE').AsInteger
                    , sDesc
                    , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR')
                    , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_CR')
                    , FieldByName('AUTHOR').AsString
                    , dmAxiom.DefaultTax);

                qryNew.Close;

              end;

              qryMatter.Close;

            end
            else if FieldByName('TYPE').AsString = 'Sundry' then
            begin
              // Find the matter
              qryMatter.Close;
              qryMatter.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
              Open;
              if not qryMatter.IsEmpty and qryMatter.FieldByName('COMPLETED').IsNull then
              begin
                // Insert the sundry
                qryNew.SQL.Text := 'SELECT S.*, S.ROWID FROM SUNDRY S WHERE S.NSUNDRY = -1';
                qryNew.Open;
                qryNew.Insert;
                qryNew.FieldByName('CREATED').AsDateTime := dtUpdate;
                qryNew.FieldByName('AMOUNT').AsCurrency := FieldByName('AMOUNT').AsCurrency;
                qryNew.FieldByName('TYPE').AsString := '8';
                qryNew.FieldByName('ACCT').AsString := FieldByName('BANK').AsString;
                qryNew.FieldByName('BILLED').AsString := 'N';
                qryNew.FieldByName('DESCR').AsString := sDesc;
                qryNew.FieldByName('FILEID').AsString := FieldByName('FILEID').AsString;
                qryNew.FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                qryNew.FieldByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
                qryNew.FieldByName('NMEMO').AsInteger := 0;
                qryNew.FieldByName('TAXCODE').AsString := dmAxiom.DefaultTax;
                dAmount := qryNew.FieldByName('AMOUNT').AsCurrency;
                qryNew.FieldByName('TAX').AsCurrency := TaxCalc(dAmount, '', dmAxiom.DefaultTax, dtUpdate);

                qryNew.Post;
                MatterUpdate(qryNew.FieldByName('NMATTER').AsInteger, 'UNBILL_SUND', qryNew.FieldByName('AMOUNT').AsCurrency);
                if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
                  PostLedgers(dtUpdate
                   , FieldByName('AMOUNT').AsCurrency
                   , qryNew.FieldByName('NMATTER').AsString
                   , 'SUNDRY'
                   , qryNew.FieldByName('NSUNDRY').AsInteger
                   , sDesc
                   , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR')
                   , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR')
                   , MatterString(FieldByName('FILEID').AsString, 'PARTNER')
                   , dmAxiom.DefaultTax);

                 qryNew.Close;

              end;    
              qryMatter.Close;
            end
            else if FieldByName('TYPE').AsString = 'Cheque Requisition' then
            begin
              qryNew.SQL.Text := 'SELECT C.*, C.ROWID FROM CHEQREQ C WHERE C.AMOUNT = -1';
              qryNew.Open;
              qryNew.Insert;
              qryNew.FieldByName('REQDATE').AsDateTime := dtUpdate;
              qryNew.FieldByName('BANK').AsString := FieldByName('BANK').AsString;
              qryNew.FieldByName('FILEID').AsString := FieldByName('FILEID').AsString;
              qryNew.FieldByName('PAYEE').AsString := 'CheqReq from AutoGen';
              qryNew.FieldByName('DESCR').AsString := sDesc;
              qryNew.FieldByName('AMOUNT').AsCurrency := FieldByName('AMOUNT').AsCurrency;
              qryNew.FieldByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
              qryNew.FieldByName('HELD').AsString := 'N';
              qryNew.FieldByName('GROUPABLE').AsString := 'Y';
              qryNew.Post;
              qryNew.Close;
            end;

            // Update the date of the next time to AutoGen
            DecodeDate(dtUpdate, wYear, wMonth, wDay);
            if FieldByName('EVERY').AsString = 'Days' then
              dtUpdate := dtUpdate + FieldByName('FREQ').AsInteger
            else if FieldByName('EVERY').AsString = 'Weeks' then
              dtUpdate := dtUpdate + (FieldByName('FREQ').AsInteger * 7)
            else if FieldByName('EVERY').AsString = 'Months' then
            begin
              wMonth := wMonth + FieldByName('FREQ').AsInteger;
              while wMonth > 12 do
              begin
                wYear := wYear + 1;
                wMonth := wMonth - 12;
              end;
              dtUpdate := EncodeDate(wYear, wMonth, wDay);
            end
            else if FieldByName('EVERY').AsString = 'Years' then
            begin
              wYear := wYear + FieldByName('FREQ').AsInteger;
              dtUpdate := EncodeDate(wYear, wMonth, wDay);
            end;
          end;

          Edit;
          FieldByName('LASTRUN').AsDateTime := Date;
          FieldByName('UPDATEON').AsDateTime := dtUpdate;
          Post;
        end;

        Next;
      end;
    end;
    frmProcess.Release;
  end;
  CheckLedgerTotal;
end;


procedure TfrmAutoGen.ToolButton1Click(Sender: TObject);
begin
   Close;
//   RemoveFromDesktop(Self);
end;

end.

