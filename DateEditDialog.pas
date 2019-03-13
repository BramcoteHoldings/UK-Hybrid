unit DateEditDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, ComCtrls;

type
  TfmDateEditDialog = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Panel1: TPanel;
    MonthCalendar: TMonthCalendar;
  private
    function GetDate: TDate;
    procedure SetDate(const Value: TDate);
    { Private declarations }
  public
    { Public declarations }
    property Date: TDate read GetDate write SetDate;
  end;


function EditDateDialog(AOwner: TComponent; var ADate: TDate): Boolean;

implementation

{$R *.dfm}

{ TfmDateEditDialog }
function EditDateDialog(AOwner: TComponent; var ADate: TDate): Boolean;
var
  fmDateEditDialog: TfmDateEditDialog;
begin
  fmDateEditDialog := TfmDateEditDialog.Create(AOwner);
  try
    fmDateEditDialog.Date := ADate;
    Result := IsPositiveResult(fmDateEditDialog.ShowModal());
    if(Result) then
      ADate := fmDateEditDialog.Date;
  finally
    FreeAndNil(fmDateEditDialog);
  end;
end;

function TfmDateEditDialog.GetDate: TDate;
begin
  Result := MonthCalendar.Date;
end;

procedure TfmDateEditDialog.SetDate(const Value: TDate);
begin
  MonthCalendar.Date := Value;
end;

end.
