unit Budgets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxCurrencyEdit, cxRadioGroup,
  cxDBLookupComboBox, DALoader, UniLoader, dxBarDBNav, cxBarEditItem, dxBar,
  dxBarExtDBItems, cxClasses, DBAccess, Uni, MemDS, System.ImageList,
  Vcl.ImgList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid;

const
  C_FEEEARNERS  = 'SELECT CODE AS KEY,CODE AS DISPLAY_KEY, NAME AS DISPLAY FROM EMPLOYEE WHERE ACTIVE = ''Y'' AND ISFEEEARNER = ''Y'' AND ENTITY = :entity ORDER BY 2';
  C_DEPARTMENTS = 'SELECT CODE AS KEY,CODE AS DISPLAY_KEY, DESCR AS DISPLAY FROM EMPDEPT WHERE :entity = :entity ORDER BY 2';
  C_ACCOUNTS    = 'SELECT CODE AS KEY,trim(COMPONENT_CODE_DISPLAY) AS DISPLAY_KEY, DESCR AS DISPLAY FROM CHART WHERE BANK = :entity ORDER BY 1';
  C_WHEREFEEEARNER  = 'AND EMPLOYEE = :KEY';
  C_WHEREDEPARTMENT = 'AND DEPARTMENT = :KEY';
  C_WHEREACCOUNTCODE = 'AND ACCOUNTCODE = :KEY';

type
   TImportFile = array of array of string;

  TfmBudgets = class(TForm)
    ImageList: TImageList;
    qBudgets: TUniQuery;
    dsBudgets: TUniDataSource;
    qDisplaySource: TUniQuery;
    dsDisplaySource: TUniDataSource;
    qDisplaySourceKEY: TStringField;
    qDisplaySourceDISPLAY: TStringField;
    tvBudget: TcxGridDBTableView;
    dgBudgetsLevel1: TcxGridLevel;
    dgBudgets: TcxGrid;
    tvBudgetFINANCIAL_YEAR: TcxGridDBColumn;
    tvBudgetEMPLOYEENAME: TcxGridDBColumn;
    tvBudgetDEPARTMENT: TcxGridDBColumn;
    tvBudgetACCOUNTCODE: TcxGridDBColumn;
    tvBudgetACCOUNTVALUE: TcxGridDBColumn;
    tvBudgetBILLEDFEES: TcxGridDBColumn;
    tvBudgetWIP: TcxGridDBColumn;
    tvBudgetTIME: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    dxBarDBNavigator1: TdxBarDBNavigator;
    bmBudgets: TdxBarManager;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    cbDisplaySource: TdxBarLookupCombo;
    dxbtnBudgetYear: TdxBarButton;
    dxBarButton2: TdxBarButton;
    tvBudgetPERIOD: TcxGridDBColumn;
    qDisplaySourceDISPLAY_KEY: TStringField;
    tvBudgetRECEIVEDFEES: TcxGridDBColumn;
    btnImport: TdxBarButton;
    OpenDialog: TOpenDialog;
    qryGetChart: TUniQuery;
    tvBudgetInsert: TcxGridDBTableView;
    qryBudgetInsert: TUniQuery;
    tvBudgetInsertCREATED: TcxGridDBColumn;
    tvBudgetInsertENTITY: TcxGridDBColumn;
    tvBudgetInsertPERIOD: TcxGridDBColumn;
    tvBudgetInsertACCOUNTCODE: TcxGridDBColumn;
    tvBudgetInsertFINANCIAL_YEAR: TcxGridDBColumn;
    tvBudgetInsertEMPLOYEECODE: TcxGridDBColumn;
    tvBudgetInsertDEPARTMENTCODE: TcxGridDBColumn;
    tvBudgetInsertACCOUNTVALUE: TcxGridDBColumn;
    tvBudgetInsertBILLEDFEES: TcxGridDBColumn;
    tvBudgetInsertWIP: TcxGridDBColumn;
    tvBudgetInsertTIME: TcxGridDBColumn;
    tvBudgetInsertMONTH: TcxGridDBColumn;
    tvBudgetInsertCALENDAR_YEAR: TcxGridDBColumn;
    tvBudgetInsertRECEIVEDFEES: TcxGridDBColumn;
    tvBudgetInsertROWID: TcxGridDBColumn;
    qBudgetsNBUDGET: TFloatField;
    qBudgetsENTITY: TStringField;
    qBudgetsPERIOD: TFloatField;
    qBudgetsMONTHNAME: TFloatField;
    qBudgetsFINANCIAL_YEAR: TFloatField;
    qBudgetsEMPLOYEECODE: TStringField;
    qBudgetsEMPLOYEENAME: TStringField;
    qBudgetsDEPARTMENTCODE: TStringField;
    qBudgetsDEPARTMENT: TStringField;
    qBudgetsCOMPONENT_CODE_DISPLAY: TStringField;
    qBudgetsACCOUNTVALUE: TFloatField;
    qBudgetsBILLEDFEES: TFloatField;
    qBudgetsWIP: TFloatField;
    qBudgetsTIME: TFloatField;
    qBudgetsCALENDAR_YEAR: TFloatField;
    qBudgetsRECEIVEDFEES: TFloatField;
    qBudgetsACCOUNTCODE: TStringField;
    qBudgetsROWID: TStringField;
    btnExport: TdxBarButton;
    SaveDialog: TSaveDialog;
    tvBudgetCALENDAR_YEAR: TcxGridDBColumn;
    tvBudgetMONTH: TcxGridDBColumn;
    tvBudgetEMPLOYEECODE: TcxGridDBColumn;
    tvBudgetDEPARTMENTCODE: TcxGridDBColumn;
    UniLoader1: TUniLoader;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    tvBudgetDAYS_PER_MONTH: TcxGridDBColumn;
    qBudgetsDAYS_PER_MONTH: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbDisplaySourceChange(Sender: TObject);
    procedure aBudgetDeleteExecute(Sender: TObject);
    procedure aBudgetEditExecute(Sender: TObject);
    procedure aBudgetInsertExecute(Sender: TObject);
    procedure aYearlyBudgetUpdate(Sender: TObject);
    procedure dxbtnBudgetYearClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure qryBudgetInsertAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure UniLoader1GetColumnData(Sender: TObject; Column: TDAColumn;
      Row: Integer; var Value: Variant; var IsEOF: Boolean);
    procedure cxBarEditItem1PropertiesChange(Sender: TObject);
  private
    fsAccountCode : String;
    fsEmployeeCode : String;
    FImportFile: TImportFile;
  public
    procedure setForAccountCode(sAccountCode : String);
    procedure setForEmployee(sEmployeeCode : String);
  end;

