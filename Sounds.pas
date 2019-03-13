unit Sounds;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Db, OracleUniProvider, Uni,
  DBAccess, MemDS, dxBar, cxClasses;

type
  TfrmSounds = class(TForm)
    Label1: TLabel;
    qrySounds: TUniQuery;
    dsSounds: TUniDataSource;
    dbtbCode: TDBText;
    Label2: TLabel;
    dbtbPath: TDBEdit;
    dbnavSounds: TDBNavigator;
    dlgOpen: TOpenDialog;
    btnOpen: TBitBtn;
    qryInsertSounds: TUniQuery;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSounds: TfrmSounds;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}

procedure TfrmSounds.FormShow(Sender: TObject);
begin
  with qrySounds do
  begin
    Close;
    ParamByName('P_UserID').AsString := dmAxiom.UserID;
    Prepare;
    Open;
    if IsEmpty then
    begin
      Close;
      SQL.Text := 'SELECT S.ROWID, S.* FROM SOUNDS S WHERE S.USERID IS NULL';
      Prepare;
      Open;
      if IsEmpty then
      begin
        MsgErr('No Sound Effects defined.');
//        Self.Close;
      end
      else
      begin
        // Create some sound effects for this user
        qryInsertSounds.ParamByName('USERID').AsString := dmAxiom.UserID;
        qryInsertSounds.ExecSQL;
        Close;
        SQL.Text := 'SELECT S.ROWID, S.* FROM SOUNDS S WHERE S.USERID = ' + QuotedStr(dmAxiom.UserID) + ' ORDER BY S.CODE';
        Open;
      end;
    end;
  end;
end;


procedure TfrmSounds.btnOpenClick(Sender: TObject);
begin
  if dlgOpen.Execute then
  begin
    qrySounds.Edit;
    qrySounds.FieldByName('PATH').AsString := dlgOpen.FileName;
    qrySounds.Post;
  end;
end;

procedure TfrmSounds.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrySounds.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmSounds.dxBarButton2Click(Sender: TObject);
begin
   if qrySounds.Modified then
   begin
      if MessageDlg('Are you sure you want to cancel updates?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         qrySounds.Cancel
      else
         Exit;
  end;
  Self.Close;
//  RemoveFromDesktop(Self);
end;

procedure TfrmSounds.dxBarButton1Click(Sender: TObject);
begin
   if qrySounds.Modified then
      qrySounds.Post;
   Self.Close;
//   RemoveFromDesktop(Self);
end;

end.

