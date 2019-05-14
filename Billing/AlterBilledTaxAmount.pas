unit AlterBilledTaxAmount;

interface

uses
  Vcl.Forms,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Data.DB, MemDS, DBAccess, Uni, cxCheckBox, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxCurrencyEdit, Vcl.StdCtrls, cxButtons, Vcl.Controls,
  cxLabel;


type
  TfrmAdjustBilledTax = class(TForm)
    lblBilledTaxOld : TcxLabel;
    lblBilledTax : TcxLabel;
    qryBilledTax : TUniQuery;
    btnOK : TcxButton;
    btnCancel : TcxButton;
    edBilledTax : TcxCurrencyEdit;
    edOldBilledTax : TcxCurrencyEdit;
    cbOldTaxCode : TcxLookupComboBox;
    cbNewTaxCode : TcxLookupComboBox;
    chkApplyToAll : TcxCheckBox;
    procedure FormClose(
      Sender     : TObject;
      var Action : TCloseAction);
    procedure FormShow(Sender : TObject);
    procedure btnCancelClick(Sender : TObject);
    procedure FormCreate(Sender : TObject);
    procedure SetUpQuery(ID : Integer);
    procedure UpdateTaxAmounts();
    private
      { Private declarations }
      fCancelClicked : boolean;
      qryBillItems : TUniQuery;
      ComponentType : Integer;
      SelectedItemID : Integer;
    public
      { Public declarations }
      Class Function AlterBilledTaxAmount(
        UniqueID : Integer;
        CompType : String;
        qryBI    : TUniQuery) : boolean;
  end;

implementation

{$R *.dfm}

uses
  AxiomData,
  MiscFunc;

Class Function TfrmAdjustBilledTax.AlterBilledTaxAmount(
  UniqueID : Integer;
  CompType : String;
  qryBI    : TUniQuery) : boolean;
var
    frmAdjustBilledTax : TfrmAdjustBilledTax;
begin
   frmAdjustBilledTax := TfrmAdjustBilledTax.Create(nil);
   frmAdjustBilledTax.qryBillItems := qryBI;
   frmAdjustBilledTax.SelectedItemID := UniqueID;
   //
   // ComponentType contains the type integer placed in qryBillItems by BillNew.
   //
   try
      if (CompType = 'DISB') then
      begin
         frmAdjustBilledTax.ComponentType := 1;
      end
      else if (CompType = 'UPCRED') then
      begin
        frmAdjustBilledTax.ComponentType := 4;
      end
      else if (CompType = 'SUND') then
      begin
        frmAdjustBilledTax.ComponentType := 3;
      end
      else
      begin
        raise Exception.Create('Unsupported Bill Component Type ' + CompType);
      end;
      Result := frmAdjustBilledTax.ShowModal = mrOK;
   finally
      frmAdjustBilledTax.Free;
   end;
end;

procedure TfrmAdjustBilledTax.btnCancelClick(Sender : TObject);
begin
   fCancelClicked := True;
end;

procedure TfrmAdjustBilledTax.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (fCancelClicked) then
      exit;

   if chkApplyToAll.Checked then
   begin

      qryBillItems.First;
      while Not qryBillItems.EOF do
      Begin
        if qryBillItems.FieldByName('TYPE').AsInteger = ComponentType then
        begin
          SetUpQuery(qryBillItems.FieldByName('UNIQUEID').AsInteger);
          UpdateTaxAmounts();
        end;
        qryBillItems.Next;
      End;
   end
   else
   begin
      UpdateTaxAmounts();
   end;

   dmAxiom.qryTaxList.Close;
end;

procedure TfrmAdjustBilledTax.FormCreate(Sender : TObject);
begin
   fCancelClicked := False;
   dmAxiom.qryTaxList.Open;
end;

procedure TfrmAdjustBilledTax.FormShow(Sender : TObject);
begin
   // edOldBilledTax.Value := qryBilledTaxOld.FieldByName('BILLED_TAX_AMOUNT').AsCurrency *-1;
   // edBilledTax.Value := qryBilledTax.FieldByName('BILLED_TAX_AMOUNT').AsCurrency *-1;
   SetUpQuery(SelectedItemID);
   cbOldTaxCode.EditValue := qryBilledTax.FieldByName('TAXCODE').AsString;
   cbNewTaxCode.EditValue := qryBilledTax.FieldByName('TAXCODE').AsString;
   if ComponentType = 1 Then
      chkApplyToAll.Caption := 'Apply to all disbursements'
   else if ComponentType = 3 Then
      chkApplyToAll.Caption := 'Apply to all sundries'
   else
      chkApplyToAll.Caption := 'Apply to all creditors';
end;

procedure TfrmAdjustBilledTax.SetUpQuery(ID : Integer);
begin
    if ComponentType = 3 then
    //
    // Sundries
    //
    begin
      qryBilledTax.SQL.Text := 'SELECT NSUNDRY AS UNIQUEID, AMOUNT As BILLED_AMOUNT, TAX AS BILLED_TAX_AMOUNT, TAXCODE FROM SUNDRY WHERE NSUNDRY = ' +
        IntToStr(ID);
    end
    else if ComponentType = 4 Then
    //
    // Creditors
    //
    begin
      qryBilledTax.SQL.Text := 'SELECT NALLOC AS UNIQUEID, AMOUNT AS BILLED_AMOUNT, TAX As BILLED_TAX_AMOUNT, TAXCODE FROM ALLOC WHERE NALLOC = ' +
        IntToStr(ID);
    end
    else
    //
    // Disbursements
    //
    begin
      qryBilledTax.SQL.Text := 'SELECT NALLOC AS UNIQUEID, BILLED_AMOUNT, BILLED_TAX_AMOUNT, TAXCODE FROM ALLOC WHERE NALLOC = ' +
        IntToStr(ID);
    end;
    qryBilledTax.Open;
    qryBilledTax.Edit;
end;

procedure TfrmAdjustBilledTax.UpdateTaxAmounts();
var
    NetAmount : Currency;
    TaxAmount : Currency;
begin
   NetAmount := qryBilledTax.FieldByName('BILLED_AMOUNT').AsCurrency;
   TaxAmount := TaxCalc(NetAmount, '', cbNewTaxCode.EditValue, Now);

   qryBilledTax.FieldByName('BILLED_TAX_AMOUNT').AsCurrency := TaxAmount;
   qryBilledTax.FieldByName('TAXCODE').AsString := cbNewTaxCode.EditValue;
   qryBilledTax.Post;
end;

end.
