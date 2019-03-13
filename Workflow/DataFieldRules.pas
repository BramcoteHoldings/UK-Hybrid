unit DataFieldRules;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, OracleUniProvider, Uni, DBAccess, MemDS, DBCtrls, Mask,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxGraphics, cxLookAndFeels;

const
  NORMALWIDTH = 245;
  LOOKUPWIDTH = 659;
type
  TfrmDataFieldRules = class(TForm)
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    qryLookups: TUniQuery;
    dsFieldType: TUniDataSource;
    qryFieldType: TUniQuery;
    gbRules: TcxGroupBox;
    Label1: TLabel;
    dbedWidth: TDBEdit;
    dbchkForceUpper: TDBCheckBox;
    dbchkLookupField: TDBCheckBox;
    Label3: TLabel;
    dbmmoDefaultText: TDBMemo;
    gbValues: TcxGroupBox;
    Label2: TLabel;
    edNewValue: TEdit;
    BitBtn1: TBitBtn;
    lbValues: TListBox;
    dbchkLookupEnforced: TDBCheckBox;
    dbchkAutoAdd: TDBCheckBox;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    qryFieldTypeDEFAULTTEXT: TStringField;
    qryFieldTypeLOOKUPENFORCED: TStringField;
    qryFieldTypeLOOKUPAUTOADD: TStringField;
    qryFieldTypeDISPLAYLINECOUNT: TFloatField;
    qryFieldTypeMANDATORY: TStringField;
    qryFieldTypeNAME: TStringField;
    qryFieldTypeCAPTION: TStringField;
    qryFieldTypeDESCR: TStringField;
    qryFieldTypeTYPE: TStringField;
    qryFieldTypePHONEBOOKGROUP: TStringField;
    qryFieldTypeCONSTRAINT_WIDTH: TLargeintField;
    qryFieldTypeCONSTRAINT_UPPERCASE: TStringField;
    qryFieldTypeCONSTRAINT_MULTIPLE: TStringField;
    qryFieldTypeMULTISELECTCODE: TStringField;
    qryFieldTypeFORMAT: TStringField;
    qryFieldTypeLOOKUPFIELD: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edNewValueKeyPress(Sender: TObject; var Key: Char);
    procedure lbValuesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure qryFieldTypeCONSTRAINT_WIDTHChange(Sender: TField);
    procedure lbValuesClick(Sender: TObject);
    procedure dbchkLookupFieldClick(Sender: TObject);
    procedure dbchkForceUpperClick(Sender: TObject);
  private
    { Private declarations }
    FFieldName: string;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; FieldName: string); reintroduce; overload;
  end;

implementation

{$R *.DFM}

uses
  AxiomData, MiscFunc;

constructor TfrmDataFieldRules.Create(AOwner: TComponent; FieldName: string);
begin
  inherited Create(AOwner);
  qryFieldType.ParamByName('NAME').AsString := FieldName;
  qryFieldType.Open;
  if qryFieldType.IsEmpty then
    Self.Close
  else
  begin
    FFieldName := FieldName;
    Self.Caption := 'Rules for ' + qryFieldType.FieldByName('CAPTION').AsString;
    if qryFieldType.FieldByName('LOOKUPFIELD').AsString = 'Y' then
    begin
      Self.Width := LOOKUPWIDTH;
      if qryFieldType.FieldByName('CONSTRAINT_UPPERCASE').AsString = 'Y' then
        edNewValue.Charcase := ecUpperCase;
      with qryLookups do
      begin
        SQL.Text := 'SELECT LOOKUPVALUE FROM FIELDTYPELOOKUP WHERE FIELDNAME = ' + QuotedStr(FFieldName);
        Open;
        while not Eof do
        begin
          lbValues.Items.Add(FieldByName('LOOKUPVALUE').AsString);
          Next;
        end;
        Close;
      end;
    end
    else
      Self.Width := NORMALWIDTH;
    Self.ShowModal;
  end;
end;


procedure TfrmDataFieldRules.dbchkForceUpperClick(Sender: TObject);
begin
   edNewValue.Charcase := ecNormal;
   if (dbchkForceUpper.Checked = True) then
      edNewValue.Charcase := ecUpperCase;
end;

procedure TfrmDataFieldRules.dbchkLookupFieldClick(Sender: TObject);
begin
   gbValues.Visible := (dbchkLookupField.Checked = True);
   if (dbchkLookupField.Checked = True) then
      Self.Width := LOOKUPWIDTH
   else
      Self.Width := NORMALWIDTH;
end;

procedure TfrmDataFieldRules.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryFieldType.Modified then
  begin
    qryFieldType.Post;
    qryFieldType.ApplyUpdates;
  end;
  Action := caFree;
end;


procedure TfrmDataFieldRules.edNewValueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if edNewValue.Text <> '' then
    begin
      if lbValues.Items.IndexOf(edNewValue.Text) < 0 then
      begin
        lbValues.Items.Add(edNewValue.Text);
        with qryLookups do
        begin
          SQL.Text := 'INSERT INTO FIELDTYPELOOKUP (FIELDNAME, LOOKUPVALUE) VALUES (' + QuotedStr(FFieldName) + ', ' + QuotedStr(edNewValue.Text) + ')';
          ExecSQL;
        end;
      end;
      edNewValue.Text := '';
    end;
    Key := #0;
  end;
end;

procedure TfrmDataFieldRules.lbValuesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_delete then
    if lbValues.Items.Count > 0 then
      if MsgAsk('Do you want to delete the value ' + lbValues.Items[lbValues.ItemIndex] + '?') = mrYes then
      begin
        with qryLookups do
        begin
          SQL.Text := 'DELETE FROM FIELDTYPELOOKUP WHERE FIELDNAME = ' + QuotedStr(FFieldName) + ' AND LOOKUPVALUE = ' + QuotedStr(lbValues.Items[lbValues.ItemIndex]);
          ExecSQL;
        end;
        lbValues.Items.Delete(lbValues.ItemIndex);
      end;
end;

procedure TfrmDataFieldRules.btnCancelClick(Sender: TObject);
begin
  if qryFieldType.Modified then
    qryFieldType.CancelUpdates;
end;

procedure TfrmDataFieldRules.qryFieldTypeCONSTRAINT_WIDTHChange(
  Sender: TField);
begin
  edNewValue.MaxLength := qryFieldType.FieldByName('CONSTRAINT_WIDTH').AsInteger;
end;

procedure TfrmDataFieldRules.lbValuesClick(Sender: TObject);
begin
  edNewValue.Text := lbValues.Items[lbValues.ItemIndex];
end;

end.

