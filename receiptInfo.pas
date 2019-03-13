unit receiptInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,MiscFunc;

type
  TfrmReceiptInfo = class(TForm)
    Label1: TLabel;
    cmbBanks: TComboBox;
    btnOk: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceiptInfo: TfrmReceiptInfo;

implementation

{$R *.dfm}

procedure TfrmReceiptInfo.FormCreate(Sender: TObject);
begin
  StringPopulate(cmbBanks.items,'BANK','ACCT');
end;

procedure TfrmReceiptInfo.btnOkClick(Sender: TObject);
begin
        Self.Close;
end;

end.
