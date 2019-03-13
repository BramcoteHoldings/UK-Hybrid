unit InvoiceReverse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ComCtrls, DBCtrls, MemDS, OracleUniProvider, Uni,
  DateTimeAccount, DBAccess, cxLookAndFeelPainters, cxTextEdit, cxButtons,
  cxControls, cxContainer, cxEdit, cxLabel, cxDBLabel, cxMemo, cxGroupBox,
  Menus, cxGraphics, cxLookAndFeels, cxMaskEdit, cxDropDownEdit,
  cxCalendar, EnforceCustomDateEdit, dxCore, cxDateUtils, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TfrmInvoiceReverse = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    dsInvoice: TUniDataSource;
    qryTransitems: TUniQuery;
    qryAllocs: TUniQuery;
    qryInvoice: TUniQuery;
    qryInvoiceReverse: TUniQuery;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    btnOriginal: TcxButton;
    mlReason: TcxMemo;
    gbOriginal: TcxGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    qryTransitemSum: TUniQuery;
    qryInvUpdate: TUniQuery;
    dtpReverse: TEnforceCustomDateEdit;
    ActionManager1: TActionManager;
    actOk: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOriginalClick(Sender: TObject);
    procedure actOkUpdate(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DisplayInvoice(AnInvoice : integer);
  end;

implementation

{$R *.DFM}

uses
  Axiomdata, MiscFunc;

procedure TfrmInvoiceReverse.DisplayInvoice(AnInvoice : integer);
begin
  qryInvoice.Close;
  qryInvoice.ParamByName('NINVOICE').AsInteger := AnInvoice;
  qryInvoice.Open;
  if qryInvoice.IsEmpty then
    Close
  else
  begin
//    Show;
    btnOriginal.Visible := qryInvoice.FieldByName('INVOICE_DATE').AsDateTime >= dtpReverse.Properties.MinDate;
  end;
end;

procedure TfrmInvoiceReverse.FormShow(Sender: TObject);
begin
   dtpReverse.Date := Date();
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
   dtpReverse.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

{
  Added 31.10.2002  GG
  Allow user to change reverse date only if they have authority
}
   btnOriginal.Enabled:= dmAxiom.Security.Invoice.ChangeDate;
   dtpReverse.Enabled:= dmAxiom.Security.Invoice.ChangeDate;

   mlReason.Text := qryInvoice.FieldByName('DESCR').AsString;
   mlReason.SetFocus;
end;

procedure TfrmInvoiceReverse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryInvoice.Close;
   qryAllocs.Close;
   qryTransItems.Close;

//   Action := caFree;
end;

procedure TfrmInvoiceReverse.actOkExecute(Sender: TObject);
var
  iRvNcheque   : Integer;
  liInvoiceNum : Integer;
  bOKtoPost    : Boolean;
begin
{
  Added 25.10.2002 GG

  Show message if transaction is being posted into a locked period
}
  bOKtoPost:= (PostIntoLockedPeriod(dtpReverse.Date) in [prNotLocked, prOKToProceed]);

  if bOKtoPost then
  begin
    { Reverses the Invoice specified by the qryInvoice }
    try
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;

      // Create a new record
//       14/06/2018 - AES changed to use sequence rather than seqnum table AGAIN.  needs reset sequence to be run
      iRvNcheque := GetSequenceNumber('SQNC_NCHEQUE');   //GetSeqnum('NCHEQUE');
      liInvoiceNum := GetSeqNum('NINVOICE');

      qryInvoiceReverse.ParamByName('ACCT').AsString := qryInvoice.FieldByName('ACCT').AsString;
      qryInvoiceReverse.ParamByName('CREDITOR').AsString := qryInvoice.FieldByName('CREDITOR').AsString;
      qryInvoiceReverse.ParamByName('NCREDITOR').AsInteger := qryInvoice.FieldByName('NCREDITOR').AsInteger;
      qryInvoiceReverse.ParamByName('NCHEQUE').AsInteger := iRvNcheque;
      qryInvoiceReverse.ParamByName('AMOUNT').AsFloat := 0 - qryInvoice.FieldByName('AMOUNT').AsCurrency;
      qryInvoiceReverse.ParamByName('REFNO').AsString := Copy(qryInvoice.FieldByName('REFNO').AsString + 'RV', 1, 10);
      qryInvoiceReverse.ParamByName('DESCR').AsString := mlReason.Text;  // qryInvoice.FieldByName('DESCR').AsString;
      qryInvoiceReverse.ParamByName('INVOICE_DATE').AsDateTime := dtpReverse.Date;
      qryInvoiceReverse.ParamByName('NINVOICE').AsInteger := liInvoiceNum;
      qryInvoiceReverse.ExecSQL;

      // need to update original transaction
      qryInvUpdate.Close;
      qryInvUpdate.ParamByName('NCHEQUE').AsInteger := iRvNcheque;
      qryInvUpdate.ParamByName('NINVOICE').AsInteger := qryInvoice.FieldByName('NINVOICE').AsInteger;
      qryInvUpdate.ExecSQL;

      // Now sum the gl transactions
      qryTransitemSum.Close;
      qryTransitemSum.ParamByName('NINVOICE').AsInteger := qryInvoice.FieldByName('NINVOICE').AsInteger;
      qryTransitemSum.Open;
      if qryTransitemSum.fieldByname('AMOUNT').AsCurrency <> 0 then
      begin
         msgErr('Reversing this invoice will cause an in balance in the GL - Please create a manual reversal');
         qryTransitemSum.close;
         dmAxiom.uniInsight.Rollback;
         exit;
      end;
      qryTransitemSum.close;

      // Now reverse the Transaction Items
      qryTransitems.Close;
      qryTransitems.ParamByName('NINVOICE').AsInteger := qryInvoice.FieldByName('NINVOICE').AsInteger;
      qryTransitems.Open;
      while not qryTransitems.EOF do
      begin
        RvNaccount(qryTransitems, dtpReverse.Date, qryInvoiceReverse.ParamByName('REFNO').AsString, mlReason.Text, 'INVOICE', liInvoiceNum);
        qryTransitems.Next;
      end;

      // Now reverse the Allocs
      qryAllocs.Close;
      qryAllocs.ParamByName('NINVOICE').AsInteger := qryInvoice.FieldByName('NINVOICE').AsInteger;
      qryAllocs.Open;
      while not qryAllocs.EOF do
      begin
        RvAlloc(qryAllocs, dtpReverse.Date, qryInvoiceReverse.ParamByName('REFNO').AsString, mlReason.Text, 0, 0, 0, 'UNBILL_DISB', 'RV', liInvoiceNum, False, 'Y');
        qryAllocs.Next;
      end;

      qryInvoice.Edit;
      qryInvoice.FieldByName('CREDITED').AsFloat := qryInvoice.FieldByName('AMOUNT').AsFloat;
      qryInvoice.FieldByName('OWING').AsFloat := 0;
      qryInvoice.FieldByName('LAST_PAYMENT').AsDateTime := dtpReverse.Date;
      qryInvoice.Post;

      qryInvoice.ApplyUpdates;

      dmAxiom.uniInsight.Commit;

      Close;
      ModalResult := mrOK;
    except
      On E: Exception do
      begin
        dmAxiom.uniInsight.Rollback;
        MsgErr('Error reversing Invoice:' + #13 + #13 + E.Message);
        ModalResult := mrCancel;
      end;
    end;
  end;
end;

procedure TfrmInvoiceReverse.actOkUpdate(Sender: TObject);
begin
   actOk.Enabled := (mlReason.Text <> '');
end;

procedure TfrmInvoiceReverse.btnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
  Self.Close;
end;

procedure TfrmInvoiceReverse.btnOriginalClick(Sender: TObject);
begin
  dtpReverse.Date := qryInvoice.FieldByName('INVOICE_DATE').AsDateTime;
  mlReason.SetFocus;
end;


end.
