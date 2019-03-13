unit InsertTableForm;

interface

uses
  Windows, Messages, SysUtils,
  {$IFDEF DELPHI6UP}
  Variants,
  {$ENDIF}
  Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ComCtrls,
  Vcl.Samples.Spin;

type
  TfrmInsertTable = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNumberofRows: TEdit;
    edtTableWidth: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtCellSpacing: TEdit;
    edtCellPadding: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    udNumberofRows: TUpDown;
    udTableWidth: TUpDown;
    udCellPadding: TUpDown;
    udCellSpacing: TUpDown;
    Button1: TButton;
    Button2: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbxTableStyle: TComboBox;
    cbxTableClass: TComboBox;
    cbxCellClass: TComboBox;
    cbxCellStyle: TComboBox;
    udNumberofColumns: TSpinEdit;
    procedure FormClose ( Sender: TObject;var Action: TCloseAction );
  private
    { Private declarations }
    fNumberOfColumns: Integer;
    fNumberOfRows: Integer;
    fTableWidth: Integer;
    fTableClass: string;
    fTableStyle: string;
    fCellSpacing: integer;
    fCellPadding: integer;
    fCellClass: string;
    fCellStyle: string;
    function GetTableClass: string;
    function GetTableStyle: string;
    function GetCellClass: string;
    function GetCellStyle: string;
    function GetTableWidth(): integer;
    function GetNumberOfColumns(): integer;
    function GetNumberOfRows(): integer;
    function GetCellSpacing(): integer;
    function GetCellPadding(): integer;
    procedure SetTableClass ( const Value: string );
    procedure SetTableStyle ( const Value: string );
    procedure SetCellClass ( const Value: string );
    procedure SetCellStyle ( const Value: string );
    procedure SetTableWidth(iValue:integer);
    procedure SetNumberOfColumns(iValue:integer);
    procedure SetNumberOfRows(iValue:integer);
    procedure SetCellSpacing(iValue:integer);
    procedure SetCellPadding(iValue:integer);
  public
    { Public declarations }
    property TableClass: string read GetTableClass write SetTableClass;
    property TableStyle: string read GetTableStyle write SetTableStyle;
    property CellClass: string read GetCellClass write SetCellClass;
    property CellStyle: string read GetCellStyle write SetCellStyle;
    property TableWidth: integer read GetTableWidth write SetTableWidth;
    property NumberOfColumns: integer read GetNumberOfColumns write SetNumberOfColumns;
    property NumberOfRows: integer read GetNumberOfRows write SetNumberOfRows;
    property CellSpacing: integer read GetCellSpacing write SetCellSpacing;
    property CellPadding: integer read GetCellPadding write SetCellPadding;
  end;

var
  frmInsertTable: TfrmInsertTable;

implementation

{$R *.dfm}

{------------------------------------------------------------------------------}
function TfrmInsertTable.GetTableClass ( ): string;
begin
  result := cbxTableClass.Text;
end;

{------------------------------------------------------------------------------}
function TfrmInsertTable.GetTableStyle ( ): string;
begin
  result := cbxTableStyle.Text;
end;

{------------------------------------------------------------------------------}
function TfrmInsertTable.GetCellClass ( ): string;
begin
  result := cbxCellClass.Text;
end;

{------------------------------------------------------------------------------}
function TfrmInsertTable.GetCellStyle ( ): string;
begin
  result := cbxCellStyle.Text;
end;

{------------------------------------------------------------------------------}
function TfrmInsertTable.GetTableWidth(): integer;
begin
  result := fTableWidth;
end;

{------------------------------------------------------------------------------}
function TfrmInsertTable.GetNumberOfColumns(): integer;
begin
  result := fNumberOfColumns;
end;

{------------------------------------------------------------------------------}
function TfrmInsertTable.GetNumberOfRows(): integer;
begin
  result := fNumberOfRows;
end;

{------------------------------------------------------------------------------}
function TfrmInsertTable.GetCellSpacing(): integer;
begin
  result := fCellSpacing;
end;

{------------------------------------------------------------------------------}
function TfrmInsertTable.GetCellPadding(): integer;
begin
  result := fCellPadding;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.SetTableClass ( const Value: string );
begin
  cbxTableClass.Text := Value;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.SetTableStyle ( const Value: string );
begin
  cbxTableStyle.Text := Value;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.SetCellClass ( const Value: string );
begin
  cbxCellClass.Text := Value;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.SetCellStyle ( const Value: string );
begin
  cbxCellStyle.Text := Value;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.SetTableWidth(iValue: integer);
begin
  fTableWidth := iValue;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.SetNumberOfColumns(iValue: integer);
begin
  fNumberOfColumns := iValue;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.SetNumberOfRows(iValue: integer);
begin
  fNumberOfRows := iValue;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.SetCellSpacing(iValue: integer);
begin
  fCellSpacing:= iValue;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.SetCellPadding(iValue: integer);
begin
  fCellPadding:= iValue;
end;

{------------------------------------------------------------------------------}
procedure TfrmInsertTable.FormClose ( Sender: TObject;
  var Action: TCloseAction );
begin
  fNumberOfColumns := udNumberofColumns.Value;
  fNumberOfRows := udNumberofRows.Position;
  fTableWidth := udTableWidth.Position;
  fTableClass := cbxTableClass.Text;
  fTableStyle := cbxTableStyle.Text;
  fCellSpacing := udCellSpacing.Position;
  fCellPadding := udCellPadding.Position;
  fCellClass := cbxCellClass.Text;
  fCellStyle := cbxCellStyle.Text;
end;

end.

