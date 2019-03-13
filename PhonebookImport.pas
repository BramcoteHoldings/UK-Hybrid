unit PhonebookImport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, OracleUniProvider, Uni, DBAccess, ExtCtrls, ComCtrls,
  Variants, ShlObj, cxShellCommon, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxShellComboBox,
  cxLookAndFeelPainters, cxCalendar, cxButtons, cxGroupBox, cxRadioGroup,
  cxButtonEdit, cxShellBrowserDialog, cxLabel, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ActnList, ActnMan, Menus, cxGraphics,
  cxCheckBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridLevel, cxGrid, cxDBData, cxGridDBTableView, cxPC, dxBar,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxProgressBar, 
  cxLookAndFeels, XPStyleActnCtrls, MemDS, cxNavigator, ComObj, System.Actions,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu;

const
   Delim: array[0..2] of char = (#44,#9,#59);

type
  TPhonebookRecord = record
    Search : string;
    Title : string;
    Address : string;
    Suburb : string;
    State : string;
    Postcode : string;
    WorkPhone : string;
    Mobile : string;
    Email : string;
    Name: string;
    Givennames: string;
    Lastname: string;
    WebSite: string;
    Gender: string;
    IndustryCode: string;
    DX: string;
    DXLoc: string;
    PostalAddress : string;
    PostalSuburb : string;
    PostalState : string;
    PostalPostcode : string;
  end;

  TImportFile = array of array of string;


  TfrmPhonebookImport = class(TForm)
    qryTmp: TUniQuery;
    expSave: TSaveDialog;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    ActionManager1: TActionManager;
    actDsbecovery: TAction;
    cbKeepOpen: TcxCheckBox;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    Label3: TLabel;
    tbFile: TcxButtonEdit;
    grdImport: TcxGrid;
    tvImport: TcxGridTableView;
    grdImportDBTableView1: TcxGridDBTableView;
    grdImportDBTableView1FIELD1: TcxGridDBColumn;
    grdImportLevel1: TcxGridLevel;
    btnOK: TcxButton;
    pbCancel: TcxButton;
    cbDeleteImportFile: TcxCheckBox;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    qryPhonebookInsert: TUniQuery;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    edImportNote: TEdit;
    Label1: TLabel;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    Label2: TLabel;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    pnlGrid: TPanel;
    btnLoad: TcxButton;
    btnSaveSettings: TcxButton;
    cmbDelimeter: TcxComboBox;
    cxLabel2: TcxLabel;
    Progress: TcxProgressBar;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actDsbecoveryUpdate(Sender: TObject);
    procedure actDsbecoveryExecute(Sender: TObject);
    procedure pbCancelClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGridPopupMenu1Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer;
      var AllowPopup: Boolean);
    procedure dxBarButton2Click(Sender: TObject);
    procedure btnSaveSettingsClick(Sender: TObject);
  private
    { Private declarations }
    FImportFile: TImportFile;
    FCol: TcxGridColumn;
    procedure PopulateGrid;
    function InsertPhonebook(ArecPhonebook: TPhonebookRecord): boolean;
  public
    { Public declarations }
  end;

var
  frmPhonebookImport: TfrmPhonebookImport;
  recPhonebook : TPhonebookRecord;
  bErrors : boolean;
  iSundryError : integer;

implementation

uses
  AxiomData, MiscFunc,  Desktop;

{$R *.DFM}



procedure TfrmPhonebookImport.FormShow(Sender: TObject);
begin
   tbFile.Text := SettingLoadString('PhonebookImport', 'Import File');
end;

procedure TfrmPhonebookImport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SettingSave('PhonebookImport', 'Import File', tbFile.Text);
   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
      Action := caFree;
   RemoveFromDesktop(Self);
end;

procedure TfrmPhonebookImport.FormCreate(Sender: TObject);
begin
   bErrors := False;
   frmDesktop.dxBarWindowList.Items.AddObject(Self.Caption, Self);
end;

