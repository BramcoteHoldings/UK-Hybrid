unit SoftlogImport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, OracleUniProvider, Uni, DBAccess, ExtCtrls, ComCtrls,
  Variants, ShlObj, ComObj, cxDateUtils, cxNavigator, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxPCdxBarPopupMenu,
  Vcl.Menus, dxCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu, dxBar, cxClasses, Vcl.ActnList,
  Vcl.XPStyleActnCtrls, Vcl.ActnMan, MemDS, cxTextEdit, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxDropDownEdit, cxProgressBar, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxMaskEdit, cxButtonEdit,
  cxButtons, cxPC, cxCheckBox, System.Actions, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

const
   Delim: array[0..2] of char = (#44,#9,#59);

type
  TSundryRecord = record
    Created : TDateTime;
    FileID : string;
    nmatter : INTEGER;
    nclient : INTEGER;
    Descr : string;
    Units : integer;
    Amount : currency;
    SundryType : string;
    TaxCode : string;
    Tax: currency;
    TaxIncluded: boolean;
  end;

  TImportFile = array of array of string;


  TfrmSoftlogImport = class(TForm)
    qryMatter: TUniQuery;
    qrySundryInsert: TUniQuery;
    qrySundryErrorInsert: TUniQuery;
    qryTmp: TUniQuery;
    qrySundryTypes: TUniQuery;
    qryGetMatters: TUniQuery;
    expSave: TSaveDialog;
    tblSundryTypes: TUniTable;
    dsSundryTypes: TUniDataSource;
    ActionManager1: TActionManager;
    actDsbecovery: TAction;
    cbKeepOpen: TcxCheckBox;
    pagImport: TcxPageControl;
    tabImport: TcxTabSheet;
    tabExport: TcxTabSheet;
    rgExpCurrentMatters: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edMarker: TcxTextEdit;
    btnExport: TcxButton;
    cmbEntity: TcxComboBox;
    btnOK: TcxButton;
    pbCancel: TcxButton;
    Label3: TLabel;
    tbFile: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cmbSundryType: TcxLookupComboBox;
    Label1: TLabel;
    dptSund: TcxDateEdit;
    cbDeleteImportFile: TcxCheckBox;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarButton6: TdxBarButton;
    grdImport: TcxGrid;
    tvImport: TcxGridTableView;
    grdImportDBTableView1: TcxGridDBTableView;
    grdImportDBTableView1FIELD1: TcxGridDBColumn;
    grdImportLevel1: TcxGridLevel;
    dxBarButton7: TdxBarButton;
    cmbDateFormat: TcxComboBox;
    cxLabel3: TcxLabel;
    OpenDialog1: TOpenDialog;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    rFileType: TRadioGroup;
    pnlGrid: TPanel;
    Progress: TcxProgressBar;
    btnSaveSettings: TcxButton;
    cxLabel2: TcxLabel;
    cmbDelimeter: TcxComboBox;
    btnLoad: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
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
    procedure dxBarButton9Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
    FImportFile: TImportFile;
    FCol: TcxGridColumn;
    procedure SaveError(sError : string);
    procedure PopulateGrid;
    procedure InsertSundry(ArecSundry: TSundryRecord);
  public
    { Public declarations }
  end;

var
  frmSoftlogImport: TfrmSoftlogImport;
  recSundry : TSundryRecord;
  bErrors : boolean;
  iSundryError : integer;

implementation

uses
  AxiomData, MiscFunc, SundryError, Desktop;

{$R *.DFM}

procedure TfrmSoftlogImport.SaveError(sError : string);
begin
   bErrors := True;
   with qrySundryErrorInsert do
   begin
      ParamByName('NSUNDRYERROR').AsInteger := iSundryError + 1;
      iSundryError := iSundryError + 1;
      if recSundry.Created = 0 then
         recSundry.Created := dptSund.Date;
      ParamByName('CREATED').AsDateTime:= recSundry.Created;
      ParamByName('FILEID').AsString := recSundry.FileID;
      ParamByName('DESCR').AsString := recSundry.Descr;
      ParamByName('ERROR').AsString := sError;
      ParamByName('UNITS').AsInteger := recSundry.Units;
      ParamByName('AMOUNT').AsFloat := recSundry.Amount;
      ParamByName('SUNDRYTYPE').AsString := recSundry.SundryType;
      ExecSQL;
   end;
end;


procedure TfrmSoftlogImport.FormShow(Sender: TObject);
begin
   tbFile.Text := SettingLoadString('SoftlogImport', 'Import File');
   dptSund.Date := Now;
end;

procedure TfrmSoftlogImport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SettingSave('SoftlogImport', 'Import File', tbFile.Text);
   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
      Action := caFree;
   RemoveFromDesktop(Self);
end;

procedure TfrmSoftlogImport.FormCreate(Sender: TObject);
begin
   bErrors := False;
   frmDesktop.dxBarWindowList.Items.AddObject(Self.Caption, Self);
   tblSundryTypes.FilterSQL := 'ENTITY = ''' + dmAxiom.Entity + '''' ;
   tblSundryTypes.Open;
   qrySundryTypes.open;
   StringPopulate(cmbEntity.Properties.Items,'ENTITY','CODE');
end;

procedure TfrmSoftlogImport.btnExportClick(Sender: TObject);
var
fSoftlog,markerfile : TextFile;
begin
   expSave.Execute;
   try
      AssignFile(fSoftlog, expSave.Filename);
      AssignFile(markerfile, ExtractFileDir(expSave.FileName) + '\' + edMarker.Text);
   //fsoftlog := fileopen(expSave.Filename,fmOpenWrite);
   //Reset(fSoftlog);

   //if not FileExists(expSave.Filename) then
      Rewrite(fSoftlog);
      qryGetMatters.Close;
      qryGetMatters.SQL.Clear;
      if rFileType.ItemIndex = 0 then
      begin
         qryGetMatters.SQL.Text := ' select lpad(lpad(m.fileid,8,'' ''),14,'' '') ||'+
                                'rpad(substr(m.title,0,65),65,'' '')||'+
                                'rpad(substr(m.shortdescr,0,82),82,'' '')  ||''N'' ||'+
                                'lpad(substr(c.code,0,6),6,'' '') || lpad(c.code,22,'' '')as ln '+
                                'from matter m,client c '+
                                'where m.nclient = c.nclient '+
                                'and closed = 0 '+
                                'and (entity = :ENTITY or :ENTITY is null) ';
      end
      else
      begin
         qryGetMatters.SQL.Text := ' select ''"'' || rpad(lpad(m.fileid,6,''0''),14,'' '') || ''","'' || '+
                                'rpad(substr(m.title,0,22),22,'' '') || ''","'' || '+
                                'rpad(substr(m.shortdescr,0,22),22,'' '')  ||''","B"," ","'' || '+
                                'rpad(substr(c.code,0,8),8,'' '') || ''",T,""'' as ln '+
                                'from matter m,client c '+
                                'where m.nclient = c.nclient '+
                                'and closed = 0 '+
                                'and (entity = :ENTITY or :ENTITY is null) ';
      end;
      qryGetMatters.ParamByName('ENTITY').AsString := cmbEntity.Text;
      qryGetMatters.Open;

      while not qryGetMatters.EOF do
      begin
         Writeln(fSoftlog, qryGetMatters.FieldByName('LN').AsString);
         qryGetMatters.Next;
      end;
      qryGetMatters.Close;
   finally
      CloseFile(fSoftlog);
      rewrite(markerfile);
      closefile(markerfile);
   end;
end;

procedure TfrmSoftlogImport.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if OpenDialog1.Execute then
   begin
      tbFile.Text := OpenDialog1.FileName;

   end;
end;

procedure TfrmSoftlogImport.actDsbecoveryUpdate(Sender: TObject);
begin
   btnOk.Enabled := (tbFile.Text <> '') and ((cmbSundryType.Text <> '') or ((rFileType.ItemIndex = 2) and
                    (tvImport.DataController.RecordCount > 0)));
end;

procedure TfrmSoftlogImport.actDsbecoveryExecute(Sender: TObject);
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
         with qryTmp do
         begin
            SQL.Text := 'SELECT MAX(NSUNDRYERROR) AS NSUNDRYERROR FROM SUNDRYERROR';
            Prepare;
            Open;
            iSundryError := FieldByName('NSUNDRYERROR').AsInteger;
         end;

         if rFileType.ItemIndex <> 2 then
         begin
            AssignFile(fSoftlog, tbFile.Text);
            Reset(fSoftlog);

            if rFileType.ItemIndex = 0 then
            begin
               while not Eof(fSoftlog) do
               begin
                  Readln(fSoftlog, sNewline);
                  sError := '';

               // get the date
       //        try
       //           recSundry.Created := EncodeDate(2000 + StrToInt(Copy(sNewline, 54, 2)), StrToInt(Copy(sNewline, 52, 2)), StrToInt(Copy(sNewline, 50, 2)));
       //        except
       //           sError := 'Invalid date';
                  recSundry.Created := dptSund.Date;;
      //         end;

                  // Set up the sundry record
                  recSundry.FileID := Trim(Copy(sNewline,15, 14));

                  // remove 0 from front of file

                  while (length(recSundry.FileID) > 1) and (recSundry.FileID[1] = '0') do
                     recSundry.FileID := copy(recSundry.FileID,2,999999);

                  // get the type
                  recSundry.SundryType := cmbsundryType.EditValue;

                  // get the amount & check the amount
                  try
                     recSundry.Amount := StrToCurr(Trim(Copy(sNewline, 58, 10)));
                  except
                     sError := 'Invalid amount';
                     recSundry.Amount := 0;
                  end;

                  // get the descr
                  recSundry.Descr := Copy(sNewline, 36, 20);

                  try
                     recSundry.Units := StrToInt(Trim(Copy(sNewline, 31, 5)));
                     if recSundry.Units = 0 then
                        recSundry.Units := 1;
                  except
                     sError := 'Invalid units';
                     qrySundryInsert.ParamByName('UNITS').AsInteger := 0;
                  end;

                  // check the fileid
                  qryMatter.Close;
                  qryMatter.ParamByName('FILEID').AsString := recSundry.FileID;
                  qryMatter.Open;

                  if qryMatter.IsEmpty then
                     sError := sError +'Matter ' + recSundry.FileID + ' not found'+ #13
                  else if qryMatter.FieldByName('CLOSED').AsInteger = 1 then
                     sError := sError +'Matter ' + recSundry.FileID + ' is not open'+ #13;

                  recSundry.NMatter := qryMatter.FieldByName('NMATTER').AsInteger;
                  recSundry.nclient := qryMatter.FieldByName('NCLIENT').AsInteger;
                  qryMatter.Close;

    // (:ACCT, :CREATED, :AMOUNT, 'N', :DESCR, :NMATTER, :NCLIENT,
    //  :PERUNIT, :UNITS, 0, :TYPE, 'N', :FILEID, :TAX)

                  qrySundryTypes.Close;
                  qrySundryTypes.ParamByName('TYPE').AsString := recSundry.SundryType;
                  qrySundryTypes.open;

                  if sError = '' then
                  begin // insert the sundry
                     qrySundryInsert.Close;
                     qrySundryInsert.ParamByName('ACCT').AsString := TableString('MATTER', 'NMATTER', recSundry.NMATTER, 'ENTITY');
                     qrySundryInsert.ParamByName('CREATED').AsDateTime := recSundry.Created;

                     qrySundryInsert.ParamByName('DESCR').AsString := trim(recSundry.Descr);
                     qrySundryInsert.ParamByName('NMATTER').AsInteger := recSundry.NMATTER;
                     qrySundryInsert.ParamByName('NCLIENT').AsInteger := recSundry.NCLIENT;
                     qrySundryInsert.ParamByName('PERUNIT').AsCurrency := qrySundryTypes.FieldByName('RATE').AsCurrency;
                     qrySundryInsert.ParamByName('UNITS').AsInteger := recSundry.Units;  //1;
                     qrySundryInsert.ParamByName('TYPE').AsString := recSundry.SundryType;
                     qrySundryInsert.ParamByName('FILEID').AsString := PadFileID(recSundry.FileId);
                     dAmount := recSundry.Amount;
                     qrySundryInsert.ParamByName('TAX').AsCurrency := TaxCalc(dAmount, '', qrySundryTypes.FieldByName('TAXCODE').AsString, recSundry.Created);
                     qrySundryInsert.ParamByName('AMOUNT').AsCurrency := dAmount;
                     qrySundryInsert.ParamByName('TAXCODE').AsString := qrySundryTypes.FieldByName('TAXCODE').AsString;
                     qrySundryInsert.ExecSql;
                     inc(icount);
                     if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
                        PostLedgers(qrySundryInsert.ParamByName('CREATED').AsDateTime
                          , qrySundryInsert.ParamByName('AMOUNT').AsFloat
                          , qrySundryInsert.ParamByName('FILEID').AsString
                          , 'SUNDRY'
                          , qrySundryInsert.ParamByName('NSUNDRY').AsInteger
                          , qrySundryInsert.ParamByName('DESCR').AsString
                          , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR')
                          , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR')
                          , qryMatter.FieldByName('AUTHOR').AsString
                          , qrySundryTypes.FieldByName('TAXCODE').AsString);

                     qrySundryInsert.Close;
                  end
                  else
                     SaveError(sError);
               end;
   //          qrySundryTypes.Close;
               ShowMessage(inttostr(icount) + ' Sundries imported');
               CloseFile(fSoftlog);
            end
            else
            begin
               while not Eof(fSoftlog) do
               begin
                  Readln(fSoftlog, sNewline);
                  sError := '';
                  // Set up the sundry record
                  recSundry.FileID := Trim(Copy(sNewline, 1, 15));
                  try
                     recSundry.Created := EncodeDate(2000 + StrToInt(Copy(sNewline, 54, 2)), StrToInt(Copy(sNewline, 52, 2)), StrToInt(Copy(sNewline, 50, 2)));
                  except
                     sError := 'Invalid date';
                     recSundry.Created := Now;
                  end;
                  try
                     recSundry.Amount := StrToInt(Trim(Copy(sNewline, 23, 7))) / 100;
                  except
                     sError := 'Invalid amount';
                     recSundry.Amount := 0;
                  end;
                  try
                     recSundry.Units := StrToInt(Trim(Copy(sNewline, 19, 4)));
                     if recSundry.Units = 0 then
                        recSundry.Units := 1;
                  except
                     sError := 'Invalid units';
                     qrySundryInsert.ParamByName('UNITS').AsInteger := 0;
                  end;
                  recSundry.SundryType := Copy(sNewline, 16, 3);
                  if not qrySundryTypes.Locate('CODE', recSundry.SundryType, []) then
                     sError := 'Invalid Sundry Type';

                  recSundry.Descr := Copy(sNewline, 30, 16);

                  if sError <> '' then
                     SaveError(sError)
                  else
                  with qryMatter do
                  begin
                     Close;
                     ParamByName('FILEID').AsString := PadFileID(recSundry.FileID);
                     Prepare;
                     Open;
                     if IsEmpty then
                        // No such matter - make an error entry
                        SaveError('Not a current Matter')
                     else
                     begin
                        if FieldByName('COMPLETED').Value = Null then
                        begin
                           qrySundryInsert.ParamByName('ACCT').AsString := dmAxiom.Entity;
                           if recSundry.Created = 0 then
                              recSundry.Created := dptSund.Date;
                           qrySundryInsert.ParamByName('CREATED').AsDateTime := recSundry.Created;
                           qrySundryInsert.ParamByName('FILEID').AsString := PadFileID(recSundry.FileID);
                           qrySundryInsert.ParamByName('NMATTER').AsInteger := FieldByName('NMATTER').AsInteger;
                           qrySundryInsert.ParamByName('NCLIENT').AsInteger := FieldByName('NCLIENT').AsInteger;
                           qrySundryInsert.ParamByName('UNITS').AsInteger := recSundry.Units;
                           qrySundryInsert.ParamByName('PERUNIT').AsFloat := qrySundryInsert.ParamByName('AMOUNT').AsFloat / qrySundryInsert.ParamByName('UNITS').AsInteger;
                           qrySundryInsert.ParamByName('TYPE').AsString := recSundry.SundryType;
                           qrySundryInsert.ParamByName('DESCR').AsString := Trim(qrySundryTypes.FieldByName('DESCR').AsString) + ' ' + Trim(recSundry.Descr);
                           dAmount := recSundry.Amount;
                           qrySundryInsert.ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', qrySundryTypes.FieldByName('TAXCODE').AsString, recSundry.Created);
                           qrySundryInsert.ParamByName('AMOUNT').AsFloat := dAmount;
                           qrySundryInsert.ExecSQL;

                           MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'UNBILL_SUND', qrySundryInsert.ParamByName('AMOUNT').AsFloat);
                           if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
                              PostLedgers(qrySundryInsert.ParamByName('CREATED').AsDateTime
                                , qrySundryInsert.ParamByName('AMOUNT').AsFloat
                                , qrySundryInsert.ParamByName('FILEID').AsString
                                , 'SUNDRY'
                                , qrySundryInsert.ParamByName('NSUNDRY').AsInteger
                                , qrySundryInsert.ParamByName('DESCR').AsString
                                , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR')
                                , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR')
                                , qryMatter.FieldByName('AUTHOR').AsString
                                , qrySundryTypes.FieldByName('TAXCODE').AsString);
                        end
                        else
                           // Matter completed
                           SaveError('Matter has been completed');
                     end;
                  end;
               end;
               CloseFile(fSoftlog);
            end;
         end
         else
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
                           for r := 0 to ColumnListName.Count - 1 do
                           begin
                              if UpperCase(ColumnListName[r]) = 'CREATED' then
                              begin
                                 recSundry.Created := dmAxiom.ConvertDate(DataController.GetValue(x,StrToInt(ColumnListIdx[r])),string(cmbDateFormat.Text));
                                 break;
                              end;
                           end;
                           try
                              if cmbSundryType.Text <> '' then
                              begin
                                 recSundry.SundryType := cmbSundryType.EditValue;
                                 recSundry.TaxCode :=  TableString('SUNDRYTYPE','CODE',recSundry.SundryType,'TAXCODE');
                              end;
                           except
                           //
                           end;
                           for r := 0 to ColumnListName.Count - 1 do
                           begin
                              if UpperCase(ColumnListName[r]) = 'TYPE' then
                              begin
                                 AType := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                                 recSundry.SundryType := TableString('SUNDRYTYPE','SOFTLOG_CODE',AType,'CODE');
                                 recSundry.TaxCode :=  TableString('SUNDRYTYPE','SOFTLOG_CODE',AType,'TAXCODE');
                                 if (recSundry.SundryType = '') then
                                    try
                                       recSundry.SundryType := cmbSundryType.EditValue;
                                    except
                                       exit;
                                    end;
                                 recSundry.TaxCode :=  TableString('SUNDRYTYPE','CODE',recSundry.SundryType,'TAXCODE');
                                 recSundry.Descr := TableString('SUNDRYTYPE','CODE',recSundry.SundryType,'DESCR');
                                 break;
                              end;
                           end;
                           for r := 0 to ColumnListName.Count - 1 do
                           begin
                              if UpperCase(ColumnListName[r]) = 'MATTER' then
                              begin
                                 recSundry.FileID := DataController.GetValue(x,StrToInt(ColumnListIdx[r]));
                                 break;
                              end;
                           end;
                           for r := 0 to ColumnListName.Count - 1 do
                           begin
                              if UpperCase(ColumnListName[r]) = 'UNITS' then
                              begin
                                 recSundry.Units := StrToInt(DataController.GetValue(x,StrToInt(ColumnListIdx[r])));
                                 break;
                              end;
                           end;
                           for r := 0 to ColumnListName.Count - 1 do
                           begin
                              if UpperCase(ColumnListName[r]) = 'AMOUNT' then
                              begin
                                 recSundry.Amount := StrToCurr(DataController.GetValue(x,StrToInt(ColumnListIdx[r])));
                                 break;
                              end;
                           end;
                           for r := 0 to ColumnListName.Count - 1 do
                           begin
                              if UpperCase(ColumnListName[r]) = 'TAX' then
                              begin
                                 recSundry.Tax := StrToCurr(DataController.GetValue(x,StrToInt(ColumnListIdx[r])));
                                 recSundry.TaxIncluded := True;
                                 break;
                              end;
                           end;
                           for r := 0 to ColumnListName.Count - 1 do
                           begin
                              if UpperCase(ColumnListName[r]) = 'DESCRIPTION' then
                              begin
                                 recSundry.Descr := Trim(DataController.GetValue(x,StrToInt(ColumnListIdx[r])));
                                 break;
                              end;
                           end;

                           if recSundry.Created = 0 then
                              recSundry.Created := dptSund.Date;

                           with qryMatter do
                           begin
                              Close;
                              ParamByName('FILEID').AsString := PadFileID(recSundry.FileID);
                              Prepare;
                              Open;
                              if IsEmpty then
                                 // No such matter - make an error entry
                                 SaveError('Not a current Matter')
                              else
                                 InsertSundry(recSundry);
                              inc(icount);
                           end;
                        end;
                        MsgInfo(inttostr(icount) + ' Sundries imported');
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

         if bErrors then
            with TfrmSundryError.Create(Self) do ShowModal;

         if not bErrors then
         begin
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
//             RemoveFromDesktop(Self);
            end
            else
            begin
               if rFileType.ItemIndex = 2 then
               begin
                  tvImport.BeginUpdate;
                  if tvImport.DataController.RecordCount > 0 then
                  begin
                     for NumRecords := tvImport.DataController.RecordCount - 1 downto 0 do
                        tvImport.DataController.DeleteRecord(0);
                  end;
                  tvImport.EndUpdate;
                  Progress.Position := 0;
               end;
               btnOk.Enabled := (rFileType.ItemIndex <> 2);
            end;
         end;
      end;
   end
   else
      MsgErr('Please enter the file names');
end;

procedure TfrmSoftlogImport.pbCancelClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmSoftlogImport.PopulateGrid;

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
               if SettingExists('SYS','DISB_LOAD_GRID',i) then
                  Columns[i].Caption := SettingLoadString('SYS','DISB_LOAD_GRID',i);
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
  slImport, slRow: TStrings;
  StatementFileName: string;
  sWord, st: string;
  line, col, NumRecords, TotalLines : integer;
  ACol: TcxGridColumn;
  f: file of Byte;
  size: Longint;
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
               (UpperCase(Copy(LExt, 2, Length(LExt)-1)) = 'XLSX') or
               (UpperCase(Copy(LExt, 2, Length(LExt)-1)) = 'XLS') then
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
                  if SettingExists('SYS','DISB_DATE_FORMAT') then
                     cmbDateFormat.Text := SettingLoadString('SYS','DISB_DATE_FORMAT');
                  btnSaveSettings.Enabled := True;
//                  slRow.Free;
//                  slImport.Free;
                  Progress.Position := TotalLines;
                  Application.ProcessMessages;
               end;
            end
            else
            begin
               try
                  slImport := TStringList.Create;
                  slRow := TStringList.Create;
                  slRow.Delimiter := Delim[cmbDelimeter.ItemIndex];

                  slImport.LoadFromFile(StatementFileName);
                  slRow.DelimitedText := slImport[0];
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
                     //"load" the line into a stringlist
                     slRow.DelimitedText := slImport[line];
                     for col := 0 to slRow.Count - 1 do
                     begin
                        SetRecordValue(line, col, slRow[col]);
                     end;
                     Progress.Position := line;
                     Application.ProcessMessages;
                  end;
               finally
                  SetColumnHeadings;
                  if SettingExists('SYS','DISB_DATE_FORMAT') then
                     cmbDateFormat.Text := SettingLoadString('SYS','DISB_DATE_FORMAT');
                  btnSaveSettings.Enabled := True;
                  slRow.Free;
                  slImport.Free;
                  Progress.Position := TotalLines;
                  btnOk.Enabled := True;
                  Application.ProcessMessages;
               end;
            end;
         end
         else
            MsgErr('The import file is empty');
      end;

      Progress.Position := TotalLines;
      Application.ProcessMessages;
   end;
end;

procedure TfrmSoftlogImport.RadioGroup1Click(Sender: TObject);
begin
   if pagImport.ActivePageIndex = 0 then
   begin
      pnlGrid.Visible := (rFileType.ItemIndex = 2);
      grdImport.Visible := (rFileType.ItemIndex = 2);
      cmbDateFormat.Visible := (rFileType.ItemIndex = 2);
      cxLabel3.Visible := (rFileType.ItemIndex = 2);
//      btnLoad.Visible := (rFileType.ItemIndex = 2);
      btnOK.Enabled := (rFileType.ItemIndex <> 2);
   end
   else
      if rFileType.ItemIndex = 2 then
         rFileType.ItemIndex := 0;
end;

procedure TfrmSoftlogImport.btnLoadClick(Sender: TObject);
begin
   PopulateGrid;
end;

procedure TfrmSoftlogImport.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmSoftlogImport.cxGridPopupMenu1Popup(ASenderMenu: TComponent;
  AHitTest: TcxCustomGridHitTest; X, Y: Integer; var AllowPopup: Boolean);
var
  Col: TcxGridColumn;
begin
   if AHitTest is TcxGridColumnHeaderHitTest then // Column is clicked
   begin
      FCol := TcxGridColumnHeaderHitTest(AHitTest).Column; // Obtain the clicked column
   end;
end;

procedure TfrmSoftlogImport.dxBarButton2Click(Sender: TObject);
begin
   FCol.Caption := TdxBarButton(Sender).Caption;
end;

procedure TfrmSoftlogImport.dxBarButton9Click(Sender: TObject);
begin
   if (Pos('Col', FCol.Caption) > 0) then
      FCol.Caption := TdxBarButton(Sender).Caption
   else
      FCol.Caption := 'Col' + IntToStr(FCol.Tag);
end;

procedure TfrmSoftlogImport.InsertSundry(ArecSundry: TSundryRecord);
var
   dAmount, dPerUnit: currency;
   ATaxCode,
   lFileID: string;
begin
   try
      lFileID := PadFileID(ArecSundry.FileID);
      qrySundryInsert.Close;
      qrySundryInsert.ParamByName('ACCT').AsString := dmAxiom.Entity;  //TableString('MATTER', 'FILEID', ArecSundry.FileID, 'ENTITY');
      if ArecSundry.Created = 0 then
         ArecSundry.Created := dptSund.Date;
      qrySundryInsert.ParamByName('CREATED').AsDateTime := ArecSundry.Created;

      // if there is no description supplied by disbursement program use sundrytype default
      if ArecSundry.Descr = '' then
         ArecSundry.Descr := TableString('sundrytype', 'code',ArecSundry.SundryType,'descr');

      qrySundryInsert.ParamByName('DESCR').AsString := ArecSundry.Descr;
      qrySundryInsert.ParamByName('NMATTER').AsString := MatterString(lFileID,'NMATTER');
      qrySundryInsert.ParamByName('NCLIENT').AsString := MatterString(lFileID,'NCLIENT');
      dPerUnit :=  qrySundryTypes.FieldByName('RATE').AsCurrency;
      if dPerUnit = 0 then
         dPerUnit := TableCurrency('SUNDRYTYPE','CODE',ArecSundry.SundryType,'RATE');
      qrySundryInsert.ParamByName('PERUNIT').AsCurrency :=  dPerUnit;
      qrySundryInsert.ParamByName('UNITS').AsInteger := ArecSundry.Units;

      if (Trim(recSundry.SundryType) = '') then
         recSundry.SundryType := cmbSundryType.EditValue;
      qrySundryInsert.ParamByName('TYPE').AsString := ArecSundry.SundryType;

      qrySundryInsert.ParamByName('FILEID').AsString := lFileId;
      dAmount := ArecSundry.Amount;

      ATaxCode := ArecSundry.TaxCode; //  qrySundryTypes.FieldByName('TAXCODE').AsString;
      if ATaxCode = '' then
         ATaxCode := TableString('SUNDRYTYPE','CODE',ArecSundry.SundryType,'TAXCODE');

      if (ArecSundry.TaxIncluded = True) then
      begin
         qrySundryInsert.ParamByName('TAX').AsCurrency := ArecSundry.Tax;
         if (ArecSundry.Tax = 0) then
            qrySundryInsert.ParamByName('TAXCODE').AsString := 'FREE'
         else
            qrySundryInsert.ParamByName('TAXCODE').AsString := ATaxCode;  // qrySundryTypes.FieldByName('TAXCODE').AsString;
      end
      else
      begin
         qrySundryInsert.ParamByName('TAXCODE').AsString := ATaxCode;
         qrySundryInsert.ParamByName('TAX').AsCurrency := TaxCalc(dAmount, '', ATaxCode, ArecSundry.Created);
      end;

      qrySundryInsert.ParamByName('AMOUNT').AsCurrency := dAmount;
      qrySundryInsert.ExecSql;
   except
      on E: Exception do
         SaveError(E.Message);
   end;
end;

procedure TfrmSoftlogImport.btnSaveSettingsClick(Sender: TObject);
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
               SettingSave('SYS','DISB_LOAD_GRID',Columns[i].Caption,i);
               bSaved := True;
            end;
         end;
      end;
   end;
   if cmbDateFormat.Text <> '' then
      SettingSave('SYS','DISB_DATE_FORMAT',cmbDateFormat.Text);
   if bSaved then
      MsgInfo('Settings Saved successfully.')
   else
      MsgInfo('Settings were not saved.');
end;

end.
