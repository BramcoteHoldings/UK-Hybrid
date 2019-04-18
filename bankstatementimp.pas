unit bankstatementimp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons,
  cxProgressBar, cxDropDownEdit, cxLabel, cxContainer, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxCheckBox, cxShellBrowserDialog, dxBar,
  cxGridCustomPopupMenu, cxGridPopupMenu, MemDS, DBAccess, OracleUniProvider,
  Uni, cxSpinEdit, cxLookAndFeels, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  Vcl.ExtCtrls, dxDateRanges;

const
   Delim: array[0..2] of char = (#44,#9,#59);

type
  TBankStmntRecord = record
    Banked : TDateTime;
    DepType : string;
    Descr : string;
    Amount : currency;
    Reference : string;
  end;

  TImportFile = array of array of string;


type
  TfrmBankStmntImport = class(TForm)
    Label3: TLabel;
    tbFile: TcxButtonEdit;
    cxLabel3: TcxLabel;
    cmbDateFormat: TcxComboBox;
    grdImport: TcxGrid;
    tvImport: TcxGridTableView;
    grdImportDBTableView1: TcxGridDBTableView;
    grdImportDBTableView1FIELD1: TcxGridDBColumn;
    grdImportLevel1: TcxGridLevel;
    btnOK: TcxButton;
    pbCancel: TcxButton;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    cbKeepOpen: TcxCheckBox;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton7: TdxBarButton;
    qryGetMatters: TUniQuery;
    qryMatter: TUniQuery;
    cbDeleteImportFile: TcxCheckBox;
    seStartLine: TcxSpinEdit;
    cxLabel1: TcxLabel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    qryBankRec: TUniQuery;
    qryBankRecTypeDesc: TStringField;
    qryBankRecMatchedAmount: TFloatField;
    qryBankRecPresentedDate: TDateField;
    qryBankRecBANK: TStringField;
    qryBankRecBANKED: TDateTimeField;
    qryBankRecTYPE: TStringField;
    qryBankRecREFNO: TStringField;
    qryBankRecDESCR: TStringField;
    qryBankRecAMOUNT: TFloatField;
    qryBankRecRECONDATE: TDateTimeField;
    qryBankRecBANKSTATEMENT: TStringField;
    qryBankRecROWID: TStringField;
    Panel1: TPanel;
    Progress: TcxProgressBar;
    btnSaveSettings: TcxButton;
    cxLabel2: TcxLabel;
    cmbDelimeter: TcxComboBox;
    btnLoad: TcxButton;
    procedure btnLoadClick(Sender: TObject);
    procedure tbFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnOKClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGridPopupMenu1Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer;
      var AllowPopup: Boolean);
    procedure dxBarButton2Click(Sender: TObject);
    procedure btnSaveSettingsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pbCancelClick(Sender: TObject);
  private
    { Private declarations }
    FCol: TcxGridColumn;
    FColIndex: integer;
    FBank: string;
    procedure PopulateGrid;
    procedure InsertStatement(ArecBankStmnt: TBankStmntRecord);
  public
    { Public declarations }
    property ABank: string read FBank write FBank;
  end;

var
  frmBankStmntImport: TfrmBankStmntImport;
  recBankStmnt : TBankStmntRecord;
  bErrors : boolean;

implementation

uses AxiomData, MiscFunc;

{$R *.dfm}

procedure TfrmBankStmntImport.btnLoadClick(Sender: TObject);
begin
   PopulateGrid;
end;

procedure TfrmBankStmntImport.PopulateGrid;

   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      tvImport.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;

   procedure SetColumnHeadings;
   var
      i: integer;
   begin
      with tvImport do
      begin
         if DataController.RowCount > 0 then
         begin
            for i := 0 to ColumnCount - 1 do
            begin
               if SettingExists('SYS','BANKSTMNT_LOAD_GRID',i) then
                  Columns[i].Caption := SettingLoadString('SYS','BANKSTMNT_LOAD_GRID',i);
            end;
         end;
      end;
   end;
var
   bProceed : boolean;
   fSoftlog : TextFile;
   sNewline, sError : string;
   dAmount: double;
   icount : integer;
   i,x, iWords: integer;
   slImport: TStrings;
   slRow: TStringList;
   StatementFileName: string;
   sWord, st: string;
   line, col, NumRecords, TotalLines : integer;
   ACol: TcxGridColumn;
   AStartLine: integer;
