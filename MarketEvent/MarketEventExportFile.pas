unit MarketEventExportFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleUniProvider, Uni, DBAccess, MemDS, Buttons, ComCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxCheckBox,
  cxLabel, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxRadioGroup,
  cxGroupBox, cxGraphics, Menus, cxLookAndFeels, dxCore, cxDateUtils;

type
  TfrmMarketEventExportFile = class(TForm)
    qryEvent: TUniQuery;
    dsEvent: TUniDataSource;
    qryEventType: TUniQuery;
    dsEventType: TUniDataSource;
    qryCoordinator: TUniQuery;
    dsCoordinator: TUniDataSource;
    qryParticipant: TUniQuery;
    dsParticipant: TUniDataSource;
    qryExport: TUniQuery;
    saveDialog: TSaveDialog;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lblEvent: TLabel;
    cmbEvent: TcxLookupComboBox;
    radioProperties: TRadioButton;
    lblEventType: TLabel;
    cmbEventType: TcxLookupComboBox;
    cmbCoordinator: TcxLookupComboBox;
    lblCoordinator: TLabel;
    lblDateFrom: TLabel;
    lblDateTo: TLabel;
    lblParticipant: TLabel;
    cbParticipant: TcxButtonEdit;
    lblStatus: TLabel;
    deFrom: TDateTimePicker;
    deTo: TDateTimePicker;
    btnClear: TBitBtn;
    Label2: TLabel;
    cmbFileDelimiter: TComboBox;
    radioEvent: TRadioButton;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    chkAttended: TCheckBox;
    chkAccepted: TCheckBox;
    chkDeclined: TCheckBox;
    chkPrinted: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure radioEventClick(Sender: TObject);
    procedure radioPropertiesClick(Sender: TObject);
    procedure MakeSQL();
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FNName: integer;
  public
    { Public declarations }
  end;

var
  frmMarketEventExportFile: TfrmMarketEventExportFile;

implementation

uses NSearch, citfunc, axiomdata;

{$R *.dfm}

procedure TfrmMarketEventExportFile.FormShow(Sender: TObject);
begin
  // Default enable the specific event radio group
  radioEvent.Checked := True;
  radioEventClick(radioEvent);
end;

procedure TfrmMarketEventExportFile.btnClearClick(Sender: TObject);
begin
  // Clear all fields
  radioEvent.Checked := False;
  radioProperties.Checked := False;
  cmbEvent.ClearSelection;
  cmbEventType.ClearSelection;
  cmbCoordinator.ClearSelection;
  cbParticipant.ClearSelection;
  deFrom.Date := NullDate;
  deTo.Date := NullDate;

  // Disable all
  cmbEvent.Enabled := False;
  cmbEventType.Enabled := False;
  cmbCoordinator.Enabled := False;
  deFrom.Enabled := False;
  deTo.Enabled := False;
  cbParticipant.Enabled := False;

  Self.Close;
end;

procedure TfrmMarketEventExportFile.radioEventClick(Sender: TObject);
begin
  // Open query for specific event
  qryEvent.Open;

  // Enable event specific selection
  cmbEvent.Enabled := True;

  // Disable all others
  cmbEventType.Enabled := False;
  cmbCoordinator.Enabled := False;
  deFrom.Enabled := False;
  deTo.Enabled := False;
  cbParticipant.Enabled := False;
  chkAttended.Enabled := False;
  chkAccepted.Enabled := False;
  chkDeclined.Enabled := False;
  chkPrinted.Enabled := False;
end;

procedure TfrmMarketEventExportFile.radioPropertiesClick(Sender: TObject);
begin
  // Open queries for event properties
  qryEventType.Open;
  qryCoordinator.Open;
//  qryParticipant.Open;

  // Disable event specific selection
  cmbEvent.Enabled := False;

  // Enable all others
  cmbEventType.Enabled := True;
  cmbCoordinator.Enabled := True;
  deFrom.Enabled := True;
  deTo.Enabled := True;
  cbParticipant.Enabled := True;
  chkAttended.Enabled := True;
  chkAccepted.Enabled := True;
  chkDeclined.Enabled := True;
  chkPrinted.Enabled := True;
