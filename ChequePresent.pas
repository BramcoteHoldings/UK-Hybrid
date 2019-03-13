unit ChequePresent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ComCtrls, Grids, DBGrids, MemDS, OracleUniProvider, Uni,
  DBAccess, dxBar, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxCalendar, DateUtils, EnforceCustomDateEdit, dxCore, VCL.Themes, cxNavigator,
  cxDateUtils;

type
  TfrmChequePresent = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    tbCheque: TEdit;
    cbBank: TComboBox;
    lblBankName: TLabel;
    Label3: TLabel;
    qryPresent: TUniQuery;
    dsPresent: TDataSource;
    qryChequeCheck: TUniQuery;
    btnPresent: TBitBtn;
    btnProcess: TBitBtn;
    qryUpdate: TUniQuery;
    btnRemove: TBitBtn;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dbgrPresent: TcxGrid;
    dbgrPresentLevel1: TcxGridLevel;
    tvPresent: TcxGridDBTableView;
    tvPresentCREATED1: TcxGridDBColumn;
    tvPresentREFNO1: TcxGridDBColumn;
    tvPresentDEBIT1: TcxGridDBColumn;
    dtpPresent: TEnforceCustomDateEdit;
    cbKeepOpen: TCheckBox;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    procedure btnPresentClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbBankClick(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtpPresentPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChequePresent: TfrmChequePresent;

implementation

uses
  MiscFunc, AxiomData, Variants, Vcl.Styles,
  Vcl.Styles.FormStyleHooks;

{$R *.DFM}


procedure TfrmChequePresent.btnPresentClick(Sender: TObject);
begin
{
  Modified 19.11.2002 GG

  Removed with clause for improved readibility and easier debugging.

  with qryChequeCheck do
  begin
    Close;
    ParamByName('ACCT').AsString := cbBank.Text;
    ParamByName('CHQNO').AsString := tbCheque.Text;
    Open;
    if IsEmpty then
      MsgErr('No such Cheque for this Bank Account')
    else
    begin
      if not VarIsNull(FieldByName('PRESENTED').AsVariant) then
        MsgErr('Cheque ' + tbCheque.Text + ' has already been presented on ' + FormatDateTime('ddddd', FieldByName('PRESENTED').AsDateTime))
      else
      begin
        if Trunc(FieldByName('CREATED').AsDateTime) > dtpPresent.Date then
          MsgErr('Cheque ' + tbCheque.Text + ' was created on ' + FormatDateTime('ddddd', FieldByName('CREATED').AsDateTime) + ', and so may not be presented on ' + FormatDateTime('ddddd', dtpPresent.Date))
        else
        begin
          qryPresent.Insert;
          qryPresent.FieldByName('CREATED').AsDateTime := dtpPresent.Date;
          qryPresent.FieldByName('BANK').AsString := cbBank.Text;
          qryPresent.FieldByName('REFNO').AsString := tbCheque.Text;
          qryPresent.FieldByName('DEBIT').AsCurrency := FieldByName('AMOUNT').AsCurrency;
          qryPresent.Post;
          cbBank.Enabled := False;
          btnRemove.Enabled := True;
        end;
      end;
    end;
  end;
}
  qryChequeCheck.Close;
  qryChequeCheck.ParamByName('ACCT').AsString := cbBank.Text;
  qryChequeCheck.ParamByName('CHQNO').AsString := tbCheque.Text;
  qryChequeCheck.Open;
  if qryChequeCheck.IsEmpty then
    MsgErr('No such Cheque for this Bank Account')
  else
  begin
    if not VarIsNull(qryChequeCheck.FieldByName('PRESENTED').AsVariant) then
      MsgErr('Cheque ' + tbCheque.Text + ' has already been presented on ' +
        FormatDateTime('ddddd', qryChequeCheck.FieldByName('PRESENTED').AsDateTime))
    else
    begin
      if Trunc(qryChequeCheck.FieldByName('CREATED').AsDateTime) > dtpPresent.Date then
        MsgErr('Cheque ' + tbCheque.Text + ' was created on ' +
        FormatDateTime('ddddd', qryChequeCheck.FieldByName('CREATED').AsDateTime) +
        ', and so may not be presented on ' + FormatDateTime('ddddd', dtpPresent.Date))
      else
      begin
        qryPresent.Insert;
        qryPresent.FieldByName('CREATED').AsDateTime := dtpPresent.Date;
        qryPresent.FieldByName('BANK').AsString := cbBank.Text;
        qryPresent.FieldByName('REFNO').AsString := tbCheque.Text;
        qryPresent.FieldByName('DEBIT').AsCurrency := qryChequeCheck.FieldByName('AMOUNT').AsCurrency;
        qryPresent.Post;
        cbBank.Enabled := False;
        btnRemove.Enabled := True;
      end;
    end;
  end;

  tbCheque.SetFocus;
end;


procedure TfrmChequePresent.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryPresent.CancelUpdates;
  qryPresent.Close;
  qryChequeCheck.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;


procedure TfrmChequePresent.FormShow(Sender: TObject);
begin
   AddBanks(cbBank, '');
   try
      cbBank.ItemIndex := cbBank.Items.IndexOf(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'DEFAULT_BANK'));
   finally
      cbBank.OnClick(Self);
   end;


