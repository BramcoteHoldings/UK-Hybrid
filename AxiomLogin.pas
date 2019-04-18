unit AxiomLogin;

interface

uses
  Vcl.Forms, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni,
  cxProgressBar, dxStatusBar, Vcl.Controls, Vcl.StdCtrls, cxCheckBox,
  Vcl.Buttons, System.Classes, System.IniFiles,
  System.Win.Registry, System.SysUtils, Windows, Vcl.Dialogs, Vcl.Graphics, Vcl.ComCtrls,
  cxLabel, messages, VCL.Themes, System.ConvUtils, dxGDIPlusClasses, cxImage;



type
  TfrmLogin = class(TForm)
    qryEmps: TUniQuery;
    qryVersion: TUniQuery;
    tmStart: TTimer;
    lblIniFile: TLabel;
    pbProcess: TcxProgressBar;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    lblUserID: TLabel;
    lblProcess: TLabel;
    tbUserID: TEdit;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    cbWANEnabled: TcxCheckBox;
    cbDatabase: TComboBox;
    tbPassword: TEdit;
    chkWindowsDfltStyle: TcxCheckBox;
    lblVersion: TcxLabel;
    lblCopyright: TLabel;
    cxImage1: TcxImage;
    procedure FormShow(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure tmStartTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure cbNet8PropertiesChange(Sender: TObject);
    procedure cbWANEnabledClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    FINIstartup: TINIFile;
    FStarted: Boolean;
    procedure LoadUserDesktop;
    procedure WMNCHitTest(var Msg: TWMNCHitTest) ; message WM_NCHitTest;
    procedure CreateFlatRoundRgn;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  AxiomData, MiscFunc, Desktop{, MSearch, Matters}, UOSInfo;

{$R *.DFM}

procedure TfrmLogin.WMNCHitTest(var Msg: TWMNCHitTest) ;
begin
   inherited;
   if Msg.Result = htClient then Msg.Result := htCaption;
end;

procedure ExcludeRectRgn(var Rgn: HRGN; LeftRect, TopRect, RightRect, BottomRect: Integer);
var
  RgnEx: HRGN;
begin
  RgnEx := CreateRectRgn(LeftRect, TopRect, RightRect, BottomRect);
  CombineRgn(Rgn, Rgn, RgnEx, RGN_OR);
  DeleteObject(RgnEx);
end;

procedure TfrmLogin.CreateFlatRoundRgn;
const
  CORNER_SIZE = 25;
var
  Rgn: HRGN;
begin
   with BoundsRect do
   begin
      Rgn := CreateRoundRectRgn(0, 0, Right - Left + 1, Bottom - Top + 1, CORNER_SIZE, CORNER_SIZE);
    // exclude left-bottom corner
//    ExcludeRectRgn(Rgn, 0, Bottom - Top - CORNER_SIZE div 2, CORNER_SIZE div 2, Bottom - Top + 1);
    // exclude right-bottom corner
//    ExcludeRectRgn(Rgn, Right - Left - CORNER_SIZE div 2, Bottom - Top - CORNER_SIZE div 2, Right - Left , Bottom - Top);
   end;
  // the operating system owns the region, delete the Rgn only SetWindowRgn fails
   if SetWindowRgn(Handle, Rgn, True) = 0 then
      DeleteObject(Rgn);
end;


procedure TfrmLogin.FormShow(Sender: TObject);
var
   LOptions: integer;
   i: integer;
   LTmp: string;
   LregAxiom: TRegistry;
   LregOracle: TRegistry;
   LdtFile : TDateTime;
   LDefault: string;
   nDefault,
   FileDate: integer;
begin
   FStarted := True;

   try
      FileDate := FileAge(Application.EXEName);
      if FileDate > -1 then
         LdtFile := FileDateToDateTime(FileDate);
   except
     on EConversionError do
        LdtFile := Now();
   end;

   Caption := CN_PROGRAM_NAME + ' Log in ';

//   if dmAxiom.Version = '0.0.0' then
//      lblVersion.Caption := CN_PROGRAM_NAME + '  (' + FormatDateTime('dd/mm/yyyy hh:mm', LdtFile) + ')'
//   else
   try
      lblVersion.Caption := CN_PROGRAM_NAME + ' version ' + dmAxiom.GetBuildInfo + '  (' + FormatDateTime('dd/mm/yyyy hh:mm', LdtFile) + ')';
   except
      on EConversionError do
         lblVersion.Caption := CN_PROGRAM_NAME + ' version ' + dmAxiom.GetBuildInfo + '  (' + FormatDateTime('dd/mm/yyyy hh:mm', Now()) + ')';
   end;

   if FileExists(ExtractFilePath(Application.EXEName) + 'Insight.INI') then
     lblIniFile.Caption := ExtractFilePath(Application.EXEName) + 'Insight.INI'
   else
     lblIniFile.Caption := ExtractFilePath(Application.EXEName) + 'Axiom.INI';

   FINIstartup := TINIFile.Create(lblIniFile.Caption);
   dmAxiom.RegistryRoot := FINIstartup.ReadString('Main', 'RegistryRoot', 'Software\Colateral\Axiom');
   LOptions := StrToInt(FINIstartup.ReadString('Main', 'Options', '0'));

   dmAxiom.USE_ACTIVE_DIRECTORY := FINIstartup.ReadString('Main', 'ActiveDir', 'N');

   cbDatabase.Items.Clear;
   for i := 1 to LOptions do
   begin
      LTmp := FINIstartup.ReadString('Option' + IntToStr(i), 'Name', '');
      if LTmp <> '' then
        cbDatabase.Items.Add(LTmp);
   end;
   // find default database if any
   i := 1;
   while (LDefault = '') and (i < LOptions + 1) do
   begin
      LDefault := FINIstartup.ReadString('Option' + IntToStr(i),'Default', '');
      if LDefault = 'Y' then
         nDefault:= i
      else
         nDefault := -1;
      inc(i);
   end;

   // Grab the last used database
   LregAxiom := TRegistry.Create(KEY_READ OR $0200);
   try
//      LregAxiom.RootKey := HKEY_LOCAL_MACHINE;
      LregAxiom.RootKey := HKEY_CURRENT_USER;
      LregAxiom.OpenKey(dmAxiom.RegistryRoot + '\Database', True);

      if nDefault <> -1 then
         cbDatabase.ItemIndex := (nDefault - 1)
      else
         cbDatabase.ItemIndex := StrToIntDef(LregAxiom.ReadString('LastOption'), 0);

//      try
//         cbWANEnabled.Checked := LregAxiom.ReadBool('WANEnabled');
//      except
      dmAxiom.WANEnabled := False;
//      end;

      dmAxiom.NetConnection := LregAxiom.ReadString('Net');
      if dmAxiom.NetConnection = '' then
         dmAxiom.NetConnection := 'Y';
      tbUserID.Text := LregAxiom.ReadString('User Name');
      if tbUserID.Text <> '' then
         tbPassword.SetFocus;
   finally
     LregAxiom.Free;
   end;

//   dmAxiom.WANEnabled := cbWANEnabled.Checked;
   // Grab the last used database
   LregOracle := TRegistry.Create(KEY_READ OR $0200);
   try
     LregOracle.RootKey := HKEY_LOCAL_MACHINE;
//     LregOracle.RootKey := HKEY_CURRENT_USER;
     LregOracle.OpenKey('\SOFTWARE\ORACLE', True);
   finally
     LregOracle.Free;
   end;
end;

procedure TfrmLogin.FormClick(Sender: TObject);
begin
  lblINIFile.Visible := True;
end;

procedure TfrmLogin.tmStartTimer(Sender: TObject);
begin
  tmStart.Enabled := False;
  if ParamStr(1) = '-autologin' then
  begin
    Visible := False;
    if ((ParamStr(2) = '-u') or (ParamStr(2) = '-user')) and ((ParamStr(4) = '-p') or
      (ParamStr(4) = '-password')) then
    begin
      tbUserID.Text := ParamStr(3);
      tbPassword.Text := ParamStr(5);
      if (ParamStr(6) = '-d') or (ParamStr(6) = '-database') then
        cbDatabase.ItemIndex := cbDatabase.Items.IndexOf(ParamStr(7));
      btnOk.Click;
    end;
  end;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if FStarted then
  begin
    tmStart.Enabled := False;
    FStarted := False;
  end;
end;

procedure TfrmLogin.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
   try
      if Button = mbLeft then
      begin
         ReleaseCapture;
         Perform( wm_SysCommand, sc_DragMove, 0 );
//         SendMessage(frmLogin.Handle, WM_SYSCOMMAND, 61458, 0) ;
      end;
   except
   //
   end;
end;

procedure TfrmLogin.FormPaint(Sender: TObject);
begin
//   Canvas.Pen.Color := clBlack;
//   Canvas.Pen.Width := 1;
//   Canvas.RoundRect(0, 0, ClientWidth, ClientHeight, 40, 40);
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FINIStartUp.Free;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
var
   regn: HRGN;
begin
//   Self.Borderstyle := bsNone;
//   regn := CreateRoundRectRgn(0, 0,ClientWidth,ClientHeight,40,40);
//   SetWindowRgn(Self.Handle, regn, True);
   BorderStyle := bsNone;
   CreateFlatRoundRgn;
   lblCopyright.Caption := CN_COPYRIGHT;
end;

procedure TfrmLogin.btnOKClick(Sender: TObject);
var
  LregAxiom: TRegistry;
  slRow: TStringList;
  dtValidDate,
  LdtFile: TDateTime;
  FileDate: integer;
  NetConnMethod,
  NLSCharSet,
  TNSServer: string;
begin
   ModalResult := mrNone;
   try
     lblProcess.Visible := True;
     lblProcess.Caption := 'Connecting.  Please wait....';
     Application.ProcessMessages;
     dmAxiom.uniInsight.Disconnect();
     NetConnMethod := UpperCase(FINIstartup.ReadString('Option' + IntToStr(cbDatabase.ItemIndex + 1), 'Net', 'Y'));
     NLSCharSet := FINIstartup.ReadString('Option' + IntToStr(cbDatabase.ItemIndex + 1), 'DBCharSet', '');
     dmAxiom.uniInsight.SpecificOptions.Values['Charset'] := NLSCharSet;
     if ( NetConnMethod = 'Y') then
     begin
        dmAxiom.uniInsight.SpecificOptions.Values['Direct'] := 'True';
        dmAxiom.uniInsight.Server := FINIstartup.ReadString('Option' + IntToStr(cbDatabase.ItemIndex + 1), 'ServerName', '');
//       MsgInfo(dmAxiom.uniInsight.Server+'1');
     end
     else
     begin
       slRow := TStringList.Create;
       dmAxiom.uniInsight.SpecificOptions.Values['Direct'] := 'False';
       Split(FINIstartup.ReadString('Option' + IntToStr(cbDatabase.ItemIndex + 1), 'ServerName', ''),':' , slRow);
       TNSServer := FINIstartup.ReadString('Option' + IntToStr(cbDatabase.ItemIndex + 1), 'Name', '');
       try
         dmAxiom.uniInsight.Server := TNSServer;  //slRow[2];
//         MsgInfo(slRow[2]);
//         MsgInfo(dmAxiom.uniInsight.Server + '2');
       finally
          FreeAndNil(slRow);
       end;
//       dmAxiom.uniInsight.HomeName := GetOraHome;
//       dmAxiom.uniInsight.Server      := cbDatabase.Text;
     end;
 //    dmAxiom.uniInsight.Username    := FINIstartup.ReadString('Option' + IntToStr(cbDatabase.ItemIndex + 1), 'UserName', '');
 //    dmAxiom.uniInsight.Password    := FINIstartup.ReadString('Option' + IntToStr(cbDatabase.ItemIndex + 1), 'Password', '');

     dmAxiom.uniInsight.Username    := tbUserID.text;
     dmAxiom.uniInsight.Password    := tbPassword.Text;
//     MsgInfo(dmAxiom.uniInsight.Server);
     try
        dmAxiom.uniInsight.Connect();
     except

         tbPassword.Clear;
         lblProcess.Caption := 'Connection Failed.';
         Raise;
     end;
   except
//
   end;

   if dmAxiom.uniInsight.Connected then
   begin
      lblProcess.Caption := 'Connected.';
      pbProcess.Visible := True;
      pbProcess.Position := 5;
      Application.ProcessMessages;

      lblProcess.Caption := 'Updating Registry...';
      Application.ProcessMessages;
      // Save the current connection values to the registry
      LregAxiom := TRegistry.Create;
      try
//        LregAxiom.RootKey := HKEY_LOCAL_MACHINE;
        LregAxiom.RootKey := HKEY_CURRENT_USER;
        LregAxiom.Access := KEY_SET_VALUE;
        LregAxiom.OpenKey(dmAxiom.RegistryRoot+'\Database', True);
        LregAxiom.WriteString('Server Name', dmAxiom.uniInsight.Server);
        LregAxiom.WriteString('User Name',   dmAxiom.uniInsight.Username);
        LregAxiom.WriteString('Password',    dmAxiom.uniInsight.Password);
        LregAxiom.WriteString('LastOption',  IntToStr(cbDatabase.ItemIndex));
        if not LregAxiom.ValueExists('Net') then
           LregAxiom.WriteString('Net',  NetConnMethod);
//        LregAxiom.WriteBool('WANEnabled',  cbWANEnabled.Checked );

//        if cbNet8.Checked {dmAxiom.uniInsight.Options.Net} then
{          LregAxiom.WriteString('Net', 'N')
        else
          LregAxiom.WriteString('Net', 'Y');
}

        lblProcess.Caption := 'Creating background database connections...';
        pbProcess.Position := 10;
        Application.ProcessMessages;
        if (FINIstartup.ReadString('Option' + IntToStr(cbDatabase.ItemIndex + 1), 'Net', '') = 'N') then
           dmAxiom.orsAxiom.Options.Direct := False
        else
           dmAxiom.orsAxiom.Options.Direct := True;
        dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
        dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
        dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
        dmAxiom.orsAxiom.Connect;

        lblProcess.Caption := 'Gathering Database Instance name...';
        Application.ProcessMessages;
        { added mgd 3/2/2003 to allow bills to connect to correct database when testing }
        dmAxiom.procGetInstanceName.Execute;
        dmAxiom.InstanceName := dmAxiom.procGetInstanceName.ParamByName('RESULT').AsString;
        dmAxiom.procGetInstanceName.Close;
        try
          LregAxiom.WriteString('Instance', dmAxiom.InstanceName);
    //      LregAxiom.WriteString('Instance', dmAxiom.qryTmp.FieldByName('INSTANCE_NAME').AsString);
        finally
          dmAxiom.qryTmp.Close;
        end;

        lblProcess.Caption := 'Verifying your security level...';
        pbProcess.Position := 15;
        Application.ProcessMessages;
        LregAxiom.CloseKey;
        LregAxiom.OpenKey(dmAxiom.RegistryRoot, True);
        // Instead of writing userId entered in text field, obtain employee code
        // LregAxiom.WriteString('User', UpperCase(tbUserID.Text));

//        dmAxiom.WANEnabled := cbWANEnabled.Checked;
        qryEmps.Close;
        qryEmps.ParamByName('P_Code').AsString     := Uppercase(tbUserID.Text);
        qryEmps.Open;
        if qryEmps.IsEmpty then
        begin
          MsgErr('You have not been set up as an Insight user.  Please contact your administrator!');
          tbPassword.SetFocus;
          Exit;
        end;
        dmAxiom.Entity := qryEmps.FieldByName('ENTITY').AsString;
        dmAxiom.UserID := qryEmps.FieldByName('CODE').AsString;
        dmAxiom.UserPassword := dmAxiom.uniInsight.Password;

        // Instead of writing userId entered in text field, obtain employee code
        LregAxiom.WriteString('User', UpperCase(dmAxiom.UserID));
      finally
        LregAxiom.Free;
      end;
{ 4/10/2004 TH - Moved to loop above
      dmAxiom.WANEnabled := cbWANEnabled.Checked;
      qryEmps.Close;
      qryEmps.ParamByName('P_Code').AsString     := Uppercase(tbUserID.Text);
    //  qryEmps.ParamByName('P_Password').AsString := Uppercase(tbPassword.Text);
      qryEmps.Open;
      if qryEmps.IsEmpty then
      begin
    //    MsgErr('You have entered an incorrect User Name/Password combination!');
        MsgErr('You have not been set up as an Axiom user.  Please contact your administrator!');
        tbPassword.SetFocus;
        Exit;
      end;
      dmAxiom.UserID := qryEmps.FieldByName('code').AsString;
}
      dtValidDate := SystemDate('valid_until');

      qryVersion.Open;
      try

         if (trim(qryVersion.FieldByName('VERSION').AsString) <> trim(dmAxiom.MajorVersion)) then
         begin
           if MsgWarn(CN_PROGRAM_NAME + ' program is version ' + dmAxiom.MajorVersion +
                      #13#10'Database version is ' + qryVersion.FieldByName('VERSION').AsString
                      + #13#10#13#10'Errors may arise. Do you want to continue?') = mrNo then
           begin
             Application.Terminate;
             Exit;
           end;
         end;


         if (qryVersion.FieldByName('PATCH_VERSION').AsString <> PATCH_VERSION) then
         begin
            if MsgWarn(CN_PROGRAM_NAME + ' needs Database Script Version ' + PATCH_VERSION +
                   #13#10'Current Database Script Version is '+ qryVersion.FieldByName('PATCH_VERSION').AsString+'.'
                   + #13#10#13#10' Do you want to continue (ERRORS may arise)?') = mrNo then
            begin
               Application.Terminate;
               Exit;
            end;
         end;
      finally
        qryVersion.Close;
      end;


      dmAxiom.qryTmp.SQL.Clear;
      dmAxiom.qryTmp.SQL.Text := 'SELECT SYSDATE AS SERVER_DATE FROM DUAL';
      dmAxiom.qryTmp.Open;
      try
        FileDate := FileAge(Application.EXEName);
         if FileDate > -1 then
            LdtFile := FileDateToDateTime(FileDate);
        if (dtValidDate <> 0) or ((LdtFile + 365) < now) then
         begin
            if Trunc(dmAxiom.qryTmp.FieldByName('SERVER_DATE').AsDateTime) > trunc(dtValidDate) then
            begin
               MessageDlg('Your version of '+CN_PROGRAM_NAME+' is not valid! '#13#10#13#10+
               'Please contact BHL Software on +61 413 700 200'#13#10+
               'or email support@bhl.com.au.', mtError, [mbOK], 0);
               Application.Terminate;
               Exit;
            end;
        end;

        if Trunc(dmAxiom.qryTmp.FieldByName('SERVER_DATE').AsDateTime) <> Trunc(Date) then
        begin
          MessageDlg('The date and time on your machine does not match that of the Insight server '+
            'you are connecting to!'#13#10+
            '             Please contact your administrator or correct the date and time on '+
            'your machine.', mtError, [mbOK], 0);
          Application.Terminate;
          Exit;
        end;
      finally
        dmAxiom.qryTmp.Close;
      end;
      LoadUserDesktop;
      ModalResult := mrOk;
   end;
end;

procedure TfrmLogin.LoadUserDesktop;
var
  iTmp: integer;
  sTmp: string;
  sNetworkDir: string;
  regAxiom: TRegistry;
begin
//   pbProcess.Position := 0;

   // Find out where the network files are
   regAxiom := TRegistry.Create;
   try
      regAxiom.RootKey := HKEY_LOCAL_MACHINE;
      sNetworkDir := '';
      if regAxiom.OpenKey(dmAxiom.RegistryRoot, False) then
         sNetworkDir := regAxiom.ReadString('NetworkDir');
   finally
      FreeAndNil(regAxiom);
   end;

{   if dmAxiom.UseClassicDesktop = 'Y' then
   begin
      frmDesktopClassic.StatusBar.Panels[2].Text := 'Database: ' + StrUpper(pchar(dmAxiom.InstanceName));
   //   frmDesktopClassic.sbarStatus.Panels[4].Text := 'Database: ' + StrUpper(pchar(dmAxiom.InstanceName));

      pbProcess.Visible := True;
      if dmAxiom.WANEnabled then
         pbProcess.Properties.Max := 8
      else
         pbProcess.Properties.Max := 4;

      lblProcess.Caption := 'Setting Entity';
      pbProcess.Position := pbProcess.Position + 1;

      // Make sure we have an Entity defined for this user
      if dmAxiom.Entity = '' then
         dmAxiom.Entity := SettingLoadString('Desktop', 'Entity');
       if dmAxiom.Entity = '' then
       begin
         dmAxiom.qryNew.Close;
         dmAxiom.qryNew.SQL.Text := 'SELECT CODE FROM ENTITY WHERE ACTIVE = ''Y''';
         dmAxiom.qryNew.Open;
         if dmAxiom.qryNew.IsEmpty then
         begin
           MsgErr('No Entity defined. Call for help.');
           dmAxiom.qryNew.Close;
           Close;
           Exit;
         end else
           dmAxiom.Entity := dmAxiom.qryNew.FieldByName('CODE').AsString;
         dmAxiom.qryNew.Close;
       end;
       Application.ProcessMessages;
       frmDesktopClassic.qryEntitys.Open;

       frmDesktopClassic.cmbEntity.EditValue := dmAxiom.Entity;
   //    frmDesktopClassic.sbarStatus.Panels[1].Text := dmAxiom.EntityName;
       // Okay, they logged in

       dmAxiom.SoundEnabled := True;
       lblProcess.Caption := 'Setting up Desktop';
       pbProcess.Position := pbProcess.Position + 1;
       PlaySound('Open');
       sTmp := CN_PROGRAM_NAME;
   //    sTmp := SystemString('COMMUNICATIONS');
       Application.Title := sTmp;
       Application.ProcessMessages;

         frmDesktopClassic.StatusBar.Panels[3].Text := Format('Version: %s %s build %d ',
                                           [sTmp, dmAxiom.Version,
                                            dmAxiom.BuildNumber, dmAxiom.BuildFlags]);
       if dmAxiom.WANEnabled then
         frmDesktopClassic.StatusBar.Panels[4].Text := 'WAN Edition'
       else
         frmDesktopClassic.StatusBar.Panels[4].Text := 'LAN Edition';
       Application.ProcessMessages;

    //   frmDesktopClassic.Caption := sTmp + ' Workspace';

       frmDesktopClassic.Caption := Format('%s %s licensed to %s',
                                           [sTmp, dmAxiom.MajorVersion,
                                            SystemString('COMPANY')]);

       frmDesktopClassic.lvDesktop.Color := SettingLoadInteger('Desktop', 'Colour');
       iTmp := SettingLoadInteger('Desktop', 'ViewStyle');
       if TViewStyle(iTmp) = TViewStyle(Ord(vsIcon)) then
         frmDesktopClassic.popDesktopLarge.Click
       else if TViewStyle(iTmp) = TViewStyle(Ord(vsSmallIcon)) then
         frmDesktopClassic.popDesktopSmall.Click
       else if TViewStyle(iTmp) = TViewStyle(Ord(vsList)) then
         frmDesktopClassic.popDesktopList.Click
       else if TViewStyle(iTmp) = TViewStyle(Ord(vsReport)) then
         frmDesktopClassic.popDesktopDetail.Click;
       frmDesktopClassic.lvSnapshots.Color := SettingLoadInteger('Snapshot', 'Colour');
       iTmp := SettingLoadInteger('Snapshot', 'ViewStyle');
       if TViewStyle(iTmp) = TViewStyle(Ord(vsIcon)) then
         frmDesktopClassic.popSnapshotsLarge.Click
       else if TViewStyle(iTmp) = TViewStyle(Ord(vsSmallIcon)) then
         frmDesktopClassic.popSnapshotsSmall.Click
       else if TViewStyle(iTmp) = TViewStyle(Ord(vsList)) then
         frmDesktopClassic.popSnapshotsList.Click
       else if TViewStyle(iTmp) = TViewStyle(Ord(vsReport)) then
         frmDesktopClassic.popSnapshotsDetail.Click;
       iTmp := SettingLoadInteger('Desktop', 'Height');
       if iTmp > 0 then
         frmDesktopClassic.lvDesktop.Height := iTmp;

       lblProcess.Caption := 'Loading Toolbars';
       pbProcess.Position := pbProcess.Position + 1;
       frmDesktopClassic.LoadToolbars;
       Application.ProcessMessages;

       lblProcess.Caption := 'Setting Shortcuts and Snapshots';
       pbProcess.Position := pbProcess.Position + 1;
       frmDesktopClassic.DisplayIcons;
//       frmDesktopClassic.DisplayDesktopIcons;
       Application.ProcessMessages;
   end
   else
   begin  }

      if dmAxiom.UseClassicDesktop = 'Y' then
         frmDesktop.pagMainControl.ActivePageIndex := 1
      else
         frmDesktop.pagMainControl.ActivePageIndex := 0;

      frmDesktop.StatusBar.Panels[2].Text := 'Database: ' + StrUpper(pchar(dmAxiom.InstanceName));
   //   frmDesktop.sbarStatus.Panels[4].Text := 'Database: ' + StrUpper(pchar(dmAxiom.InstanceName));

      // Set up the help file
   {   if trim(dmAxiom.HelpPath) = '' then
         Self.HelpFile := sNetworkDir + 'Help\' + CN_PROGRAM_NAME + '.hlp'
      else
         Self.HelpFile := dmAxiom.HelpPath;   }

      pbProcess.Visible := True;
{      if dmAxiom.WANEnabled then
         pbProcess.Properties.Max := 8
      else
         pbProcess.Properties.Max := 7;  }

      lblProcess.Caption := 'Setting Entity';
      pbProcess.Position := pbProcess.Position + 20;

      // Make sure we have an Entity defined for this user
      if dmAxiom.Entity = '' then
         dmAxiom.Entity := SettingLoadString('Desktop', 'Entity');
       if dmAxiom.Entity = '' then
       begin
         dmAxiom.qryNew.Close;
         dmAxiom.qryNew.SQL.Text := 'SELECT CODE FROM ENTITY WHERE ACTIVE = ''Y''';
         dmAxiom.qryNew.Open;
         if dmAxiom.qryNew.IsEmpty then
         begin
           MsgErr('No Entity defined. Call for help.');
           dmAxiom.qryNew.Close;
           Close;
           Exit;
         end else
           dmAxiom.Entity := dmAxiom.qryNew.FieldByName('CODE').AsString;
         dmAxiom.qryNew.Close;
       end;
       Application.ProcessMessages;
       frmDesktop.qryEntitys.Open;

//       frmDesktop.beEntity.Text := TableString('entity', 'CODE', dmAxiom.Entity, 'NAME');
   //    frmDesktop.sbarStatus.Panels[1].Text := dmAxiom.EntityName;
       // Okay, they logged in

       dmAxiom.SoundEnabled := True;
       lblProcess.Caption := 'Setting up Desktop';
       pbProcess.Position := pbProcess.Position + 10;
       PlaySound('Open');
       sTmp := CN_PROGRAM_NAME;
   //    sTmp := SystemString('COMMUNICATIONS');
       Application.Title := sTmp;
       Application.ProcessMessages;

   {    frmDesktop.sbarStatus.Panels[2].Text := Format('%s %s build %d %slicensed to %s',
                                           [sTmp, dmAxiom.Version,
                                            dmAxiom.BuildNumber, dmAxiom.BuildFlags,
                                            SystemString('COMPANY')]);  }

       frmDesktop.StatusBar.Panels[4].Text := Format('Version: %s ',
                                           [dmAxiom.GetBuildInfo ]) + ' (' +DateTimeToStr(FileDateToDateTime(FileAge(Application.ExeName)))+')';
{       if dmAxiom.WANEnabled then
         frmDesktop.StatusBar.Panels[5].Text := 'WAN Edition'
       else
         frmDesktop.StatusBar.Panels[5].Text := 'LAN Edition';
}
       Application.ProcessMessages;

    //   frmDesktop.Caption := sTmp + ' Workspace';

       frmDesktop.Caption := Format('%s %s licensed to %s',
                                           [sTmp, dmAxiom.MajorVersion,
                                            SystemString('COMPANY')]);

       if frmDesktop.pagMainControl.ActivePageIndex = 0 then
       begin
          if SettingLoadInteger('Desktop', 'Colour') = $00000000 then
             frmDesktop.lvDesktop.Color := clWhite
          else
            frmDesktop.lvDesktop.Color := SettingLoadInteger('Desktop', 'Colour');

          if SettingLoadInteger('Snapshot', 'Colour') = $00000000 then
            frmDesktop.lvSnapshots.Color := clWhite
          else
            frmDesktop.lvSnapshots.Color := SettingLoadInteger('Snapshot', 'Colour');

          iTmp := SettingLoadInteger('Desktop', 'ViewStyle');
          if TViewStyle(iTmp) = TViewStyle(Ord(vsIcon)) then
            frmDesktop.popDesktopLarge.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsSmallIcon)) then
            frmDesktop.popDesktopSmall.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsList)) then
            frmDesktop.popDesktopList.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsReport)) then
            frmDesktop.popDesktopDetail.Click;
          iTmp := SettingLoadInteger('Snapshot', 'ViewStyle');
          if TViewStyle(iTmp) = TViewStyle(Ord(vsIcon)) then
            frmDesktop.popSnapshotsLarge.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsSmallIcon)) then
            frmDesktop.popSnapshotsSmall.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsList)) then
            frmDesktop.popSnapshotsList.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsReport)) then
            frmDesktop.popSnapshotsDetail.Click;
          iTmp := SettingLoadInteger('Desktop', 'Height');
          if iTmp > 0 then
            frmDesktop.lvDesktop.Height := iTmp;
       end
       else
       begin
          frmDesktop.lvClassicDesktop.Color := SettingLoadInteger('Desktop', 'Colour');
          iTmp := SettingLoadInteger('Desktop', 'ViewStyle');
          if TViewStyle(iTmp) = TViewStyle(Ord(vsIcon)) then
            frmDesktop.popDesktopClassicLarge.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsSmallIcon)) then
            frmDesktop.popDesktopClassicSmall.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsList)) then
            frmDesktop.popDesktopClassicList.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsReport)) then
            frmDesktop.popDesktopClassicDetails.Click;
          frmDesktop.lvClassicSnapshots.Color := SettingLoadInteger('Snapshot', 'Colour');
          iTmp := SettingLoadInteger('Snapshot', 'ViewStyle');
          if TViewStyle(iTmp) = TViewStyle(Ord(vsIcon)) then
            frmDesktop.popSnapshotsClassicLarge.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsSmallIcon)) then
            frmDesktop.popSnapshotsClassicSmall.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsList)) then
            frmDesktop.popSnapshotsClassicList.Click
          else if TViewStyle(iTmp) = TViewStyle(Ord(vsReport)) then
            frmDesktop.popSnapshotsClassicDetail.Click;
          iTmp := SettingLoadInteger('Desktop', 'Height');
          if iTmp > 0 then
            frmDesktop.lvClassicDesktop.Height := iTmp;
       end;

       lblProcess.Caption := 'Loading Toolbars';
       pbProcess.Position := pbProcess.Position + 35;
       Application.ProcessMessages;
       frmDesktop.LoadToolbars;


       lblProcess.Caption := 'Setting Shortcuts and Snapshots';
       pbProcess.Position := pbProcess.Position + 10;
       Application.ProcessMessages;
       frmDesktop.DisplayIcons;
       frmDesktop.DisplayDesktopIcons;

