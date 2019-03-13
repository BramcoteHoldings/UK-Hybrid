unit DataFieldMemoEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TfrmDataFieldMemoEdit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    meFieldData: TMemo;
    BitBtn1: TBitBtn;
    btnCancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataFieldMemoEdit: TfrmDataFieldMemoEdit;

implementation

{$R *.DFM}

procedure TfrmDataFieldMemoEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
