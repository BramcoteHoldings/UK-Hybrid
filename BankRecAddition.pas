unit BankRecAddition;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxBar, cxClasses, cxCurrencyEdit,
  cxTextEdit, cxMemo, Vcl.StdCtrls, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Data.DB, MemDS, DBAccess, Uni;

const
  ttCheque = 'C';
  ttDeposit = 'D';
  // Transaction descriptions
  tdCheque = 'Cheque';
  tdDeposit = 'Deposit';

type
  TfrmBankRecAddition = class(TForm)
    Label1: TLabel;
    cbBank: TComboBox;
    lblBankName: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    memoReason: TcxMemo;
    CurrEditDeposit: TcxCurrencyEdit;
    CurrEditWithdrawal: TcxCurrencyEdit;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    pbSaveClose: TdxBarButton;
    pbSaveNew: TdxBarButton;
    edBanked: TcxDateEdit;
    Label5: TLabel;
    edReference: TcxTextEdit;
    Label6: TLabel;
    qryBankRec: TUniQuery;
    btnClose: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure CurrEditDepositPropertiesChange(Sender: TObject);
    procedure CurrEditWithdrawalPropertiesChange(Sender: TObject);
    procedure pbSaveCloseClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
    FDefBank: string;
    function OkToPost: boolean;
  public
    { Public declarations }
    property DefBank: string read FDefBank write FDefBank;
  end;

var
  frmBankRecAddition: TfrmBankRecAddition;

implementation

{$R *.dfm}

uses
   miscfunc, axiomdata;

procedure TfrmBankRecAddition.btnCloseClick(Sender: TObject);
begin
   ModalResult := mrOk;  //Close;
end;

procedure TfrmBankRecAddition.CurrEditDepositPropertiesChange(Sender: TObject);
begin
   CurrEditWithdrawal.Enabled := (CurrEditDeposit.Value = 0);
end;

procedure TfrmBankRecAddition.CurrEditWithdrawalPropertiesChange(
  Sender: TObject);
begin
   CurrEditDeposit.Enabled := (CurrEditWithdrawal.Value = 0);
end;

procedure TfrmBankRecAddition.FormShow(Sender: TObject);
begin
   AddBanks(cbBank, '');
   cbBank.ItemIndex := cbBank.Items.IndexOf(DefBank);
//   cbBank.OnClick(Self);
end;

function TfrmBankRecAddition.OkToPost: boolean;
var
   bOkToPost: boolean;
begin
   bOkToPost := True;

   Result := bOkToPost;
end;

procedure TfrmBankRecAddition.pbSaveCloseClick(Sender: TObject);
begin
   if OkToPost then
   begin
      try
         if dmAxiom.uniInsight.InTransaction = True then
            dmAxiom.uniInsight.Commit;
         dmAxiom.uniInsight.StartTransaction;
         with qryBankRec do
         begin
            Open;
            Insert;
            FieldByName('BANK').AsString := cbBank.Text;
            FieldByName('BANKED').AsDateTime := edBanked.Date;
            if (VarIsNull(edReference.EditValue) = False) then
               FieldByName('REFNO').AsString := edReference.EditValue;
            FieldByName('DESCR').AsString := memoReason.Text;
            if (CurrEditDeposit.value <> 0) then
            begin
               FieldByName('TYPE').AsString := ttDeposit;
               FieldByName('AMOUNT').AsCurrency := CurrEditDeposit.Value;
            end
            else
            begin
               FieldByName('TYPE').AsString := ttCheque;
               FieldByName('AMOUNT').AsCurrency := CurrEditWithdrawal.Value * -1;
            end;
//            ApplyUpdates;
            Post;
         end;
      finally
         dmAxiom.uniInsight.Commit;
      end;

   end;

   if (Sender as TdxBarButton).Tag = 0 then
   begin
      ModalResult := mrOk;
   end
   else
   begin
      edBanked.Clear;
      edReference.Clear;
      memoReason.Clear;
      CurrEditDeposit.Value := 0;
      CurrEditWithdrawal.Value := 0;
   end;
end;

end.
