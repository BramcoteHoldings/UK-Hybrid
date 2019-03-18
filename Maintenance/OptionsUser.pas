unit OptionsUser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, Printers, ComCtrls, ExtCtrls, NumberEdit,
  DBCGrids, Db, OracleUniProvider, Uni, DBAccess, MemDS, Mask, DBCtrls, VirtualTable,
  Menus, dxBar, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxDropDownEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxNavigator, cxDBNavigator, ShlObj, cxShellCommon, cxTextEdit,
  cxContainer, cxMaskEdit, cxShellComboBox, cxDBShellComboBox, cxLabel,
  cxCheckBox, cxColorComboBox, cxSpinEdit, cxPC, cxMemo, cxRadioGroup,
  cxGroupBox, cxLookAndFeelPainters, cxButtons, DateUtils, cxPCdxBarPopupMenu,
  cxLookAndFeels, JvTFManager, JvExControls, JvTFGlance, JvTFMonths,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges;

const
   Months: array[1..12] of string = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
   Days: array[1..7] of string = ('Mon','Tue','Wed','Thu','Fri','Sat','Sun');
type
  TfrmOptionsUser = class(TForm)
    odFile: TOpenDialog;
    qryDisplayNames: TUniQuery;
    dsDisplayNames: TUniDataSource;
    vtName: TVirtualTable;
    dsName: TUniDataSource;
    qryTaxType: TUniQuery;
    dsTaxType: TUniDataSource;
    qryReqFields: TUniQuery;
    dsReqFields: TUniDataSource;
    ReqPopup: TPopupMenu;
    D1: TMenuItem;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    SmartQuery1: TUniQuery;
    OraDataSource1: TUniDataSource;
    qryTabColumns: TUniQuery;
    dsTabColumns: TUniDataSource;
    pagOptions: TcxPageControl;
    tabMatterLabels: TcxTabSheet;
    lblPrinter: TLabel;
    lbCopies: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    scmbMatterLabel: TcxShellComboBox;
    Label11: TLabel;
    teMatterLabel: TcxTextEdit;
    Label12: TLabel;
    cxLabel1: TcxLabel;
    teLabelFile: TcxTextEdit;
    cbCreateAutoPrint: TcxCheckBox;
    cbDefaultSettings: TcxCheckBox;
    cbCollateCopies: TcxCheckBox;
    cbMSWordLabel: TcxCheckBox;
    cbPrinter: TcxComboBox;
    seMatterCopies: TcxSpinEdit;
    seArchiveCopies: TcxSpinEdit;
    tabMatlocate: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    tbMatlocate: TcxTextEdit;
    tabGenLedger: TcxTabSheet;
    cbLedgerShowPrev: TcxCheckBox;
    tabDiary: TcxTabSheet;
    Label8: TLabel;
    tabPrecedents: TcxTabSheet;
    pagPrecedents: TPageControl;
    tabPrecWordPerfect: TTabSheet;
    Label5: TLabel;
    Label3: TLabel;
    sbtnOpen: TSpeedButton;
    cbAppendFileID: TCheckBox;
    cbSepDataForContacts: TCheckBox;
    edtPath: TEdit;
    tabPrecWord: TTabSheet;
    Label4: TLabel;
    edDateFormat: TEdit;
    Label9: TLabel;
    tabDisplayNames: TcxTabSheet;
    grdDisplayNames: TcxGrid;
    tvDisplayNames: TcxGridDBTableView;
    tvDisplayNamesCLASS: TcxGridDBColumn;
    tvDisplayNamesNAME: TcxGridDBColumn;
    tvDisplayNamesVALUE: TcxGridDBColumn;
    grdDisplayNamesLevel1: TcxGridLevel;
    cmbClass: TcxComboBox;
    Label14: TLabel;
    tabReqFields: TcxTabSheet;
    dbgReqFields: TcxGrid;
    tvReqFields: TcxGridDBTableView;
    tvReqFieldsFIELD_NAME: TcxGridDBColumn;
    tvReqFieldsMESSAGE: TcxGridDBColumn;
    dbgReqFieldsLevel1: TcxGridLevel;
    cmbTable: TcxComboBox;
    Label13: TLabel;
    tabOther: TcxTabSheet;
    cbFileNote: TcxCheckBox;
    cbUseUniqueBillNumber: TcxCheckBox;
    tvReqFieldsCOLOUR: TcxGridDBColumn;
    rgDiaryAuthor: TcxRadioGroup;
    chkDiaryEventPrintDescr: TcxCheckBox;
    chkDiaryNotify: TcxCheckBox;
    neDiaryNotify: TcxTextEdit;
    gbDiaryWith: TcxGroupBox;
    rbDiaryWithClient: TcxRadioButton;
    rbDiaryWithNone: TcxRadioButton;
    rbDiaryWithOther: TcxRadioButton;
    Label15: TLabel;
    mmoDiaryWithSQL: TcxMemo;
    tabHolidayCalendar: TcxTabSheet;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    qryTime: TUniQuery;
    qryInsertCalendar: TUniQuery;
    pmHolCalendar: TPopupMenu;
    MarkasHoliday1: TMenuItem;
    UpdateCalendar: TUniQuery;
    btnSave: TdxBarButton;
    tabArchiveLabels: TcxTabSheet;
    Label16: TLabel;
    cbArchivePrinter: TcxComboBox;
    Label17: TLabel;
    cxSpinEdit1: TcxSpinEdit;
    Label19: TLabel;
    teArchiveLabel: TcxTextEdit;
    MonthBrowser: TJvTFMonths;
    ScheduleManager: TJvTFScheduleManager;
    teLabelTemplate: TcxTextEdit;
    cxLabel2: TcxLabel;
    tvReqFieldsCAN_DELETE: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pagOptionsChange(Sender: TObject);
    procedure pagOptionsChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure beSavePathChange(Sender: TObject);
    procedure chkDiaryNotifyClick(Sender: TObject);
    procedure rbDiaryWithOtherClick(Sender: TObject);
    procedure rbDiaryWithClientClick(Sender: TObject);
    procedure rbDiaryWithNoneClick(Sender: TObject);
    procedure sbtnOpenClick(Sender: TObject);
    procedure qryDisplayNamesNewRecord(DataSet: TDataSet);
    procedure cmbTableChange(Sender: TObject);
    procedure qryReqFieldsNewRecord(DataSet: TDataSet);
    procedure D1Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cmbClassPropertiesChange(Sender: TObject);
    procedure qryDisplayNamesAfterInsert(DataSet: TDataSet);
    procedure cbMSWordLabelClick(Sender: TObject);
    procedure cmbTablePropertiesCloseUp(Sender: TObject);
    procedure pagOptionsPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure tvReqFieldsEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure MarkasHoliday1Click(Sender: TObject);
    procedure pmHolCalendarPopup(Sender: TObject);
    procedure tabHolidayCalendarShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure qryReqFieldsBeforeDelete(DataSet: TDataSet);
    procedure qryReqFieldsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FSystemDefaults: Boolean;
    FPrinters: TPrinter;
    procedure SaveOption;
    procedure DisplayCalendarEvents;
    procedure RefreshCalendarEvents;
  public
    { Public declarations }
    Appt : TJvTFAppt;

    procedure CancelClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure ShowOption(tabSingleOption : TcxTabSheet);
  end;

