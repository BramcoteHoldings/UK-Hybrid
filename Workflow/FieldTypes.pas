unit FieldTypes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, ExtCtrls, DBCtrls, Mask, Db, ImgList,
  ComCtrls, ToolWin, OracleUniProvider, Uni, DBAccess, MemDS, ppDB,
  ppCtrls, Buttons, ppDBPipe, ppBands,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxBarDBNav, dxBar,  Menus, ppParameter,
  cxClasses, ppDesignLayer;

type
  TfrmFieldTypes = class(TfrmMaint)
    Label1: TLabel;
    Label2: TLabel;
    dbtbName: TDBEdit;
    dbtbCaption: TDBEdit;
    dbrgType: TDBRadioGroup;
    dbtbDescr: TDBEdit;
    Label3: TLabel;
    qryPhonebookGroups: TUniQuery;
    pcOptions: TPageControl;
    tsRules: TTabSheet;
    btnRules: TButton;
    tsGroups: TTabSheet;
    dbcbPhonebookGroup: TDBComboBox;
    lblPhonebookGroup: TLabel;
    tsMultiSelect: TTabSheet;
    dbcbAllowMultiple: TDBCheckBox;
    qryMultiSelection: TUniQuery;
    btnMultiSelectCode: TButton;
    dbtMultiSelectCode: TDBText;
    btnFieldNames: TBitBtn;
    Label4: TLabel;
    tabFormat: TTabSheet;
    Label5: TLabel;
    dbedFormat: TDBEdit;
    qryLookups: TUniQuery;
    edForeignCode: TEdit;
    qryDataFieldMapping: TUniQuery;
    tabTaskSelect: TTabSheet;
    lblTaskSelect: TLabel;
    BitBtn1: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    procedure tbtnNewClick(Sender: TObject);
    procedure dbtbDescrEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbrgTypeChange(Sender: TObject);
    procedure btnRulesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnMultiSelectCodeClick(Sender: TObject);
    procedure btnFieldNamesClick(Sender: TObject);
    procedure qrySourceBeforePost(DataSet: TDataSet);
//    procedure qrMaintReportBeforePrint(Sender: TCustomQuickRep;
//      var PrintReport: Boolean);
//    procedure qrMaintReportAfterPrint(Sender: TObject);
//    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
//      var PrintBand: Boolean);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure edForeignCodeChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    AError: boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

uses
  AxiomData, DataFieldRules, GenericSearch, miscfunc;

