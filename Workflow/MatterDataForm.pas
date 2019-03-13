unit MatterDataForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, NumberEdit, Buttons, Db, MemDS, OracleUniProvider, Uni, DBAccess,
  ImgList, cxButtons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, dxGDIPlusClasses, dxDPIAwareUtils, cxControls, cxContainer, cxEdit,
  cxLabel, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCheckBox, cxCustomListBox, cxListBox;

const

   C_SQL_BOTH = 'SELECT FTL.*, FTL.ROWID FROM FIELDTYPELINK FTL WHERE FTL.NUNIQUE = :NUNIQUE '+
                ' AND FTL.LINKTABLE = :LINKTABLE AND FTL.FIELDNAME = :FIELDNAME '+
                ' AND FTL.nunique2 = :NUNIQUE2 ';

   C_SQL_SINGLE = 'SELECT FTL.*, FTL.ROWID FROM FIELDTYPELINK FTL WHERE FTL.NUNIQUE = :NUNIQUE '+
                ' AND FTL.LINKTABLE = :LINKTABLE AND FTL.FIELDNAME = :FIELDNAME ' +
                ' AND FTL.nunique2 is null ';

type

  TDataFormLabel = class(TcxLabel)
    public
      constructor Create(AOwner: TComponent); override;
  end;

  TDataFormButton = class(TBitBtn)
    private
      FFieldName: string;
      FPBGroup: string;
      FOldTag: Integer;
    public
      InfoLabel: TDataFormLabel;
    published
      property FieldName: string read FFieldName write FFieldName;
      property PBGroup: string read FPBGroup write FPBGroup;
      property OldTag: Integer read FOldTag write FOldTag;
  end;

  TDataFormEdit = class(TComponent)
    private
      FFieldName: string;
      FOldText: string;
      FMemoEdit: TcxButton;
      FComboDropDown: TcxButton;
      FLookupList: TcxListBox;
      FFieldEdit: TcxTextEdit;
      FFieldEditIndex: Integer;
      FFieldEditAutoAdd: Boolean;
      FFieldEditAutoFill: Boolean;
      FFieldEditLookupEnforced: Boolean;
      FHint: string;
      function GetLeft: Integer;
      function GetTop: Integer;
      function GetWidth: Integer;
      function GetHeight: Integer;
      function GetText: TCaption;
      function GetMaxLength: Integer;
      function GetCharCase: TEditCharCase;
      function GetTabOrder: TTabOrder;
      procedure SetLeft(Value: Integer);
      procedure SetTop(Value: Integer);
      procedure SetWidth(Value: Integer);
      procedure SetHeight(Value: Integer);
      procedure SetText(const Value: TCaption);
      procedure SetMaxLength(Value: Integer);
      procedure SetCharCase(Value: TEditCharCase);
      procedure SetTabOrder(Value: TTabOrder);
      procedure FieldEditKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure FieldEditKeyPress(Sender: TObject; var Key: Char);
      procedure MemoEditClick(Sender: TObject);
      procedure ComboDropDownClick(Sender: TObject);
      procedure LookupListSelect;
      procedure LookupListKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure LookupListMouseDown(Sender: TObject; Button: TMouseButton;
        Shift: TShiftState; X, Y: Integer);
      procedure LookupListExit(Sender: TObject);
      procedure LookupListPopulate;
    public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
    published
      property AutoAdd: boolean read FFieldEditAutoAdd write FFieldEditAutoAdd default False;
      property AutoFill: boolean read FFieldEditAutoFill write FFieldEditAutoFill default False;
      property LookupEnforced: boolean read FFieldEditLookupEnforced write FFieldEditLookupEnforced default False;
      property Left: Integer read GetLeft write SetLeft;
      property Top: Integer read GetTop write SetTop;
      property Width: Integer read GetWidth write SetWidth;
      property Height: Integer read GetHeight write SetHeight;
      property Text: TCaption read GetText write SetText;
      property MaxLength: Integer read GetMaxLength write SetMaxLength default 0;
      property CharCase: TEditCharCase read GetCharCase write SetCharCase default ecNormal;
      property TabOrder: TTabOrder read GetTabOrder write SetTabOrder default -1;
      property FieldName: string read FFieldName write FFieldName;
      property OldText: string read FOldText write FOldText;
      property Hint: string read FHint write FHint;
      procedure UpdateList;
  end;

  TDataFormDateTimePicker = class(TcxDateEdit)
    private
      FFieldName: string;
      FOldDate: TDateTime;
      FOldChecked: boolean;
    published
      property FieldName: string read FFieldName write FFieldName;
      property OldDate: TDateTime read FOldDate write FOldDate;
      property OldChecked: boolean read FOldChecked write FOldChecked;
  end;

  TDataFormNumberEdit = class(TNumberEdit)
    private
      FFieldName: string;
      FOldValue: currency;
    published
      property FieldName: string read FFieldName write FFieldName;
      property OldValue: currency read FOldValue write FOldValue;
  end;

  TDataFormCheckBox = class(TcxCheckBox)
    private
      FFieldName: string;
      FOldChecked: boolean;
    published
      property FieldName: string read FFieldName write FFieldName;
      property OldChecked: boolean read FOldChecked write FOldChecked;
  end;

  TfrmMatterDataForm = class(TForm)
    Label1: TLabel;
    lblMatter: TLabel;
    lblClient: TLabel;
    lblMatterDesc: TLabel;
    qryMatter: TUniQuery;
    qryDataFormFields: TUniQuery;
    qryFieldType: TUniQuery;
    qryDataForm: TUniQuery;
    qryFieldValue: TUniQuery;
    qryKeyDate: TUniQuery;
    qryTmp: TUniQuery;
    qryTask: TUniQuery;
    qryTaskNew: TUniQuery;
    qryTaskItems: TUniQuery;
    qrySundryNew: TUniQuery;
    qryTaskInsert: TUniQuery;
    ilsMatterDataForm: TImageList;
    btnPrev: TcxButton;
    btnNext: TcxButton;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    procedure btnNextClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FAllowViewing: Boolean;
    FDataForm: string;
    FDocID: integer;
    FLineId: integer;
    FTemplateFields: Boolean;
    FNumDataForms: integer;
    FNName: integer;
    property NName: integer read FNName write FNName;
    procedure CleanUpDataForm;
    procedure DataFormOtherPartiesClick(Sender: TObject);
    {$IFNDEF NOMULTISELECT}
    procedure DataFormMultiSelectClick(Sender: TObject);
    {$ENDIF}
    procedure LoadFieldValue(sFieldName : string);
    function SaveFields: boolean;
    function OKToPost: boolean;
    function IsDataFormMatterParty(ADataForm: string): boolean;
    function IsMatterDataOnly(ADataForm: string): boolean;
    function IsPartyDataOnly(ADataForm: string): boolean;
  public
    function LoadForm(sDataForm : string; sFile : string; ANName: integer = 0): Boolean;
    procedure SingleFieldForm(sFile, sField : string);
    property DocID: integer read FDocID write FDocID;
    property LineId: integer read FLineId write FLineId;
    property TemplateFields: boolean read FTemplateFields write FTemplateFields;
  end;

var
  frmMatterDataForm: TfrmMatterDataForm;

implementation

{$R *.DFM}

uses
  FeeNew, SundryNew, MiscFunc, AxiomData,
  DataFieldMemoEdit;

var
  strPrevDataForms : TStringList;
  iPrevDataForm : integer;

constructor TDataFormLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Properties.ShowAccelChar := False;
end;

