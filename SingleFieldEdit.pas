unit SingleFieldEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TfrmSingleFieldEdit = class(TForm)
    Panel1: TPanel;
    lbFieldDesc: TLabel;
    edFieldValue: TEdit;
    pnFlag: TPanel;
    Panel3: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    cbFlag: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSingleFieldEdit: TfrmSingleFieldEdit;

implementation

{$R *.DFM}

procedure TfrmSingleFieldEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
