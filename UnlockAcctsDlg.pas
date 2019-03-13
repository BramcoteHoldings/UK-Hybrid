unit UnlockAcctsDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, ComCtrls, DBCtrls;

type
  TfrmUnlockAccounts = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    dbtEntityCode: TDBText;
    dbtEntityName: TDBText;
    Label2: TLabel;
    dbtCurrentLockDate: TDBText;
    gbUnlock: TGroupBox;
    rbToDate: TRadioButton;
    rbRemove: TRadioButton;
    dtmBackTo: TDateTimePicker;
    procedure rbRemoveClick(Sender: TObject);
    procedure rbToDateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnlockAccounts: TfrmUnlockAccounts;

implementation

uses Entitys;

{$R *.dfm}

procedure TfrmUnlockAccounts.rbRemoveClick(Sender: TObject);
begin
  dtmBackTo.Enabled:= rbToDate.Checked
end;

procedure TfrmUnlockAccounts.rbToDateClick(Sender: TObject);
begin
  dtmBackTo.Enabled:= rbToDate.Checked
end;

end.