constructor TDataFormEdit.Create(AOwner: TComponent);
begin
  inherited;
  FFieldEdit := TcxTextEdit.Create(Self);
  with FFieldEdit do
  begin
    Parent := TWinControl(AOwner);
    OnKeyDown := FieldEditKeyDown;
    OnKeyPress := FieldEditKeyPress;
    Style.Font.Name := 'Segoe UI';
    Style.Font.Size := 9;
  end;
  FFieldEditIndex := 0;
  FFieldEditAutoFill := False;
  FFieldEditAutoAdd := False;
  FFieldEditLookupEnforced := False;

  FMemoEdit := TcxButton.Create(Self);
  with FMemoEdit do
  begin
    Caption := '...';
    Parent := TWinControl(AOwner);
    Width := 18;
    Height := FFieldEdit.Height-3;
    Font.Style := [fsBold];
    Font.Name := 'Segoe UI';
    Font.Size := 9;
    OnClick := MemoEditClick;
  end;

  FComboDropDown := TcxButton.Create(Self);
  with FComboDropDown do
  begin
    Caption := 'v';
    Parent := TWinControl(AOwner);
    Width := 18;
    Height := FFieldEdit.Height-3;
    Font.Style := [fsBold];
    Font.Name := 'Segoe UI';
    Font.Size := 9;
    OnClick := ComboDropDownClick;
    Visible := False;  // Only visible for lookup fields
  end;

  FLookupList := TcxListBox.Create(Self);
  with FLookupList do
  begin
    Parent := TWinControl(AOwner);
    Width := 18;
    OnMouseDown := LookupListMouseDown;
    OnKeyDown := LookupListKeyDown;
    OnExit := LookupListExit;
    Style.Font.Name := 'Segoe UI';
    Style.Font.Size := 9;
    Visible := False;  // Only visible when dropped down
  end;
end;

destructor TDataFormEdit.Destroy;
begin
  FMemoEdit.Free;
  FComboDropDown.Free;
  FLookupList.Free;
  FFieldEdit.Free;
  inherited;
end;

procedure TDataFormEdit.FieldEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN then
    FComboDropDown.Click;
end;

procedure TDataFormEdit.FieldEditKeyPress(Sender: TObject; var Key: Char);
var
  iLth, iCtr: Integer;
  bFound: Boolean;
  sTyped: string;
begin
  if FFieldEditAutoFill then
  begin
    if ((Ord(Key) > 31) and (Ord(Key) < 128)) then
    begin
      sTyped := Copy(FFieldEdit.Text, 1, FFieldEdit.SelStart) + Key;
      // Find the entry in the list
      iLth := Length(sTyped);
      iCtr := FFieldEditIndex;
      bFound := False;
      while (iCtr < FLookupList.Items.Count) and not bFound do
      begin
        if UpperCase(Copy(FLookupList.Items[iCtr], 1, iLth)) = UpperCase(sTyped) then
          bFound := True;
        Inc(iCtr);
      end;
      Dec(iCtr);
      if bFound then
      begin
        FFieldEditIndex := iCtr;
        FFieldEdit.Text := FLookupList.Items[FFieldEditIndex];
        FFieldEdit.SelStart := iLth;
        FFieldEdit.SelLength := 1999;
        Key := #0;
      end
      else
        if FFieldEditLookupEnforced then
          Key := #0;
    end
    else
      FFieldEditIndex := 0;
  end;
end;

procedure TDataFormEdit.MemoEditClick(Sender: TObject);
begin
  with TfrmDataFieldMemoEdit.Create(Self) do
  begin
    Caption := TableString('FIELDTYPE', 'NAME', FFieldName, 'CAPTION');
    meFieldData.Text := Self.Text;
    meFieldData.MaxLength := Self.MaxLength;
    if ShowModal = mrOk then
      Self.Text := meFieldData.Text;
  end;
end;

procedure TDataFormEdit.ComboDropDownClick(Sender: TObject);
begin
  LookupListPopulate;
  // Make sure that there is enough room
  if FLookupList.Top + FLookupList.Height > ((Sender as TcxButton).Parent as TfrmMatterDataForm).Height then
    FLookupList.Height := ((Sender as TcxButton).Parent as TfrmMatterDataForm).Height - FLookupList.Top - 30;
  FLookupList.Visible := True;
  FLookupList.BringToFront;
  FLookupList.SetFocus;
  if FLookupList.Items.Count > 0 then
    FLookupList.ItemIndex := 0;
end;

procedure TDataFormEdit.LookupListPopulate;
var
  qryLookup: TUniQuery;
begin
  qryLookup := TUniQuery.Create(nil);
  qryLookup.Connection := dmAxiom.uniInsight;
  qryLookup.SQL.Text := 'SELECT LOOKUPVALUE FROM FIELDTYPELOOKUP WHERE FIELDNAME = ' + QuotedStr(Self.FieldName) + ' ORDER BY LOOKUPVALUE';
  qryLookup.Open;
  FLookupList.Clear;
  while not qryLookup.Eof do
  begin
    FLookupList.Items.Add(qryLookup.FieldByName('LOOKUPVALUE').AsString);
    qryLookup.Next;
  end;
  qryLookup.Close;
  qryLookup.Free;
end;

procedure TDataFormEdit.LookupListSelect;
begin
  Self.Text := FLookupList.Items[FLookupList.ItemIndex];
  FLookupList.Visible := False;
  FFieldEdit.SetFocus;
  FFieldEdit.SelectAll;
end;

procedure TDataFormEdit.UpdateList;
var
  qryAddLookup: TUniQuery;
begin
  if FFieldEditAutoAdd and (Self.Text <> '') then
    if FLookupList.Items.IndexOf(FFieldEdit.Text) < 0 then
    begin
      qryAddLookup := TUniQuery.Create(nil);
      try
        qryAddLookup.Connection := dmAxiom.uniInsight;
        qryAddLookup.SQL.Text := 'INSERT INTO FIELDTYPELOOKUP (FIELDNAME, LOOKUPVALUE) VALUES (' + QuotedStr(Self.FieldName) + ', ' + QuotedStr(Self.Text) + ')';
        qryAddLookup.ExecSQL;
      finally
        qryAddLookup.Free;
      end;
    end;
end;

procedure TDataFormEdit.LookupListMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  LookupListSelect;
end;

procedure TDataFormEdit.LookupListExit(Sender: TObject);
begin
  FLookupList.Visible := False;
end;

procedure TDataFormEdit.LookupListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_SPACE) then
  begin
    LookupListSelect;
    Key := 0;
  end;
end;

function TDataFormEdit.GetLeft: Integer;
begin
  Result := FFieldEdit.Left;
end;

function TDataFormEdit.GetTop: Integer;
begin
  Result := FFieldEdit.Top;
end;

function TDataFormEdit.GetWidth: Integer;
begin
  Result := FFieldEdit.Width;
end;

function TDataFormEdit.GetHeight: Integer;
begin
  Result := FFieldEdit.Height;
end;

function TDataFormEdit.GetText: TCaption;
begin
  Result := FFieldEdit.Text;
end;

function TDataFormEdit.GetMaxLength: Integer;
begin
  Result := FFieldEdit.Properties.MaxLength;
end;

function TDataFormEdit.GetCharCase: TEditCharCase;
begin
  Result := FFieldEdit.Properties.CharCase;
end;

function TDataFormEdit.GetTabOrder: TTabOrder;
begin
  Result := FFieldEdit.TabOrder;
end;

procedure TDataFormEdit.SetLeft(Value: Integer);
begin
  FFieldEdit.Left := Value;
  FMemoEdit.Left := FFieldEdit.Left+FFieldEdit.Width-FMemoEdit.Width-2;
  FComboDropDown.Left := FMemoEdit.Left-FComboDropDown.Width;
  FLookupList.Left := Self.Left + 10;
end;

procedure TDataFormEdit.SetTop(Value: Integer);
begin
  FFieldEdit.Top := Value;
  FMemoEdit.Top := FFieldEdit.Top+2;
  FComboDropDown.Top := FMemoEdit.Top;
  FLookupList.Top := Self.Top + Self.Height - 1;
end;

procedure TDataFormEdit.SetWidth(Value: Integer);
begin
  FFieldEdit.Width := Value;
  FMemoEdit.Left := FFieldEdit.Left+FFieldEdit.Width-FMemoEdit.Width-2;
  FComboDropDown.Left := FMemoEdit.Left-FComboDropDown.Width;
  FLookupList.Width := Self.Width - 10;
end;

procedure TDataFormEdit.SetHeight(Value: Integer);
begin
  FFieldEdit.Height := Value;
  FMemoEdit.Height := FFieldEdit.Height-3;
  FComboDropDown.Height := FMemoEdit.Height;
end;

procedure TDataFormEdit.SetText(const Value: TCaption);
begin
  FFieldEdit.Text := Value;
