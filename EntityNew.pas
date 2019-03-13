unit EntityNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Mask, DBCtrls, Buttons, MemDS, OracleUniProvider, Uni, ExtCtrls,
  DBAccess;

type
  TfrmEntityNew = class(TForm)
    qryEntityInsert: TUniQuery;
    Label31: TLabel;
    Label33: TLabel;
    lblACN: TLabel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    tbCode: TEdit;
    tbName: TEdit;
    tbACN: TEdit;
    rgType: TRadioGroup;
    rgAccounting: TRadioGroup;
    lblABN: TLabel;
    tbABN: TEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function OKtoPost : boolean;
  public
    { Public declarations }
  end;

var
  frmEntityNew: TfrmEntityNew;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}

function TfrmEntityNew.OKtoPost : boolean;
var
  bOKtoPost : boolean;
  sErrorMsg : string;
begin
  bOKtoPost := True;
  sErrorMsg := '';
  if tbCode.Text = '' then
  begin
    sErrorMsg := sErrorMsg + '      Code';
    bOKtoPost := False;
  end;
  if tbName.Text = '' then
  begin
    sErrorMsg := sErrorMsg + '      Entity Name';
    bOKtoPost := False;
  end;
  if sErrorMsg <> '' then
    MsgErr('Please complete the following details before posting: ' + chr(13) + sErrorMsg);
  OKtoPost := bOKtoPost;
end;


procedure TfrmEntityNew.btnOKClick(Sender: TObject);
begin
  if OKtoPost then
  begin
    with qryEntityInsert do
    begin
      ParamByName('CODE').AsString := tbCode.Text;
      ParamByName('NAME').AsString := tbName.Text;
      ParamByName('ACN').AsString := tbACN.Text;
      ParamByName('ABN').AsString := tbABN.Text;

      case rgType.ItemIndex of
        0: ParamByName('TYPE').AsString := 'G';
        1: ParamByName('TYPE').AsString := 'C';
      end;
      case rgAccounting.ItemIndex of
        0: ParamByName('CASH_OR_ACCRUAL').AsString := 'A';
        1: ParamByName('CASH_OR_ACCRUAL').AsString := 'C';
      end;
      ExecSQL;
    end;
  end;
end;

procedure TfrmEntityNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Self.Release;
end;

procedure TfrmEntityNew.FormCreate(Sender: TObject);
begin
      if SystemString('LOCALE_NAME') <> '' then
   begin
      lblACN.Caption := 'Company No.';
      lblABN.Caption := 'LEI';
   end;
end;

end.
