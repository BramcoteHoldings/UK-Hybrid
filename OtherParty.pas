unit OtherParty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, NumberEdit, DBAccess, Grids, DBGrids,
  VirtualTrees, VTEditors, CurrEdit, ComCtrls;

type
  TEditMode = (emNew, emNewRestricted, emEdit, emEditRestricted);

type
  TfrmOtherParty = class(TForm)
    bnClear: TBitBtn;
    bnAdd: TBitBtn;
    qryTmp: TUniQuery;
    bnCancel: TBitBtn;
    qDataFields: TUniQuery;
    qDataFieldsSEQ: TFloatField;
    qDataFieldsFIELDNAME: TStringField;
    qDataFieldsCAPTION: TStringField;
    qDataFieldsTEXTVALUE: TStringField;
    qDataFieldsNUNIQUE: TFloatField;
    qDataFieldsLINKTABLE: TStringField;
    dsFields: TDataSource;
    gbMatter: TGroupBox;
    lClientLabel: TLabel;
    lMatterDescLabel: TLabel;
    bnMatterFind: TSpeedButton;
    lClient: TLabel;
    lMatterDesc: TLabel;
    lMatterSearchLabel: TLabel;
    gbParty: TGroupBox;
    lPartyType: TLabel;
    cbPartyDescr: TComboBox;
    lPhonebookSearch: TLabel;
    bnPhoneBookFind: TSpeedButton;
    lMatterParty: TLabel;
    lReference: TLabel;
    eRefNo: TEdit;
    ckActingFor: TCheckBox;
    neSequence: TNumberEdit;
    lSequence: TLabel;
    lActingFor: TLabel;
    gbPartyData: TGroupBox;
    lMatter: TLabel;
    vtData: TVirtualStringTree;
    qDataFieldsTYPE: TStringField;
    procedure bnClearClick(Sender: TObject);
    procedure bnPhoneBookFindClick(Sender: TObject);
    procedure bnMatterFindClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bnAddClick(Sender: TObject);
    procedure bnCancelClick(Sender: TObject);
    procedure cbPartyDescrChange(Sender: TObject);
    procedure cbPartyDescrEnter(Sender: TObject);
    procedure vtDataColumnClick(Sender: TBaseVirtualTree;
      Column: TColumnIndex; Shift: TShiftState);
    procedure vtDataCreateEditor(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
    procedure vtDataEditCancelled(Sender: TBaseVirtualTree;
      Column: TColumnIndex);
    procedure vtDataEditing(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; var Allowed: Boolean);
    procedure vtDataEnter(Sender: TObject);
    procedure vtDataFocusChanging(Sender: TBaseVirtualTree; OldNode,
      NewNode: PVirtualNode; OldColumn, NewColumn: TColumnIndex;
      var Allowed: Boolean);
    procedure vtDataGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vtDataGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure vtDataInitChildren(Sender: TBaseVirtualTree;
      Node: PVirtualNode; var ChildCount: Cardinal);
    procedure vtDataNewText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; NewText: WideString);
    procedure vtDataPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure vtDataEdited(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex);
    procedure vtDataExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FEditMode: TEditMode;
    FNName: Integer;
    OldPrefix: string;

    procedure LoadData();
    function  SaveData(): Boolean;
  public
    constructor Create(AOwner: TComponent; FileID: string = ''; Category: string = ''); reintroduce;
    procedure DisplayMatter(sMatter: string);
    procedure DisplayParty(sMatter, sPrefix: string);
    procedure AddParty(sMatter, sParty: String);
  end;

  TCurrencyEditLink = class(TCustomEditLink)
  private
    FReadOnly: Boolean;
  protected
    function CreateEditControl: TWinControl; override;
    procedure PrepareEditControl; override;
    function GetEditText: WideString; override;
    procedure SetEditText(const Value: WideString); override;
    procedure EditWndProc(var Message: TMessage); override;
    procedure KeyPress(Sender: TObject; var Key: Char);
  public
    constructor Create(AReadOnly: Boolean = False); overload;
  published
    property ReadOnly: Boolean read FReadOnly write FReadOnly default False;
  end;

var
  frmOtherParty: TfrmOtherParty;

implementation

uses
  AxiomData, Matters, MiscFunc, MSearch, NSearch, citfunc;

{$R *.DFM}

// for data form
type
  TEditFieldType = (efCurrency, efDate, efInteger, efText);
  PFieldData = ^TFieldData;
  TFieldData = record
    FieldName: String;
    FieldCaption: String;
    FieldValue: String;
    FieldType: TEditFieldType;
    Modified: Boolean;
    New: Boolean;
  end;

