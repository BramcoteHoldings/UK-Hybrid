unit ScreenSave;

interface

uses
   cxPropertiesStore, DB, Uni;

type
  {$M+}
  TScreenStencil = class(TObject)
  private
    FQrySavedScreen: TUniQuery;
    procedure CopyBack(ASource, ADestination: TDataSet; AColumns: array of string);
  protected
  public
    constructor Create;
    destructor Destroy; override;
    function SaveScreen(APropStore: TcxPropertiesStore; ATotal: Currency = 0;
                        ADescription: String = '';
                        AChildData: TDataSet = nil; ACurrentStencilID : Integer = -1): Integer;
    function LoadScreen(APropStore: TcxPropertiesStore; AColumns: Array of String;
      AChildData: TDataSet; ANScreenID: Integer): Integer;
    function StencilCount(AGroupName: String): integer;
  published

  end;

implementation

{ TScreenTemplate }

uses
   System.Classes, VirtualTable, cxStorage, AxiomData, SysUtils, Variants,
  MiscClasses, MiscFunc;

constructor TScreenStencil.Create;
begin
  inherited;
  FQrySavedScreen := TUniQuery.Create(nil);
  FQrySavedScreen.Connection := dmAxiom.uniInsight;
  FQrySavedScreen.SQL.Text := 'Select s.Group_Name,   ' +
    '  s.NSaved_Screen, ' +
    '  s.User_ID, ' +
    '  s.ControlData, ' +
    '  s.ChildData, ' +
    '  s.Total, ' +
    '  s.Description, ' +
    '  s.CreateDate, ' +
    '  s.LastModified, ' +
    '  s.LastModifiedBy from SAVED_SCREEN s';
end;

destructor TScreenStencil.Destroy;
begin
  FQrySavedScreen.Free;
  inherited;
end;


// Copy the data from TDataSet ASource to ADestination.
procedure TScreenStencil.CopyBack(ASource, ADestination: TDataSet; AColumns: Array of string);
var
  ColumnName: String;
begin
  // Clear off destination data.
  while ADestination.RecordCount > 0 do begin
    ADestination.Delete;
  end;

  ASource.First;
  repeat
    if ADestination.RecordCount < 2 then
      ADestination.Edit
    else
      ADestination.Insert;

    for ColumnName in AColumns do
    begin
      if ASource.FieldByName(ColumnName).DataType in [ftCurrency, ftFloat] then
        ADestination.FieldByName(ColumnName).AsCurrency := ASource.FieldByName(ColumnName).AsCurrency
      else
        ADestination.FieldByName(ColumnName).Value := ASource.FieldByName(ColumnName).Value;
    end;
    ADestination.Post;
    ASource.Next;
  until ASource.Eof;
end;


function TScreenStencil.LoadScreen(APropStore: TcxPropertiesStore;
  AColumns: Array of String; AChildData: TDataSet; ANScreenID: Integer): Integer;
var
  PropStream, ChildDataStream: TStringStream;
  VirtTable: TVirtualTable;
begin
  Result := -1;
  ChildDataStream := TStringStream.Create;
  PropStream := nil;
  VirtTable := TVirtualTable.Create(nil);

  FQrySavedScreen.Close;

  try
    FQrySavedScreen.Filter := 'Group_Name = ' + QuotedStr(trim(APropStore.StorageName));
    FQrySavedScreen.Filtered := true;

    FQrySavedScreen.Open;

    FQrySavedScreen.Locate('nSaved_Screen', VarArrayOf([ANScreenID]), []);

    // This is mostly needed in the case where there's just one saved screen.
    if FQrySavedScreen.RecordCount >= 1 then
      Result := FQrySavedScreen.FieldByName('NSaved_Screen').AsInteger;

    PropStream := TStringStream.Create(FQrySavedScreen.FieldByName('ControlData').AsString);
    ChildDataStream := TStringStream.Create(FQrySavedScreen.FieldByName('ChildData').AsString);
    // Rewind streams to beginning.
    ChildDataStream.Seek(0, soFromBeginning);
    PropStream.Seek(0, soFromBeginning);

    APropStore.StorageType := stStream;
    APropStore.StorageStream := PropStream;
    APropStore.RestoreFrom; // Does this write back to the screen?

    if ChildDataStream.Size > 0 then
    begin
      VirtTable.LoadFromStream(ChildDataStream);
      VirtTable.Open;
      // Stupidly, TVirtualTable saves data, but TDataSet.Assign doesn't pull the data back.
      AChildData.Open;
      AChildData.Edit;
      // Batchmove wouldn't work. Wrote my own routine.
      CopyBack(VirtTable, AChildData, AColumns);
    end;

  finally
    PropStream.Free;
    ChildDataStream.Free;
    VirtTable.Free;
  end;

