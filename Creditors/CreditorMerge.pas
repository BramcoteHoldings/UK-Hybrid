unit CreditorMerge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, MemDS, DBAccess, OracleUniProvider, Uni, Grids, DBGrids;

type
  TfrmCreditorMerge = class(TForm)
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    lblText: TLabel;
    gbMergeInto: TGroupBox;
    Label1: TLabel;
    qryCreditor: TUniQuery;
    btnFind: TBitBtn;
    qryMergingCreditor: TUniQuery;
    lblMergingCreditor: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnFindClick(Sender: TObject);
  private
    { Private declarations }
    FNCreditor: Integer;
    FMergingNCreditor: Integer;
    FCreditorFound: Boolean;
    procedure SetNCreditor(AValue: Integer);
  public
    { Public declarations }
    property NCreditor: Integer write SetNCreditor;
    property MergingNCreditor: Integer read FMergingNCreditor;
    property CreditorFound: Boolean read FCreditorFound write FCreditorFound;
  end;

implementation

uses AxiomData, CreditorSearch, citfunc;

{$R *.dfm}

procedure TfrmCreditorMerge.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult <> mrOK then
    ModalResult:= mrCancel
end;

procedure TfrmCreditorMerge.SetNCreditor(AValue: Integer);
const
  CREDITOR_TEXT = 'You have chosen to merge Creditor #%d (%s) into another Creditor';
var
  CreditorName: string;
begin
  FNCreditor:= AValue;
  CreditorName:= '';
  try
    qryCreditor.ParamByName('NCREDITOR').AsInteger:= FNCreditor;
    qryCreditor.Open;
    CreditorName:= qryCreditor.FieldByName('NAME').AsString;
  finally
    qryCreditor.Close
  end;
  if CreditorName = '' then
  begin
    FCreditorFound:= False;
    MessageDlg('Cannot find the creditor you have selected', mtWarning, [mbOK], 0);
  end
  else
  begin
    FCreditorFound:= True;
    lblText.Caption:= Format(CREDITOR_TEXT, [FNCreditor, CreditorName])
  end
end;

procedure TfrmCreditorMerge.btnFindClick(Sender: TObject);
begin
  // Find the Creditor into which this creditors history will be merged.
  if not FormExists(frmCreditorSearch) then
    Application.CreateForm(TfrmCreditorSearch, frmCreditorSearch);
  if frmCreditorSearch.ShowModal = mrOk then
  begin
    if frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger <> FNCreditor then
    begin
      FMergingNCreditor:= frmCreditorSearch.qryCreditors.FieldByName('NCREDITOR').AsInteger;
      qryMergingCreditor.ParamByName('NCREDITOR').AsInteger:= FMergingNCreditor;
      qryMergingCreditor.Open;
      lblMergingCreditor.Caption:= Format('%d - %s',
                                          [qryMergingCreditor.FieldByName('NCREDITOR').AsInteger,
                                           qryMergingCreditor.FieldByName('NAME').AsString]);
      qryMergingCreditor.Close;
      
      btnOK.Enabled:= True
    end
    else
    begin
      MessageDlg('You cannot merge a creditor into itself', mtError, [mbOK], 0);
      FMergingNCreditor:= 0;
      btnOK.Enabled:= False
    end
  end
end;

end.