var
  frmOptionsUser: TfrmOptionsUser;

implementation

{$R *.DFM}
uses
  AxiomData, MiscFunc, Desktop;


procedure TfrmOptionsUser.CancelClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
  Self.Close;
end;


procedure TfrmOptionsUser.OKClick(Sender: TObject);
begin
  SaveOption;
  Self.ModalResult := mrOk;
  Self.Close;
end;


procedure TfrmOptionsUser.ShowOption(tabSingleOption : TcxTabSheet);
var
  iCtr : integer;
begin
  for iCtr := 0 to pagOptions.PageCount - 1 do
    pagOptions.Pages[iCtr].TabVisible := False;

  pagOptions.ActivePage := tabSingleOption;

  Self.Caption := Self.Caption + ' - ' + tabSingleOption.Caption;

  if pagOptions.ActivePage = tabMatterLabels then
    cbCreateAutoPrint.Visible := False;
end;


procedure TfrmOptionsUser.FormShow(Sender: TObject);
begin
  pagOptions.OnChange(Self);
end;


procedure TfrmOptionsUser.pagOptionsChange(Sender: TObject);
var
  iCtr, iNumCopies: Integer;
  sTmp: string;
begin
  qryDisplayNames.Close;
  qryReqFields.Close;

  if pagOptions.ActivePage = tabReqFields then
  begin
    cmbTable.Text := '';
  end;

   if pagOptions.ActivePage = tabDisplayNames then
   begin
      cmbClass.ItemIndex := 0;
      qryDisplayNames.Close();
      qryDisplayNames.ParamByName('ENTITY').AsString := dmAxiom.Entity;
      qryDisplayNames.ParamByName('CLASS').AsString := cmbClass.Text;
      qryDisplayNames.Open;
   end;

  if pagOptions.ActivePage = tabMatterLabels then
  begin
    teMatterLabel.Text := dmAxiom.MatLabel;
    scmbMatterLabel.Text := dmAxiom.MatLabelPath;
    teLabelFile.Text := dmAxiom.MatLabelFileName;
    teLabelFile.Enabled := cbMSWordLabel.Checked;
    teLabelTemplate.Text := dmAxiom.MatLabelTemplateName;
    teLabelTemplate.Enabled := cbMSWordLabel.Checked;
    // build the list of system printers
    FPrinters := TPrinter.Create;
    cbPrinter.Clear;
    for iCtr := 0 to FPrinters.Printers.Count-1 do
      cbPrinter.Properties.Items.Add(FPrinters.Printers.Strings[iCtr]);


    // get the user configured values ??? need to revise this
    iNumCopies := SettingLoadInteger('MATTERLABEL', 'NUMCOPIES');
    // display system configured values if there are no user configured values.
    if iNumCopies = 0 then
    begin
      FSystemDefaults := True;
      seMatterCopies.Value := SettingLoadInteger('sys', 'MATTERLABEL', 'NUMCOPIES');
      // set the system number of archive copies the same as that for matters for now
      seArchiveCopies.Value := seMatterCopies.Value;
      cbPrinter.ItemIndex := GetPrinterIndex(SettingLoadString('sys', 'MATTERLABEL', 'PRINTER'));
    end
    else
    begin
      FSystemDefaults := False;
      seMatterCopies.Value := SettingLoadInteger('MATTERLABEL', 'NUMCOPIES');
      seArchiveCopies.Value := SettingLoadInteger('MATTERLABEL', 'NUMARCHIVECOPIES');
      cbPrinter.ItemIndex := GetPrinterIndex(SettingLoadString('MATTERLABEL', 'PRINTER'));
    end;
    // read values for the check boxes
    cbCollateCopies.Checked := SettingLoadBoolean('MATTERLABEL', 'COLLATELABLES');
    cbCreateAutoPrint.Checked := SettingLoadBoolean('MATTERLABEL', 'PRINTONCREATE');
    cbDefaultSettings.Checked := SettingLoadBoolean('MATTERLABEL', 'PRINTER');
    cbMSWordLabel.Checked := SettingLoadBoolean('sys','MATTERLABEL', 'MSWordLabel');
    FPrinters.Free;
  end
  else if pagOptions.ActivePage = tabArchiveLabels then
  begin
    teArchiveLabel.Text := dmAxiom.ArchiveLabel;
    // build the list of system printers
    FPrinters := TPrinter.Create;
    cbArchivePrinter.Clear;
    for iCtr := 0 to FPrinters.Printers.Count-1 do
      cbArchivePrinter.Properties.Items.Add(FPrinters.Printers.Strings[iCtr]);


    // get the user configured values ??? need to revise this
    iNumCopies := SettingLoadInteger('ARCHIVELABEL', 'NUMCOPIES');
    // display system configured values if there are no user configured values.
    if iNumCopies = 0 then
    begin
      FSystemDefaults := True;
      seMatterCopies.Value := SettingLoadInteger('sys', 'ARCHIVELABEL', 'NUMCOPIES');
      // set the system number of archive copies the same as that for matters for now
      seArchiveCopies.Value := seMatterCopies.Value;
      cbPrinter.ItemIndex := GetPrinterIndex(SettingLoadString('sys', 'MATTERLABEL', 'ARCHIVEPRINTER'));
    end
    else
    begin
      FSystemDefaults := False;
      seMatterCopies.Value := SettingLoadInteger('ARCHIVELABEL', 'NUMCOPIES');
      cbPrinter.ItemIndex := GetPrinterIndex(SettingLoadString('ARCHIVELABEL', 'ARCHIVEPRINTER'));
    end;
    // read values for the check boxes

    FPrinters.Free;
  end
  else if pagOptions.ActivePage = tabMatlocate then
    tbMatlocate.Text := dmAxiom.MatLocate
  else if pagOptions.ActivePage = tabDiary then
  begin
    rgDiaryAuthor.Properties.Items.Items[3].Caption := GetLabel('MATTER','PARTNER');