begin
   icount := 0;
   if (tbFile.Text <> '') then
   begin
      if tvImport.DataController.RecordCount > 0 then
      begin
         for NumRecords := tvImport.DataController.RecordCount - 1 downto 0 do
            tvImport.DataController.DeleteRecord(0);
      end;
      bProceed := True;
      if not FileExists(tbFile.Text) then
      begin
         MsgErr('The import file does not exist');
         bProceed := False;
      end;
      if bProceed then
      begin
         AStartLine := seStartLine.Value - 1;
         StatementFileName := tbFile.Text;
         slImport := TStringList.Create;
         slRow := TStringList.Create;
//         slRow.Delimiter := #44;  //  Delim[cmbDelimeter.ItemIndex];

         try
            //load the tab delimited txt file
            slImport.LoadFromFile(StatementFileName);
            Split(slImport[AStartLine],Delim[cmbDelimeter.ItemIndex],slRow);
//            slRow.DelimitedText := slImport[seStartLine.Value];
            TotalLines := slImport.Count;
            for i:= 0 to slRow.Count - 1 do
            begin
               ACol := tvImport.CreateColumn;
               ACol.Caption := 'Col'+inttostr(i + 1);
            end;
            Progress.Properties.Max := (slImport.Count - 1);
            Application.ProcessMessages;
            //for each delimited line
            for line := AStartLine to -1 + slImport.Count do
            begin
               tvImport.DataController.AppendRecord;
               slRow.Clear;
               //"load" the line into a stringlist
               Split(slImport[line],Delim[cmbDelimeter.ItemIndex],slRow);
 //              slRow.DelimitedText := slImport[line];
               for col := 0 to slRow.Count - 1 do
               begin
                  SetRecordValue((line - AStartLine), col, slRow[col]);
               end;
               Progress.Position := (line - AStartLine);
               Application.ProcessMessages;
            end;
         finally
            SetColumnHeadings;
            
            btnSaveSettings.Enabled := True;
            slRow.Free;
            slImport.Free;
            Progress.Position := TotalLines;
            Application.ProcessMessages;
         end;
      end;
      Progress.Position := TotalLines;
      Application.ProcessMessages;
   end;
end;

procedure TfrmBankStmntImport.tbFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if cxShellBrowserDialog1.Execute then
   begin
      tbFile.Text := cxShellBrowserDialog1.Path; 
   end;
end;

procedure TfrmBankStmntImport.btnOKClick(Sender: TObject);
var
  bProceed, bColDefined : boolean;
  fSoftlog : TextFile;
  sNewline, sError, AType : string;
  dAmount: double;
  icount : integer;
  i, x, r, NumRecords: integer;
  ColumnListName, ColumnListIdx:TStringList;
begin
   icount := 0;
   with tvImport do
   begin
      if DataController.RowCount > 0 then
      begin
         ColumnListName := TStringList.Create;
         ColumnListIdx := TStringList.Create;
         bColDefined := False;
         for i := 0 to ColumnCount - 1 do
         begin
            if (Copy(Columns[i].Caption,1,3) <> 'Col') then
            begin
               ColumnListName.Add(Columns[i].Caption);
               ColumnListIdx.Add(IntToStr(i));
               bColDefined := True;
            end;
         end;

         if bColDefined then
         begin
            try
               for x := 0 to DataController.RowCount - 1 do
               begin
                  for r := 0 to ColumnListName.Count - 1 do
                  begin
                     if UpperCase(ColumnListName[r]) = 'BANKED' then
                     begin
                        recBankStmnt.Banked := dmAxiom.ConvertDate(DataController.GetValue(x,StrToInt(ColumnListIdx[r])),string(cmbDateFormat.Text));
                        break;
                     end;
                  end;
                  for r := 0 to ColumnListName.Count - 1 do
                  begin
                     if UpperCase(ColumnListName[r]) = 'AMOUNT' then
                     begin
                        recBankStmnt.Amount := StrToCurr(DataController.GetValue(x,StrToInt(ColumnListIdx[r])));
                        if recBankStmnt.Amount < 0 then
                        begin
                           recBankStmnt.DepType := 'C';
                           recBankStmnt.Amount := recBankStmnt.Amount * -1;
                        end
                        else
                           recBankStmnt.DepType := 'D';
                        break;
                     end;
                  end;
                  for r := 0 to ColumnListName.Count - 1 do
                  begin
                     if UpperCase(ColumnListName[r]) = 'DESCRIPTION' then
                     begin
                        recBankStmnt.Descr := Trim(DataController.GetValue(x,StrToInt(ColumnListIdx[r])));
                        break;
                     end;
                  end;
                  for r := 0 to ColumnListName.Count - 1 do
                  begin
                     if UpperCase(ColumnListName[r]) = 'REFERENCE' then
                     begin
                        recBankStmnt.Reference := Trim(DataController.GetValue(x,StrToInt(ColumnListIdx[r])));
                        break;
                     end;
                  end;
                  InsertStatement(recBankStmnt);
                  inc(icount);
               end;

               MsgInfo(inttostr(icount) + ' Bank Statement entries imported');
            except
               //
            end;
         end
         else
         begin
            MsgInfo('There are no columns defined.  Please define columns');
            Exit;
         end;
      end
      else
         MsgInfo('No Records to Import');
   end;

   if cbDeleteImportFile.Checked then
   begin
      if bErrors then
         RenameFile(tbFile.Text, DateToStr(Now)+'_'+tbFile.Text)
      else
         DeleteFile(tbFile.Text);
   end;

   if not cbKeepOpen.Checked then
   begin
      Self.Close;
   end
   else
   begin
      tvImport.BeginUpdate;
      if tvImport.DataController.RecordCount > 0 then
      begin
         for NumRecords := tvImport.DataController.RecordCount - 1 downto 0 do
            tvImport.DataController.DeleteRecord(0);
      end;
      tvImport.EndUpdate;
      Progress.Position := 0;

      btnOk.Enabled := False;
   end;