constructor TfrmOtherParty.Create(AOwner: TComponent; FileID: string = ''; Category: string = '');
begin
  inherited Create(AOwner);

  vtData.RootNodeCount := 0;

  lMatterParty.Caption := '';
  lMatter.Caption      := '';
  lMatterDesc.Caption  := '';
  lClient.Caption      := '';

  if Category = '' then
    FEditMode := emNew
  else
  begin
    FEditMode := emNewRestricted;
    cbPartyDescr.Text := Category;
    cbPartyDescr.Enabled := False;
    bnMatterFind.Visible := False;
    lMatter.Left := lMatterDesc.Left;
    lMatterSearchLabel.Caption := 'Matter';
    bnClear.Visible := False;
    DisplayMatter(FileId);
  end;
end;


procedure TfrmOtherParty.bnClearClick(Sender: TObject);
begin
  cbPartyDescr.ItemIndex := -1;
  lMatterParty.Caption := '';
  eRefno.Text := '';
end;


procedure TfrmOtherParty.bnPhoneBookFindClick(Sender: TObject);
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  frmPhonebookSearch.SelectOtherParty(cbPartyDescr.Text);
  if frmPhonebookSearch.ShowModal = mrOK then
  begin
    lMatterParty.Caption := frmPhonebookSearch.qryPhonebook.FieldByName('SEARCH').AsString;
    FNName := frmPhonebookSearch.qryPhonebook.FieldByName('NNAME').AsInteger;
  end;
end;


procedure TfrmOtherParty.bnMatterFindClick(Sender: TObject);
begin
  if frmMatterSearch.ShowModal = mrOK then
    DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
end;


procedure TfrmOtherParty.DisplayMatter(sMatter: string);
begin
  lMatter.Caption := sMatter;
  lClient.Caption := MatterString(lMatter.Caption, 'TITLE');
  lMatterDesc.Caption := MatterString(lMatter.Caption, 'SHORTDESCR');
  if Visible then
    cbPartyDescr.SetFocus;
  LoadData();
  Show();
end;

procedure TfrmOtherParty.AddParty(sMatter: string; sParty: String);
begin
  lMatter.Caption := sMatter;
  lClient.Caption := MatterString(lMatter.Caption, 'TITLE');
  lMatterDesc.Caption := MatterString(lMatter.Caption, 'SHORTDESCR');
  LoadData();
  Show();
  cbPartyDescr.ItemIndex := cbPartyDescr.Items.IndexOf(sParty);
  cbPartyDescrChange(cbPartyDescr);
  if Visible then
    cbPartyDescr.SetFocus;
end;

procedure TfrmOtherParty.DisplayParty(sMatter, sPrefix: string);
begin
  StringPopulate(cbPartyDescr.Items, 'PBGROUP', 'CATEGORY', 'OTHERPARTY = ''Y''');

  qryTmp.SQL.Text := 'SELECT * FROM MATTERPARTY WHERE FILEID = :FileID AND PREFIX = :Prefix';
  qryTmp.ParamByName('FileID').AsString := sMatter;
  qryTmp.ParamByName('Prefix').AsString := sPrefix;
  qryTmp.Open();
  if not qryTmp.IsEmpty then
  begin
    FNName                 := qryTmp.FieldByName('NNAME').AsInteger;
    cbPartyDescr.ItemIndex := cbPartyDescr.Items.IndexOf(qryTmp.FieldByName('CATEGORY').AsString);
    OldPrefix              := qryTmp.FieldByName('PREFIX').AsString;
    lMatterParty.Caption   := TableString('PHONEBOOK', 'NNAME', FNName, 'SEARCH');
    eRefno.Text            := qryTmp.FieldByName('REFNO').AsString;
    ckActingFor.Checked    := qryTmp.FieldByName('ACTING_FOR').AsString = 'Y';
    neSequence.AsInteger   := qryTmp.FieldByName('SEQ').AsInteger;
    qryTmp.Close();
    DisplayMatter(sMatter);
  end else
    Close();

  bnMatterFind.Visible := False;
  lMatter.Left := lMatterDesc.Left;
  lMatterSearchLabel.Caption := 'Matter';
  cbPartyDescr.Enabled := False;
  lSequence.Visible := True;
  neSequence.Visible := True;
  bnAdd.Caption := 'Update';
  FEditMode := emEdit;
end;