end;

procedure TfrmMarketEventExportFile.MakeSQL();
var
  exportStr : TStringList;
  tmpStr, sAND : String;
  index     : Integer;
begin
  // Reinitialise the query
  qryExport.SQL.Clear;
  qryExport.SQL.Add('SELECT e.event as Event, t.event_type_descr as Event_Type, e.coordinator as Coordinator,');
  qryExport.SQL.Add(' e.description, e.event_location as Location, e.event_date,');
  qryExport.SQL.Add(' e.event_time as Time, b.search as Participant,');
  qryExport.SQL.Add('DECODE(b.address, NULL, (select m.address from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                  '''', (select m.address from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                        b.address) as Address,');
  qryExport.SQL.Add('DECODE(b.address, NULL, (select m.suburb from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                  '''', (select m.suburb from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                        b.suburb) as Suburb,');
  qryExport.SQL.Add('DECODE(b.address, NULL, (select trim(m.state) from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                  '''', (select trim(m.state) from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                        trim(b.state)) as State,');
  qryExport.SQL.Add('DECODE(b.address, NULL, (select m.postcode from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                  '''', (select m.postcode from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                        b.postcode) as PostCode,');
  qryExport.SQL.Add('DECODE(b.address, NULL, (select m.country from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                  '''', (select m.country from phonebook m where b.nnamemaster IS NOT NULL AND m.nname = b.nnamemaster),');
  qryExport.SQL.Add('                        b.country) as Country,');

  //qryExport.SQL.Add(' b.address, b.suburb, trim(b.state), b.postcode, b.country,');
  qryExport.SQL.Add(' b.postaladdress, b.postalsuburb, trim(b.postalstate), b.postalpostcode, b.postalcountry, ');

  qryExport.SQL.Add(' ba.search as Alt_Participant, ba.address as Alt_Address, ba.suburb as Alt_Suburb, trim(ba.state) as Alt_State,');
  qryExport.SQL.Add(' ba.postaladdress as alt_postaladdress, ba.postalsuburb as alt_postalsuburb, trim(ba.postalstate) as alt_postalstate,');
  qryExport.SQL.Add(' ba.postalpostcode as alt_postalpostcode, ba.postalcountry as alt_postalcountry, ');
  qryExport.SQL.Add(' p.attended, p.accepted, p.declined, p.printed');

  qryExport.SQL.Add(' FROM event_participant p, event e, event_types t, phonebook b, phonebook ba');

  qryExport.SQL.Add(' WHERE e.event_id = p.event_id ');
  qryExport.SQL.Add(' AND p.nname = b.nname ');
  qryExport.SQL.Add(' AND e.event_type = t.event_type_id ');
  qryExport.SQL.Add(' AND p.alt_name = ba.nname(+) ');
  sAND := ' AND ';

  // Check which radio criteria was selected (specific event or properties)
  if radioEvent.Checked = True then
  begin
    if not varIsNull(cmbEvent.EditValue) then
      qryExport.SQL.Add(sAND + ' e.event_id = ' + QuotedStr(cmbEvent.EditValue));
  end
  // If searching by properties
  else if radioProperties.Checked = True then
  begin
    // If participant selected
    if cbParticipant.Text <> '' then
      qryExport.SQL.Add(sAND + ' p.nname = ' + QuotedStr(inttostr(FNName)));

    // Event Type selected
    if not varIsNull(cmbEventType.EditValue) then
      qryExport.SQL.Add(sAND + ' e.event_type = ' + QuotedStr(cmbEventType.EditValue));

    // Coordinator selected
    if not varIsNull(cmbCoordinator.EditValue) then
      qryExport.SQL.Add(sAND + ' e.coordinator = ' + QuotedStr(cmbCoordinator.EditValue));

    // Date ranges
    // Perform date comparision
    if (not varIsNull(deFrom.Date)) AND (not varIsNull(deTo.Date)) then
    begin
      if deFrom.Date > deTo.Date then
      begin
        MessageDlg('To date is before From date.  Please check the dates and try again.', mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    if not varIsNull(deFrom.Date) then
    begin
      qryExport.SQL.Add(sAND + ' e.event_date >= :datefrom');
      qryExport.ParamByName('datefrom').AsDate := Trunc(deFrom.Date);
    end;

    if not varIsNull (deTo.Date) then
    begin
      qryExport.SQL.Add(sAND + ' e.event_date <= :dateto');
      qryExport.ParamByName('dateto').AsDate := Trunc(deTo.Date);
    end;

    // Check participant status check boxes
    if chkAttended.Checked = True then
      qryExport.SQL.Add(sAND + ' p.attended = ''Y''')
    else
      qryExport.SQL.Add(sAND + ' p.attended = ''N''');

    if chkAccepted.Checked = True then
      qryExport.SQL.Add(sAND + ' p.accepted = ''Y''')
    else
      qryExport.SQL.Add(sAND + ' p.accepted = ''N''');

    if chkDeclined.Checked = True then
      qryExport.SQL.Add(sAND + ' p.declined = ''Y''')
    else
      qryExport.SQL.Add(sAND + ' p.declined = ''N''');

    if chkPrinted.Checked = True then
      qryExport.SQL.Add(sAND + ' p.printed = ''Y''')
    else
      qryExport.SQL.Add(sAND + ' p.printed = ''N''');
  end
  else
  begin
    MessageDlg('Please pick a selection criteria before proceeding.', mtWarning, [mbOK], 0);
    Exit;
  end;

  // Open the query
  qryExport.Open;

  // Create string list to export to file
  exportStr := TStringList.Create;

  // Obtain the column header names
  tmpStr := qryExport.FieldDefs.Items[0].Name;
  for index := 1 to qryExport.FieldCount - 1 do
    tmpStr := tmpStr + cmbFileDelimiter.Text + qryExport.FieldDefs.Items[index].Name;
  exportStr.Add(tmpStr);

  // Obtain the individual columns of data
  tmpStr := '';
  qryExport.First;
  while not qryExport.Eof do
  begin
    tmpStr := qryExport.Fields.Fields[0].AsString + cmbFileDelimiter.Text;
    for index := 1 to qryExport.FieldCount - 1 do
      tmpStr := tmpStr + qryExport.Fields.Fields[index].AsString + cmbFileDelimiter.Text;
    exportStr.Add(tmpStr);

    qryExport.Next;
  end;

  try
    // Set default extension and the filter
    saveDialog.DefaultExt := 'txt';
    saveDialog.Filter := 'Text files (*.txt)|*.TXT';
    // If user clicks OK in save dialog
    if saveDialog.Execute then
    begin
      exportStr.SaveToFile(saveDialog.FileName);
      MessageDlg('Export complete.', mtInformation, [mbOK], 0);
      Self.Close;
    end;
  except
    MessageDlg('Error exporting to file.', mtError, [mbOK], 0);
  end;
end;

procedure TfrmMarketEventExportFile.btnOKClick(Sender: TObject);
begin
  if radioEvent.Checked = True then
  begin
    if VarIsNull(cmbEvent.EditValue) then
    begin
      MessageDlg('Please select an Event.', mtWarning, [mbOK], 0);
      Exit;
    end;
  end
  else
  begin
    if radioProperties.Checked <> True then
    begin
      MessageDlg('Please select either by a Specific Event or Event Properties.', mtWarning, [mbOK], 0);
      Exit;
    end;
  end;

  MakeSQL;
end;


procedure TfrmMarketEventExportFile.btnCancelClick(Sender: TObject);
begin
//  if MsgAsk('Are you sure you want to cancel this export?') = mrYes then
    Self.Close;
end;

procedure TfrmMarketEventExportFile.FormCreate(Sender: TObject);
begin
   cmbFileDelimiter.ItemIndex := 0;
end;

procedure TfrmMarketEventExportFile.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      cbParticipant.Text := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
      FNName := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
   end;
end;

end.