end;

procedure TDataFormEdit.SetMaxLength(Value: Integer);
begin
  FFieldEdit.Properties.MaxLength := Value;
end;

procedure TDataFormEdit.SetCharCase(Value: TEditCharCase);
begin
  FFieldEdit.Properties.CharCase := Value;
end;

procedure TDataFormEdit.SetTabOrder(Value: TTabOrder);
begin
  FFieldEdit.TabOrder := Value;
end;

function TfrmMatterDataForm.LoadForm(sDataForm : string; sFile : string; ANName: integer = 0): Boolean;
var
  iCtr, iTop, iLeftMsg, iLeftField, iLeftKeyDateMsg: Integer;
  sTmp : string;
  sSearch, sParty: string;
//  bActivated: Boolean;
begin
   Result := True;
   FDataForm := sDataForm;
   if (strPrevDataForms = nil) then
   begin
      strPrevDataForms := TStringList.Create;
      strPrevDataForms.Add('');
      iPrevDataForm := 0;
      FNumDataForms := 0;
   end;
   NName := ANName;
   CleanUpDataForm();
   if not qryMatter.Active then
   begin
      with qryMatter do
      begin
         Close;
         ParamByName('FILEID').AsString := sFile;
         Open;
         lblMatter.Caption := sFile;
         if not IsEmpty then
         begin
            lblClient.Caption := FieldByName('TITLE').AsString;
            lblMatterDesc.Caption := FieldByName('SHORTDESCR').AsString;
         end;
      end;
   end;
   sSearch := '';
   if ANName <> 0 then
      sSearch := ' - ' + TableString('PHONEBOOK','NNAME',ANName, 'SEARCH');

{//   if (sFile <> '') and (ANName <> 0) then
   if IsDataFormMatterParty(sDataForm) and (ANName <> 0) then
   begin
      qryFieldValue.Sql.Clear;
      qryFieldValue.Sql.Text := C_SQL_BOTH;
   end
   else
//   if ANName = 0 then
   begin
      qryFieldValue.Sql.Clear;
      qryFieldValue.sql.Text := C_SQL_SINGLE;
   end;          }

  // Load the DataForm itself
   if not FTemplateFields then
   begin
      with qryDataForm do
      begin
         Close;
         SQL.Clear;
         SQL.Text := 'select distinct dataform from WKFLOWDOCTEMPLATES_DATAFIELDS '+
                     'where WORKFLOWDOCTEMPLATES_docid = :docid order by dataform';
          ParamByName('docid').AsInteger := DocID;
          Open;
          if ((DocID = 0) or IsEmpty) then
          begin
             Close;
             SQL.Clear;
             SQL.Text := 'SELECT distinct dataform FROM WORKFLOW_DATAFORMFIELD WHERE WKFLOW_LINEID = :CODE order by dataform';
             ParamByName('CODE').AsInteger := LineID;
             Open;
             if IsEmpty then
             begin
                 Close;
                 SQL.Clear;
                 SQL.Text := 'SELECT * FROM DATAFORM WHERE CODE = :CODE';
                 ParamByName('CODE').AsString := sDataForm;
                 Open;
                 if not IsEmpty then
                 begin
                   Self.Caption := FieldByName('CAPTION').AsString + sSearch;
                   if FieldByName('NEXTDATAFORM').AsString <> '' then
                     btnNext.Enabled := True
                   else
                     btnNext.Enabled := False;
                   if strPrevDataForms.Strings[iPrevDataForm] <> '' then
                     btnPrev.Enabled := True
                   else
                     btnPrev.Enabled := False;
                 end
                 else
                 begin
                     Result := False;
                     Exit;
                  //MsgErr('No such DataForm: ' + sDataForm);
                 end;
             end
             else
             begin
                 sDataForm := qryDataForm.FieldByName('DATAFORM').AsString;
                 FDataForm := sDataForm;
                 FTemplateFields := True;
                 dmAxiom.qryTmp.Close;
                 dmAxiom.qryTmp.SQL.Clear;
                 dmAxiom.qryTmp.SQL.Text := 'select count(distinct dataform) as dcount from WORKFLOW_DATAFORMFIELD where WKFLOW_LINEID = :code';
                 dmAxiom.qryTmp.ParamByName('code').AsInteger := LineID;
                 dmAxiom.qryTmp.Open;
                 Self.Caption := TableString('dataform','code',FieldByName('dataform').AsString,'caption') + sSearch ; //FieldByName('CAPTION').AsString;
                 FNumDataForms := dmAxiom.qryTmp.FieldByName('dcount').AsInteger;
                 if FNumDataForms > 1 then
                   btnNext.Enabled := True
                 else
                   btnNext.Enabled := False;

                 if strPrevDataForms.Strings[iPrevDataForm] <> '' then
                   btnPrev.Enabled := True
                 else
                   btnPrev.Enabled := False;
             end;
         end
         else
         begin
            sDataForm := qryDataForm.FieldByName('DATAFORM').AsString;
            FDataForm := sDataForm;
            FTemplateFields := True;
            dmAxiom.qryTmp.Close;
            dmAxiom.qryTmp.SQL.Clear;
            dmAxiom.qryTmp.SQL.Text := 'select count(distinct dataform) as dcount '+
                                       'from WKFLOWDOCTEMPLATES_DATAFIELDS where WORKFLOWDOCTEMPLATES_docid = :docid';
            dmAxiom.qryTmp.ParamByName('docid').AsInteger := DocID;
            dmAxiom.qryTmp.Open;
            Self.Caption := TableString('dataform','code',FieldByName('dataform').AsString,'caption') + sSearch; //FieldByName('CAPTION').AsString;
            FNumDataForms := dmAxiom.qryTmp.FieldByName('dcount').AsInteger;
            if FNumDataForms > 1 then
               btnNext.Enabled := True
            else
               btnNext.Enabled := False;
            if strPrevDataForms.Strings[iPrevDataForm] <> '' then
               btnPrev.Enabled := True
            else
               btnPrev.Enabled := False;
         end
      end;
   end
   else
   begin
      FTemplateFields := True;
      try
         Self.Caption := TableString('dataform','code',qryDataForm.FieldByName('dataform').AsString,'caption') + sSearch;  //qryDataForm.FieldByName('CAPTION').AsString;
      except
         Self.Caption := TableString('dataform','code',FDataForm,'caption') + sSearch;
      end;

      if iPrevDataForm <> (FNumDataForms - 1) {(not qryDataForm.Eof)} then
         btnNext.Enabled := True
      else
         btnNext.Enabled := False;

      if strPrevDataForms.Strings[iPrevDataForm] <> '' then
         btnPrev.Enabled := True
      else
         btnPrev.Enabled := False;
   end;

  //   if (sFile <> '') and (ANName <> 0) then
   if IsDataFormMatterParty(sDataForm) and (ANName <> 0) then
   begin
      qryFieldValue.Sql.Clear;
      qryFieldValue.Sql.Text := C_SQL_BOTH;
   end
   else
