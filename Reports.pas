unit Reports;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ComCtrls, Db, OracleUniProvider, Uni, Registry,
  DBAccess, DBCtrls, Mask, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, ShellAPI, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, cxLookAndFeels, cxLookAndFeelPainters, MemDS,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges, Axiomdata;

const

  aLetters: array[1..26] of char = ( 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');

type
  TfrmReports = class(TForm)
    dsReportsAll: TUniDataSource;
    tmrSearch: TTimer;
    qryRefreshMatView: TUniQuery;
    tempStoredProc: TUniStoredProc;
    qryReportsAll: TUniQuery;
    qryReportsMonth: TUniQuery;
    dsReportsMonth: TUniDataSource;
    qryReportsQuarterly: TUniQuery;
    dsReportsQuarterly: TUniDataSource;
    qryReportsWeekly: TUniQuery;
    dsReportsWeekly: TUniDataSource;
    Panel2: TPanel;
    btnAddReport: TBitBtn;
    btnEditReport: TBitBtn;
    btnExit: TBitBtn;
    btnPrint: TBitBtn;
    btnSnapshot: TBitBtn;
    edtSearch: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mmoDesc: TDBRichEdit;
    tbJumpTo: TEdit;
    qryNotUsed: TUniQuery;
    dsNotUsed: TUniDataSource;
    dbgrReports: TcxGrid;
    tvReports: TcxGridDBTableView;
    tvReportsNAME: TcxGridDBColumn;
    tvReportsACCESSLEVEL: TcxGridDBColumn;
    tvReportsFREQUENCY: TcxGridDBColumn;
    tvReportsMonthly: TcxGridDBTableView;
    tvReportsMonthlyNAME: TcxGridDBColumn;
    tvReportsMonthlyACCESSLEVEL: TcxGridDBColumn;
    tvReportsQuarterly: TcxGridDBTableView;
    tvReportsQuarterlyNAME: TcxGridDBColumn;
    tvReportsQuarterlyACCESSLEVEL: TcxGridDBColumn;
    tvReportsWeekly: TcxGridDBTableView;
    tvReportsWeeklyNAME: TcxGridDBColumn;
    tvReportsWeeklyACCESSLEVEL: TcxGridDBColumn;
    tvReportsNotUsed: TcxGridDBTableView;
    tvReportsNotUsedNAME: TcxGridDBColumn;
    tvReportsNotUsedACCESSLEVEL: TcxGridDBColumn;
    lvReports: TcxGridLevel;
    lvReportsMonthly: TcxGridLevel;
    lvReportsQuarterly: TcxGridLevel;
    lvReportsWeekly: TcxGridLevel;
    lvReportsNotUsed: TcxGridLevel;
    procedure btnClearAllClick(Sender: TObject);
    procedure qryReportsAfterScroll(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSnapshotClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbJumpToChange(Sender: TObject);
    procedure dbgrReportsDblClick(Sender: TObject);
    procedure tbJumpToKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnEditReportClick(Sender: TObject);
    procedure btnAddReportClick(Sender: TObject);
    procedure tvReportsMonthlyCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dbgrReportsActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure qryReportsMonthAfterScroll(DataSet: TDataSet);
    procedure qryReportsQuarterlyAfterScroll(DataSet: TDataSet);
  protected
   procedure CloseFrm(var Message: TMessage); message CM_CLOSEFORM;
  private
    { Private declarations }
    sSQL,
    sOrderBy,
    sWhere : string;
//    procedure MakeChanges;
    procedure MakeSQL;
    procedure SaveChanges;
  public
    { Public declarations }
    procedure LaunchReport(sReportName : string);
  end;

implementation

uses
  Desktop, FMXUtils, MiscFunc,ComObj, Variants, reportAdd, citfunc,
  rptViewer;

{$R *.DFM}


procedure TfrmReports.btnClearAllClick(Sender: TObject);
begin
//  chkArchived.Checked := False;
//  chkClients.Checked := False;
//  chkCreditors.Checked := False;
//  chkDebtors.Checked := False;
//  chkDisburse.Checked := False;
//  chkFees.Checked := False;
//  chkGeneral.Checked := False;
//  chkInvoices.Checked := False;
//  chkMatters.Checked := False;
//  chkTrust.Checked := False;
//  chkWIP.Checked := False;
end;

procedure TfrmReports.qryReportsAfterScroll(DataSet: TDataSet);
begin
  mmoDesc.Lines.Clear;
  mmoDesc.Lines.Text := qryReportsAll.FieldByName('DESCR').AsString;
end;

procedure TfrmReports.qryReportsMonthAfterScroll(DataSet: TDataSet);
begin
   mmoDesc.Lines.Clear;
   mmoDesc.Lines.Text := DataSet.FieldByName('DESCR').AsString;
end;

procedure TfrmReports.qryReportsQuarterlyAfterScroll(DataSet: TDataSet);
begin
   mmoDesc.Lines.Clear;
   mmoDesc.Lines.Text := DataSet.FieldByName('DESCR').AsString;
end;

procedure TfrmReports.btnPrintClick(Sender: TObject);
var
  regAxiom, RptRegAxiom: TRegistry;
  sNetworkDir, LReport, RptPath, AddParamList, RptParam, sPassword,
  sUserName, sInstance, aNewPassword: string;
  i,a: integer;
  NotFound: Boolean;
  varExcel, varDoc : Variant;
  OldDir,
  DocErrMsg: string;
//  frmCR_Viewer: TfrmCR_Viewer;
  bStream: TStream;
  LrptViewer: TfrmReportViewer;
  lQry: TUniQuery;
begin
   // Find out if we have setup on this computer before
   OldDir := GetCurrentDir;
   lQry := TUniQuery.Create(Self);
   case dbgrReports.ActiveLevel.Index of
      0: lQry := qryReportsAll;
      1: lQry := qryReportsMonth;
      2: lQry := qryReportsQuarterly;
      3: lQry := qryNotUsed;
   end;

   SetCurrentDir(ExtractFilePath(Application.EXEName));
   regAxiom := TRegistry.Create;
   RptRegAxiom := TRegistry.Create;
   regAxiom.RootKey := HKEY_CURRENT_USER;
   RptRegAxiom.RootKey := HKEY_CURRENT_USER;
   if RptRegAxiom.OpenKey(dmAxiom.RegistryRoot+'\Database', False) then
   begin
      sUserName := RptRegAxiom.ReadString('User Name');
      sPassword := RptRegAxiom.ReadString('Password');
      sInstance := RptRegAxiom.ReadString('Instance');
   end;

   if regAxiom.OpenKey(dmAxiom.RegistryRoot, False) then
   begin
      sNetworkDir := regAxiom.ReadString('NetworkDir');
      //if the standard network dir is null, look where the setup program defaults to
      if sNetworkDir = '' then
      begin
         regAxiom.OpenKey('', True);
         sNetworkDir := regAxiom.ReadString('NetworkDir');
      end;
      /// CRYSTAL REPORT
      if (lQry.FieldByName('REPORT_TYPE').AsString = 'C') then
      begin
         try
            //
            LReport := sNetworkDir + 'Reports\' + lQry.FieldByName('REPORT').AsString + '.RPT';
            if(LReport <> '') then
            begin
               // call to crystal reader
               if lQry.FieldByName('REFRESH_PROC').AsString <> '' then
               BEGIN
                  tempStoredProc.StoredProcName := lQry.FieldByName('REFRESH_PROC').AsString;
                  tempStoredProc.ExecProc;
               end;

                  RptPath := SystemString('CRYSTAL_VIEWER_PATH');
                  AddParamList := lQry.FieldByName('PARAM_LIST').AsString;
                  if Pos('CML.EXE',UpperCase(RptPath)) > 0 then
                     RptParam := LReport + ' ' + '/L1 axiom,,axiom,CZKMO'
                  else
//                     RptParam := ' -v ' + '"'+LReport+'"';
                     RptParam := ' -v ' + '"'+LReport+'"' + ' "user_id:'+ sUserName + '" "password:' + sPassword + '"';
  //                RptParam := LReport + ' ' + '/L1 ' + sInstance + ',,' + sUserName + ',' + aNewPassword;
                  if AddParamList <> '' then
                     RptParam := RptParam + ' ' + AddParamList;
                  ShellExecute(0, 'open', PChar(RptPath),PChar(RptParam),'', SW_SHOWNORMAL);
//               end;
            end;
         except
            on E: Exception do
               MsgErr('Error occured generating report'#13#13 + E.Message);
         end;
      end
      // ENCRYPTED CRYSTAL REPORT
      else if (lQry.FieldByName('REPORT_TYPE').AsString = 'Z') then
      begin
         try
            LReport := sNetworkDir + 'Reports\' + lQry.FieldByName('REPORT').AsString + '.RPZ';
            if(LReport <> '') then
            begin
               // run any stored procedures first
               if lQry.FieldByName('REFRESH_PROC').AsString <> '' then
               begin
                  tempStoredProc.StoredProcName := lQry.FieldByName('REFRESH_PROC').AsString;
                  tempStoredProc.ExecProc;
               end;
               RptPath := SystemString('CRYSTAL_VIEWER_PATH');
               AddParamList := lQry.FieldByName('PARAM_LIST').AsString;
               // call to crystal reader
               if Pos('CML.EXE',UpperCase(RptPath)) > 0 then
                  RptParam := LReport + ' ' + '/L1 axiom,,axiom,CZKMO'
               else
                  RptParam := ' -v ' + '"'+LReport+'"' + ' "user_id:'+ sUserName + '" "password:' + sPassword + '"';
               if AddParamList <> '' then
                  RptParam := RptParam + ' ' + AddParamList;
               ShellExecute(0, 'open', PChar(RptPath),PChar(RptParam),'', SW_SHOWNORMAL);
            end;
         except
            on E: Exception do
               MsgErr('Error occured generating report'#13#13 + E.Message);
         end;
      end
      // EXCEL SPREADSHEET
      else if (lQry.FieldByName('REPORT_TYPE').AsString = 'X') then
      begin
         sNetworkDir := regAxiom.ReadString('NetworkDir');
         //if the standard network dir is null, look where the setup program defaults to
         if sNetworkDir = '' then
         begin
            regAxiom.OpenKey('', True);
            sNetworkDir := regAxiom.ReadString('NetworkDir');
         end;

         if(not VarIsNull(varExcel)) then
         begin
           try
              if sNetworkDir = '' then
                 sNetworkDir := ExtractFilePath(Application.EXEName);

              LReport := sNetworkDir + 'Reports\' + lQry.FieldByName('REPORT').AsString + '.xls';
              ExecuteFile(LReport, '', '.', SW_SHOWNORMAL, DocErrMsg);
           except
             on E: Exception do
               MessageDlg('Error displaying report with MS Excel: ' + E.Message, mtError, [mbOK], 0);
           end;
         end;
      end
      // DEFAULT AXIOM REPORT
      else if (lQry.FieldByName('REPORT_TYPE').AsString = 'R') then
         ExecuteFile(sNetworkDir + 'Reports\' + lQry.FieldByName('REPORT').AsString + '.EXE', dmAxiom.UserID, '', SW_SHOW, DocErrMsg)
      else if (lQry.FieldByName('REPORT_TYPE').AsString = 'D') then
      begin
         if lQry.FieldByName('REFRESH_PROC').AsString <> '' then
         BEGIN
            tempStoredProc.StoredProcName := lQry.FieldByName('REFRESH_PROC').AsString;
            tempStoredProc.ExecProc;
         end;
         try
            LrptViewer := TfrmReportViewer.Create(Self);
            with LrptViewer do
            begin
               ppViewer1.Reset;
               ppReport.Reset;
               with ppReport.Template.DatabaseSettings do
               begin
                  DataPipeline := dmAxiom.plReports;
                  NameField := 'ITEM_Name';
                  TemplateField := 'Template';
                  Name := lQry.FieldByName('REPORT').AsString;
               end;
               ppReport.Template.LoadFromDatabase;
               LrptViewer.Show;
               ppReport.PrintToDevices;
            end;
         finally
//            LrptViewer.Free;
         end;
      end
      // REPORT BUILDER REPORT
      else if (lQry.FieldByName('REPORT_TYPE').AsString = 'A') then
      begin
         if lQry.FieldByName('REFRESH_PROC').AsString <> '' then
         BEGIN
            tempStoredProc.StoredProcName := lQry.FieldByName('REFRESH_PROC').AsString;
            tempStoredProc.ExecProc;
         end;
         if sNetworkDir = '' then
            sNetworkDir := ExtractFilePath(Application.EXEName);
         LReport := sNetworkDir + 'Reports\' + lQry.FieldByName('REPORT').AsString+ '.RTM';
         try
            LrptViewer := TfrmReportViewer.Create(Self);
            with LrptViewer do
            begin
               ppViewer1.Reset;
               ppReport.Reset;
               ppReport.Template.FileName := LReport;
               ppReport.Template.LoadFromFile;
               ppReport.PreviewFormSettings.WindowState := wsMaximized;
               ppReport.PreviewFormSettings.ZoomPercentage := 100;
               ppReport.PrintToDevices;
               LrptViewer.ShowModal;   
            end;

{            Report.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
            Report.Template.DatabaseSettings.NameField := 'ITEM_Name';
            Report.Template.DatabaseSettings.TemplateField := 'Template';
            Report.Template.DatabaseSettings.Name := qryReports.FieldByName('REPORT').AsString;
            Report.Template.FileName := LReport;
            Report.Print;  }
         finally
            LrptViewer.Free;
         end;
      end
      else if (lQry.FieldByName('REPORT_TYPE').AsString = 'E') then
      begin
         LReport := lQry.FieldByName('REPORT').AsString;
         ShellExecute(0, 'open', PChar(LReport),nil,nil, SW_SHOWNORMAL);
      end;
   end;
   regAxiom.Free;
   RptRegAxiom.Free;
   SetCurrentDir(OldDir);
end;

procedure TfrmReports.btnSnapshotClick(Sender: TObject);
begin
  frmDesktop.AddSnapshot(15, qryReportsAll.FieldByName('NAME').AsString);
end;

procedure TfrmReports.LaunchReport(sReportName : string);
begin
   if (qryReportsAll.Active = false) then
      qryReportsAll.Open;
   if qryReportsAll.Active then
   begin
      qryReportsAll.Locate('NAME', sReportName, []);
      if qryReportsAll.FieldByName('NAME').AsString = sReportName then
         btnPrint.Click
      else
         MsgErr(sreportName + ' not found.');
   end;
end;

procedure TfrmReports.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryReportsAll.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmReports.tbJumpToChange(Sender: TObject);
var
  iSel : integer;
begin
  if tbJumpTo.Text <> '' then
  begin
    iSel := tbJumpTo.SelStart;
    tbJumpTo.Text := FirstCap(tbJumpTo.Text);
    tbJumpTo.SelStart := iSel;
  end;
  if tbJumpto.Text <> '' then
    qryReportsAll.Locate('NAME', tbJumpto.Text, [loPartialKey]);
end;

procedure TfrmReports.dbgrReportsActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
var
   lSQL: string;
begin
   case ALevel.Index of
      0: begin
            with qryReportsAll do
            begin
               Close;
               lSQL := 'SELECT R.NAME, R.ACCESSLEVEL, R.Frequency, R.DESCR, R.ROWID FROM REPORTS R ';
               sOrderBy := ' ORDER BY R.NAME';
               sWhere := ' WHERE ACCESSLEVEL >= ' + InttoStr(dmAxiom.AccessLevel) + ' and frequency <> ''Not Used'' ';
               SQL.Text := lSQL + sWhere + sOrderBy;
               Open;
            end;
         end;
      1: begin
            with qryReportsMonth do
            begin
               Close;
               lSQL := 'SELECT R.*, R.ROWID FROM REPORTS R ';
               sOrderBy := ' ORDER BY R.NAME';
               sWhere := ' WHERE ACCESSLEVEL >= ' + InttoStr(dmAxiom.AccessLevel) + ' and frequency = ''Monthly'' ';
               SQL.Text := lSQL + sWhere + sOrderBy;
               Open;
            end;
         end;
      2: begin
            with qryReportsQuarterly do
            begin
               Close;
               lSQL := 'SELECT R.*, R.ROWID FROM REPORTS R ';
               sOrderBy := ' ORDER BY R.NAME';
               sWhere := ' WHERE ACCESSLEVEL >= ' + InttoStr(dmAxiom.AccessLevel) + ' and frequency = ''Quarterly'' ';
               SQL.Text := lSQL + sWhere + sOrderBy;
               Open;
            end;
         end;
      3: begin
            with qryReportsWeekly do
            begin
               Close;
               lSQL := 'SELECT R.NAME, R.ACCESSLEVEL, R.DESCR, R.ROWID FROM REPORTS R ';
               sOrderBy := ' ORDER BY R.NAME';
               sWhere := ' WHERE ACCESSLEVEL >= ' + InttoStr(dmAxiom.AccessLevel) + ' and frequency = ''Weekly'' ';
               SQL.Text := lSQL + sWhere + sOrderBy;
               Open;
            end;
         end;
      4: begin
            with qryNotUsed do
            begin
               Close;
               lSQL := 'SELECT R.NAME, R.ACCESSLEVEL, R.DESCR, R.ROWID FROM REPORTS R ';
               sOrderBy := ' ORDER BY R.NAME';
               sWhere := ' WHERE ACCESSLEVEL >= ' + InttoStr(dmAxiom.AccessLevel) + ' and frequency = ''Not Used'' ';
               SQL.Text := lSQL + sWhere + sOrderBy;
               Open;
            end;
         end;
   end;
end;

procedure TfrmReports.dbgrReportsDblClick(Sender: TObject);
begin
  btnPrint.Click;
end;

procedure TfrmReports.tbJumpToKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Trim(tbJumpTo.Text) = dmAxiom.Code then
    begin
//      btnSave.visible := true;
//      MakeChanges;
    end
  else
//    btnSave.visible := false;
  case Key of
    VK_DOWN : qryReportsAll.Next;
    VK_UP : qryReportsAll.Prior;
  end;
end;

procedure TfrmReports.FormShow(Sender: TObject);
begin
//  sbStatus.SimpleText := 'Access Level ' + InttoStr(dmAxiom.AccessLevel);
  sSQL := 'SELECT R.*, R.ROWID FROM REPORTS R ';
  sOrderBy := ' ORDER BY R.NAME';
  sWhere := ' WHERE ACCESSLEVEL >= ' + InttoStr(dmAxiom.AccessLevel);
  qryReportsAll.SQL.Text := sSQL + sWhere + sOrderBy;
  qryReportsAll.Open;
  btnAddReport.Visible := dmAxiom.Security.Reports.Add;
  btnEditReport.Visible := dmAxiom.Security.Reports.Add;
  tvReports.OptionsData.Deleting := dmAxiom.Security.Reports.Add;
end;

procedure TfrmReports.MakeSQL;
begin
  with qryReportsAll do
    begin
      Close;
      SQL.Clear;
      SQL.Add(sSQL);
      SQL.Add(sWhere);
      SQL.Add('AND UPPER(DESCR) LIKE UPPER(''%' + edtSearch.Text + '%'')');
      SQL.Add(sOrderBy);
      Open;
    end;
end;

procedure TfrmReports.SaveChanges;
begin
  if qryReportsAll.Modified then
  begin
    if MessageDlg('Save changes?', mtInformation, [mbYes, mbNo], 0) = mrYes then
      qryReportsAll.ApplyUpdates;
  end;
end;

procedure TfrmReports.edtSearchChange(Sender: TObject);
begin
  tmrSearch.Enabled := true;
end;

procedure TfrmReports.tmrSearchTimer(Sender: TObject);
begin
  tmrSearch.Enabled := false;
  MakeSQL;
end;

procedure TfrmReports.tvReportsMonthlyCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  mmoDesc.Lines.Clear;
  mmoDesc.Lines.Text := qryReportsMonth.FieldByName('DESCR').AsString;
end;

procedure TfrmReports.btnExitClick(Sender: TObject);
begin
   PostMessage(Self.Handle, CM_CLOSEFORM, 0, 0);
end;

procedure TfrmReports.btnEditReportClick(Sender: TObject);
var
   LfrmAddReport: TfrmAddReport;
begin
   LfrmAddReport := TfrmAddReport.Create(Self);
   LfrmAddReport.ReportName := qryReportsAll.FieldByName('NAME').AsString;
   if LfrmAddReport.ShowModal= mrOk then
   begin
      qryReportsAll.Close;
      qryReportsAll.Open;
   end;
end;

procedure TfrmReports.btnAddReportClick(Sender: TObject);
var
   LfrmAddReport: TfrmAddReport;
begin
   LfrmAddReport := TfrmAddReport.Create(Self);
//   LfrmAddReport.ReportName := qryReports.FieldByName('NAME').AsString;
   if LfrmAddReport.ShowModal= mrOk then
   begin
      qryReportsAll.Close;
      qryReportsAll.Open;
   end;
end;

procedure TfrmReports.CloseFrm(var Message: TMessage);
begin
   RemoveFromDesktop(Self);
end;

end.
