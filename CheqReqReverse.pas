unit CheqReqReverse;

interface

{

9.1.26

11.Nov.2017  DW  Modified to set original cheque req and reversal as billed


}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ComCtrls, DBCtrls, MemDS, OracleUniProvider, Uni, DBAccess,
  DateTimeAccount, cxLookAndFeelPainters, cxTextEdit, cxButtons,
  cxControls, cxContainer, cxEdit, cxLabel, cxDBLabel, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxCalendar, EnforceCustomDateEdit, Menus, cxGraphics,
  cxLookAndFeels, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxClasses, dxLayoutControl;

type
  TfrmCheqReqReverse = class(TForm)
    dsInvoice: TUniDataSource;
    qryTransitems: TUniQuery;
    qryAllocs: TUniQuery;
    qryCheqReq: TUniQuery;
    qryCheqReqReverse: TUniQuery;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    lblBank: TcxDBLabel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    mlReason: TcxMemo;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOriginalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nCheqReq   : Integer;
    procedure DisplayInvoice(AnInvoice : integer);
  end;

implementation

{$R *.DFM}

uses
  Axiomdata, MiscFunc;

procedure TfrmCheqReqReverse.DisplayInvoice(AnInvoice : integer);
begin
  qryCheqReq.Close;
  qryCheqReq.ParamByName('NCHEQREQ').AsInteger := AnInvoice;
  qryCheqReq.Open;
  if qryCheqReq.IsEmpty then
    Close
end;

procedure TfrmCheqReqReverse.btnOKClick(Sender: TObject);
var
//  liInvoiceNum : Integer;
  nRVCheqReq: string;
  bOKtoPost    : Boolean;
  sReason: string;
begin
   { Reverses the Invoice specified by the qryInvoice }
   try
      btnOk.Enabled := False;
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      Screen.Cursor := crSQLWait;
      dmAxiom.uniInsight.StartTransaction;

     // Create a new record
      nCheqReq := GetSequenceNumber('sqnc_ncheqreq');

      sReason:= '';
      sReason := 'Deleted - ' + mlReason.Text;
      {11.Nov.2017  DW  Modified to set original cheque req and reversal as billed}
      qryCheqReqReverse.SQL.Clear;
      qryCheqReqReverse.SQL.Text := 'INSERT INTO CHEQREQ ' +
                                    '(REV_NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, DESCR, AMOUNT, '+
                                    'AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, '+
                                    'NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE,'+
                                    ' TAXCODE, TAX, SUNDRYTYPE) '+
                                    'SELECT NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, '+
                                    QuotedStr(sReason) +
                                    ', 0-AMOUNT, AUTHOR, SysDate, BANK, HELD, GROUPABLE, ANTICIPATED,'+
                                    ' ''Y'', NOTE, NMEMO, :NCHEQREQ, INVOICEDATE, CONVERTED, TRUST,'+
                                    ' PRIVATE, TAXCODE, 0-TAX, SUNDRYTYPE '+
                                    'FROM CHEQREQ  '+
                                    'WHERE NCHEQREQ = ' + qryCheqreq.FieldByName('NCHEQREQ').AsString;
      qryCheqReqReverse.ParamByName('NCHEQREQ').AsInteger := nCheqReq;
      qryCheqReqReverse.ExecSQL;
      qryCheqReqReverse.Close;
      {11.Nov.2017  DW  Modified to set original cheque req and reversal as billed}

      nRVCheqReq := qryCheqReqReverse.ParamByName('NCHEQREQ').AsString;
      qryCheqReqReverse.SQL.Clear;
      qryCheqReqReverse.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = ' + nRVCheqReq + ', BILLED =''Y'' WHERE NCHEQREQ = ' + qryCheqReq.FieldByName('NCHEQREQ').AsString;
      qryCheqReqReverse.ExecSQL;
      qryCheqReqReverse.Close;

      // Now reverse the Transaction Items
      if TableString('bank','acct',lblBank.Caption,'trust') <> 'T' then
      begin
         qryCheqReqReverse.SQL.Clear;
         qryCheqReqReverse.SQL.Text := 'UPDATE TRANSITEM SET DESCR = ' + QuotedStr(sReason) +
                                       ',NOWNER = ' + nRVCheqReq + ' WHERE RVDATE IS NOT NULL AND NOWNER = ' +
                                       qryCheqReq.FieldByName('NCHEQREQ').AsString +
                                       ' AND OWNER_CODE = ''CHEQREQ'' ';
         qryCheqReqReverse.Close;
         qryCheqReqReverse.ExecSQL;
         qryCheqReqReverse.Close;
      end;

      qryCheqReq.ApplyUpdates;

      dmAxiom.uniInsight.Commit;
      Screen.Cursor := crDefault;
   except
      On E: Exception do
      begin
        dmAxiom.uniInsight.Rollback;
        Screen.Cursor := crDefault;
        btnOk.Enabled := True;
        MsgErr('Error reversing Cheque Rquisition:' + #13 + #13 + E.Message);
      end;
   end;
end;

procedure TfrmCheqReqReverse.FormShow(Sender: TObject);
begin
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
//  dtpReverse.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

{
  Added 31.10.2002  GG
  Allow user to change reverse date only if they have authority
}
//  btnOriginal.Enabled:= dmAxiom.Security.Invoice.ChangeDate;
//  dtpReverse.Enabled:= dmAxiom.Security.Invoice.ChangeDate;

  mlReason.Text := qryCheqReq.FieldByName('DESCR').AsString;
  mlReason.SetFocus;
end;

procedure TfrmCheqReqReverse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryCheqReq.Close;
  qryAllocs.Close;
  qryTransItems.Close;

//  Action := caFree;
end;

procedure TfrmCheqReqReverse.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCheqReqReverse.btnOriginalClick(Sender: TObject);
begin
//  dtpReverse.Date := qryCheqReq.FieldByName('REQDATE').AsDateTime;
//  mlReason.SetFocus;
end;

end.
