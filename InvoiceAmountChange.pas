unit InvoiceAmountChange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxLabel, StdCtrls,
  cxLookAndFeelPainters, cxButtons, cxTextEdit, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  Menus, cxGraphics, cxLookAndFeels, cxCurrencyEdit;

type
  TfrmInvoiceAmountChange = class(TForm)
    lblPrinter: TcxLabel;
    cxLabel2: TcxLabel;
    btnOK: TcxButton;
    cxButton2: TcxButton;
    lblCurrentAmount: TcxLabel;
    cxLabel4: TcxLabel;
    qryChequeRenumber: TUniQuery;
    lblDate: TcxLabel;
    cxLabel7: TcxLabel;
    ceInvAmount: TcxCurrencyEdit;
    procedure btnOKClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure teCheqNoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FPrinter: string;
    FInvAmount: double;
    FNInvoice: integer;
    FChequeDate: string;
  public
    { Public declarations }
    property Printer: string read FPrinter write FPrinter;
    property InvAmount: double read FInvAmount write FInvAmount;
    property NInvoice: integer read FNInvoice write FNInvoice;
    property ChequeDate: string read FChequeDate write FChequeDate;
  end;

var
  frmInvoiceAmountChange: TfrmInvoiceAmountChange;

implementation

uses
   axiomdata, MiscFunc;
{$R *.dfm}

procedure TfrmInvoiceAmountChange.btnOKClick(Sender: TObject);
var
   lGST_Divider: real;
   lGST_Amount: double;
begin
   lGST_Divider := SystemFloat('GST_DIVIDER');
   with qryChequeRenumber do
   begin
         lGST_Amount := ceInvAmount.Value * 1/lGST_Divider;
         SQL.Clear;
         SQL.Add('update invoice set amount = -:InvAmount, credited = -:InvAmount, ');
         SQL.Add('tax = :lGST_Amount where ninvoice = :ninvoice ');
         ParamByName('invamount').AsFloat := ceInvAmount.Value;
         ParamByName('lGST_Amount').AsFloat := lGST_Amount;
         ParamByName('ninvoice').AsInteger := NInvoice;
         ParamByName('chequedate').AsDate := StrToDate(ChequeDate);
         ExecSql;

         SQL.Clear;
         SQL.Add('update alloc set refno = :cheqno where ncheque = :ncheque and trunc(created) = :chequedate');
//         ParamByName('cheqno').AsString := teCheqNo.Text;
         ParamByName('NInvoice').AsInteger := NInvoice;
         ParamByName('chequedate').AsDate := StrToDate(ChequeDate);
         ExecSql;
      dmAxiom.uniInsight.Commit;

      ModalResult := mrOK;
   end;
end;

procedure TfrmInvoiceAmountChange.cxButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmInvoiceAmountChange.FormShow(Sender: TObject);
begin
   lblDate.Caption := ChequeDate;
   lblPrinter.Caption := Printer;
   lblCurrentAmount.Caption := FloatToStr(InvAmount);
   ceInvAmount.Value := InvAmount;
end;

procedure TfrmInvoiceAmountChange.teCheqNoPropertiesChange(Sender: TObject);
begin
   btnOK.Enabled := (ceInvAmount.Value <> 0);
end;

end.
