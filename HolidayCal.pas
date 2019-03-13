unit HolidayCal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ComCtrls,
  Buttons, Grids, Calendar, cxControls, cxContainer, cxEdit, cxLabel;

const
   Months: array[1..12] of string = ('January','February','March','April','May','June','July','August','September','October','November','December');

type
  TfrmHolidays = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Calendar: TCalendar;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Label1: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHolidays: TfrmHolidays;

implementation

{$R *.dfm}

procedure TfrmHolidays.cxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmHolidays.FormShow(Sender: TObject);
begin
   Label1.Caption := Months[Calendar.Month] + ' - ' + IntToStr(Calendar.Year);
end;

procedure TfrmHolidays.cxButton3Click(Sender: TObject);
begin
   Calendar.PrevMonth;
   Label1.Caption := Months[Calendar.Month] + ' - ' + IntToStr(Calendar.Year);
end;

procedure TfrmHolidays.cxButton4Click(Sender: TObject);
begin
   Calendar.NextMonth;
   Label1.Caption := Months[Calendar.Month] + ' - ' + IntToStr(Calendar.Year);
end;

end.