//    rgDiaryAuthor.Properties.Items.Items[0].Caption := GetLabel('MATTER','OPERATOR');
    rgDiaryAuthor.Properties.Items.Items[1].Caption := GetLabel('MATTER','AUTHOR');
    rgDiaryAuthor.Properties.Items.Items[2].Caption := GetLabel('MATTER','CONTROLLER');
    rgDiaryAuthor.Properties.Items.Items[4].Caption := GetLabel('MATTER','PARA LEGAL');

    rgDiaryAuthor.ItemIndex := SettingLoadInteger('OPTIONSDIARY', 'AUTHOR');
    chkDiaryEventPrintDescr.Checked := SettingLoadBoolean('OPTIONSDIARY', 'EVENTPRINTDESCR');
    chkDiaryNotify.Checked := SettingLoadBoolean('OPTIONSDIARY', 'NOTIFY');
    neDiaryNotify.EditValue := SettingLoadInteger('OPTIONSDIARY', 'NOTIFYMINS');
    case SettingLoadInteger('OPTIONSDIARY', 'WITH') of
      0: rbDiaryWithClient.Checked := True;
      1: rbDiaryWithNone.Checked := True;
      2: rbDiaryWithOther.Checked := True;
    end;
    iCtr := 0;
    repeat
      sTmp := SettingLoadString('OPTIONSDIARY', 'WITHSQL' + IntToStr(iCtr));
      if sTmp <> '' then
        mmoDiaryWithSQL.Lines.Add(sTmp);
      Inc(iCtr);
    until sTmp = '';
  end
  else if pagOptions.ActivePage = tabGenLedger then
    cbLedgerShowPrev.Checked := SettingLoadBoolean('GENLEDGER', 'SHOWPREVYEARBUD')
  else if pagOptions.ActivePage = tabPrecedents then
  begin
    cbAppendFileID.Checked := SettingLoadBoolean('sys', 'PRECEDENTS', 'APPENDFILEID');
    cbSepDataForContacts.Checked := SettingLoadBoolean('sys', 'PRECEDENTS', 'SEPDATAFORCONTACTS');
    //beSavePath.Text := SettingLoadString('sys', 'PRECEDENTS', 'SAVEPATH');
    edtPath.Text := SettingLoadString('sys', 'PRECEDENTS', 'SAVEPATH');
    edDateFormat.Text := SettingLoadString('sys', 'PRECEDENTS', 'DATEFORMAT');
  end
  else if pagOptions.ActivePage = tabOther then
  begin
    cbFileNote.Checked := SettingLoadBoolean('FEECREATE', 'AUTOPRINTNOTE');
