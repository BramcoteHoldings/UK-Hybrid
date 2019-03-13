unit ClientNoteNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TfrmClientNoteNew = class(TForm)
    lblClientName: TLabel;
    mmoNote: TMemo;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    qryClientNoteNew: TUniQuery;
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DisplayClient(iClient : integer);
  end;

var
  frmClientNoteNew: TfrmClientNoteNew;

implementation

{$R *.DFM}

uses
  AxiomData;

var
  iNClient : integer;

procedure TfrmClientNoteNew.DisplayClient(iClient : integer);
begin
  with qryClientNoteNew do
  begin
    ParamByName('NCLIENT').AsInteger := iClient;
    Open;
    if IsEmpty then
      Self.Close
    else
    begin
      lblClientName.Caption := FieldByName('SEARCH').AsString;
      iNClient := iClient;
      Self.ShowModal;
    end;
  end;
end;

procedure TfrmClientNoteNew.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmClientNoteNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryClientNoteNew.Close;
  
  Self.Release;
end;

procedure TfrmClientNoteNew.btnOKClick(Sender: TObject);
begin
  with qryClientNoteNew do
  begin
    SQL.Text := 'INSERT INTO CLIENTNOTE (CREATED, NOTES, NCLIENT) VALUES (SysDate, :NOTES, :NCLIENT)';
    ParamByName('NOTES').AsString := mmoNote.Text;
    ParamByName('NCLIENT').AsInteger := iNClient;
    ExecSQL;
  end;
  Self.Close;
end;

end.