var
  fmBudgets: TfmBudgets;

implementation

uses AxiomData, BudgetEntryDialog, miscfunc, EmployeeBudget, Process, LedgerBudget;

{$R *.dfm}

procedure TfmBudgets.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RemoveFromDesktop(Self);
//  fmBudgets := nil;
//  Action := caFree;
end;

procedure TfmBudgets.FormShow(Sender: TObject);
begin
  //aYearlyBudget.Enabled := FALSE;
  
//  if (not rbAccountCode.Checked) then
//    rbFeeEarner.Checked := True;
   cxBarEditItem1.EditValue := 0;
   qDisplaySource.Close();
   qDisplaySource.SQL.Text := C_FEEEARNERS;
   fsEmployeeCode := dmAxiom.UserID;

   qDisplaySource.ParamByName('entity').AsString := dmAxiom.Entity;
   qDisplaySource.Open();

   cbDisplaySource.KeyValue := fsEmployeeCode;

   if(cbDisplaySource.KeyValue = '') then
      cbDisplaySource.KeyValue := qDisplaySourceKEY.Value;
end;

procedure TfmBudgets.cbDisplaySourceChange(Sender: TObject);
begin
  if(cbDisplaySource.KeyValue <> '') then
  begin
    qBudgets.Close();
    qBudgets.ParamByName('entity').AsString := dmAxiom.Entity;
    qBudgets.SQL.Delete(qBudgets.SQL.Count - 2);
    if(cxBarEditItem1.EditValue = 0) then
    begin
      qBudgets.SQL.Insert(qBudgets.SQL.Count - 1,C_WHEREFEEEARNER);
    end
    else if(cxBarEditItem1.EditValue = 1) then
      qBudgets.SQL.Insert(qBudgets.SQL.Count - 1,C_WHEREDEPARTMENT)
    else if(cxBarEditItem1.EditValue = 2) then
    begin
      qBudgets.SQL.Insert(qBudgets.SQL.Count - 1,C_WHEREACCOUNTCODE);
    end
    else
    begin
      qBudgets.SQL.Insert(qBudgets.SQL.Count - 1,'-- nothing');
      Exit;
    end;
    qBudgets.ParamByName('key').AsString := cbDisplaySource.KeyValue;
    qBudgets.Open();
  end;
end;