end;

procedure TfrmBankStmntImport.dxBarButton1Click(Sender: TObject);
begin
   Close();
end;

procedure TfrmBankStmntImport.cxGridPopupMenu1Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer;
  var AllowPopup: Boolean);
var
  Col: TcxGridColumn;
begin
   if AHitTest is TcxGridColumnHeaderHitTest then // Column is clicked
   begin
      FCol := TcxGridColumnHeaderHitTest(AHitTest).Column; // Obtain the clicked column
      FColIndex := Col.Index;
   end;
end;

procedure TfrmBankStmntImport.dxBarButton2Click(Sender: TObject);
begin
   if TdxBarButton(Sender).Caption = '[Clear]' then
      FCol.Caption := 'Col'+IntToStr(FColIndex)
   else
      FCol.Caption := TdxBarButton(Sender).Caption;
end;

procedure TfrmBankStmntImport.InsertStatement(ArecBankStmnt: TBankStmntRecord);
var
   dAmount, dPerUnit: currency;
begin
   try
      qryBankRec.Close;
      qryBankRec.ParamByName('BANK').AsString := ABank;

      qryBankRec.ParamByName('BANKED').AsDateTime := ArecBankStmnt.Banked;

      qryBankRec.ParamByName('DESCR').AsString := ArecBankStmnt.Descr;
//      qryBankRec.ParamByName('NMATTER').AsString := '1';
      qryBankRec.ParamByName('TYPE').AsString := ArecBankStmnt.DepType;
      qryBankRec.ParamByName('REFNO').AsString := ArecBankStmnt.Reference;
      dAmount := ArecBankStmnt.Amount;
      qryBankRec.ParamByName('AMOUNT').AsCurrency := dAmount;
      qryBankRec.ExecSql;
   except
//      on E: Exception do
//         SaveError(E.Message);
   end;
end;

procedure TfrmBankStmntImport.btnSaveSettingsClick(Sender: TObject);
var
   i: integer;
   bSaved: boolean;
begin
   bSaved := False;
   with tvImport do
   begin
      if DataController.RowCount > 0 then
      begin
         for i := 0 to ColumnCount - 1 do
         begin
            if (Copy(Columns[i].Caption,1,3) <> 'Col') then
            begin
               SettingSave('SYS','BANKSTMNT_LOAD_GRID',Columns[i].Caption,i);
               bSaved := True;
            end;
         end;
      end;
   end;
   if cmbDateFormat.Text <> '' then
      SettingSave('SYS','BANKSTMNT_DATE_FORMAT',cmbDateFormat.Text);

   SettingSave('SYS','BANKSTMNT_START_LINE',integer(seStartLine.Value));

   if bSaved then
      MsgInfo('Settings Saved successfully.')
   else
      MsgInfo('Settings wre not saved.');
end;

procedure TfrmBankStmntImport.FormCreate(Sender: TObject);
begin
   if SettingExists('SYS','BANKSTMNT_DATE_FORMAT') then
      cmbDateFormat.Text := SettingLoadString('SYS','BANKSTMNT_DATE_FORMAT');

   if SettingExists('SYS','BANKSTMNT_START_LINE') then
      seStartLine.Value := SettingLoadInteger('SYS','BANKSTMNT_START_LINE');
end;

procedure TfrmBankStmntImport.pbCancelClick(Sender: TObject);
begin
   Close();
end;

end.
