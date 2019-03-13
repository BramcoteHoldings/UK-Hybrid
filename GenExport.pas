unit GenExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxLabel, StdCtrls, cxButtons, cxTextEdit,
  cxRadioGroup, cxGroupBox, JvDialogs;

type
  TfrmExport = class(TForm)
    cxGroupBox1: TcxGroupBox;
    rbClipboard: TcxRadioButton;
    rbFile: TcxRadioButton;
    edFileName: TcxTextEdit;
    btnFileSelect: TcxButton;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    JvOpenDialog: TJvOpenDialog;
    procedure rbClipboardClick(Sender: TObject);
    procedure btnFileSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExport: TfrmExport;

implementation

{$R *.dfm}

procedure TfrmExport.rbClipboardClick(Sender: TObject);
begin
   edFileName.Enabled := rbFile.Checked;
   btnFileSelect.Enabled := rbFile.Checked;
end;

procedure TfrmExport.btnFileSelectClick(Sender: TObject);
begin
   with JvOpenDialog do
   begin
      if Execute then
      begin
         edFileName.Text := FileName;
      end;
   end;
end;

end.