//    end;

    lblProcess.Caption := 'Configuring security';
    pbProcess.Position := pbProcess.Position + 10;
    Application.ProcessMessages;
    dmAxiom.SecurityLoad;

{   if dmAxiom.WANEnabled then
   begin
       lblProcess.Caption := 'Initialising forms';
       Application.ProcessMessages;
       Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
       pbProcess.Position := pbProcess.Position + 2;
       Application.ProcessMessages;
   end;
}

   lblProcess.Caption := 'Setting Help file';
   pbProcess.Position := pbProcess.Position + 10;
   Application.ProcessMessages;
//   if trim(dmAxiom.HelpPath) = '' then
   Application.HelpFile := ExtractFilePath(Application.EXEName) + 'Help\' + SystemString('COMMUNICATIONS') + '.HLP';
//   else
//      Application.HelpFile := dmAxiom.HelpPath;

   lblProcess.Caption := 'Showing Insight Workspace';
//   lblProcess.Caption := 'Showing NetLawyer Workspace';
   Application.ProcessMessages;
end;

procedure TfrmLogin.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
   try
      if Button = mbLeft then
      begin
         ReleaseCapture;
         Perform( wm_SysCommand, sc_DragMove, 0 );
//         SendMessage(frmLogin.Handle, WM_SYSCOMMAND, 61458, 0) ;
      end;
   except
   //
   end;
end;

procedure TfrmLogin.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
   try
      if Button = mbLeft then
      begin
         ReleaseCapture;
         Perform( wm_SysCommand, sc_DragMove, 0 );
//         SendMessage(frmLogin.Handle, WM_SYSCOMMAND, 61458, 0) ;
      end;
   except
   //
   end;

end;

procedure TfrmLogin.cbNet8PropertiesChange(Sender: TObject);
begin
{   if cbNet8.Checked then
      dmAxiom.NetConnection := 'N'
  else
      dmAxiom.NetConnection := 'Y'; }
end;

procedure TfrmLogin.cbWANEnabledClick(Sender: TObject);
begin
{   if cbNet8.Visible then
   begin
      cbNet8.Checked := cbWANEnabled.Checked;
      if cbNet8.Checked then
         dmAxiom.NetConnection := 'N'
      else
         dmAxiom.NetConnection := 'Y';
   end;   }
end;

procedure TfrmLogin.CreateParams(var Params: TCreateParams);
const
  CS_DROPSHADOW = $00020000;
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := WS_POPUP;
    WindowClass.Style := WindowClass.Style or CS_DROPSHADOW;
  end;
end;

end.