//    cbArchiveUnclosed.Checked := SettingLoadBoolean('sys', 'MATTER', 'ARCHIVEUNCLOSED');
//    cbDisallowClose.Checked := SettingLoadBoolean('sys', 'MATTER', 'DISALLOWCLOSE');
//    cbWarnOnNoFees.Checked := SettingLoadBoolean('sys', 'MATTER', 'WARNONNOFEES');
//    cbAllowClosureWithUnPresCheques.Checked := SettingLoadBoolean('sys', 'MATTER', 'ALLOWCLOSEUNPRESENTED');
    cbUseUniqueBillNumber.Checked := SettingLoadBoolean('sys', 'BILL', 'BILLREF');
  end
  else if pagOptions.ActivePage = tabHolidayCalendar then
  begin
//      DisplayCalendarEvents;
  end

end;


procedure TfrmOptionsUser.SaveOption;
var
  iCtr: Integer;
begin
  if pagOptions.ActivePage = tabMatterLabels then
  begin
    SettingSave('MATTERLABEL', 'PRINTONCREATE', cbCreateAutoPrint.Checked);
    SettingSave('MATTERLABEL', 'COLLATELABLES', cbCollateCopies.Checked);
    SettingSave('MATTERLABEL', 'NUMCOPIES', integer(seMatterCopies.Value));
    SettingSave('MATTERLABEL', 'NUMARCHIVECOPIES', integer(seArchiveCopies.Value));
    SettingSave('sys','MATTERLABEL', 'PRINTER', cbPrinter.Text, Integer(cbDefaultSettings.Checked));