//   if ANName = 0 then
   begin
      qryFieldValue.Sql.Clear;
      qryFieldValue.sql.Text := C_SQL_SINGLE;
   end;


  iTop := 56;
  iLeftMsg := 8;
  iLeftField := 250; // 175;
  iLeftKeyDateMsg := 287;
  Self.Height := 150; //120;
  with qryDataFormFields do
  begin
    try
      Close;
      ParamByName('DATAFORM').AsString := sDataForm;
      ParamByName('DOCID').AsInteger := DocID;
      Open;
    except
       //
    end;
    if Eof then
    begin
       try
         Close;
         SQL.Clear;
         SQL.Text := 'SELECT * FROM WORKFLOW_DATAFORMFIELD WHERE DATAFORM = :DATAFORM '+
                     'AND WKFLOW_LINEID = :LINEID '+
                    ' ORDER BY SEQ ';
         ParamByName('DATAFORM').AsString := sDataForm;
         ParamByName('LINEID').AsInteger := LineId;
         Open;
       except
       //
       end;
    end;
    if Eof then
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM DATAFORMFIELD WHERE DATAFORM = :DATAFORM '+
                  ' ORDER BY SEQ ';
      ParamByName('DATAFORM').AsString := sDataForm;
      Open;
    end;
    while not EOF do
    begin
      qryFieldType.Close;
      qryFieldType.ParamByName('NAME').AsString := FieldByName('FIELDNAME').AsString;
      qryFieldType.Open;
      with TDataFormLabel.Create(Self) do
      begin
        Parent := Self;
        Transparent := True;
        Caption := qryFieldType.FieldByName('CAPTION').AsString;
        Left := iLeftMsg;
        width := 265;
        Autosize := True;
        Properties.Wordwrap := True;
        Top := iTop+3;
        if qryFieldType.FieldByName('MANDATORY').AsString = 'Y' then
           Font.Style := [fsBold];
      end;
      qryFieldValue.Close;
      sParty := TableString('Dataform','code',sDataForm,'party');
      if IsDataFormMatterParty(sDataForm) or ( sParty = 'Client') then
      begin
         if (sParty = 'Client') then
            qryFieldValue.ParamByName('NUNIQUE').AsInteger := StrToInt(MatterString(qryMatter.FieldByName('NMATTER').AsInteger, 'NNAME'))
         else
            qryFieldValue.ParamByName('NUNIQUE').AsInteger := NName;
      end
      else
      begin
         if (IsMatterDataOnly(FDataForm)) then
            qryFieldValue.ParamByName('NUNIQUE').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger
         else if (NName <> 0) then
            qryFieldValue.ParamByName('NUNIQUE').AsInteger := NName;
      end;
      // AES 21/09/2005
      qryFieldValue.ParamByName('LINKTABLE').AsString := FDataForm;  //'MATTER';
      qryFieldValue.ParamByName('FIELDNAME').AsString := FieldByName('FIELDNAME').AsString;
//**************************************
//      if NName <> 0 then
      if IsDataFormMatterParty(sDataForm) and (NName <> 0) then
         qryFieldValue.ParamByName('NUNIQUE2').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      qryFieldValue.Open;
      if qryFieldType.FieldByName('TYPE').AsString = 'T' then
        // Text Field
        with TDataFormEdit.Create(Self) do
        begin
          Parent := Self;
          if not qryFieldValue.IsEmpty then
            Text := qryFieldValue.FieldByName('TEXTVALUE').AsString
          else
            Text := qryFieldType.FieldByName('DEFAULTTEXT').AsString;
          OldText := Text;
          FieldName := FieldByName('FIELDNAME').AsString;
          Left := iLeftField;
          Top := iTop+3;
          Width := 450;  //345;
          Hint := qryFieldType.FieldByName('CAPTION').AsString;
          if qryFieldType.FieldByName('MANDATORY').AsString = 'Y' then
            Tag := 1;
          if qryFieldType.FieldByName('LOOKUPFIELD').AsString = 'Y' then
          begin
            FComboDropDown.Visible := True;
            AutoFill := True;
            LookupEnforced := qryFieldType.FieldByName('LOOKUPENFORCED').AsString = 'Y';
            AutoAdd := qryFieldType.FieldByName('LOOKUPAUTOADD').AsString = 'Y';
            LookupListPopulate;
          end
          else
            FLookupList.OnKeyDown := nil;
          TabOrder := FieldByName('SEQ').AsInteger;
          if qryFieldType.FieldByName('CONSTRAINT_WIDTH').AsInteger > 0 then
            MaxLength := qryFieldType.FieldByName('CONSTRAINT_WIDTH').AsInteger;
          if qryFieldType.FieldByName('CONSTRAINT_UPPERCASE').AsString = 'Y' then
            CharCase := ecUpperCase
          else
            CharCase := ecNormal;
        end
      else if qryFieldType.FieldByName('TYPE').AsString = 'B' then //'CT' then
        // Check Task
        with TDataFormCheckBox.Create(Self) do
        begin
          Parent := Self;
          if not qryFieldValue.IsEmpty then
            Checked := qryFieldValue.FieldByName('TEXTVALUE').AsString = 'Y'
          else
            Checked := False;
          OldChecked := Checked;
          FieldName := FieldByName('FIELDNAME').AsString;
          Left := iLeftField;
          Top := iTop+3;
          Width := 15;
          TabOrder := FieldByName('SEQ').AsInteger;
        end
      else if (qryFieldType.FieldByName('TYPE').AsString = 'D') or (Copy(qryFieldType.FieldByName('TYPE').AsString, 1, 1) = 'D') then
      begin
        // Date
        with TDataFormDateTimePicker.Create(Self) do
        begin
          Parent := Self;
//          ShowCheckBox := True;
          if not qryFieldValue.IsEmpty then
            Date := qryFieldValue.FieldByName('DATEVALUE').AsDateTime
          else
            Date := Now;
//          Checked := not qryFieldValue.IsEmpty;
          OldChecked := not qryFieldValue.IsEmpty;
          OldDate := Date;
          FieldName := FieldByName('FIELDNAME').AsString;
          Left := iLeftField;
          Top := iTop+3;
          Width := 97;
          Hint := qryFieldType.FieldByName('CAPTION').AsString;
          if qryFieldType.FieldByName('MANDATORY').AsString = 'Y' then
            Tag := 1;
          TabOrder := FieldByName('SEQ').AsInteger;
        end;
        // Put a label beside it if it is a key date
        if Copy(qryFieldType.FieldByName('TYPE').AsString, 1, 1) = 'D' then
        begin
          sTmp := '';
          if Copy(qryFieldType.FieldByName('TYPE').AsString, 2, 1) = 'S' then
            sTmp := 'Service Partner KeyDate'
          else if Copy(qryFieldType.FieldByName('TYPE').AsString, 2, 1) = 'P' then
            sTmp := 'Partner KeyDate'
          else if Copy(qryFieldType.FieldByName('TYPE').AsString, 2, 1) = 'A' then
            sTmp := 'Author KeyDate'
          else if Copy(qryFieldType.FieldByName('TYPE').AsString, 2, 1) = 'U' then
            sTmp := 'User KeyDate';
          if sTmp <> '' then
            with TDataFormLabel.Create(Self) do
            begin
              Parent := Self;
              Caption := sTmp;
              Left := iLeftKeyDateMsg;
              Properties.Alignment.Horz := taRightJustify;
              Top := iTop+3;
            end;
        end;
      end
      else if qryFieldType.FieldByName('TYPE').AsString = 'C' then
        // Currency
        with TDataFormNumberEdit.Create(Self) do
        begin
          Parent := Self;
          Alignment := taRightJustify;
          DisplayFormat := dfCurrency;
          if not qryFieldValue.IsEmpty then
            AsCurrency := qryFieldValue.FieldByName('NUMBERVALUE').AsCurrency
          else
            AsCurrency := 0;
          OldValue := AsCurrency;
          FieldName := FieldByName('FIELDNAME').AsString;
          Left := iLeftField;
          Top := iTop+3;
          Width := 81;
          Hint := qryFieldType.FieldByName('CAPTION').AsString;
          if qryFieldType.FieldByName('MANDATORY').AsString = 'Y' then
            Tag := 1;
          TabOrder := FieldByName('SEQ').AsInteger;
        end
      else if qryFieldType.FieldByName('TYPE').AsString = 'I' then
        // Integer
        with TDataFormNumberEdit.Create(Self) do
        begin
          Parent := Self;
          Alignment := taRightJustify;
          DisplayFormat := dfInteger;
          if not qryFieldValue.IsEmpty then
            AsInteger := qryFieldValue.FieldByName('NUMBERVALUE').AsInteger
          else
            AsInteger := 0;
          OldValue := AsCurrency;
          FieldName := FieldByName('FIELDNAME').AsString;
          Left := iLeftField;
          Top := iTop+3;
          Width := 81;
          Hint := qryFieldType.FieldByName('CAPTION').AsString;
          if qryFieldType.FieldByName('MANDATORY').AsString = 'Y' then
            Tag := 1;
          TabOrder := FieldByName('SEQ').AsInteger;
        end
      else if qryFieldType.FieldByName('TYPE').AsString = 'OP' then
        with TDataFormButton.Create(Self) do
        begin
          Parent := Self;
          PBGroup := qryFieldType.FieldByName('PHONEBOOKGROUP').AsString;
          if not qryFieldValue.IsEmpty then
            Tag := qryFieldValue.FieldByName('NUMBERVALUE').AsInteger
          else
            Tag := 0;
          OldTag := Tag;
          FieldName := FieldByName('FIELDNAME').AsString;
          Left := iLeftField;
          Top := iTop+3;
          Width := 65;
          Height := 23;
          Hint := qryFieldType.FieldByName('CAPTION').AsString;
          if qryFieldType.FieldByName('MANDATORY').AsString = 'Y' then
            Tag := 1;
          Caption := 'Edit >>';
          ilsMatterDataForm.GetBitmap(0, Glyph);
          TabOrder := FieldByName('SEQ').AsInteger;
          OnClick := DataFormOtherPartiesClick;
          InfoLabel := TDataFormLabel.Create(Self);
          InfoLabel.Parent := Self;
          InfoLabel.Caption := qryFieldValue.FieldByName('TEXTVALUE').AsString;
          InfoLabel.Left := iLeftField+67;
          InfoLabel.Top := iTop + 3;
          InfoLabel.Width :=  240;
          InfoLabel.Autosize := True;
          InfoLabel.Properties.Wordwrap := True;
        end
     {$IFNDEF NOMULTISELECT}
      else if qryFieldType.FieldByName('TYPE').AsString = 'MS' then
        with TDataFormButton.Create(Self) do
        begin
          Parent := Self;
          Name := qryFieldType.FieldByName('MULTISELECTCODE').AsString+IntToStr(ComponentIndex);
          if not qryFieldValue.IsEmpty then
          begin
            Tag := qryFieldValue.FieldByName('NUMBERVALUE').AsInteger;
          end
          else
          begin
            Tag := 0;
          end;
          OldTag := Tag;
          FieldName := FieldByName('FIELDNAME').AsString;
          Left := iLeftField;
          Top := iTop + 3;
          Width := 65;
          Height := 23;
          Hint := qryFieldType.FieldByName('CAPTION').AsString;
          if qryFieldType.FieldByName('MANDATORY').AsString = 'Y' then
            Tag := 1;
          Caption := 'Edit >>';
          ilsMatterDataForm.GetBitmap(1, Glyph);
          TabOrder := FieldByName('SEQ').AsInteger;
          OnClick := DataFormMultiSelectClick;
          InfoLabel := TDataFormLabel.Create(Self);
          InfoLabel.Parent := Self;
          InfoLabel.Left := iLeftField+67;
          InfoLabel.Top := iTop + 3;
          InfoLabel.Width :=  240;
          InfoLabel.Autosize := True;
          InfoLabel.Wordwrap := True;
        end;
      {$ELSE}
      ;
      {$ENDIF}

      iTop := iTop + 27; // 24;
      Self.Height := Self.Height + 27;  // 24;
      Next;
    end;
    qryFieldType.Close;
    qryFieldValue.Close;
  end;

  // Set the Active control
  try
    iCtr := 0;
