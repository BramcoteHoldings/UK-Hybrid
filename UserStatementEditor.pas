unit UserStatementEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  Buttons, ExtCtrls, DBCtrls, Db, OracleUniProvider, Uni, DBAccess, MemDS, Mask;

type
  TfrmUserStatementEditor = class(TForm)
    Panel1: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    dbmUserStatement: TDBMemo;
    qryUserStatements: TUniQuery;
    dsUserStatements: TUniDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText3: TDBText;
    Panel4: TPanel;
    Label4: TLabel;
    dbeDataFile: TDBEdit;
    btnTestStatement: TBitBtn;
    qryTestStatement: TUniQuery;
    qryUserStatementsCODE: TStringField;
    qryUserStatementsDESCRIPTION: TStringField;
    qryUserStatementsSTATEMENTTYPE: TStringField;
    qryUserStatementsSTOREDSTATEMENT: TMemoField;
    qryUserStatementsWORKFLOWTYPE: TStringField;
    qryUserStatementsDATAFILE: TStringField;
    qryUserStatementsROWID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbmUserStatementKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnTestStatementClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
{
  Modified 25.10.2002 GG
  Removed compiler hint

    FOldFile: string;
}
  public
    procedure ShowStatement(Code: string);
  end;

var
  frmUserStatementEditor: TfrmUserStatementEditor;

implementation

{$R *.DFM}

uses
  MiscFunc, AxiomData, SQLDesigner;

procedure TfrmUserStatementEditor.ShowStatement(Code: string);
begin
  qryUserStatements.Open;
  if qryUserStatements.Locate('CODE', Code, []) then
  begin
    if(ShowModal() <> mrOk) then
      qryUSerStatements.Cancel();
  end else
    MessageDlg('An error occurred! '+#13+#10+
               'Please contact your administrator and report this situation.', mtError, [mbOK], 0);
end;

procedure TfrmUserStatementEditor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult = mrOk then
  begin
    if qryUserStatements.Modified then
      qryUserStatements.Post;
  end
  else
    qryUserStatements.Cancel;
  Action := caFree;
end;

procedure TfrmUserStatementEditor.dbmUserStatementKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    btnCancel.Click;
end;

procedure TfrmUserStatementEditor.btnTestStatementClick(Sender: TObject);
begin
  with TfrmSQLDesigner.Create(Self) do
  begin
    SQLEditor.Lines := dbmUserStatement.Lines;
    ShowModal;
    if EditSave then
      dbmUserStatement.Lines := SQLEditor.Lines;
  end;
end;

procedure TfrmUserStatementEditor.btnOKClick(Sender: TObject);
begin
  (* check to see if there are any illegal words in the statement *)
  if IsIllegalStatement(dbmUserStatement.Text) then
  begin
    MessageDlg('Illegal SQL Statement!', mtError, [mbOK], 0);
    ModalResult := mrNone;
    Exit;
  end;

  (* Test the statement to see if it works *)
  with qryTestStatement do
  begin
    SQL.Text := dbmUserStatement.Text;
    try
      Open;
      if Pos('.', qryUserStatements.FieldByName('DATAFILE').AsString) <> 0 then
      begin
        MessageDlg('Data File name must not include the file extension!', mtError, [mbOK], 0);
        ModalResult := mrNone;
      end;
      if (qryUserStatements.Modified) and (Self.ModalResult = mrCancel) then
        if MessageDlg('You have made changes are you sure you want to exit?', mtInformation, [mbYes, mbNo], 0) = mrNo then
          ModalResult := mrNone;
    except
      // statememt failed
      on E:Exception do
      begin
        MessageDlg('The SQL Statement you have entered is invalid!'+#13#10#13#10+
          E.Message, mtError, [mbOK], 0);
        ModalResult := mrNone;
      end;
    end;
    ModalResult := mrOk;
  end;
end;

end.
