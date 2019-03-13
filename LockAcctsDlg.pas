unit LockAcctsDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, ComCtrls, DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxDBLabel;

type
  TfrmLockAccounts = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dtmLockDate: TDateTimePicker;
    dbtEntityCode: TcxDBLabel;
    dbtEntityName: TcxDBLabel;
    dbtCurrentLockDate: TcxDBLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLockAccounts: TfrmLockAccounts;

implementation

uses
   Entitys;

{$R *.dfm}

procedure TfrmLockAccounts.FormShow(Sender: TObject);
begin
   if dbtCurrentLockDate.Caption <> '' then
      dtmLockDate.Date := StrToDate(dbtCurrentLockDate.Caption)
   else
      dtmLockDate.Date := Now;
end;

end.