procedure TfmBudgets.cxBarEditItem1PropertiesChange(Sender: TObject);
begin
   qDisplaySource.Close();
   case cxBarEditItem1.EditValue of
      0: begin
            qDisplaySource.SQL.Text := C_FEEEARNERS;
            if fsEmployeeCode = '' then
               fsEmployeeCode := dmAxiom.UserID;
         end;
      1: begin
             qDisplaySource.SQL.Text := C_DEPARTMENTS;
         end;
      2: begin
             qDisplaySource.SQL.Text := C_ACCOUNTS;
         end;
   end;

   qDisplaySource.ParamByName('entity').AsString := dmAxiom.Entity;
   qDisplaySource.Open();

   if cxBarEditItem1.EditValue = 0 then
      cbDisplaySource.KeyValue := fsEmployeeCode
   else if cxBarEditItem1.EditValue = 1 then
      cbDisplaySource.KeyValue := dmAxiom.UserDept;

   if ((cbDisplaySource.KeyValue = '') or (varisnull(cbDisplaySource.KeyValue))) then
      cbDisplaySource.KeyValue := qDisplaySourceKEY.Value;
end;

procedure TfmBudgets.aBudgetDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to delete the selected budget?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    dmAxiom.qryTmp.SQL.Text := 'delete from budget where nbudget = :nbudget';
    dmAxiom.qryTmp.ParamByName('nbudget').AsInteger := qBudgetsNBUDGET.AsInteger;
    dmAxiom.qryTmp.ExecSQL();

    qBudgets.Close();
    qBudgets.Open();
  end;
end;

procedure TfmBudgets.aBudgetEditExecute(Sender: TObject);
var
  LNBudget: Integer;
begin
  fmBudgetEntryDialog := TfmBudgetEntryDialog.Create(Self);
  try
    LNBudget := qBudgetsNBUDGET.AsInteger;
    fmBudgetEntryDialog.NBudget := LNBudget;
    if(fmBudgetEntryDialog.ShowModal() = mrOk) then
    begin
      qBudgets.Close();
      qBudgets.Open();
      qBudgets.Locate('nbudget',LNBudget,[]);
    end;
  finally
    FreeAndNil(fmBudgetEntryDialog);
  end;
end;

procedure TfmBudgets.aBudgetInsertExecute(Sender: TObject);
begin
  fmBudgetEntryDialog := TfmBudgetEntryDialog.Create(Self);
  try
    if (cxBarEditItem1.EditValue = 1) then
    begin
      fmBudgetEntryDialog.Employee := qBudgetsEMPLOYEECODE.AsString;
      fmBudgetEntryDialog.Department := cbDisplaySource.KeyValue;
    end else if(cxBarEditItem1.EditValue = 2) then
    begin
      fmBudgetEntryDialog.AccountCode := cbDisplaySource.KeyValue;
      fmBudgetEntryDialog.Employee := qBudgetsEMPLOYEECODE.AsString;
    end else
      fmBudgetEntryDialog.Employee := cbDisplaySource.KeyValue;
    if(fmBudgetEntryDialog.ShowModal() = mrOk) then
    begin
      qBudgets.Close();
      qBudgets.Open();
      qBudgets.Locate('nbudget',fmBudgetEntryDialog.NBudget,[]);
    end;
  finally
    FreeAndNil(fmBudgetEntryDialog);
  end;
end;

procedure TfmBudgets.setForAccountCode(sAccountCode : String);
begin
  cxBarEditItem1.EditValue := 1;
  cbDisplaySource.KeyValue := sAccountCode;
  fsAccountCode := sAccountCode;

//rbFeeEarner.Enabled := FALSE;
//  rbDepartment.Enabled := FALSE;
end;

procedure TfmBudgets.setForEmployee(sEmployeeCode : String);
begin
   fsEmployeeCode := sEmployeeCode;
   cxBarEditItem1.EditValue := 0;
   cbDisplaySource.KeyValue := sEmployeeCode;
                                   
   cbDisplaySource.Enabled := FALSE;
   tvBudgetDEPARTMENT.Visible := False;
   tvBudgetFINANCIAL_YEAR.GroupIndex := 0;
   dgBudgets.FocusedView.DataController.Groups.FullExpand;
//   dxbtnBudgetYear.Enabled := FALSE;
end;

procedure TfmBudgets.UniLoader1GetColumnData(Sender: TObject; Column: TDAColumn;
  Row: Integer; var Value: Variant; var IsEOF: Boolean);
var
   i: integer;
