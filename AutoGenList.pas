unit AutoGenList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DBAccess, OracleUniProvider, Uni,
  ImgList, dxBar, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppDesignLayer,
  ppParameter, MemDS;

type
  TfrmAutoGenList = class(TForm)
    qryAutoGen: TUniQuery;
    qryAutoGenClient: TStringField;
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
    dsAutoGen: TUniDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FILEID: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1EVERY: TcxGridDBColumn;
    cxGrid1DBTableView1LASTRUN: TcxGridDBColumn;
    cxGrid1DBTableView1LASTMODIFIED: TcxGridDBColumn;
    cxGrid1DBTableView1AUTHOR: TcxGridDBColumn;
    cxGrid1DBTableView1DEPT: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATEON: TcxGridDBColumn;
    cxGrid1DBTableView1BANK: TcxGridDBColumn;
    cxGrid1DBTableView1FREQ: TcxGridDBColumn;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1LEDGER: TcxGridDBColumn;
    cxGrid1DBTableView1PAYEE: TcxGridDBColumn;
    cxGrid1DBTableView1SUNDRYTYPE: TcxGridDBColumn;
    cxGrid1DBTableView1FINISH: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    btnAdd: TdxBarButton;
    btnEdit: TdxBarButton;
    btnDelete: TdxBarButton;
    btnPrint: TdxBarSubItem;
    btnExp2Excel: TdxBarButton;
    btnPrintGrid: TdxBarButton;
    btnClose: TdxBarButton;
    ilstToolbar: TImageList;
    btnExecute: TdxBarButton;
    qryNew: TUniQuery;
    qryMatter: TUniQuery;
    qryAutoGenProcess: TUniQuery;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    dxBarButton1: TdxBarButton;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExecuteClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAutoGenList: TfrmAutoGenList;

implementation

uses AxiomData, Process, MiscFunc;

{$R *.dfm}

procedure TfrmAutoGenList.FormShow(Sender: TObject);
begin
     qryAutoGen.Open;
end;

procedure TfrmAutoGenList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     qryAutoGen.Close;
end;

procedure TfrmAutoGenList.btnExecuteClick(Sender: TObject);
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

procedure TfrmAutoGenList.dxBarButton1Click(Sender: TObject);
begin
   ppReport1.Print;
end;

end.
