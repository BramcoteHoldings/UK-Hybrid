{D5CHK*************************************************************************}
{                                                                              }
{                            RAPware Easy MAPI V3.0                            }
{                                                                              }
{                       Copyright (c) 1999, 2004 RAPWare                       }
{                                                                              }
{******************************************************************************}
unit fLogon;

interface

{$I RAPWare.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ImgList, {$IFDEF D7UP}XPMan, {$ENDIF}
  {$IFDEF VARIANTS}Variants, {$ENDIF VARIANTS}
  uRwMapiExceptions, RwMAPI_TLB, uRwMapiV3Session, ComCtrls;

type
  TFrmLogon = class(TForm)
    bvTop: TBevel;
    panTop: TPanel;
    lblFunction: TLabel;
    lblDescription: TLabel;
    lblProfile: TLabel;
    lblPassword: TLabel;
    cmbBxProfiles: TComboBox;
    edtPassword: TEdit;
    btnCancel: TButton;
    lblMAPIType: TLabel;
    cmbBxMAPIType: TComboBox;
    btnLogon: TBitBtn;
    chkBxSharedSession: TCheckBox;
    procedure btnLogonClick(Sender: TObject);
    procedure cmbBxMAPITypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FMapiSession: TRwMapiSessionV3;
  public
    { Public declarations }
    procedure Initialize(const AMapiSession: TRwMapiSessionV3; ASimpleMapiAllowed: Boolean);
  end;

  procedure ShowLogonDlg(AMapiSession: TRwMapiSessionV3; const ASimpleMAPIAllowed: Boolean = True);

implementation

{$R *.dfm}
uses
  uRwMapiV3Base
  , uRwMapiV3Utils
  , uRwSysUtils
  ;

procedure ShowLogonDlg(AMapiSession: TRwMapiSessionV3; const ASimpleMAPIAllowed: Boolean = True);
var
  Logon: TFrmLogon;
begin
  Logon := TFrmLogon.Create(nil);
  try
    Logon.Initialize(AMapiSession, ASimpleMAPIAllowed);
    Logon.ShowModal;
  finally
    Logon.Free;
  end;
end;

{ TFrmLogin }

procedure TFrmLogon.FormCreate(Sender: TObject);
begin
  {$IFDEF D7UP}
  panTop.ParentBackground := False; // Otherwise the parentcolor is not white when using windows themes
  {$ENDIF}
end;

procedure TFrmLogon.Initialize(const AMapiSession: TRwMapiSessionV3; ASimpleMapiAllowed: Boolean);
var
  MapiInfo: TRwMapiInfo;
begin
  if not ASimpleMapiAllowed then
    lblFunction.Caption := 'Login (This example does not support Simple MAPI)';
    
  FMapiSession := AMapiSession;

  // Check for the available MAPI interfaces
  //
  // If you want to use the Extended MAPI interfaces you need
  // to have an Extended MAPI compatible client like MS Outlook installed.
  //
  // If you want to use the Simple MAPI interface you need to
  // have a Simple MAPI compatible client like Outlook Express or Euroda installed
  MapiInfo := RwGetMapiInfo;

  cmbBxMAPIType.Items.Clear;
  if MapiInfo.ExtendedMAPI then
    cmbBxMAPIType.Items.Add('Extended MAPI');
  if MapiInfo.SimpleMAPI and (ASimpleMapiAllowed) then
    cmbBxMAPIType.Items.Add('Simple MAPI');

  // if the default client is Outlook we can set the default interface to Extended MAPI
  if RwSameText(MapiInfo.DefaultClient,'Microsoft Outlook') then
    cmbBxMAPIType.ItemIndex := cmbBxMAPIType.Items.IndexOf('Extended MAPI')
  else
  if cmbBxMAPIType.Items.Count > 0 then
    cmbBxMAPIType.ItemIndex := 0
  else
    cmbBxMAPIType.ItemIndex := -1;

  // Check the ItemCount of cmbBxMAPIType
  // if it is 0 it means there is no MAPI Client installed
  btnLogon.Enabled := False;
  if cmbBxMAPIType.Items.Count = 0 then
  begin
    cmbBxProfiles.Enabled := False;
    edtPassword.Enabled := False;
    cmbBxMAPIType.Enabled := False;
  end else
    cmbBxMAPITypeChange(nil);
end;

procedure TFrmLogon.cmbBxMAPITypeChange(Sender: TObject);
begin
  RwUnInitializeMapi(True); // when changing the used MAPI interface we must! unload mapi first.
  cmbBxProfiles.Clear;
  if cmbBxMAPIType.Text = 'Extended MAPI' then
  begin
    FMapiSession.LogonInfo.UseExtendedMapi := True;
    chkBxSharedSession.Enabled             := True;
    edtPassword.Enabled                    := True;
  end else
  begin
    FMapiSession.LogonInfo.UseExtendedMapi := False;
    chkBxSharedSession.Enabled             := False;
    edtPassword.Enabled                    := False;
  end;

  try
    cmbBxProfiles.Items.Text := FMapiSession.GetProfileAdmin.GetDelimitedProfiles(#13#10,False);
    cmbBxProfiles.Items.Add(''); // also add empty profilename for testing purposes
    cmbBxProfiles.ItemIndex  := cmbBxProfiles.Items.IndexOf(FMapiSession.GetProfileAdmin.DefaultProfile);
    btnLogon.Enabled := True;
  except
    on e: Exception do
      MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmLogon.btnLogonClick(Sender: TObject);
var
  OldCursor: TCursor;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    FMapiSession.LogonInfo.UseExtendedMapi    := (cmbBxMAPIType.Text = 'Extended MAPI');
    FMapiSession.LogonInfo.ProfileName        := cmbBxProfiles.Text;
    FMapiSession.LogonInfo.Password           := edtPassword.Text;
    FMapiSession.LogonInfo.ProfileRequired    := True;
    FMapiSession.LogonInfo.NewSession         := not chkBxSharedSession.Checked;
    FMapiSession.LogonInfo.ShowPasswordDialog := False;
    FMapiSession.LogonInfo.ShowLogonDialog    := True;
    FMapiSession.Active                       := True;
  finally
    Screen.Cursor := OldCursor;
  end;
  Self.ModalResult := mrOK;
end;

end.