procedure TfrmFieldTypes.tbtnNewClick(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('TYPE').AsString := 'T';
end;

procedure TfrmFieldTypes.dbtbDescrEnter(Sender: TObject);
begin
  inherited;
  if qrySource.FieldByName('DESCR').AsString = '' then
    qrySource.FieldByName('DESCR').AsString := qrySource.FieldByName('CAPTION').AsString;
end;

procedure TfrmFieldTypes.FormCreate(Sender: TObject);
begin
  inherited;
  PrimaryField := 'NAME';
  AError := False;
end;

procedure TfrmFieldTypes.dbrgTypeChange(Sender: TObject);
begin
   inherited;
   if dbrgType.Value = 'OP' then
   begin
      pcOptions.ActivePage := tsGroups;
      dbcbPhonebookGroup.Clear;
      with qryPhonebookGroups do
      begin
         SQL.Text := 'SELECT CATEGORY FROM PBGROUP WHERE OTHERPARTY = ''Y''';
         Prepare;
         Open;
         while not EOF do
         begin
            dbcbPhonebookGroup.Items.Add(FieldByName('CATEGORY').AsString);
            Next;
         end;
         Close;
      end;
      dbcbPhonebookGroup.ItemIndex := dbcbPhonebookGroup.Items.IndexOf(qrySource.FieldByName('PHONEBOOKGROUP').AsString);
   end
   else if dbrgType.Value = 'T' then
      pcOptions.ActivePage := tsRules
   else if dbrgType.Value = 'MS' then
   begin
   {$IFNDEF NOMULTISELECT}
      if (qrySource.FieldByName('CONSTRAINT_MULTIPLE').AsString <> 'Y') or (qrySource.FieldByName('CONSTRAINT_MULTIPLE').AsString <> 'N') then
         dbcbAllowMultiple.Checked := False;
   {$ENDIF}
   end
   else if Copy(dbrgType.Value, 1, 1) = 'D' then
   // AES 07/08/2018 uncommented
      pcOptions.ActivePage := tabFormat
   else if dbrgType.Value = 'B' then //'CT' then
      pcOptions.ActivePage := tabTaskSelect
   else
      pcOptions.ActivePageIndex := -1;
end;

procedure TfrmFieldTypes.btnRulesClick(Sender: TObject);
begin
  inherited;
  TfrmDataFieldRules.Create(Self, qrySource.FieldByName('NAME').AsString);
end;

procedure TfrmFieldTypes.FormShow(Sender: TObject);
begin
  inherited;
  dbrgTypeChange(Self);
end;

procedure TfrmFieldTypes.btnMultiSelectCodeClick(Sender: TObject);
begin
  {$IFNDEF NOMULTISELECT}
  inherited;
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM MULTISELECTION ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      if Self.qrySource.State <> dsEdit then
        Self.qrySource.Edit;
      Self.qrySource.FieldByName('MULTISELECTCODE').AsString := qrySource.FieldByName('CODE').AsString;
    end;
  end;
  {$ENDIF}
end;

procedure TfrmFieldTypes.btnFieldNamesClick(Sender: TObject);
begin
  inherited;
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT NAME AS CODE, DESCR, ''N'' AS DEFAULTITEM FROM FIELDTYPE ORDER BY NAME';
    if ShowModal = mrOK then
      Self.qrySource.Locate('NAME', qrySource.FieldByName('CODE').AsString, []);
  end;
end;

procedure TfrmFieldTypes.qrySourceBeforePost(DataSet: TDataSet);
begin
   inherited;
   AError := False;
   if DataSet.FieldByName('TYPE').IsNull then
   begin
      MsgErr('Please select a Field Type');
      DataSet.Cancel;
      AError := True;
   end;

   // Have we changed the field map?
   if not AError then
   begin
      if edForeignCode.Tag > 0 then
      begin
         with qryDataFieldMapping do
          begin
            SQL.Clear;
            SQL.Add('SELECT FOREIGNCODE');
            SQL.Add('FROM DATAFIELDMAPPING');
            SQL.Add('WHERE AXIOMCODE = ' + QuotedStr(qrySource.FieldByName('NAME').AsString));
            Open;
            if not IsEmpty then
            begin
               // Update the existing code
               Close;
               SQL.Clear;
               SQL.Add('UPDATE DATAFIELDMAPPING');
               SQL.Add('SET FOREIGNCODE = ' + QuotedStr(edForeignCode.Text));
               SQL.Add('WHERE AXIOMCODE = ' + QuotedStr(qrySource.FieldByName('NAME').AsString));
               ExecSQL;
            end
            else begin
               // Insert the new field map
               Close;
               SQL.Clear;
               SQL.Add('INSERT INTO DATAFIELDMAPPING');
               SQL.Add('(AXIOMCODE, FOREIGNCODE)');
               SQL.Add('VALUES');
               SQL.Add('(' + QuotedStr(qrySource.FieldByName('NAME').AsString) + ',' + QuotedStr(edForeignCode.Text) + ')');
               ExecSQL;
            end;
         end;
      end;
   end;
end;

{procedure TfrmFieldTypes.qrMaintReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  qryLookups.Open;
end;     }

{
procedure TfrmFieldTypes.qrMaintReportAfterPrint(Sender: TObject);
begin
  qryLookups.Close;
  inherited;
end; }

{procedure TfrmFieldTypes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
{  if qrySource.FieldByName('TYPE').AsString = 'T' then
    qrlblFieldTypeDescr.Caption := 'Text'
  else if qrySource.FieldByName('TYPE').AsString = 'D' then
    qrlblFieldTypeDescr.Caption := 'Date'
  else if qrySource.FieldByName('TYPE').AsString = 'C' then
    qrlblFieldTypeDescr.Caption := 'Currency'
  else if qrySource.FieldByName('TYPE').AsString = 'I' then
    qrlblFieldTypeDescr.Caption := 'Integer'
  else if qrySource.FieldByName('TYPE').AsString = 'B' then //'CT' then
    qrlblFieldTypeDescr.Caption := 'Boolean' // 'Check Task'
  else if qrySource.FieldByName('TYPE').AsString = 'OP' then
    qrlblFieldTypeDescr.Caption := 'Matter Contact'
  else if qrySource.FieldByName('TYPE').AsString = 'DA' then
    qrlblFieldTypeDescr.Caption := 'Key diary - Author'
  else if qrySource.FieldByName('TYPE').AsString = 'DP' then
    qrlblFieldTypeDescr.Caption := 'Key diary - Controller'
  else if qrySource.FieldByName('TYPE').AsString = 'DP' then
    qrlblFieldTypeDescr.Caption := 'Key diary - Partner'
  else if qrySource.FieldByName('TYPE').AsString = 'DS' then
    qrlblFieldTypeDescr.Caption := 'Key diary - Service Partner'
  else if qrySource.FieldByName('TYPE').AsString = 'TA' then
    qrlblFieldTypeDescr.Caption := 'Key task - Author'
  else if qrySource.FieldByName('TYPE').AsString = 'TP' then
    qrlblFieldTypeDescr.Caption := 'Key task - Controller'
  else if qrySource.FieldByName('TYPE').AsString = 'TP' then
    qrlblFieldTypeDescr.Caption := 'Key task - Partner'
  else if qrySource.FieldByName('TYPE').AsString = 'TS' then
    qrlblFieldTypeDescr.Caption := 'Key task - Service Partner'
  else qrlblFieldTypeDescr.Caption := '** Unknown Type **';
end;           }

procedure TfrmFieldTypes.qrySourceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  edForeignCode.OnChange := nil;
  with qryDataFieldMapping do
  begin
    SQL.Clear;
    SQL.Add('SELECT FOREIGNCODE');
    SQL.Add('FROM DATAFIELDMAPPING');
    SQL.Add('WHERE AXIOMCODE = ' + QuotedStr(qrySource.FieldByName('NAME').AsString));
    Open;
    edForeignCode.Text := FieldByName('FOREIGNCODE').AsString;
    Close;
  end;
  edForeignCode.Tag := 0; // Use the tag to see if we have changed it
  edForeignCode.OnChange := edForeignCodeChange;
end;

procedure TfrmFieldTypes.edForeignCodeChange(Sender: TObject);
begin
  edForeignCode.Tag := 1; // We have changed it
  if not qrySource.Modified then
    qrySource.Edit;
end;

procedure TfrmFieldTypes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   inherited;
   CanClose := (not AError);
end;

procedure TfrmFieldTypes.qrySourceAfterInsert(DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('Mandatory').AsString := 'N';
end;

end.