begin
   for I := Low(FImportFile) to High(FImportFile) do
   begin
      case Column.Index of
         0: Value := dmAxiom.Entity;
         1: Value := Now;
         2: Value := FImportFile[i,1];            //period
         3: Value := FImportFile[i,2];            // calendaryear
         4: Value := FImportFile[i,3];            //Employee
         5: Value := FImportFile[i,4];            //Department
         6: begin
               qryGetChart.Close;
               qryGetChart.ParamByName('component_code_display').AsString := FImportFile[i,5];            //Accountcode
               qryGetChart.Open;
               Value := qryGetChart.Fields[0].AsString;
            end;
         7: Value := FImportFile[i,6];            //BilledFees
         8: Value := FImportFile[i,7];            //WIP
         9: Value := FImportFile[i,8];            //Time
        10: Value := FImportFile[i,9];            //Month
        11: Value := FImportFile[i,10];            //Year
        12: Value := FImportFile[i,11];            //Financial Year
        13: Value := FImportFile[i,12];            //Received Fees
      else
         Value := Null;
      end;
   end;

end;

procedure TfmBudgets.aYearlyBudgetUpdate(Sender: TObject);
begin
//  TAction(Sender).Enabled := not rbFeeEarner.Enabled;
end;

procedure TfmBudgets.dxbtnBudgetYearClick(Sender: TObject);
var
   loTfrmLedgerBudget : TfrmLedgerBudget;
   loTfrmEmployeeBudget : TfrmEmployeeBudget;
begin
   if cxBarEditItem1.EditValue = 2 then
   begin
      loTfrmLedgerBudget := TfrmLedgerBudget.Create(Self);
      try
         fsAccountCode := cbDisplaySource.KeyValue;
         loTfrmLedgerBudget.ShowLedger(fsAccountCode, dmAxiom.Entity);

         if (loTfrmLedgerBudget.ShowModal = mrOk) then
         begin
            if (qBudgets.State = dsInactive) then
               qBudgets.Open;
            qBudgets.Refresh;
         end;    //  end if
      finally
         FreeAndNil(loTfrmLedgerBudget);
      end;    //  end try-finally
   end;

   if cxBarEditItem1.EditValue = 0 then
   begin
      loTfrmEmployeeBudget := TfrmEmployeeBudget.Create(Self);
      try
         fsEmployeeCode := cbDisplaySource.KeyValue;
         loTfrmEmployeeBudget.ShowEmployee(fsEmployeeCode, dmAxiom.Entity);

         if (loTfrmEmployeeBudget.ShowModal = mrOk) then
         begin
            if (qBudgets.State = dsInactive) then
               qBudgets.Open;
            qBudgets.Refresh;
         end;    //  end if
      finally
         FreeAndNil(loTfrmEmployeeBudget);
      end;    //  end try-finally
   end;
end;

procedure TfmBudgets.dxBarButton2Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfmBudgets.btnImportClick(Sender: TObject);
var
   i, iWords: integer;
   slImport: TStrings;
   StatementFileName: string;
   sNewline, sWord: string;
   frmProcess: TfrmProcess;
begin
   if OpenDialog.Execute then
   begin
      try
         frmProcess := TfrmProcess.Create(Self);
         frmProcess.lblProcess.Caption := 'Importing Budgets';

         iWords := 0;
         StatementFileName := OpenDialog.FileName;
         SlImport := TStringList.Create;
         slImport.LoadFromFile(StatementFileName);
         SetLength(FImportFile,slImport.Count, 13);
         frmProcess.pbProcess.Max := slImport.Count;
         frmProcess.Show;
         Application.ProcessMessages;
         for i := 0 to slImport.Count - 1 do
         begin
            sNewline := slImport.Strings[i];
            while getnextword(sNewline ,sWord) do
            begin
               FImportFile[i,iWords] := sWord;
               inc(iWords);
            end;
            iWords := 0;
         end;
//         qryBudgetInsert.Open;
         I := 0;
 //        tvBudgetInsert.BeginUpdate;
         for I := Low(FImportFile) to High(FImportFile) do
         begin
            with qryBudgetInsert do
            begin
               ParamByName('ENTITY').AsString := dmAxiom.Entity;
               ParamByName('CREATED').aSdATEtIME := Now;
               ParamByName('PERIOD').AsString := FImportFile[i,0];
               ParamByName('CALENDAR_YEAR').AsString := FImportFile[i,1];
               ParamByName('EMPLOYEE').AsString := FImportFile[i,2];
               ParamByName('DEPARTMENT').AsString := FImportFile[i,3];
               ParamByName('ACCOUNTCODE').AsString := LedgerComponentString(FImportFile[i,4],'CODE');
               ParamByName('ACCOUNTVALUE').AsString := FImportFile[i,5];
               ParamByName('BILLEDFEES').AsString := FImportFile[i,6];
               ParamByName('WIP').AsString := FImportFile[i,7];
               ParamByName('TIME').AsString := FImportFile[i,8];
               ParamByName('MONTH').AsString := FImportFile[i,9];
