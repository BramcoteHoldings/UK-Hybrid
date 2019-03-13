unit PresentedConfirmation;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, DateUtils;

type
  TfrmPresentedConf = class(TForm)
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    GroupBox1: TGroupBox;
    lblAmount: TLabel;
    Label1: TLabel;
    lblTransDate: TLabel;
    label3: TLabel;
    dtpPresentedDate: TDateTimePicker;
    dtpDepositDate: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dtpDepositDateChange(Sender: TObject);
  private
    { Private declarations }
  public
    Amount: Double;
  end;

var
  frmPresentedConf: TfrmPresentedConf;

implementation

uses MiscFunc, AxiomData;

{$R *.DFM}

procedure TfrmPresentedConf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPresentedConf.FormShow(Sender: TObject);
begin
  lblAmount.Caption := Format('%m', [Amount]);
  lblTransDate.Caption := CN_PROGRAM_NAME + ' ' + lblTransDate.Caption;
  if (dmAxiom.AccessLevel = 0) then
    dtpDepositDate.Enabled := true
  else
    dtpDepositDate.Enabled := false;
end;

procedure TfrmPresentedConf.dtpDepositDateChange(Sender: TObject);
var
   dtDepositDate: TDateTime;
begin
   dtDepositDate := dtpDepositDate.Date - 1;
   Case DayOfTheWeek(dtDepositDate) of
      DaySaturday: dtDepositDate := dtDepositDate - 1;
      DaySunday: dtDepositDate := dtDepositDate - 2;
   End;

   dtpPresentedDate.Date := dtDepositDate;
end;

end.