//    SettingSaveAll('MATTERLABEL', 'PRINTER', cbPrinter.Text, Integer(cbDefaultSettings.Checked));
    dmAxiom.MatLabel := teMatterLabel.Text;
    dmAxiom.MatLabelPath := scmbMatterLabel.Text;
    dmAxiom.MatLabelFileName := teLabelFile.Text;
    dmAxiom.MatLabelTemplateName := teLabelTemplate.Text;
    SettingSave('sys','MATTERLABEL', 'MSWordLabel',cbMSWordLabel.Checked);
  end
  else if pagOptions.ActivePage = tabArchiveLabels then
  begin
    SettingSave('ARCHIVELABEL', 'NUMCOPIES', integer(seMatterCopies.Value));
    SettingSave('sys','ARCHIVELABEL', 'ARCHIVEPRINTER', cbArchivePrinter.Text, Integer(cbDefaultSettings.Checked));
    dmAxiom.ArchiveLabel := teArchiveLabel.Text;
  end
  else if pagOptions.ActivePage = tabMatlocate then
    dmAxiom.MatLocate := tbMatlocate.Text
  else if pagOptions.ActivePage = tabDiary then
  begin
    SettingSave('OPTIONSDIARY', 'AUTHOR', rgDiaryAuthor.ItemIndex);
    SettingSave('OPTIONSDIARY', 'EVENTPRINTDESCR', chkDiaryEventPrintDescr.Checked);
    SettingSave('OPTIONSDIARY', 'NOTIFY', chkDiaryNotify.Checked);
    SettingSave('OPTIONSDIARY', 'NOTIFYMINS', integer(neDiaryNotify.EditValue));
    if rbDiaryWithClient.Checked then
      SettingSave('OPTIONSDIARY', 'WITH', 0)
    else if rbDiaryWithNone.Checked then
      SettingSave('OPTIONSDIARY', 'WITH', 1)
    else if rbDiaryWithOther.Checked then
      SettingSave('OPTIONSDIARY', 'WITH', 2);
    for iCtr := 0 to mmoDiaryWithSQL.Lines.Count - 1 do
      SettingSave('OPTIONSDIARY', 'WITHSQL' + IntToStr(iCtr), mmoDiaryWithSQL.Lines[iCtr]);
  end
  else if pagOptions.ActivePage = tabGenLedger then
    SettingSave('GENLEDGER', 'SHOWPREVYEARBUD', cbLedgerShowPrev.Checked)
  else if pagOptions.ActivePage = tabPrecedents then
  begin
    SettingSave('sys', 'PRECEDENTS', 'APPENDFILEID', cbAppendFileID.Checked);
    SettingSave('sys', 'PRECEDENTS', 'SEPDATAFORCONTACTS', cbSepDataForContacts.Checked);
    //SettingSave('sys', 'PRECEDENTS', 'SAVEPATH', IncludeTrailingBackslash(beSavePath.Text));
    SettingSave('sys', 'PRECEDENTS', 'SAVEPATH', IncludeTrailingPathDelimiter(edtPath.Text));
    SettingSave('sys', 'PRECEDENTS', 'DATEFORMAT', edDateFormat.Text);
  end
  else if pagOptions.ActivePage = tabOther then
  begin
    SettingSave('FEECREATE', 'AUTOPRINTNOTE', cbFileNote.Checked);
//    SettingSave('sys', 'MATTER', 'ARCHIVEUNCLOSED', cbArchiveUnclosed.Checked);
//    SettingSave('sys', 'MATTER', 'DISALLOWCLOSE', cbDisallowClose.Checked);
//    SettingSave('sys', 'MATTER', 'WARNONNOFEES', cbWarnOnNoFees.Checked);
//    SettingSave('sys', 'MATTER', 'ALLOWCLOSEUNPRESENTED', cbAllowClosureWithUnPresCheques.Checked);
    SettingSave('sys', 'BILL', 'BILLREF', cbUseUniqueBillNumber.Checked);
  end;
end;


procedure TfrmOptionsUser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryTabColumns.Close;
   if Self.ModalResult = mrOk then
      SaveOption;
//   Action := caFree;
   RemoveFromDesktop(Self);
end;


procedure TfrmOptionsUser.pagOptionsChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
   SaveOption;
end;

procedure TfrmOptionsUser.FormCreate(Sender: TObject);
begin
   if Owner.Name = 'frmDesktop' then
   begin