//               qryBudgetInsert.FieldByName('YEAR').AsString := FImportFile[i,10];
               ParamByName('FINANCIAL_YEAR').AsString := FImportFile[i,11];

               ParamByName('RECEIVEDFEES').AsString := FImportFile[i,12];
               ParamByName('DAYS_PER_MONTH').AsString := FImportFile[i,13];
               ExecSQL;
            end;
            frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
            Application.ProcessMessages;
         end;
      except
        on E: Exception do
        begin
          MsgErr('Error ' + E.Message);
          frmProcess.Release;
          Exit;
        end;
      end;
//      tvBudgetInsert.EndUpdate;
      frmProcess.Release;
//      qryBudgetInsert.Close;
   end;
   slImport.Free;

end;

procedure TfmBudgets.qryBudgetInsertAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('ENTITY').AsString := dmAxiom.Entity;
   DataSet.FieldByName('CREATED').AsDateTime := Now;
end;

procedure TfmBudgets.FormCreate(Sender: TObject);
begin
   tvBudgetFINANCIAL_YEAR.GroupIndex := -1;
   tvBudgetDEPARTMENT.Visible := True;
end;

procedure TfmBudgets.btnExportClick(Sender: TObject);
var
   i: integer;
   slExport: TStrings;
   StatementFileName: string;
   sNewline, sWord: string;
   frmProcess: TfrmProcess;
begin
   if SaveDialog.Execute then
   begin
      try
         frmProcess := TfrmProcess.Create(Self);
         frmProcess.lblProcess.Caption := 'Exporting Budgets';

         StatementFileName := SaveDialog.FileName;
         slExport := TStringList.Create;
         frmProcess.pbProcess.Max := tvBudget.DataController.GetRowCount;
         frmProcess.Show;
         Application.ProcessMessages;

         tvBudget.BeginUpdate;
         for i:= 0 to tvBudget.DataController.GetRowCount do
         begin

            sNewLine := VarToStr(tvBudgetPERIOD.EditValue);
            sNewLine := sNewLine  + ','+ VarToStr(tvBudgetCALENDAR_YEAR.EditValue);//  ParamByName('CALENDAR_YEAR').AsString := FImportFile[i,1];
            sNewLine := sNewLine  + ','+ VarToStr(tvBudgetEMPLOYEECODE.EditValue);
            sNewLine := sNewLine  + ','+ VarToStr(tvBudgetDEPARTMENTCODE.EditValue);
            sNewLine := sNewLine  + ',"'+ LedgerString(VarToStr(tvBudgetACCOUNTCODE.EditValue),'COMPONENT_CODE_DISPLAY')+'"' ;  // ParamByName('ACCOUNTCODE').AsString := LedgerComponentString(FImportFile[i,4],'CODE');
            sNewLine := sNewLine  + ','+ VarToStrDef(tvBudgetACCOUNTVALUE.EditValue,'0');
            sNewLine := sNewLine  + ','+ VarToStrDef(tvBudgetBILLEDFEES.EditValue,'0');
            sNewLine := sNewLine  + ','+ VarToStrDef(tvBudgetWIP.EditValue,'0');
            sNewLine := sNewLine  + ','+ VarToStrDef(tvBudgetTIME.EditValue,'0');
            sNewLine := sNewLine  + ','+ VarToStr(tvBudgetMONTH.EditValue);  // ParamByName('MONTH').AsString := FImportFile[i,9];
            sNewLine := sNewLine  + ','+ VarToStr(tvBudgetFINANCIAL_YEAR.EditValue);// Financial year

            sNewLine := sNewLine  + ','+ VarToStrDef(tvBudgetRECEIVEDFEES.EditValue,'0');
            slExport.Add(sNewLine);
            tvBudget.Controller.FocusedRowIndex := i;
         end;
         frmProcess.pbProcess.Position := frmProcess.pbProcess.Position + 1;
         Application.ProcessMessages;
      except
        on E: Exception do
        begin
          MsgErr('Error ' + E.Message);
          frmProcess.Release;
          Exit;
        end;
      end;
      tvBudget.EndUpdate;
      frmProcess.Release;
   end;
   slExport.SaveToFile(StatementFileName);
   slExport.Free;
end;


end.