procedure TfrmPhonebookImport.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if cxShellBrowserDialog1.Execute then
   begin
      tbFile.Text := cxShellBrowserDialog1.Path;
   end;
end;

procedure TfrmPhonebookImport.actDsbecoveryUpdate(Sender: TObject);
begin
   btnOk.Enabled := (tbFile.Text <> '')  and (tvImport.DataController.RecordCount > 0);
end;

procedure TfrmPhonebookImport.actDsbecoveryExecute(Sender: TObject);
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
   if (tbFile.Text <> '') then
   begin
      bProceed := True;
      if not FileExists(tbFile.Text) then
      begin
         MsgErr('The import file does not exist');
         bProceed := False;
      end;

      if bProceed then
      begin
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
                        recPhonebook.Search := '';
                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'SEARCH' then
                           begin
                              recPhonebook.Search := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'TITLE' then
                           begin
                              recPhonebook.Title := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'ADDRESS' then
                           begin
                              recPhonebook.Address := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'SUBURB' then
                           begin
                              recPhonebook.Suburb := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'STATE' then
                           begin
                              recPhonebook.State := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'POSTCODE' then
                           begin
                              recPhonebook.Postcode := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'WORKPHONE' then
                           begin
                              recPhonebook.WorkPhone := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'MOBILE' then
                           begin
                              recPhonebook.Mobile := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'EMAIL' then
                           begin
                              recPhonebook.Email := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'NAME' then
                           begin
                              recPhonebook.Name := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'GIVENNAMES' then
                           begin
                              recPhonebook.Givennames := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'LASTNAME' then
                           begin
                              recPhonebook.Lastname := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'WEBSITE' then
                           begin
                              recPhonebook.WebSite := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'GENDER' then
                           begin
                              recPhonebook.Gender := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'INDUSTRYCODE' then
                           begin
                              recPhonebook.IndustryCode := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'DX' then
                           begin
                              recPhonebook.DX := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'DXLOC' then
                           begin
                              recPhonebook.DXLoc := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'POSTALADDRESS' then
                           begin
                              recPhonebook.Address := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'POSTALSUBURB' then
                           begin
                              recPhonebook.Suburb := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'POSTALSTATE' then
                           begin
                              recPhonebook.State := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;

                        for r := 0 to ColumnListName.Count - 1 do
                        begin
                           if UpperCase(ColumnListName[r]) = 'POSTALPOSTCODE' then
                           begin
                              recPhonebook.Postcode := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                              break;
                           end;
                        end;


                        if recPhonebook.Search = '' then
                           recPhonebook.Search := recPhonebook.Lastname+','+recPhonebook.Givennames;

                        if InsertPhonebook(recPhonebook) = false then
                           continue;
                        inc(icount);
                        Label2.Caption := 'imported '+IntToStr(icount) + ' of ' + inttostr(tvImport.DataController.RowCount);
                        Application.ProcessMessages;
                     end;
                     MsgInfo(inttostr(icount) + ' Phonebook record(s) imported');
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
  end
  else
    MsgErr('Please enter the file names');
end;

procedure TfrmPhonebookImport.pbCancelClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmPhonebookImport.PopulateGrid;

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
               if SettingExists('SYS','PHONEBOOK_LOAD_GRID',i) then
                  Columns[i].Caption := SettingLoadString('SYS','PHONEBOOK_LOAD_GRID',i);
            end;
         end;
      end;
   end;
const
   xlCellTypeLastCell = $0000000B;
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
  f: file of Byte;
  size: Longint;
  AStartLine: integer;
    XLApp, Sheet: OLEVariant;
  RangeMatrix: Variant;
  y, k, r: Integer;
  AXLSFile, LExt: string;