//    btnOk.OnClick := OkClick;
//    btnCancel.OnClick := CancelClick;
   end;

   if SystemString('WORDPROC') = 'WORD97' then
      pagPrecedents.ActivePage := tabPrecWord
   else
      pagPrecedents.ActivePage := tabPrecWordPerfect;

   // need to create system security class to handle this ???
   cbAppendFileID.Enabled := True;
   cbSepDataForContacts.Enabled := True;

   chkDiaryNotify.Enabled := (SystemString('USE_DIARY_NOTIFY') = 'Y');
   neDiaryNotify.Enabled := (SystemString('USE_DIARY_NOTIFY') = 'Y');

   MonthBrowser.Month := MonthOf(Now());
//   StringPopulate(cmbTable.Properties.Items,'ALL_TABLES' {'TABS'}, 'TABLE_NAME', 'OWNER = ''AXIOM''');
end;

procedure TfrmOptionsUser.beSavePathChange(Sender: TObject);
begin
   Self.BringToFront;
end;

procedure TfrmOptionsUser.chkDiaryNotifyClick(Sender: TObject);
begin
  if chkDiaryNotify.Checked then
  begin
    neDiaryNotify.Enabled := True;
    if Self.Visible then
      neDiaryNotify.SetFocus;
  end
  else
  begin
    neDiaryNotify.EditValue := 0;
    neDiaryNotify.Enabled := False;
  end;
end;

procedure TfrmOptionsUser.rbDiaryWithOtherClick(Sender: TObject);
begin
  mmoDiaryWithSQL.Enabled := rbDiaryWithOther.Checked;
  if rbDiaryWithOther.Checked and Self.Visible then
      mmoDiaryWithSQL.SetFocus;
end;

procedure TfrmOptionsUser.rbDiaryWithClientClick(Sender: TObject);
begin
  if rbDiaryWithClient.Checked then
    mmoDiaryWithSQL.Clear;

end;

procedure TfrmOptionsUser.rbDiaryWithNoneClick(Sender: TObject);
begin
  if rbDiaryWithNone.Checked then
    mmoDiaryWithSQL.Clear;
end;

procedure TfrmOptionsUser.sbtnOpenClick(Sender: TObject);
begin
  if odFile.Execute then
  begin
    edtPath.Text := odFile.FileName;
  end;
end;

procedure TfrmOptionsUser.qryDisplayNamesNewRecord(DataSet: TDataSet);
begin
   qryDisplayNames.FieldByName('ACCT').AsString := dmAxiom.Entity;
end;