end;

function TScreenStencil.SaveScreen(APropStore: TcxPropertiesStore; ATotal: Currency = 0;
  ADescription: String = '';
  AChildData: TDataSet = nil; ACurrentStencilID: Integer = -1) : Integer;
{
   Pass in a TcxPropertiesStore preset with properties to be saved.
   Optionally, pass in a child data dataset. This is for any child data
   on the form (found in receipts, cheques, probably others).
   No need for column names here. They're only needed on restore of child data.
}
var
  PropStream, ChildDataStream: TStringStream;
  VirtTable: TVirtualTable;
begin
  Result := -1; // Just in case something goes wrong.

  PropStream := TStringStream.Create;
  ChildDataStream := TStringStream.Create;
  VirtTable := TVirtualTable.Create(nil);

  dmAxiom.uniInsight.StartTransaction;

  FQrySavedScreen.Filter := 'Group_Name = ' + QuotedStr(trim(APropStore.StorageName));
  FQrySavedScreen.Filtered := true;

  FQrySavedScreen.Open;
  if ACurrentStencilID = -1 then
    FQrySavedScreen.Insert
  else
    FQrySavedScreen.Edit;

  try
    APropStore.StorageType := stStream;
    APropStore.StorageStream := PropStream;
    APropStore.StoreTo(true);
    APropStore.StorageStream.Seek(0, soFromBeginning);
    if AChildData <> nil then
    begin
       VirtTable.Assign(AChildData);
       VirtTable.SaveToStream(ChildDataStream, true, true);
    end;
    // Rewind streams for next lines.
    ChildDataStream.Seek(0, soFromBeginning);
    PropStream.Seek(0, soFromBeginning);

    FQrySavedScreen.FieldByName('ChildData').AsString := ChildDataStream.DataString;
    FQrySavedScreen.FieldByName('ControlData').AsString := PropStream.DataString;
    if FQrySavedScreen.FieldByName('USER_ID').IsNull then
      FQrySavedScreen.FieldByName('USER_ID').AsString := dmAxiom.UserID;
    FQrySavedScreen.FieldByName('Group_Name').AsString := APropStore.StorageName;
    FQrySavedScreen.FieldByName('Total').AsCurrency := ATotal;  // This is just for reference for the user.
    FQrySavedScreen.FieldByName('Description').AsString := ADescription;
    FQrySavedScreen.FieldByName('LastModified').AsDateTime := Now;
    FQrySavedScreen.FieldByName('LastModifiedBy').AsString := dmAxiom.UserID;
    // Used to use a trigger, but it's problematic. Set ID directly via GetSequenceNumber.
    // Done in several other places as well (Notably Receipts).
    if FQrySavedScreen.FieldByName('NSaved_Screen').AsInteger = 0 then
       FQrySavedScreen.FieldByName('NSaved_Screen').AsInteger := GetSequenceNumber('BHL_SAVED_SCREEN_SEQ');

    FQrySavedScreen.Post;
    dmAxiom.uniInsight.Commit;
    FQrySavedScreen.Refresh;
    Result := FQrySavedScreen.FieldByName('NSaved_Screen').AsInteger;
  finally
    APropStore.StorageStream := nil;
    PropStream.Free;
    ChildDataStream.Free;
    VirtTable.Free;
  end;

end;

function TScreenStencil.StencilCount(AGroupName: String): integer;
var
  QryCntStencilsForGroup: TUniQuery;
begin
  QryCntStencilsForGroup := TUniQuery.Create(nil);
  try
    QryCntStencilsForGroup.Connection := dmAxiom.uniInsight;
    QryCntStencilsForGroup.SQL.Text :=
      'select count(*) StencilCount from saved_screen where groupname = ' + QuotedStr(AGroupName);
    Result := QryCntStencilsForGroup.FieldByName('StencilCount').AsInteger;
  finally
    QryCntStencilsForGroup.Free;
  end;

end;

end.