//    bActivated := False;
    while (iCtr < Self.ComponentCount) do // and not bActivated do
    begin
      if Self.Components[iCtr] is TDataFormEdit then
      begin
        if (Self.Components[iCtr] as TDataFormEdit).TabOrder = 0 then
          Self.ActiveControl := TDataFormEdit(Self.Components[iCtr]).FFieldEdit;
//        bActivated := True;
      end
      else if Self.Components[iCtr] is TDataFormNumberEdit then
      begin
        if (Self.Components[iCtr] as TDataFormNumberEdit).TabOrder = 0 then
          Self.ActiveControl := (Self.Components[iCtr] as TDataFormNumberEdit);
//        bActivated := True;
      end
      else if Self.Components[iCtr] is TDataFormDateTimePicker then
      begin
        // Ugly workaround because Checked is always true
//        (Self.Components[iCtr] as TDataFormDateTimePicker).Checked := (Self.Components[iCtr] as TDataFormDateTimePicker).OldChecked;
        if (Self.Components[iCtr] as TDataFormDateTimePicker).TabOrder = 0 then
          Self.ActiveControl := (Self.Components[iCtr] as TDataFormDateTimePicker);
//        bActivated := True;
      end
      else if Self.Components[iCtr] is TDataFormCheckBox then
      begin
        if (Self.Components[iCtr] as TDataFormCheckBox).TabOrder = 0 then
          Self.ActiveControl := (Self.Components[iCtr] as TDataFormCheckBox);
//        bActivated := True;
      end
      else if Self.Components[iCtr] is TDataFormButton then
      begin
        if (Self.Components[iCtr] as TDataFormButton).TabOrder = 0 then
          Self.ActiveControl := (Self.Components[iCtr] as TDataFormButton);
//        bActivated := True;
      end;
      iCtr := iCtr + 1;
    end;
    FAllowViewing := True;
  except
    // silent exception
  end;
end;       