{
  Modified 19.11.2002 GG

  Removed with clause for improved readibility and easier debugging.

  with qryPresent do
  begin
    if not Active then
    begin
      ParamByName('AUTHOR').AsString := dmAxiom.UserID;
      ExecSQL;
      SQL.Text := 'SELECT ROWID, CREATED, BANK, REFNO, DEBIT FROM LEDGER WHERE REPORTER = ''prz'' AND AUTHOR = :AUTHOR';
      Open;
    end;
  end;
}
   if not qryPresent.Active then
   begin
      qryPresent.ParamByName('AUTHOR').AsString := dmAxiom.UserID;
      qryPresent.ExecSQL;
      qryPresent.SQL.Text := 'SELECT ROWID, CREATED, BANK, REFNO, DEBIT FROM LEDGER WHERE REPORTER = ''prz'' AND AUTHOR = :AUTHOR';
      qryPresent.Open;
   end;

   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);
end;


procedure TfrmChequePresent.cbBankClick(Sender: TObject);
begin
//  Self.Color := BankColour(cbBank.Text);

   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := BankColour(cbBank.Text);
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

  lblBankName.Caption := TableString('BANK', 'ACCT', cbBank.Text, 'NAME');
end;

procedure TfrmChequePresent.btnProcessClick(Sender: TObject);
begin
{
  Added 19.11.2002 GG

  Need to prevent presentation of cheques into a locked period.
}
  if PostIntoLockedPeriod(dtpPresent.Date) in [prNotLocked, prOKToProceed] then
  begin
    qryUpdate.ParamByName('ACCT').AsString := cbBank.Text;
    qryPresent.First;
    while not qryPresent.EOF do
    begin
  {
    Modified 19.11.2002 GG

    Removed with clause for improved readibility and easier debugging.

      with qryUpdate do
      begin
        ParamByName('PRESENTED').AsDateTime := qryPresent.FieldByName('CREATED').AsDateTime;
        ParamByName('CHQNO').AsString := qryPresent.FieldByName('REFNO').AsString;
        ExecSQL;
      end;
  }
      qryUpdate.ParamByName('PRESENTED').AsDateTime := qryPresent.FieldByName('CREATED').AsDateTime;
      qryUpdate.ParamByName('CHQNO').AsString := qryPresent.FieldByName('REFNO').AsString;
      qryUpdate.ExecSQL;
      qryPresent.Next;
    end;

    if (cbKeepOpen.Checked) then
       qryPresent.Refresh
    else
      Self.Close;
//   RemoveFromDesktop(Self);
  end  
end;

procedure TfrmChequePresent.btnRemoveClick(Sender: TObject);
begin
  if not qryPresent.IsEmpty then
    qryPresent.Delete;
  if qryPresent.IsEmpty then
    btnRemove.Enabled := False;
end;

procedure TfrmChequePresent.dxBarButton1Click(Sender: TObject);
begin
    Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmChequePresent.FormCreate(Sender: TObject);
begin
     dtpPresent.Date := Today;
  dtpPresent.Properties.MaxDate := Today;
{
  Added 19.11.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
  dtpPresent.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;

end;

procedure TfrmChequePresent.dtpPresentPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if DisplayValue > TcxDateEdit(Sender).Properties.MaxDate  then
      DisplayValue := DateToStr(TcxDateEdit(Sender).Properties.MaxDate);
end;

initialization
   TStyleManager.Engine.RegisterStyleHook(TfrmChequePresent, TFormStyleHookBackground);

end.