begin
   icount := 0;
   if (tbFile.Text <> '') then
   begin
      if tvImport.DataController.RecordCount > 0 then
      begin
         for NumRecords := tvImport.DataController.RecordCount - 1 downto 0 do
            tvImport.DataController.DeleteRecord(0);
      end;

      for i := tvImport.ColumnCount - 1 downto 0 do
          tvImport.Columns[0].Free;

      bProceed := True;
      if not FileExists(tbFile.Text) then
      begin
         MsgErr('The import file does not exist');
         bProceed := False;
      end;
      if bProceed then
      begin
         StatementFileName := tbFile.Text;
         slImport := TStringList.Create;

         //load the tab delimited txt file
         AssignFile(f, StatementFileName);
         Reset(f);
         try
            size := FileSize(f);
         finally
            CloseFile(f);
         end;

         if (size > 0) then
         begin
            LExt := ExtractFileExt(tbFile.Text);
            if (UpperCase(Copy(LExt, 2, Length(LExt)-1)) = 'CSV') or
               (UpperCase(Copy(LExt, 2, Length(LExt)-1)) = 'XLSX')then
            begin
               AXLSFile := tbFile.Text;

             //load the tab delimited txt file
               try
                  // Create Excel-OLE Object
                  XLApp := CreateOleObject('Excel.Application');
                  try
                     // Hide Excel
                     XLApp.Visible := False;

                     //Open the Workbook
                     XLApp.Workbooks.Open(AXLSFile);

                     Sheet := XLApp.Workbooks[1].WorkSheets[1];
                     Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[1];

                     //In order to know the dimension of the WorkSheet, i.e the number of rows
                     //and the number of columns, we activate the last non-empty cell of it

                     Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
                     //Get the value of the last row
                     x :=XLApp.ActiveCell.Row;
                     // Get the value of the last column
                     y := XLApp.ActiveCell.Column;

                     // Assign the Variant associated with the WorkSheet to the Delphi Variant
                     RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[X,Y]].Value;

                     // create columns
                     for i := 0 to y - 1 do
                     begin
                        ACol := tvImport.CreateColumn;
                        ACol.Caption := 'Col'+inttostr(i + 1);
                        ACol.Tag := i+1;
                     end;

                     Progress.Properties.Max := (x - 1);
                     Application.ProcessMessages;

                     //Define the loop for filling in the Grid
                     line := 1;
                     repeat
                        tvImport.DataController.AppendRecord;
                        for col := 0 to y - 1 do
                        begin
                           //"load" the line into a grid
                           SetRecordValue(line-1, col, RangeMatrix[line, col+1]);
                           Progress.Position := line;
                           Application.ProcessMessages;
                         end;
                        Inc(line, 1);
                     until line > x;

                     // Unassign the Delphi Variant Matrix
                     RangeMatrix := Unassigned;
                  finally
                     // Quit Excel
                     if not VarIsEmpty(XLApp) then
                     begin
                        XLApp.DisplayAlerts := False;
                        XLApp.Quit;
                        XLAPP := Unassigned;
                        Sheet := Unassigned;
                     end;
                  end;
               finally
                  SetColumnHeadings;
                  btnSaveSettings.Enabled := True;
                  Progress.Position := line;
                  TotalLines := line;
                  Application.ProcessMessages;
               end;
            end
            else
            begin
               try
                  slRow := TStringList.Create;
                  slRow.Delimiter := Delim[cmbDelimeter.ItemIndex];
                  slRow.QuoteChar := '"';

                  slImport.Delimiter := Delim[cmbDelimeter.ItemIndex];
                  slImport.QuoteChar := '"';

                  AStartLine := 0;
                  slImport.LoadFromFile(StatementFileName);
//                  slRow.DelimitedText := slImport[0];
                  Split(slImport[0],Delim[cmbDelimeter.ItemIndex],slRow);
                  TotalLines := slImport.Count;
                  for i:= 0 to slRow.Count - 1 do
                  begin
                     ACol := tvImport.CreateColumn;
                     ACol.Caption := 'Col'+inttostr(i + 1);
                  end;
                  Progress.Properties.Max := (slImport.Count - 1);
                  Application.ProcessMessages;
                  //for each delimited line
                  for line := 0 to -1 + slImport.Count do
                  begin
                     tvImport.DataController.AppendRecord;
                     slRow.Clear;
                     //"load" the line into a stringlist
