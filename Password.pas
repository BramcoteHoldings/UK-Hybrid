unit Password;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, MemDS, OracleUniProvider, Uni, DBAccess,
  cxLookAndFeelPainters, cxButtons, cxMaskEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxGraphics, cxLookAndFeels, Menus;

type
  TfrmPassword = class(TForm)
    lblPassword: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryPassword: TUniQuery;
    tbNewPassword: TcxTextEdit;
    tbConfirm: TcxMaskEdit;
    pbSave: TcxButton;
    pbClose: TcxButton;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pbCloseClick(Sender: TObject);
    procedure pbSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FUser: string;
  public
    { Public declarations }
    property  AUser: string read FUser write FUser;
    procedure LoadEmp(sCode : string);
  end;

var
  frmPassword: TfrmPassword;

implementation

{$R *.DFM}

uses
  AxiomData, MiscFunc, Desktop;

procedure TfrmPassword.btnSaveClick(Sender: TObject);
var
   sqlStatement: string;
begin
//  if tbOldPassword.Text = qryPassword.FieldByName('PASSWORD').AsString then
//  begin
    if tbNewPassword.Text = tbConfirm.Text then
    begin
      with dmAxiom.qryUserChangePassword do
      begin
         sqlStatement := '';
         SQL.Clear;
         sqlStatement := 'ALTER USER '+qryPassword.FieldByName('USER_NAME').AsString+' IDENTIFIED BY '+ tbNewPassword.Text;
         SQL.Add(sqlStatement);
         try
            Execute;
            MessageDlg('Password changed successfully', mtInformation, [mbOK], 0);
            Self.Close;
         except
            on E: Exception do MessageDlg(E.Message, mtError, [mbOK], 0);
         end;
      end;
    end
    else
    begin
      MsgErr('Password confirmation failed');
      tbNewPassword.Text := '';
      tbConfirm.Text := '';
      tbNewPassword.SetFocus;
    end;
{  end
  else
  begin
    MsgErr('Incorrect old password');
    tbOldPassword.Text := '';
    tbOldPassword.SetFocus;
  end;  }
end;

procedure TfrmPassword.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPassword.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryPassword.Close;
  Self.Release;
end;

procedure TfrmPassword.LoadEmp(sCode : string);
begin
   try
      with qryPassword do
      begin
         Close;
         ParamByName('CODE').AsString := sCode;
         Open;
         if not IsEmpty then
         begin
            lblPassword.Caption := 'Change password for ' + FieldByName('NAME').AsString;
            ShowModal;
         end
         else
            Self.Close;
      end;
   except
      ;
   end;
end;

procedure TfrmPassword.pbCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPassword.pbSaveClick(Sender: TObject);
var
   sqlStatement: string;
   LUser: string;
begin
   if AUser <> '' then
      LUser := AUser
   else
      LUser := qryPassword.FieldByName('USER_NAME').AsString;

   if tbNewPassword.Text = tbConfirm.Text then
   begin
      dmAxiom.procAlterUser.ParamByName('username').AsString := LUser;
      dmAxiom.procAlterUser.ParamByName('u_password').AsString := tbNewPassword.Text;
      try
         dmAxiom.procAlterUser.Execute;
         dmAxiom.procAlterUser.Close;
         MessageDlg('Password changed successfully', mtInformation, [mbOK], 0);
         Self.Close;
      except
         on E: Exception do MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
{      with dmAxiom.qryUserChangePassword do
      begin
         sqlStatement := '';
         SQL.Clear;
         sqlStatement := 'ALTER USER '+qryPassword.FieldByName('USER_NAME').AsString+' IDENTIFIED BY '+ tbNewPassword.Text;
         SQL.Add(sqlStatement);
         try
            Execute;
            MessageDlg('Password changed successfully', mtInformation, [mbOK], 0);
            Self.Close;
         except
            on E: Exception do MessageDlg(E.Message, mtError, [mbOK], 0);
         end;
      end;  }
   end
   else
   begin
      MsgErr('Password confirmation failed');
      tbNewPassword.Text := '';
      tbConfirm.Text := '';
      tbNewPassword.SetFocus;
   end;
end;

procedure TfrmPassword.FormCreate(Sender: TObject);
begin
   frmDesktop.dxBarWindowList.Items.AddObject(Self.Caption, Self);
end;

procedure TfrmPassword.FormDestroy(Sender: TObject);
begin
   with frmDesktop.dxBarWindowList.Items do
      Delete(IndexOfObject(Self));
end;

end.