procedure TfrmOtherParty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryTmp.Close;
  if(Owner is TfrmMatters) then
  begin
    TfrmMatters(Owner).qryMatterParty.Close;
    TfrmMatters(Owner).qryMatterParty.Open;
  end;
  Action := caFree;
end;

procedure TfrmOtherParty.bnAddClick(Sender: TObject);
var
  sFieldName: string;
begin
  ModalResult := mrNone;
  case FEditMode of
    emNew, emNewRestricted:
    begin
      if (cbPartyDescr.Text <> '') and (lMatterParty.Caption <> '') then
      begin
        // Now update the Other Party details
        sFieldName := TableString('PBGROUP', 'CATEGORY', cbPartyDescr.Text, 'FIELDNAME');
        try
          qryTmp.SQL.Clear;
          qryTmp.SQL.Add('INSERT INTO MATTERPARTY');
          qryTmp.SQL.Add('(FILEID, CATEGORY, NNAME, REFNO, FIELDNAME, ACTING_FOR)');
          qryTmp.SQL.Add('VALUES');
          qryTmp.SQL.Add('( ' + QuotedStr(lMatter.Caption));
          qryTmp.SQL.Add(', ' + QuotedStr(cbPartyDescr.Text));
          qryTmp.SQL.Add(', ' + IntToStr(frmPhonebookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger));
          qryTmp.SQL.Add(', ' + QuotedStr(eRefno.Text));
          qryTmp.SQL.Add(', ' + QuotedStr(sFieldName));
          if ckActingFor.Checked then
            qryTmp.SQL.Add(', ''Y'')')
          else
            qryTmp.SQL.Add(', ''N'')');
          qryTmp.ExecSQL();
        except
          on E: Exception do
          begin
            MsgErr('Error adding Other Party:' + #13#13 + E.Message);
            Exit;
          end;
        end;
          // Add this to the group in the phonebook
        if FEditMode <> emNewRestricted then
        begin
          try
            qryTmp.SQL.Text := 'INSERT INTO PBGROUPINGS VALUES (' + IntToStr(frmPhonebookSearch.qryPhonebook.FieldByName('NNAME').AsInteger) + ', ' + QuotedStr(cbPartyDescr.Text) + ')';
            qryTmp.ExecSQL();
          except
            // silent exception
          end;
          RefreshMatter(lMatter.Caption);
          bnClear.Click;
        end;
      end else
      begin
        MsgErr('Please complete Other Party details');
        Exit;
      end;
    end;

    emEdit:
    begin
      if (cbPartyDescr.Text <> '') and (lMatterParty.Caption <> '') then
      begin
        // Now update the Other Party details
        sFieldName := TableString('PBGROUP', 'CATEGORY', cbPartyDescr.Text, 'FIELDNAME');
        try
          qryTmp.SQL.Clear;
          qryTmp.SQL.Add('UPDATE MATTERPARTY SET');
          qryTmp.SQL.Add('  NNAME = ' + IntToStr(TableInteger('PHONEBOOK', 'SEARCH', lMatterParty.Caption, 'NNAME')));
          qryTmp.SQL.Add(', REFNO = ' + QuotedStr(eRefno.Text));
          qryTmp.SQL.Add(', SEQ = ' + neSequence.EditText);
          if ckActingFor.Checked then
            qryTmp.SQL.Add(', ACTING_FOR = ''Y''')
          else
            qryTmp.SQL.Add(', ACTING_FOR = ''N''');
          qryTmp.SQL.Add('WHERE FILEID = ' + QuotedStr(lMatter.Caption));
          qryTmp.SQL.Add('  AND PREFIX = ' + QuotedStr(OldPrefix));
          qryTmp.ExecSQL;
        except
          on E: Exception do
          begin
            MsgErr('Error updating Other Party:' + #13#13 + E.Message);
            Exit;
          end;
        end;
      end else
      begin
        MsgErr('Please complete Other Party details');
        Exit;
      end;
    end;
  end; // case FEditMode
  if(not SaveData()) then
    Exit;
  ModalResult := mrOk;
  Close();
end;

procedure TfrmOtherParty.bnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close();
end;

procedure TfrmOtherParty.cbPartyDescrChange(Sender: TObject);
begin
  ckActingFor.Visible := TableString('PBGROUP', 'CATEGORY', cbPartyDescr.Text, 'ACTINGFOR') = 'Y';
  lActingFor.Visible := ckActingFor.Visible;
  if not ckActingFor.Visible then
    ckActingFor.Checked := False;

  LoadData();
end;

procedure TfrmOtherParty.cbPartyDescrEnter(Sender: TObject);
begin
  if cbPartyDescr.Items.Count = 0 then
  begin
    qryTmp.SQL.Text := 'SELECT CATEGORY FROM PBGROUP WHERE OTHERPARTY = ''Y''';
    qryTmp.Prepare();
    qryTmp.Open();
    while not qryTmp.EOF do
    begin
      cbPartyDescr.Items.Add(qryTmp.FieldByName('CATEGORY').AsString);
      qryTmp.Next();
    end;
    qryTmp.Close();
  end;
end;

procedure TfrmOtherParty.vtDataColumnClick(Sender: TBaseVirtualTree;
  Column: TColumnIndex; Shift: TShiftState);
begin
  if(Assigned(Sender.FocusedNode)) then
  begin
    Sender.CancelEditNode();
    Sender.EditNode(Sender.FocusedNode,1);
  end;
end;

procedure TfrmOtherParty.vtDataCreateEditor(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
var
  LData: PFieldData;
begin
  if(Column = 1) then
  begin
    LData := Sender.GetNodeData(Node);
    case LData.FieldType of
      efCurrency:  EditLink := TCurrencyEditLink.Create();
      efDate:      EditLink := TDateEditLink.Create(dtkDate);
      efInteger:   EditLink := TSpinEditLink.Create();
      efText:      EditLink := TEditEditLink.Create();
    end;
  end;
end;

procedure TfrmOtherParty.vtDataEditCancelled(Sender: TBaseVirtualTree;
  Column: TColumnIndex);
begin
//
end;

procedure TfrmOtherParty.vtDataEditing(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
begin
  Allowed := (Column = 1) and (cbPartyDescr.ItemIndex > -1) and (FNName > -1);
end;

procedure TfrmOtherParty.vtDataEnter(Sender: TObject);
begin
  if(not Assigned(vtData.FocusedNode)) then
  begin
    vtData.FocusedNode := vtData.RootNode.FirstChild;
    if(Assigned(vtData.FocusedNode)) then
    begin
      vtData.FocusedColumn := 1;
      vtData.EditNode(vtData.FocusedNode,1);
    end;
  end;
end;

procedure TfrmOtherParty.vtDataFocusChanging(Sender: TBaseVirtualTree;
  OldNode, NewNode: PVirtualNode; OldColumn, NewColumn: TColumnIndex;
  var Allowed: Boolean);
begin
  //
end;

procedure TfrmOtherParty.vtDataGetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TFieldData);
end;

procedure TfrmOtherParty.vtDataGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  LData: PFieldData;
begin
  LData := Sender.GetNodeData(Node);
  case Column of
    0: CellText := LData.FieldCaption;
    1: CellText := LData.FieldValue;
  end;
end;

procedure TfrmOtherParty.vtDataInitChildren(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var ChildCount: Cardinal);
begin
  ChildCount := 0;
end;

procedure TfrmOtherParty.vtDataNewText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; NewText: WideString);
var
  LData: PFieldData;
begin
  if(Column = 1) then
  begin
    LData := Sender.GetNodeData(Node);
    if(LData.FieldValue <> NewText) then
    begin
      LData.FieldValue := NewText;
      LData.Modified := True;
    end;
  end;
end;

procedure TfrmOtherParty.LoadData;
var
  LNode: PVirtualNode;
  LData: PFieldData;
begin
  vtData.BeginUpdate();
  try
    vtData.Clear();
    qDataFields.Close();
    qDataFields.ParamByName('partytype').AsString := cbPartyDescr.Text;
    qDataFields.ParamByName('nunique').AsInteger  := FNName;
    qDataFields.Open();
    while(not qDataFields.Eof) do
    begin
      LNode := vtData.AddChild(nil);
      LData := vtData.GetNodeData(LNode);
      LData.FieldName    := qDataFieldsFIELDNAME.AsString;
      LData.FieldCaption := qDataFieldsCAPTION.AsString;
      LData.FieldValue   := qDataFieldsTEXTVALUE.AsString;
      if(Length(qDataFieldsTYPE.AsString) = 1) then
      begin
        case qDataFieldsTYPE.AsString[1] of
          'C': LData.FieldType := efCurrency;
          'D': LData.FieldType := efDate;
          'I': LData.FieldType := efInteger;
          else LData.FieldType := efText; // 'T' or something else
        end;
      end;
      LData.Modified := False;
      LData.New := qDataFieldsNUNIQUE.AsInteger < 1;
      qDataFields.Next();
    end;
  finally
    vtData.EndUpdate();
  end;
end;

{ TCurrencyEditLink }

constructor TCurrencyEditLink.Create(AReadOnly: Boolean);
begin
  Create(nil);
  FReadOnly := AReadOnly;
end;

function TCurrencyEditLink.CreateEditControl: TWinControl;
begin
  Result := TCurrencyEdit.Create(nil);
end;

procedure TCurrencyEditLink.EditWndProc(var Message: TMessage);
begin
  case Message.Msg of
    WM_KEYDOWN:
      case TWMKeyDown(Message).CharCode of
        VK_UP:   TWMKeyDown(Message).CharCode := VK_LEFT;
        VK_DOWN: TWMKeyDown(Message).CharCode := VK_RIGHT;
      end;
  end;
  inherited;
end;

function TCurrencyEditLink.GetEditText: WideString;
begin
  Result := TCurrencyEdit(FEdit).Text;
end;

procedure TCurrencyEditLink.KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#13, #27] then
    Key := #0; // Eliminate beep
end;

procedure TCurrencyEditLink.PrepareEditControl;
begin
  inherited;
  with TCurrencyEdit(FEdit) do
  begin
    ReadOnly := FReadOnly;
    OnKeyPress := KeyPress;
  end;
end;

procedure TCurrencyEditLink.SetEditText(const Value: WideString);
begin
  TCurrencyEdit(FEdit).Text := Value;
end;


procedure TfrmOtherParty.vtDataPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  LData: PFieldData;
begin
  if(Column = 1) then
  begin
    LData := Sender.GetNodeData(Node);
    if(LData.Modified) then
    begin
      if(vsSelected in Node.States) then
        TargetCanvas.Font.Color := clHighlightText
      else
        TargetCanvas.Font.Color := clBlue;
    end;
  end;
end;

procedure TfrmOtherParty.vtDataEdited(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex);
begin
//  if(Assigned(Node.NextSibling) and (ActiveControl = Sender)) then
//    Sender.EditNode(Node.NextSibling,1);
end;

procedure TfrmOtherParty.vtDataExit(Sender: TObject);
begin
  if(tsEditing in vtData.TreeStates ) then
    vtData.CancelEditNode();
end;

function TfrmOtherParty.SaveData: Boolean;
var
  LNode: PVirtualNode;
  LData: PFieldData;
begin
  Result := False;
  LNode := vtData.RootNode.FirstChild;
  while(Assigned(LNode)) do
  begin
    LData := vtData.GetNodeData(LNode);
    if(LData.Modified) then
    begin
      try
        qryTmp.SQL.Clear();
        if(LData.New) then
        begin
          qryTmp.SQL.Add('INSERT INTO fieldtypelink');
          qryTmp.SQL.Add(' (nunique, linktable, fieldname, textvalue, datevalue, modified, numbervalue)');
          qryTmp.SQL.Add(' VALUES (:nunique, :linktable, :fieldname, :textvalue, :datevalue, SYSDATE, :numbervalue)');
        end else
        begin
          qryTmp.SQL.Add('UPDATE fieldtypelink SET');
          qryTmp.SQL.Add('textvalue = :textvalue, datevalue = :datevalue, modified = SYSDATE, numbervalue = :numbervalue');
          qryTmp.SQL.Add('WHERE nunique = :nunique AND linktable = :linktable AND fieldname = :fieldname');
        end;

        qryTmp.ParamByName('nunique').AsInteger := FNName;
        qryTmp.ParamByName('linktable').AsString := UpperCase(cbPartyDescr.Text);
        qryTmp.ParamByName('fieldname').AsString := LData.FieldName;

        qryTmp.ParamByName('textvalue').AsString := LData.FieldValue;
        if(LData.FieldType = efDate) then
          qryTmp.ParamByName('datevalue').AsDate := StrToDate(LData.FieldValue)
        else
          qryTmp.ParamByName('datevalue').Clear();

        if(LData.FieldType in [efCurrency,efInteger]) then
          qryTmp.ParamByName('numbervalue').AsString := LData.FieldValue
        else
          qryTmp.ParamByName('numbervalue').Clear();

        qryTmp.ExecSQL();
      except
        on e: Exception do
        begin
          MsgErr('Error updating Other Party:'#13#13 + E.Message);
          Exit;
        end;
      end;

    end;
    LNode := LNode.NextSibling;
  end;
  Result := True;
end;


procedure TfrmOtherParty.FormCreate(Sender: TObject);
begin
  FNName := -1;
end;

end.