//                     slRow.DelimitedText := slImport[line];
                     Split(slImport[line],Delim[cmbDelimeter.ItemIndex],slRow);
                     for col := 0 to slRow.Count - 1 do
                     begin
//                        SetRecordValue(line, col, slRow[col]);
                        SetRecordValue((line - AStartLine), col, slRow[col]);
                     end;
                     Progress.Position := line;
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
         end
         else
            MsgInfo('File is empty');
      end;
      Progress.Position := TotalLines;
      Application.ProcessMessages;
   end;
end;

procedure TfrmPhonebookImport.btnLoadClick(Sender: TObject);
begin
   PopulateGrid;
end;

procedure TfrmPhonebookImport.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmPhonebookImport.cxGridPopupMenu1Popup(ASenderMenu: TComponent;
  AHitTest: TcxCustomGridHitTest; X, Y: Integer; var AllowPopup: Boolean);
var
  Col: TcxGridColumn;
begin
   if AHitTest is TcxGridColumnHeaderHitTest then // Column is clicked
   begin
      FCol := TcxGridColumnHeaderHitTest(AHitTest).Column; // Obtain the clicked column
   end;
end;

procedure TfrmPhonebookImport.dxBarButton2Click(Sender: TObject);
begin
   FCol.Caption := TdxBarButton(Sender).Caption;
end;

function TfrmPhonebookImport.InsertPhonebook(ArecPhonebook: TPhonebookRecord): boolean;
var
   LResult: boolean;
begin
   try
      LResult := true;
      with qryPhonebookInsert do
      begin
        Close;
         ParamByName('SEARCH').AsString := ArecPhonebook.Search;
         ParamByName('TITLE').AsString := ArecPhonebook.Title;

         ParamByName('ADDRESS').AsString := ArecPhonebook.Address;
         ParamByName('SUBURB').AsString := ArecPhonebook.Suburb;
         ParamByName('STATE').AsString := ArecPhonebook.State;
         ParamByName('POSTCODE').AsString :=  ArecPhonebook.Postcode;
         ParamByName('WORKPHONE').AsString := ArecPhonebook.WorkPhone;

         ParamByName('MOBILE').AsString := ArecPhonebook.Mobile;

         ParamByName('EMAIL').AsString := ArecPhonebook.Email;
         ParamByName('NAME').AsString := ArecPhonebook.Name;
         ParamByName('GIVENNAMES').AsString := ArecPhonebook.Givennames;
         ParamByName('LASTNAME').AsString := ArecPhonebook.Lastname;
         ParamByName('GENDER').AsString := ArecPhonebook.Gender;
         ParamByName('INDUSTRYCODE').AsString := ArecPhonebook.IndustryCode;
         ParamByName('DX').AsString := ArecPhonebook.DX;
         ParamByName('DXLOC').AsString := ArecPhonebook.DXLoc;

         ParamByName('POSTALADDRESS').AsString := ArecPhonebook.PostalAddress;
         ParamByName('POSTALSUBURB').AsString := ArecPhonebook.PostalSuburb;
         ParamByName('POSTALSTATE').AsString := ArecPhonebook.PostalState;
         ParamByName('POSTALPOSTCODE').AsString :=  ArecPhonebook.PostalPostcode;


         ParamByName('IMPORT_NOTE').AsString := trim(Copy(edImportNote.Text, 1, 20));
         ExecSql;
      end;
   except
//      on E: Exception do
//         SaveError(E.Message);
         LResult := false;
   end;
   Result := LResult;
end;

procedure TfrmPhonebookImport.btnSaveSettingsClick(Sender: TObject);
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
               SettingSave('SYS','PHONEBOOK_LOAD_GRID',Columns[i].Caption,i);
               bSaved := True;
            end;
         end;
      end;
   end;

   if bSaved then
      MsgInfo('Settings Saved successfully.')
   else
      MsgErr('Settings were not saved.');
end;

end.
