unit TextEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit,DB, cxGraphics,
  cxLookAndFeels, Menus;

type
  TfrmTextEdit = class(TForm)
    cxCancel: TcxButton;
    cxOk: TcxButton;
    cxText: TcxDBTextEdit;
    procedure cxOkClick(Sender: TObject);
    procedure cxCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTextEdit: TfrmTextEdit;

implementation

{$R *.dfm}

procedure TfrmTextEdit.cxOkClick(Sender: TObject);
begin
   if cxText.DataBinding.DataSource.DataSet.State in [dsEdit,dsInsert] then
        cxText.DataBinding.DataSource.DataSet.Post;
     
end;

procedure TfrmTextEdit.cxCancelClick(Sender: TObject);
begin
        cxText.DataBinding.DataSource.DataSet.Cancel; 
end;

end.