procedure TfrmMatterDataForm.SingleFieldForm(sFile, sField : string);
begin
  with qryTmp do
  begin
    SQL.Text := 'DELETE FROM DATAFORMFIELD WHERE DATAFORM = ''SINGLEFIELDFORM''';
    ExecSQL;
    SQL.Text := 'INSERT INTO DATAFORMFIELD (DATAFORM, FIELDNAME, SEQ) VALUES (''SINGLEFIELDFORM'', ''' + sField + ''', 0)';
    ExecSQL;
  end;
  btnNext.Visible := False;
  btnPrev.Visible := False;
  LoadForm('SINGLEFIELDFORM', sFile);
end;

procedure TfrmMatterDataForm.btnNextClick(Sender: TObject);
begin
   if SaveFields then
   begin
      LockWindowUpdate(Self.Handle);
      if FTemplateFields then
      begin
         strPrevDataForms.Add(qryDataForm.FieldByName('DATAFORM').AsString);
         qryDataForm.Next;
         if not qryDataForm.Eof then
         begin
            iPrevDataForm := iPrevDataForm + 1;
            LoadForm(qryDataForm.FieldByName('DATAFORM').AsString, qryMatter.FieldByName('FILEID').AsString, NName);
         end
         else
             Self.Close;
      end
      else
      begin
         if qryDataForm.FieldByName('NEXTDATAFORM').AsString <> '' then
         begin
            strPrevDataForms.Add(qryDataForm.FieldByName('CODE').AsString);
            iPrevDataForm := iPrevDataForm + 1;
            LoadForm(qryDataForm.FieldByName('NEXTDATAFORM').AsString, qryMatter.FieldByName('FILEID').AsString, NName);
         end
         else
             Self.Close;
      end;
      LockWindowUpdate(0);
   end;
end;

procedure TfrmMatterDataForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if ModalResult = mrOk then
   begin
      if SaveFields then
      begin
         CleanUpDataForm();

         strPrevDataForms.Free;
         strPrevDataForms := nil;

         qryMatter.Close;
         qryDataForm.Close;
         qryDataFormFields.Close;
         qryFieldType.Close;
         qryFieldValue.Close;
         qryKeyDate.Close;
         qryTmp.Close;
         qryTask.Close;

//         Action := caFree;
      end
      else
         Action := caNone;
   end
   else
   begin
      strPrevDataForms.Free;
      strPrevDataForms := nil;

      qryMatter.Close;
      qryDataForm.Close;
      qryDataFormFields.Close;
      qryFieldType.Close;
      qryFieldValue.Close;
      qryKeyDate.Close;
      qryTmp.Close;
      qryTask.Close;
//      Action := caFree;
   end;
end;

function TfrmMatterDataForm.SaveFields: boolean;
var
  iCtr: integer;
  sParty: string;
begin
   Result := False;
   if OKToPost then
   begin
      Result := True;
      sParty := TableString('Dataform','code',FDataForm,'party');
      for iCtr := 0 to Self.ComponentCount - 1 do
      begin
       if Self.Components[iCtr] is TDataFormEdit then
       begin
         if (Self.Components[iCtr] as TDataFormEdit).Text <> (Self.Components[iCtr] as TDataFormEdit).OldText then
         begin
           LoadFieldValue((Self.Components[iCtr] as TDataFormEdit).FieldName);
           if qryFieldValue.IsEmpty then
           begin
             with qryFieldValue do
             begin
               Insert;

               if IsDataFormMatterParty(FDataForm) or ( sParty = 'Client') then
               begin
                  if (sParty = 'Client') then
                     FieldByName('NUNIQUE').AsInteger := StrToInt(MatterString(qryMatter.FieldByName('NMATTER').AsInteger, 'NNAME'))
                  else
                     FieldByName('NUNIQUE').AsInteger := NName;
               end
               else
               begin
                  if (IsMatterDataOnly(FDataForm)) then
                     FieldByName('NUNIQUE').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger
                  else if (NName <> 0) then
                     FieldByName('NUNIQUE').AsInteger := NName;
               end;
               // AES 21/9/2005
               FieldByName('LINKTABLE').AsString := FDataForm;  // 'MATTER';
               FieldByName('FIELDNAME').AsString := (Self.Components[iCtr] as TDataFormEdit).FieldName;
               FieldByName('TEXTVALUE').AsString := (Self.Components[iCtr] as TDataFormEdit).Text;
               if IsDataFormMatterParty(FDataForm) and (NName <> 0) then
                  FieldByName('NUNIQUE2').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
               Post;
               ApplyUpdates;
             end;
           end
           else
           begin
             with qryFieldValue do
             begin
               Edit;
               FieldByName('TEXTVALUE').AsString := (Self.Components[iCtr] as TDataFormEdit).Text;
               Post;
               ApplyUpdates;
             end;
           end;
           // See if we need to add this to the list
           (Self.Components[iCtr] as TDataFormEdit).UpdateList;
         end
       end
       else if Self.Components[iCtr] is TDataFormCheckBox then
       begin
      //      if (Self.Components[iCtr] as TDataFormCheckBox).Checked <> (Self.Components[iCtr] as TDataFormCheckBox).OldChecked then
      //      begin
           LoadFieldValue((Self.Components[iCtr] as TDataFormCheckBox).FieldName);
           if qryFieldValue.IsEmpty then
           begin
             with qryFieldValue do
             begin
               Insert;
               if IsDataFormMatterParty(FDataForm) or ( sParty = 'Client') then
               begin
                  if (sParty = 'Client') then
                     FieldByName('NUNIQUE').AsInteger := StrToInt(MatterString(qryMatter.FieldByName('NMATTER').AsInteger, 'NNAME'))
                  else
                     FieldByName('NUNIQUE').AsInteger := NName;
               end
               else
               begin
                  if (IsMatterDataOnly(FDataForm)) then
                     FieldByName('NUNIQUE').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger
                  else if (NName <> 0) then
                     FieldByName('NUNIQUE').AsInteger := NName;
               end;               // AES 21/9/2005
               FieldByName('LINKTABLE').AsString := FDataForm; //'MATTER';
               FieldByName('FIELDNAME').AsString := (Self.Components[iCtr] as TDataFormCheckBox).FieldName;
               FieldByName('TEXTVALUE').AsString := 'N';
               if (Self.Components[iCtr] as TDataFormCheckBox).Checked then
                 FieldByName('TEXTVALUE').AsString := 'Y';
               if IsDataFormMatterParty(FDataForm) and (NName <> 0) then
                  FieldByName('NUNIQUE2').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
               Post;
               ApplyUpdates;
             end;
           end
           else
           begin
             with qryFieldValue do
             begin
               Edit;
               FieldByName('TEXTVALUE').AsString := 'N';
               if (Self.Components[iCtr] as TDataFormCheckBox).Checked then
                 FieldByName('TEXTVALUE').AsString := 'Y';
               Post;
               ApplyUpdates;
             end;
           end;
           // See if we have to spawn a task
           if (Self.Components[iCtr] as TDataFormCheckBox).Checked then
           begin
             qryTask.Close;
             qryTask.ParamByName('CODE').AsString := (Self.Components[iCtr] as TDataFormCheckBox).FieldName;
             qryTask.Open;
             if not qryTask.IsEmpty then
             begin
               qryTmp.SQL.Text := 'INSERT INTO TASK (CODE, FILEID, DESCR, AUTHOR, COMMENCE, DUE, STARTED) VALUES (:CODE, :FILEID, :DESCR, :AUTHOR, :COMMENCE, :DUE, SysDate)';
               qryTmp.ParamByName('COMMENCE').AsDateTime := Date + qryTask.FieldByName('DAYS').AsInteger;
               qryTmp.ParamByName('DUE').AsDateTime := qryTmp.ParamByName('COMMENCE').AsDateTime;
               qryTmp.ParamByName('CODE').AsString := qryTask.FieldByName('CODE').AsString;
               qryTmp.ParamByName('AUTHOR').AsString := dmAxiom.UserID;
               qryTmp.ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
               qryTmp.ParamByName('DESCR').AsString := qryTask.FieldByName('DESCR').AsString;
               qryTmp.ExecSQL;

               TaskProcess(qryTask.FieldByName('CODE').AsString, qryMatter.FieldByName('FILEID').AsString, qryMatter.FieldByName('AUTHOR').AsString, qryMatter.FieldByName('NTASK').AsInteger, taBegin);
             end;
           end;
      //      end;
       end
       else if Self.Components[iCtr] is TDataFormNumberEdit then
       begin
         if (Self.Components[iCtr] as TDataFormNumberEdit).AsCurrency <> (Self.Components[iCtr] as TDataFormNumberEdit).OldValue then
         begin
           LoadFieldValue((Self.Components[iCtr] as TDataFormNumberEdit).FieldName);
           if qryFieldValue.IsEmpty then
           begin
             with qryFieldValue do
             begin
               Insert;
               if IsDataFormMatterParty(FDataForm) or ( sParty = 'Client') then
               begin
                  if (sParty = 'Client') then
                     FieldByName('NUNIQUE').AsInteger := StrToInt(MatterString(qryMatter.FieldByName('NMATTER').AsInteger, 'NNAME'))
                  else
                     FieldByName('NUNIQUE').AsInteger := NName;
               end
               else
               begin
                  if (IsMatterDataOnly(FDataForm)) then
                     FieldByName('NUNIQUE').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger
                  else if (NName <> 0) then
                     FieldByName('NUNIQUE').AsInteger := NName;               end;               // AES 21/9/2005
               FieldByName('LINKTABLE').AsString := FDataForm;  //'MATTER';
               FieldByName('FIELDNAME').AsString := (Self.Components[iCtr] as TDataFormNumberEdit).FieldName;
               if (Self.Components[iCtr] as TDataFormNumberEdit).DisplayFormat = dfCurrency then
                 FieldByName('TEXTVALUE').AsString := Format('%m', [(Self.Components[iCtr] as TDataFormNumberEdit).AsCurrency])
               else
                 FieldByName('TEXTVALUE').AsString := Format('%d', [(Self.Components[iCtr] as TDataFormNumberEdit).AsInteger]);
               FieldByName('NUMBERVALUE').AsCurrency := (Self.Components[iCtr] as TDataFormNumberEdit).AsCurrency;
               if IsDataFormMatterParty(FDataForm) and (NName <> 0) then
                  FieldByName('NUNIQUE2').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
               Post;
               ApplyUpdates;
             end;
           end
           else
           begin
             with qryFieldValue do
             begin
               Edit;
               if (Self.Components[iCtr] as TDataFormNumberEdit).DisplayFormat = dfCurrency then
                 FieldByName('TEXTVALUE').AsString := Format('%m', [(Self.Components[iCtr] as TDataFormNumberEdit).AsCurrency])
               else
                 FieldByName('TEXTVALUE').AsString := Format('%d', [(Self.Components[iCtr] as TDataFormNumberEdit).AsInteger]);
               FieldByName('NUMBERVALUE').AsCurrency := (Self.Components[iCtr] as TDataFormNumberEdit).AsCurrency;
               Post;
               ApplyUpdates;
             end;
           end;
         end;
       end
       else if Self.Components[iCtr] is TDataFormDateTimePicker then
       begin
//         if not (Self.Components[iCtr] as TDataFormDateTimePicker).Checked and (Self.Components[iCtr] as TDataFormDateTimePicker).OldChecked then
         begin
           // Had an entry, now to be deleted
           LoadFieldValue((Self.Components[iCtr] as TDataFormDateTimePicker).FieldName);
           if (not qryFieldValue.IsEmpty) then
           begin
             if qryFieldValue.FieldByName('NUMBERVALUE').AsInteger <> 0 then
             begin
               // Delete the KeyDate - the trigger "diary_fieldtypelink_delete" will delete the field for us
               qryKeyDate.SQL.Text := 'DELETE FROM DIARY WHERE NDIARY = ' + IntToStr(qryFieldValue.FieldByName('NUMBERVALUE').AsInteger);
               qryKeyDate.ExecSQL;
             end
             else
             begin
               // Delete the field
               qryFieldValue.Delete;
               qryFieldValue.ApplyUpdates;
             end;
           end
         end;

//         else if (((Self.Components[iCtr] as TDataFormDateTimePicker).Checked and (Self.Components[iCtr] as TDataFormDateTimePicker).OldChecked) and ((Self.Components[iCtr] as TDataFormDateTimePicker).Date <> (Self.Components[iCtr] as TDataFormDateTimePicker).OldDate))
//              or ((Self.Components[iCtr] as TDataFormDateTimePicker).Checked and not (Self.Components[iCtr] as TDataFormDateTimePicker).OldChecked) then
         begin
           // Either the date has changed on a checked entry
           // or a previously unentered field has now got a value
           LoadFieldValue((Self.Components[iCtr] as TDataFormDateTimePicker).FieldName);
           // Set up the task list for this entry
           qryTmp.Close;
           qryTmp.SQL.Text := 'SELECT CODE, DESCR, DAYS FROM TASKTEMP WHERE SCHEDULEFIELD = ' + QuotedStr((Self.Components[iCtr] as TDataFormDateTimePicker).FieldName);
           qryTmp.Open;
           while not qryTmp.EOF do
           begin
             with qryTaskInsert do
             begin
               ParamByName('CODE').AsString := qryTmp.FieldByName('CODE').AsString;
               ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
               ParamByName('DESCR').AsString := qryTmp.FieldByName('DESCR').AsString;
               ParamByName('AUTHOR').AsString := qryMatter.FieldByName('AUTHOR').AsString;
               ParamByName('COMMENCE').AsDateTime := DateBusinessCalc((Self.Components[iCtr] as TDataFormDateTimePicker).Date, qryTmp.FieldByName('DAYS').AsInteger);
               ParamByName('DUE').AsDateTime := DateBusinessCalc((Self.Components[iCtr] as TDataFormDateTimePicker).Date, qryTmp.FieldByName('DAYS').AsInteger);
               ExecSQL;
             end;
             qryTmp.Next;
           end;
           qryTmp.Close;

           if qryFieldValue.IsEmpty then
           begin
             qryFieldType.Close;
             qryFieldType.ParamByName('NAME').AsString := (Self.Components[iCtr] as TDataFormDateTimePicker).FieldName;
             qryFieldType.Open;
             if (Copy(qryFieldType.FieldByName('TYPE').AsString, 1, 1) = 'D') and (Length(qryFieldType.FieldByName('TYPE').AsString) = 2) then
             begin
               // Add the Keydate - the trigger "diary_fieldtypelink_update" will create the fieldtypelink entry for us
               with qryKeyDate do
               begin
                  SQL.Text := 'INSERT INTO DIARY (START_DT, END_DT, CREATION_DATE, REMINDER_FOR, ENTERED_BY, FILEID, PARTNER, SEARCH_KEY, DESCR, DATAFORMFIELD) ' + 'VALUES (:START_DT, :END_DT, :CREATION_DATE, :REMINDER_FOR, :ENTERED_BY, :FILEID, :PARTNER, :SEARCH_KEY, :DESCR, :DATAFORMFIELD)';
                  ParamByName('START_DT').AsDateTime := Trunc((Self.Components[iCtr] as TDataFormDateTimePicker).Date);  // + EncodeTime(8, 0, 0, 0);
                  ParamByName('END_DT').AsDateTime := ParamByName('START_DT').AsDateTime;
                  ParamByName('CREATION_DATE').AsDateTime := Now;
                  if qryFieldType.FieldByName('TYPE').AsString = 'DS' then
                     ParamByName('REMINDER_FOR').AsString := TableString('CLIENT', 'NCLIENT', qryMatter.FieldByName('NCLIENT').AsString, 'SRVC_PARTNER')
                  else if qryFieldType.FieldByName('TYPE').AsString = 'DP' then
                     ParamByName('REMINDER_FOR').AsString := qryMatter.FieldByName('PARTNER').AsString
                  else if qryFieldType.FieldByName('TYPE').AsString = 'DA' then
                     ParamByName('REMINDER_FOR').AsString := qryMatter.FieldByName('AUTHOR').AsString
                  else
                     ParamByName('REMINDER_FOR').AsString := dmAxiom.UserID;
                  ParamByName('ENTERED_BY').AsString := dmAxiom.UserID;
                  ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
                  ParamByName('PARTNER').AsString := qryMatter.FieldByName('PARTNER').AsString;
                  ParamByName('SEARCH_KEY').AsString := qryMatter.FieldByName('TITLE').AsString;
                  ParamByName('DESCR').AsString := qryFieldType.FieldByName('DESCR').AsString;
                  ParamByName('DATAFORMFIELD').AsString := (Self.Components[iCtr] as TDataFormDateTimePicker).FieldName;
                  if ParamByName('REMINDER_FOR').AsString <> '' then
                     ExecSQL;
               end;
             end
             else
             begin
               // Create the DataForm Field
               with qryFieldValue do
               begin
                 Insert;
                 if IsDataFormMatterParty(FDataForm) or ( sParty = 'Client') then
                 begin
                    if (sParty = 'Client') then
                       FieldByName('NUNIQUE').AsInteger := StrToInt(MatterString(qryMatter.FieldByName('NMATTER').AsInteger, 'NNAME'))
                    else
                       FieldByName('NUNIQUE').AsInteger := NName;
                 end
                 else
                  begin
                     if (IsMatterDataOnly(FDataForm)) then
                        FieldByName('NUNIQUE').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger
                     else if (NName <> 0) then
                        FieldByName('NUNIQUE').AsInteger := NName;
                  end;                 // AES 21/9/2005
                 FieldByName('LINKTABLE').AsString := FDataForm;  //'MATTER';
                 FieldByName('FIELDNAME').AsString := (Self.Components[iCtr] as TDataFormDateTimePicker).FieldName;
                 FieldByName('DATEVALUE').AsDateTime := Trunc((Self.Components[iCtr] as TDataFormDateTimePicker).Date);
                 FieldByName('TEXTVALUE').AsString  := FieldByName('DATEVALUE').AsString;
                 if IsDataFormMatterParty(FDataForm) and (NName <> 0) then
                    FieldByName('NUNIQUE2').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                 Post;
                 ApplyUpdates;
               end;
             end;
             qryFieldType.Close;
           end
           else
           begin
             with qryFieldValue do
             begin
               if FieldByName('NUMBERVALUE').AsInteger <> 0 then
               begin
                 // Update the KeyDate - the trigger "diary_fieldtypelink_update" will update the field for us
                 qryKeyDate.SQL.Text := 'UPDATE DIARY SET START_DT = :START_DT WHERE NDIARY = ' + IntToStr(FieldByName('NUMBERVALUE').AsInteger);
                 qryKeyDate.ParamByName('START_DT').AsDateTime := Trunc((Self.Components[iCtr] as TDataFormDateTimePicker).Date) + EncodeTime(8, 0, 0, 0);
                 qryKeyDate.ExecSQL;
               end
               else
               begin
                 Edit;
                 FieldByName('DATEVALUE').AsDateTime := Trunc((Self.Components[iCtr] as TDataFormDateTimePicker).Date);
                 FieldByName('TEXTVALUE').AsString  := FieldByName('DATEVALUE').AsString;
                 Post;
                 ApplyUpdates;
               end;
             end;
           end;
         end;
       end;
       // TDataFormButton update done by triggers on the MatterParty table
      end;
//      dmAxiom.uniInsight.Commit;
      RefreshMatter(qryMatter.FieldByName('FILEID').AsString);
   end;
end;


procedure TfrmMatterDataForm.CleanUpDataForm;
var
  iCtr: Integer;
begin
  for iCtr := Self.ComponentCount - 1 downto 0 do
  begin
    if Self.Components[iCtr] is TDataFormLabel then
      (Self.Components[iCtr] as TDataFormLabel).Destroy
    else if Self.Components[iCtr] is TDataFormEdit then
      (Self.Components[iCtr] as TDataFormEdit).Destroy
    else if Self.Components[iCtr] is TDataFormNumberEdit then
      (Self.Components[iCtr] as TDataFormNumberEdit).Destroy
    else if Self.Components[iCtr] is TDataFormDateTimePicker then
      (Self.Components[iCtr] as TDataFormDateTimePicker).Destroy
    else if Self.Components[iCtr] is TDataFormCheckBox then
      (Self.Components[iCtr] as TDataFormCheckBox).Destroy
    else if Self.Components[iCtr] is TDataFormButton then
      (Self.Components[iCtr] as TDataFormButton).Destroy;
  end;
end;

procedure TfrmMatterDataForm.DataFormOtherPartiesClick(Sender: TObject);
begin
{  with TfrmDataFormOtherParties.Create(Self) do
  begin
    ShowOtherParties(qryMatter.FieldByName('FILEID').AsString, TDataFormButton(Sender).FieldName, TDataFormButton(Sender).PBGroup);
    TDataFormButton(Sender).Tag := TotalParties;
    LoadFieldValue((Sender as TDataFormButton).FieldName);
    (Sender as TDataFormButton).InfoLabel.Caption := qryFieldValue.FieldByName('TEXTVALUE').AsString;
  end;   }
end;

{$IFNDEF NOMULTISELECT}
procedure TfrmMatterDataForm.DataFormMultiSelectClick(Sender: TObject);
begin
//  dldDataForm.Title := GetMultiSelectTitle(TDataFormButton(Sender).MultiSelect);
//  dldDataForm.Label1Caption := '&Available';
//  dldDataForm.Label2Caption := '&Selected';
  //dldDataForm.List1 := ;
//  if dldDataForm.Execute then
//  begin
//  end;
end;
{$ENDIF}

procedure TfrmMatterDataForm.LoadFieldValue(sFieldName : string);
var
   sParty: string;
begin
   qryFieldValue.Close;
   sParty := TableString('Dataform','code',FDataForm,'party');
   if IsDataFormMatterParty(FDataForm) or ( sParty = 'Client') then
   begin
      if (sParty = 'Client') then
         qryFieldValue.ParamByName('NUNIQUE').AsInteger := StrToInt(MatterString(qryMatter.FieldByName('NMATTER').AsInteger, 'NNAME'))
      else
         qryFieldValue.ParamByName('NUNIQUE').AsInteger := NName;
   end
   else
   begin
      if (IsMatterDataOnly(FDataForm)) then
         qryFieldValue.ParamByName('NUNIQUE').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger
      else if (NName <> 0) then
         qryFieldValue.ParamByName('NUNIQUE').AsInteger := NName;
   end;

//      qryFieldValue.ParamByName('NUNIQUE').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;             // AES 21/9/2005

//  qryFieldValue.ParamByName('NUNIQUE').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
  // AES 21/9/2005
   qryFieldValue.ParamByName('LINKTABLE').AsString := FDataForm;  //'MATTER';
   qryFieldValue.ParamByName('FIELDNAME').AsString := sFieldName;
   if IsDataFormMatterParty(FDataForm) and (NName <> 0) then
      qryFieldValue.ParamByName('NUNIQUE2').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;

   qryFieldValue.Open;
end;

procedure TfrmMatterDataForm.FormCreate(Sender: TObject);
begin
  strPrevDataForms := TStringList.Create;
  strPrevDataForms.Add('');
  iPrevDataForm := 0;
  FNumDataForms := 0;
  FTemplateFields := False;
end;

procedure TfrmMatterDataForm.btnPrevClick(Sender: TObject);
var
  sPrevDataForm : string;
begin
  LockWindowUpdate(Self.Handle);
  if strPrevDataForms.Strings[iPrevDataForm] <> '' then
  begin
    SaveFields;
    if FTemplateFields then
      qryDataForm.Prior;

    sPrevDataForm := strPrevDataForms.Strings[iPrevDataForm];
    strPrevDataForms.Delete(iPrevDataForm);
    iPrevDataForm := iPrevDataForm - 1;
    LoadForm(sPrevDataForm, qryMatter.FieldByName('FILEID').AsString, NName);
  end;
  LockWindowUpdate(0);
end;

procedure TfrmMatterDataForm.FormActivate(Sender: TObject);
var
  bClose : boolean;
begin
  bClose := False;
  if not qryDataForm.Active then
    bClose := True
  else if qryDataForm.IsEmpty then
    bClose := True
  else if not qryDataFormFields.Active then
    bClose := True
  else if qryDataFormFields.IsEmpty then
    bClose := True
  else if not qryMatter.Active then
    bClose := True
  else if qryMatter.IsEmpty then
    bClose := True;

  if bClose then
    Self.Close;
end;

procedure TfrmMatterDataForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
{
  if Key = #13 then
  begin
    if MessageDlg('Are you sure you wish to save and exit?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      btnOk.Click;
    Key := #0;
  end;
}
end;

function TfrmMatterDataForm.OKToPost: boolean;
var
  iCtr: integer;
  sTmp: string;
begin
   sTmp := '';
   OKToPost := True;
   for iCtr := 0 to Self.ComponentCount - 1 do
   begin
    if Self.Components[iCtr] is TDataFormEdit then
    begin
      if (Self.Components[iCtr] as TDataFormEdit).Tag = 1  then
      begin
         if (Self.Components[iCtr] as TDataFormEdit).Text = '' then
            sTmp := sTmp + '       '+ (Self.Components[iCtr] as TDataFormEdit).Hint + Chr(13);
      end
    end
    else if Self.Components[iCtr] is TDataFormNumberEdit then
    begin
       if (Self.Components[iCtr] as TDataFormNumberEdit).Tag = 1 then
          if (Self.Components[iCtr] as TDataFormNumberEdit).Text = '' then
              sTmp := sTmp + '       '+(Self.Components[iCtr] as TDataFormNumberEdit).Hint + Chr(13);
    end
    else if Self.Components[iCtr] is TDataFormDateTimePicker then
    begin
      if (Self.Components[iCtr] as TDataFormDateTimePicker).Tag = 1 then
      begin
//       if not (Self.Components[iCtr] as TDataFormDateTimePicker).Checked then
            sTmp := sTmp + '       ' + (Self.Components[iCtr] as TDataFormDateTimePicker).Hint + Chr(13);
      end;
    end;
   end;
   if sTmp <> '' then
   begin
    MsgInfo('Please complete the following details before continuing:    ' + Chr(13) + Chr(13) + sTmp);
    OKtoPost := False
   end;
end;

function TfrmMatterDataForm.IsDataFormMatterParty(ADataForm: string): boolean;
begin
   with dmAxiom.qryTmp do
   begin
      close;
      SQL.Clear;
      SQL.Text := 'select 1 from dataform where party is not null and partyismatterspecific = ''Y'' and code = '+ QuotedStr(ADataForm);
      Open;
      Result := (not EOF);
      Close;
   end;
end;

function TfrmMatterDataForm.IsMatterDataOnly(ADataForm: string): boolean;
begin
   with dmAxiom.qryTmp do
   begin
      close;
      SQL.Clear;
      SQL.Text := 'select 1 as recfound from dataform where party is null and '+
                  'partyismatterspecific = ''N'' and code = '+ QuotedStr(ADataForm);
      Open;
      Result := (not EOF);
      Close;
   end;
end;

function TfrmMatterDataForm.IsPartyDataOnly(ADataForm: string): boolean;
begin
   with dmAxiom.qryTmp do
   begin
      close;
      SQL.Clear;
      SQL.Text := 'select 1 from dataform where party is not null and partyismatterspecific = ''N'' and code = '+ QuotedStr(ADataForm);
      Open;
      Result := (not EOF);
      Close;
   end;
end;

end.

