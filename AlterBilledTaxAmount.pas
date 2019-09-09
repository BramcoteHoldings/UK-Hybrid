unit AlterBilledTaxAmount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Data.DB, DBAccess, Uni, MemDS,
  cxTextEdit, cxDBEdit, cxDBLabel, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCurrencyEdit;

type
  TfrmAdjustBilledTax = class(TForm)
    lblBilledTaxOld: TcxLabel;
    lblBilledTax: TcxLabel;
    qryBilledTax: TUniQuery;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    edBilledTax: TcxCurrencyEdit;
    edOldBilledTax: TcxCurrencyEdit;
    qryBilledTaxOld: TUniQuery;
    qryType: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fCancelClicked: boolean;
  public
    { Public declarations }
    Class Function AlterBilledTaxAmount(UniqueID: integer; ComponentType: String): Boolean;
  end;

implementation

{$R *.dfm}

uses AxiomData;

Class Function TfrmAdjustBilledTax.AlterBilledTaxAmount(UniqueID: integer; ComponentType: String): Boolean;
var
   frmAdjustBilledTax: TfrmAdjustBilledTax;
begin
    frmAdjustBilledTax := tfrmAdjustBilledTax.Create(nil);
    try
       if (ComponentType = 'DISB') then
       begin
          frmAdjustBilledTax.qryBilledTaxOld.SQL.Text := 'SELECT NALLOC AS UNIQUEID, BILLED_TAX_AMOUNT FROM ALLOC WHERE NALLOC = ' + IntToStr(UNIQUEID);
          frmAdjustBilledTax.qryType.SQL.Text := 'SELECT ''DISB'' AS C_TYPE FROM DUAL';
       end
       else if (ComponentType = 'SUND') then
       begin
          frmAdjustBilledTax.qryBilledTaxOld.SQL.Text := 'SELECT NSUNDRY AS UNIQUEID, TAX AS BILLED_TAX_AMOUNT FROM SUNDRY WHERE NSUNDRY = ' + IntToStr(UNIQUEID);
          frmAdjustBilledTax.qryType.SQL.Text := 'SELECT ''SUND'' AS C_TYPE FROM DUAL';
       end
       else
       begin
         raise Exception.Create('Unsupported Bill Component Type ' + ComponentType);
       end;
       frmAdjustBilledTax.qryBilledTax.SQL.Text := frmAdjustBilledTax.qryBilledTaxOld.SQL.Text;
       frmAdjustBilledTax.qryBilledTaxOld.Open;
       frmAdjustBilledTax.qryBilledTax.Open;
       frmAdjustBilledTax.qryBilledTax.Edit;
       frmAdjustBilledTax.qryType.Open;
       Result := frmAdjustBilledTax.ShowModal = mrOK;
    finally
      frmAdjustBilledTax.Free;
    end;
end;


procedure TfrmAdjustBilledTax.btnCancelClick(Sender: TObject);
begin
    fCancelClicked  := True;
end;


procedure TfrmAdjustBilledTax.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if (fCancelClicked) then
        exit;
    if (qryType.FieldByName('C_TYPE').AsString = 'DISB') then
        qryBilledTax.FieldByName('BILLED_TAX_AMOUNT').AsCurrency := edBilledTax.Value * -1
    else
        qryBilledTax.FieldByName('BILLED_TAX_AMOUNT').AsCurrency := edBilledTax.Value;
    qryBilledTax.Post;
end;

procedure TfrmAdjustBilledTax.FormCreate(Sender: TObject);
begin
   fCancelClicked  := False;
end;

procedure TfrmAdjustBilledTax.FormShow(Sender: TObject);
begin
    if (qryType.FieldByName('C_TYPE').AsString = 'DISB') then
    begin
        edOldBilledTax.Value := qryBilledTaxOld.FieldByName('BILLED_TAX_AMOUNT').AsCurrency *-1;
        edBilledTax.Value := qryBilledTax.FieldByName('BILLED_TAX_AMOUNT').AsCurrency *-1;
    end
    else
    begin
        edOldBilledTax.Value := qryBilledTaxOld.FieldByName('BILLED_TAX_AMOUNT').AsCurrency;
        edBilledTax.Value := qryBilledTax.FieldByName('BILLED_TAX_AMOUNT').AsCurrency;
    end;
end;

end.
