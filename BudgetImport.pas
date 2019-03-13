unit BudgetImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Menus, cxLookAndFeelPainters, cxProgressBar,
  dxStatusBar, StdCtrls, cxButtons, cxDropDownEdit, MemDS, DBAccess, OracleUniProvider, Uni,
  cxGroupBox, cxRadioGroup, cxLabel, cxLookAndFeels, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

const
  PerMonths: array[1..12] of integer = ( 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6 );
  Delim: array[0..2] of char = (#44,#9,#59);

type
  TImportFile = array of array of string;

  TfrmBudgetImport = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnEdFileToOpen: TcxButtonEdit;
    tvBudgetImp: TcxGridTableView;
    tvBudgetImpGLCode: TcxGridColumn;
    tvBudgetImpP1: TcxGridColumn;
    tvBudgetImpP2: TcxGridColumn;
    tvBudgetImpP3: TcxGridColumn;
    tvBudgetImpP4: TcxGridColumn;
    tvBudgetImpP5: TcxGridColumn;
    tvBudgetImpP6: TcxGridColumn;
    tvBudgetImpP7: TcxGridColumn;
    tvBudgetImpP8: TcxGridColumn;
    tvBudgetImpP9: TcxGridColumn;
    tvBudgetImpP10: TcxGridColumn;
    tvBudgetImpP11: TcxGridColumn;
    tvBudgetImpP12: TcxGridColumn;
    cxButton1: TcxButton;
    pbImport: TcxButton;
    StatusBar: TdxStatusBar;
    dxStatusBar1Container1: TdxStatusBarContainerControl;
    ProgressBar: TcxProgressBar;
    Label1: TLabel;
    OpenDialog: TOpenDialog;
    cmbType: TcxComboBox;
    Label2: TLabel;
    pbClose: TcxButton;
    cmbPeriod: TcxComboBox;
    Label3: TLabel;
    qryBudgetInsert: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleR: TcxStyle;
    cxStyleG: TcxStyle;
    cxStyleD: TcxStyle;
    rgTypeIncome: TcxRadioGroup;
    cxLabel2: TcxLabel;
    cmbDelimeter: TcxComboBox;
    qryBudgetUpdate: TUniQuery;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure pbImportClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure pbCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvBudgetImpStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cmbTypePropertiesChange(Sender: TObject);
    procedure tvBudgetImpCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    FImportFile: TImportFile;
    FLoadErrors: Boolean;
    FCol: integer;
    function OKtoImport: Boolean;
  public
    { Public declarations }
  end;

var
  frmBudgetImport: TfrmBudgetImport;

implementation

uses AxiomData, miscfunc;

{$R *.dfm}

procedure TfrmBudgetImport.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if OpenDialog.Execute then
      btnEdFileToOpen.Text := OpenDialog.FileName;
end;

procedure TfrmBudgetImport.pbImportClick(Sender: TObject);
   function GetRecordValue(ARecordIndex, AItemIndex: Integer): Variant;
   begin
      Result := tvBudgetImp.DataController.GetValue(ARecordIndex, AItemIndex);
   end;
var
   i, X: integer;
   slImport: TStrings;
   StatementFileName: string;
   sNewline, sWord: string;
begin
   if OKtoImport then
   begin
     if rgTypeIncome.Enabled then
        if rgTypeIncome.ItemIndex = -1 then
        begin
           MsgErr('Please select the type of Budget');
           Exit;
        end;
     try
        StatusBar.Panels.Items[0].Text := 'Importing Budget....';
        ProgressBar.Properties.Max := tvBudgetImp.DataController.RowCount;
        ProgressBar.Position := 0;
        for I := 0 to tvBudgetImp.DataController.RowCount - 1 do
        begin

            for X := 1 to 12 do
           begin
              with qryBudgetUpdate do
              begin
                 SQL.Clear;
                 SQL.Text := 'UPDATE BUDGET '+
                             'SET ';
                 case rgTypeIncome.ItemIndex of
                       0: SQL.Text := SQL.Text +  '  BILLEDFEES = :BILLEDFEES, ';
                       1: SQL.Text := SQL.Text +  '  RECEIVEDFEES = :RECEIVEDFEES, ';
                       2: SQL.Text := SQL.Text +  '  WIP = :WIP, ';
                       3: SQL.Text := SQL.Text +  '  TIME = :TIME,';
                 end;
                 SQL.Text := SQL.Text + '  ACCOUNTVALUE = :ACCOUNTVALUE,'+
                             '  YEAR = :YEAR '+
                             'WHERE  '+
                             '  ENTITY = :ENTITY '+
                             'AND  '+
                             '  PERIOD = :PERIOD '+
                             'AND '+
                             '  CALENDAR_YEAR = :CALENDAR_YEAR '+
                             'AND '+
                             '  FINANCIAL_YEAR = :FINANCIAL_YEAR '+
                             'AND '+
                             '  MONTH = :MONTH ';

                 if cmbType.Text = 'Author' then
                 begin
                    SQL.Append(' AND EMPLOYEE = :EMPLOYEE ');
                    ParamByName('EMPLOYEE').AsString := GetRecordValue(I,0);
                 end;

                 if cmbType.Text = 'Department' then
                 begin
                    SQL.Append(' AND DEPARTMENT = :DEPARTMENT');
                    ParamByName('DEPARTMENT').AsString := GetRecordValue(I,0);
                 end;

                 ParamByName('FINANCIAL_YEAR').AsString := cmbPeriod.EditValue;
                 ParamByName('MONTH').AsInteger := PerMonths[X];

                 if cmbType.Text = 'General Ledger' then
                 begin
                    SQL.Append('AND ACCOUNTCODE = :ACCOUNTCODE ');
                    ParamByName('ACCOUNTCODE').AsString := LedgerComponentString(GetRecordValue(I,0),'CODE');
                    ParamByName('ACCOUNTVALUE').AsString := GetRecordValue(I,X);
                 end
                 else
                 begin
                    case rgTypeIncome.ItemIndex of
                       0: ParamByName('BILLEDFEES').AsString := GetRecordValue(I,X);
                       1: ParamByName('RECEIVEDFEES').AsString := GetRecordValue(I,X);
                       2: ParamByName('WIP').AsString := GetRecordValue(I,X);
                       3: ParamByName('TIME').AsString := GetRecordValue(I,X);
                    end;
                 end;
                 ParamByName('ENTITY').AsString := dmAxiom.Entity;
                 ParamByName('PERIOD').AsInteger := X;
                 if X <= 5 then
                    ParamByName('CALENDAR_YEAR').AsInteger := integer(cmbPeriod.EditValue) - 1
                 else
                    ParamByName('CALENDAR_YEAR').AsString := cmbPeriod.EditValue;
                 Execute;
                 if RowsAffected = 0 then
                 begin
                    with qryBudgetInsert do
                    begin
                       ParamByName('ENTITY').AsString := dmAxiom.Entity;
                       ParamByName('CREATED').AsDateTime := Now;
                       ParamByName('PERIOD').AsInteger := X;
                       if X <= 6 then
                          ParamByName('CALENDAR_YEAR').AsInteger := integer(cmbPeriod.EditValue) - 1
                       else
                          ParamByName('CALENDAR_YEAR').AsString := cmbPeriod.EditValue;

                       if cmbType.Text = 'Author' then
                          ParamByName('EMPLOYEE').AsString := GetRecordValue(I,0);

                       if cmbType.Text = 'Department' then
                          ParamByName('DEPARTMENT').AsString := GetRecordValue(I,0);

                       ParamByName('FINANCIAL_YEAR').AsString := cmbPeriod.EditValue;
                       ParamByName('MONTH').AsInteger := PerMonths[X];

                       if cmbType.Text = 'General Ledger' then
                       begin
                          ParamByName('ACCOUNTCODE').AsString := LedgerComponentString(GetRecordValue(I,0),'CODE');
                          ParamByName('ACCOUNTVALUE').AsString := GetRecordValue(I,X);
                       end
                       else
                       begin
                          case rgTypeIncome.ItemIndex of
                             0: ParamByName('BILLEDFEES').AsString := GetRecordValue(I,X);
                             1: ParamByName('RECEIVEDFEES').AsString := GetRecordValue(I,X);
                             2: ParamByName('WIP').AsString := GetRecordValue(I,X);
                             3: ParamByName('TIME').AsString := GetRecordValue(I,X);
                          end;
                       end;
                       Execute;
                    end;
                 end;
              end;
           end;
           ProgressBar.Position := I+1;
           Application.ProcessMessages;
         end;
     finally
        for i:= 0 to tvBudgetImp.DataController.RowCount - 1 do
           tvBudgetImp.DataController.DeleteRecord(0);
        StatusBar.Panels.Items[0].Text := 'Budget Imported.';
        ProgressBar.Position := 0;
        pbImport.Enabled := False;
     end;
   end
   else
      Exit;
end;

procedure TfrmBudgetImport.cxButton1Click(Sender: TObject);
   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      tvBudgetImp.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;
var
   i, iWords: integer;
//   slImport: TStrings;
//   StatementFileName: string;
   sNewline, sWord: string;
   sGL: string;

   bProceed : boolean;
   fSoftlog : TextFile;
   sError : string;
   dAmount: double;
   icount : integer;
   slImport, slRow: TStrings;
   StatementFileName: string;
   st: string;
   line, col, NumRecords : integer;
   ACol: TcxGridColumn;
begin
   StatusBar.Panels.Items[0].Text := 'Loading and Validating Budget....';
    icount := 0;
   if (btnEdFileToOpen.Text <> '') then
   begin
      // check file exists
      bProceed := True;
      if not FileExists(btnEdFileToOpen.Text) then
      begin
         MsgErr('The import file does not exist');
         bProceed := False;
      end;

      icount := 0;
      bProceed := True;
      if bProceed then
      begin
         // make sure grid is empty prior to start
         if tvBudgetImp.DataController.RecordCount > 0 then
         begin
            for NumRecords := tvBudgetImp.DataController.RecordCount - 1 downto 0 do
               tvBudgetImp.DataController.DeleteRecord(0);
         end;

         StatementFileName := btnEdFileToOpen.Text;
         slImport := TStringList.Create;

         slRow := TStringList.Create;
         slRow.Delimiter := Delim[cmbDelimeter.ItemIndex];

         try
            //load the tab delimited txt file
            slImport.LoadFromFile(StatementFileName);
            if slImport.Strings[slImport.Count-1].IsEmpty then
               slImport.Delete(slImport.Count-1);
            ProgressBar.Properties.Max := slImport.Count;
            for line := 0 to -1 + slImport.Count do
            begin
               //"load" the line into a stringlist
               slRow.DelimitedText := slImport[line];
               if (slRow[0] <> '') then
               begin
                  tvBudgetImp.DataController.AppendRecord;
                  for col := 0 to slRow.Count - 1 do
                  begin
                     FCol := col;
                     SetRecordValue(line, col, slRow[col]);
                  end;
                  ProgressBar.Position := line;
                  Application.ProcessMessages;
               end;
            end;
        finally
            slRow.Free;
            slImport.Free;

            if FLoadErrors then
            begin
               StatusBar.Panels.Items[0].Text := 'Budget Load has ERRORS';
               MsgErr('There were errors with the Import File.  Please correct them and try Again.')
            end
            else
            begin
               StatusBar.Panels.Items[0].Text := 'Budget Loaded';
               pbImport.Enabled := True;
            end;
            ProgressBar.Position := 0;
         end;
      end;
   end;
{   FLoadErrors := False;
   iWords := 0;
   StatementFileName := btnEdFileToOpen.Text;
   SlImport := TStringList.Create;
   slImport.LoadFromFile(StatementFileName);
   SetLength(FImportFile,slImport.Count, 13);
   ProgressBar.Properties.Max := slImport.Count;
   ProgressBar.Position := 1;
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

   for i:= 0 to tvBudgetImp.DataController.RowCount - 1 do
      tvBudgetImp.DataController.DeleteRecord(0);

   for I := Low(FImportFile) to High(FImportFile) do
   begin
      tvBudgetImp.DataController.AppendRecord;
      begin
         SetRecordValue(I, tvBudgetImpGLCode.Index, FImportFile[i,0]);
         SetRecordValue(I, tvBudgetImpP1.Index, FImportFile[i,1]);
         SetRecordValue(I, tvBudgetImpP2.Index, FImportFile[i,2]);
         SetRecordValue(I, tvBudgetImpP3.Index, FImportFile[i,3]);
         SetRecordValue(I, tvBudgetImpP4.Index, FImportFile[i,4]);
         SetRecordValue(I, tvBudgetImpP5.Index, FImportFile[i,5]);
         SetRecordValue(I, tvBudgetImpP6.Index, FImportFile[i,6]);
         SetRecordValue(I, tvBudgetImpP7.Index, FImportFile[i,7]);
         SetRecordValue(I, tvBudgetImpP8.Index, FImportFile[i,8]);
         SetRecordValue(I, tvBudgetImpP9.Index, FImportFile[i,9]);
         SetRecordValue(I, tvBudgetImpP10.Index, FImportFile[i,10]);
         SetRecordValue(I, tvBudgetImpP11.Index, FImportFile[i,11]);
         SetRecordValue(I, tvBudgetImpP12.Index, FImportFile[i,12]);
      end;
      ProgressBar.Position := I+1;
      Application.ProcessMessages;
   end;
   slImport.Free;
   StatusBar.Panels.Items[0].Text := 'Budget Loaded';
   if FLoadErrors then
      MsgErr('There were errors with the Import File.  Please correct them and try Again.')
   else
      pbImport.Enabled := True;
   ProgressBar.Position := 0;    }
end;

procedure TfrmBudgetImport.pbCloseClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmBudgetImport.FormClose(Sender: TObject;
   var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmBudgetImport.tvBudgetImpStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
begin
   if cmbType.Text = 'General Ledger' then
   begin
      try
         AColumn := (Sender as TcxGridTableView).Columns[FCol];
         if (AColumn.Caption = 'Code') then
         begin
            if LedgerComponentString(ARecord.Values[AColumn.Index],'CODE') = '' then
            begin
               AStyle := cxStyleR;
               FLoadErrors := True;
            end
         end
      except
      //
      end;
   end
   else
   if cmbType.Text = 'Department' then
   begin
      try
         AColumn := (Sender as TcxGridTableView).Columns[0];
         if VarToStr(TableString('EMPDEPT','CODE',string(ARecord.Values[AColumn.Index]),'CODE')) = '' then
         begin
            AStyle := cxStyleR;
            FLoadErrors := True;
         end
         else
            AStyle := cxStyleD;
      except
      //
      end;
   end
   else
   if cmbType.Text = 'Author' then
   begin
      try
         AColumn := (Sender as TcxGridTableView).Columns[0];
         if VarToStr(TableString('EMPLOYEE','CODE',string(ARecord.Values[AColumn.Index]),'CODE')) = '' then
         begin
            AStyle := cxStyleR;
            FLoadErrors := True;
         end
         else
            AStyle := cxStyleD;
      except
      //
      end;
   end;
end;

procedure TfrmBudgetImport.cmbTypePropertiesChange(Sender: TObject);
begin
   case cmbType.ItemIndex of
      0..1: rgTypeIncome.Enabled := True;
      2:    rgTypeIncome.Enabled := False;
   end;
end;

function TfrmBudgetImport.OKtoImport: Boolean;
var
  sTmp: String;
  bOKtoImport: boolean;
  nRowCount : integer;
begin
  sTmp := '';
  Result := True;
  bOKtoImport := True;

  if cmbType.Text = '' then
    sTmp := '       Budget Type must be selected ' + #13;
  if cmbPeriod.Text = '' then
    sTmp := sTmp + '       Financial Year must be selected' + #13;

  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following details before import:    ' + #13#13 + sTmp);
    bOKtoImport := False
  end;

  result:= bOKtoImport;
end;


procedure TfrmBudgetImport.tvBudgetImpCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
   V, C: Variant;
   AColumn, AColourColumn: TcxCustomGridTableItem;
   AColour: integer;
begin
   if cmbType.Text = 'General Ledger' then
   begin
      try
         AColumn := (Sender as TcxGridTableView).Columns[0];
         if (AColumn <> nil) then
         begin
            V := AColumn.Caption;//  VarToStr(AViewInfo.GridRecord.Values[FCol]);
            if (V = 'Code') then
            begin
               if LedgerComponentString(VarToStr(AViewInfo.GridRecord.Values[0]),'CODE') = '' then
               begin
                  ACanvas.SetBrushColor(clRed);
                  ACanvas.Font.Style := ACanvas.Font.Style + [fsBold];
                  FLoadErrors := True;
               end;
            end;
         end;
      except
      //
      end;
   end
     else
   if cmbType.Text = 'Department' then
   begin
      try
         AColumn := (Sender as TcxGridTableView).Columns[0];
         if AColumn <> nil then
         begin
            V := AColumn.Caption;
            if (V = 'Code') then
            begin
               if VarToStr(TableString('EMPDEPT','CODE',VarToStr(AViewInfo.GridRecord.Values[0]),'CODE')) = '' then
               begin
                  ACanvas.SetBrushColor(clRed);
                  ACanvas.Font.Style := ACanvas.Font.Style + [fsBold];
                  FLoadErrors := True;
               end;
            end;
         end;
      except
      //
      end;
   end
   else
   if cmbType.Text = 'Author' then
   begin
      try
         AColumn := (Sender as TcxGridTableView).Columns[0];
         if AColumn <> nil then
         begin
            V := AColumn.Caption;
            if (V = 'Code') then
            begin
               if VarToStr(TableString('EMPLOYEE','CODE',VarToStr(AViewInfo.GridRecord.Values[0]),'CODE')) = '' then
               begin
                  ACanvas.SetBrushColor(clRed);
                  ACanvas.Font.Style := ACanvas.Font.Style + [fsBold];
                  FLoadErrors := True;
               end;
            end;
         end;
      except
      //
      end;
   end;
end;

end.