procedure TfrmOptionsUser.cmbTableChange(Sender: TObject);
begin
    if qryReqFields.state = dsInsert then
       qryReqFields.post;
    qryReqFields.Close;
    qryReqFields.ParamByName('TABLE_NAME').AsString := cmbTable.Text;
    qryReqFields.Open;

    qryTabColumns.Close;
    qryTabColumns.SQL.Clear;
    qryTabColumns.SQL.Text := 'select field_name, descr, can_delete from REQFIELD_CONTROL where table_name = ''' + cmbTable.Text + ''' order by field_name';
//    qryTabColumns.SQL.Text := 'select column_name from all_tab_columns where table_name = ''' + cmbTable.Text + ''' order by column_name';
    qryTabColumns.Open;

//    dbgReqFields.Columns[0].PickList.Clear;
//   StringPopulate(dbgReqFields.Columns[0].PickList,'COLS', 'COLUMN_NAME','TABLE_NAME = ''' + cmbTable.Text + '''');
end;

procedure TfrmOptionsUser.qryReqFieldsBeforeDelete(DataSet: TDataSet);
begin
   if (DataSet.FieldByName('CAN_DELETE').AsString = 'N') then
   begin
      MsgInfo('This record cannot be deleted.');
      Abort;
   end;
end;

procedure TfrmOptionsUser.qryReqFieldsBeforePost(DataSet: TDataSet);
begin
   DataSet.FieldByName('CAN_DELETE').AsString := qryTabColumns.FieldByName('CAN_DELETE').AsString;
end;

procedure TfrmOptionsUser.qryReqFieldsNewRecord(DataSet: TDataSet);
begin
   qryreqFields.FieldByName('TABLE_NAME').AsString := cmbTable.Text;
end;

procedure TfrmOptionsUser.D1Click(Sender: TObject);
begin
     qryReqFields.Delete;
end;

procedure TfrmOptionsUser.dxBarButton1Click(Sender: TObject);
begin
   Self.ModalResult := mrOk;
   if qryReqFields.state = dsInsert then
   begin
       qryReqFields.post;
       if dmAxiom.uniInsight.InTransaction = True then
          dmAxiom.uniInsight.Commit;
   end;

   SaveOption;

   Self.Close;
   Self.ModalResult := mrOk;
//   RemoveFromDesktop(Self);
end;

procedure TfrmOptionsUser.dxBarButton2Click(Sender: TObject);
begin
   Self.ModalResult := mrCancel;
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmOptionsUser.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   case AButtonIndex of
      NBDI_REFRESH:
            begin
               qryDisplayNames.Close;
               qryDisplayNames.ParamByName('ENTITY').AsString := dmAxiom.Entity;
               qryDisplayNames.ParamByName('CLASS').AsString := cmbClass.Text;
               qryDisplayNames.Open;
            end;
   end;
end;

procedure TfrmOptionsUser.cmbClassPropertiesChange(Sender: TObject);
begin
   qryDisplayNames.Close;
   qryDisplayNames.ParamByName('ENTITY').AsString := dmAxiom.Entity;
   qryDisplayNames.ParamByName('CLASS').AsString := cmbClass.Text;
   qryDisplayNames.Open;

   TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Clear;
   if (cmbClass.Text = 'MATTER') then
   begin
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('PARTNER');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('CONTROLLER');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('AUTHOR');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('OPERATOR');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('PARA LEGAL');

      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER1');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER2');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER3');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER4');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER5');

      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER6');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER7');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER8');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER9');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MEMBER10');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('ARCHIVENUM');
   end
   else if (cmbClass.Text = 'PHONEBOOK') then
   begin
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('HOMEPHONE');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('WORKPHONE');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MOBILE');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('FAX');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('DIRECT');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('CUSTOM ADDRESS');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('CUSTOM DATA');
      TcxComboBoxProperties(tvDisplayNamesNAME.Properties).Items.Add('MAINTAINER');
   end;
end;

procedure TfrmOptionsUser.qryDisplayNamesAfterInsert(DataSet: TDataSet);
begin
   qryDisplayNames.FieldByName('CLASS').AsString := cmbClass.Text;
end;

procedure TfrmOptionsUser.cbMSWordLabelClick(Sender: TObject);
begin
   teLabelFile.Enabled := cbMSWordLabel.Checked;
   teLabelTemplate.Enabled := cbMSWordLabel.Checked;
end;

procedure TfrmOptionsUser.cmbTablePropertiesCloseUp(Sender: TObject);
begin
   if qryReqFields.state = dsInsert then
          qryReqFields.post;

    qryReqFields.Close;
    qryReqFields.ParamByName('TABLE_NAME').AsString := cmbTable.Text;
    qryReqFields.Open;
//    qryReqFields.Insert;

    qryTabColumns.Close;
    qryTabColumns.SQL.Clear;
    qryTabColumns.SQL.Text := 'select field_name, descr, can_delete from REQFIELD_CONTROL where table_name = ''' + cmbTable.Text + ''' order by field_name';
//         'select column_name from all_tab_columns where table_name = ''' + cmbTable.Text + ''' order by column_name';
    qryTabColumns.Open;
end;

procedure TfrmOptionsUser.pagOptionsPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
   SaveOption;
end;

procedure TfrmOptionsUser.tvReqFieldsEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
   if Sender.Controller.FocusedRecord.IsNewItemRecord then
   begin
      if qryReqFields.State <> dsInsert then
         qryReqFields.Insert;
   end;
end;

procedure TfrmOptionsUser.cxButton3Click(Sender: TObject);
begin
   MonthBrowser.ScrollPrev;
end;

procedure TfrmOptionsUser.cxButton4Click(Sender: TObject);
begin
   MonthBrowser.ScrollNext;
   DisplayCalendarEvents;
end;

procedure TfrmOptionsUser.DisplayCalendarEvents;
var
   sNotify: string;
   LDate: TDateTime;
   i, dm: integer;
begin
   // display the events for the particular day
   qryTime.Close;
   qryTime.ParamByName('START_DT').AsDateTime := Trunc(BeginOfMonth(MonthBrowser.DisplayDate));
   qryTime.ParamByName('END_DT').AsDateTime := Trunc(EndOfTheMonth(MonthBrowser.DisplayDate));
   qryTime.Open;
   if (qryTime.EOF) and (MonthBrowser.DisplayDate <> 0) then
   begin
      dm := DaysInMonth(MonthBrowser.DisplayDate);
      for i := 1 to dm do
      begin
         with qryInsertCalendar do
         begin
            LDate := EncodeDate(MonthBrowser.Year,MonthBrowser.Month, i);
            ParamByName('DAY').AsString := ProcString('GetWeekDay',LDate);
            ParamByName('PUBLICHOLIDAY').AsInteger := 0;
            ParamByName('MONTH').AsString := Months[MonthOf(LDate)];
            ParamByName('FINYEAR').AsInteger := YearOf(LDate);
            ParamByName('CALDATE').AsDateTime := trunc(LDate);
            ExecSQL;
         end;
      end;
   end;
   qryTime.Close;
   qryTime.Open;

{   while not qryTime.EOF do
   begin
      LEvent :=  ScheduleManager.  Events.CreateEvent();
      try
//         LEvent.ToDateTime := qryTime.FieldByName('CALDATE').AsDateTime;
         sNotify := '';

         if qryTime.FieldByName('PUBLICHOLIDAY').AsInteger = 1 then
         begin
            LEvent.FromDateTime := qryTime.FieldByName('CALDATE').AsDateTime;
            sNotify := sNotify  + '<IMG RESOURCE=BITMAP_BELL> ';
            sNotify := sNotify + 'Public Holiday';
         end;

         LEvent.Data := sNotify;
         Levent.EntityID := qryTime.FieldByName('ROWID').AsString;
         LEvent.Save();
      finally
         LEvent.Free();
      end;
      qryTime.Next;
   end;   }
end;

procedure TfrmOptionsUser.RefreshCalendarEvents;
//var
//  LIter: TcwEventIterator;
begin
  // Delete all events
  // this is the easiest way to refresh events on the calendar controls, i.e. to delete them all and
  // re-read them from the database
{  cwManager.BeginUpdate;
  LIter := TcwEventIterator.Create(cwManager.Events);
  try
    while LIter.First do
        LIter.Event.Delete();
  finally
    LIter.Free();
  end;
  cwManager.EndUpdate; }
//  DisplayCalendarEvents;
end;

procedure TfrmOptionsUser.MarkasHoliday1Click(Sender: TObject);
var
   DaysGrid: TJvTFMonths;
   I : Integer;
begin
   With Appt do
   Begin
      Appt.BeginUpdate;
        // Call BeginUpdate so that the appt is not posted while we are
        // setting its properties.

      Try
//         SetStartEnd(MonthBrowser.DisplayDate , MonthBrowser.di ,
//                      MonthBrowser.DisplayDate, MonthBrowser.Time);
         Description := 'Holiday';


           // Just a shortcut to save some typing :-)
         DaysGrid := MonthBrowser;

         // Add the appt to selected schedule(s)
{         If DaysGrid. Then
            For I := DaysGrid.SelStart.X to DaysGrid.SelEnd.X do
               Appt.AddSchedule(DaysGrid.Cols[I].SchedName);    }

           // Now that we're done working with the appointment and it is
           // actually assigned to a schedule, we should set the Persistent
           // property to false.  This will ensure the the caching system
           // will properly dispose of the appointment object when it is
           // no longer needed.
         Appt.Persistent := False;
      Finally
          Appt.EndUpdate;  // this causes the appt to be posted
      End;
   End;
end;

procedure TfrmOptionsUser.pmHolCalendarPopup(Sender: TObject);
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Clear;
      SQL.Text := 'select 1 from calendar_holidays where PUBLICHOLIDAY = ''0'' and caldate = :caldate';
//      ParamByName('caldate').AsDateTime := MonthBrowser.
      Open;
      if eof then
      begin
         pmHolCalendar.Items.Items[0].Caption := 'UnMark as Holiday...';
         pmHolCalendar.Items.Items[0].Tag := 0;
      end
      else
      begin
         pmHolCalendar.Items.Items[0].Caption := 'Mark as Holiday...';
         pmHolCalendar.Items.Items[0].Tag := 1;
      end;
      Close;
   end;
end;

procedure TfrmOptionsUser.tabHolidayCalendarShow(Sender: TObject);
begin
   DisplayCalendarEvents;
end;

procedure TfrmOptionsUser.btnSaveClick(Sender: TObject);
begin
   if qryReqFields.state in [dsInsert, dsEdit] then
   begin
       qryReqFields.post;
       if dmAxiom.uniInsight.InTransaction = True then
          dmAxiom.uniInsight.Commit;
   end; 
   SaveOption;
end;

end.

