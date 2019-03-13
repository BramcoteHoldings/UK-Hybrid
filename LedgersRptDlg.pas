unit LedgersRptDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfrmLedgersDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    grpReportOn: TGroupBox;
    rbtnCreated: TRadioButton;
    rbtnSystemDate: TRadioButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fsReportDate : String;

    fOnDlgClose : TNotifyEvent;

  public
    property OnDlgClose: TNotifyEvent read fOnDlgClose write fOnDlgClose;

    property ReportDate : String read fsReportDate;

  end;

var
  frmLedgersDlg: TfrmLedgersDlg;

implementation

{$R *.dfm}

procedure TfrmLedgersDlg.CancelBtnClick(Sender: TObject);
begin
  Close;

end;

procedure TfrmLedgersDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;

  if (rbtnCreated.Checked) then
    fsReportDate := 'CreatedDate'
  else
    fsReportDate := 'SystemDate';

  if(Assigned(fOnDlgClose)) then
    fOnDlgClose(self);

end;

end.
