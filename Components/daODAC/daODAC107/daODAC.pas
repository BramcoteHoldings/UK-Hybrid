{ RRRRRR                  ReportBuilder Class Library                  BBBBB
  RR   RR                                                              BB   BB
  RRRRRR                 Digital Metaphors Corporation                 BB BB
  RR  RR                                                               BB   BB
  RR   RR                   Copyright (c) 1996-2002                    BBBBB   }

unit daODAC;

interface

uses Classes, SysUtils, vcl.Forms, vcl.ExtCtrls, DB,
  ppClass, ppComm, ppDBPipe, ppDB, ppClasUt, ppTypes,
  daDB, daQueryDataView, daDataView, daPreviewDataDlg,

     {ODAC classes}
  Ora, OraSmart, OdacVcl, OraPackage;




type

  {Oracle Direct Access (ODAC CoreLab www.crlab.com) DataView Classes:

     1.  ODAC TDataSet descendants
           - TDataSets that can be children of a DataView.
           - Override the HasParent method of TComponent to return True
           - Must be registerd with the Delphi IDE using the RegisterNoIcon procedure

       a. TdaChildOdacQuery   - TOracleDataSet descendant that can be a child of a DataView
       b. TdaChildOdacTable    - TOracleDataSet descendant that can be a child of a DataView
       c. TdaChildOdacPackage  - TOraclePackage descendant that can be a child of a DataView

     3.  TdaOdacSession
           - descendant of TppSession
           - implements GetDatabaseNames, GetTableNames, etc.

     4.  TdaOdacDataSet
          - descendant of TppDataSet
          - implements GetFieldNames for SQL

     5.  TdaOdacQueryDataView
          - descendant of TppQueryDataView
          - uses the above classes to create the required
            Query -> DataSource -> Pipeline -> Report connection
          - uses the TdaSQL object built by the QueryWizard to assign
            SQL to the TOdacQuery etc.

      }

  { TdaChildOdacQuery }
  TdaChildOdacQuery = class(TOraQuery)
  public
    function HasParent: Boolean; override;
  end; {class, TdaChildOdacQuery}

  { TdaChildOdacTable }
  TdaChildOdacTable = class(TOraTable)
  public
    function HasParent: Boolean; override;
  end; {class, TdaChildOdacTable}

  { TdaChildOdacPackage }

  TdaChildOdacPackage = class(TOraPackage)
  public
    function HasParent: Boolean; override;
  end; {class, TdaChildOdacPackage}


  { TdaOdacSession }
  TdaOdacSession = class(TdaSession)
  private
    FFunctions: TStringList;

    procedure BuildFunctionList;

  protected
    function GetDefaultDatabase(const aDatabaseName: string): TComponent; override;
    function IsNamedDatabase(const aDatabaseName: string; aDatabase: TComponent): Boolean; override;

  public
    constructor Create(aComponent: TComponent); override;
    destructor Destroy; override;

    class function ClassDescription: string; override;
    class function DataSetClass: TdaDataSetClass; override;
    class function DatabaseClass: TComponentClass; override;
    class function GetDefaultODACConnection: TOraSession;
    class function LogonToDatabase(aOdacConnection: TOraSession): Boolean;
    function ContainsSQLFunctionCall(const aString: string; aDatabaseType: TppDatabaseType): Boolean; override;

    procedure GetDatabaseNames(aList: TStrings); override;
    function GetDatabaseType(const aDatabaseName: string): TppDatabaseType; override;
    procedure GetTableNames(const aDatabaseName: string; aList: TStrings); override;
    function ValidDatabaseTypes: TppDatabaseTypes; override;

  end; {class, TdaOdacSession}



  { TdaOdacDataSet}
  TdaOdacDataSet = class(TdaDataSet)
  private
    FQuery: TOraQuery;

    function GetQuery: TOraQuery;

  protected
    procedure BuildFieldList; override;
    function GetActive: Boolean; override;
    procedure SetActive(Value: Boolean); override;
    procedure SetDatabase(aDatabase: TComponent); override;
    procedure SetDataName(const aDataName: string); override;

    property Query: TOraQuery read GetQuery;

  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;

    class function ClassDescription: string; override;

    procedure GetFieldNamesForSQL(aList: TStrings; aSQL: TStrings); override;
    procedure GetFieldsForSQL(aList: TList; aSQL: TStrings); override;

  end; {class, TdaOdacDataSet}


  { TdaOdacQueryDataView }
  TdaOdacQueryDataView = class(TdaQueryDataView)
  private
    FDataSource: TppChildDataSource;
    FQuery: TdaChildOdacQuery;

  protected
    procedure SQLChanged; override;

  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;

    class function PreviewFormClass: TFormClass; override;
    class function SessionClass: TClass; override;

    procedure Init; override;
    procedure ConnectPipelinesToData; override;

  published
    property DataSource: TppChildDataSource read FDataSource;

  end; {class, TdaDOAQueryDataView}

var
  FOdacConnection: TOraSession;

  {Delphi design time registration}
procedure Register;


implementation


const
  cDefaultConnection = 'DefaultODACConnection';

var
//  FOdacConnection: TOraSession;
  FOdacLogon: TConnectDialog;


{******************************************************************************
 *
 ** R E G I S T E R
 *
{******************************************************************************}

procedure Register;
begin

  {ODAC DataAccess Components}
  RegisterNoIcon([TdaChildOdacQuery, TdaChildOdacTable, TdaChildOdacPackage]);

  {ODAC DataViews}
  RegisterNoIcon([TdaOdacQueryDataView]);

end;

{******************************************************************************
 *
 ** C H I L D   O D A C   D A T A   A C C E S S   C O M P O N E N T S
 *
{******************************************************************************}

{------------------------------------------------------------------------------}
{ TdaChildOdacQuery.HasParent }

function TdaChildOdacQuery.HasParent: Boolean;
begin
  Result := True;
end; {function, HasParent}

{------------------------------------------------------------------------------}
{ TdaChildOdacTable.HasParent }

function TdaChildOdacTable.HasParent: Boolean;
begin
  Result := True;
end; {function, HasParent}


{------------------------------------------------------------------------------}
{ TdaChildOdacPackage.HasParent }

function TdaChildOdacPackage.HasParent: Boolean;
begin
  Result := True;
end; {function, HasParent}


{******************************************************************************
 *
 ** D O A  S E S S I O N
 *
{******************************************************************************}

{------------------------------------------------------------------------------}
{ TdaOdacSession.Create }

constructor TdaOdacSession.Create(aComponent: TComponent);
begin

  inherited Create(aComponent);

  FFunctions := TStringList.Create;

end; {constructor, Create}

{------------------------------------------------------------------------------}
{ TdaOdacSession.Destroy }

destructor TdaOdacSession.Destroy;
begin

  FFunctions.Free;

  inherited Destroy;

end; {destructor, Destroy}

{------------------------------------------------------------------------------}
{ TdaOdacSession.ContainsSQLFunctionCall }

function TdaOdacSession.ContainsSQLFunctionCall(const aString: string; aDatabaseType: TppDatabaseType): Boolean;
var
  liIndex: Integer;
  liPosition: Integer;
  lsFunction: string;
begin

  if (FFunctions.Count = 0) then
    BuildFunctionList;

  liIndex := 0;
  liPosition := 0;
  lsFunction := UpperCase(aString);

  while (liIndex < FFunctions.Count) and (liPosition = 0) do
    begin
      liPosition := Pos(FFunctions[liIndex], lsFunction);

      Inc(liIndex);
    end;

  Result := (liPosition <> 0);

end; {procedure, ContainsSQLFunctionCall}

{------------------------------------------------------------------------------}
{ TdaOdacSession.BuildFunctionList }

procedure TdaOdacSession.BuildFunctionList;
begin

  {add standard SQL2 functions}
  FFunctions.Add('CAST(');
  FFunctions.Add('CHAR_LENGTH(');
  FFunctions.Add('CONVERT(');
  FFunctions.Add('CURRENT_DATE');
  FFunctions.Add('CURRENT_TIME');
  FFunctions.Add('CURRENT_TIMESTAMP');
  FFunctions.Add('EXTRACT(');
  FFunctions.Add('LOWER(');
  FFunctions.Add('POSITION(');
  FFunctions.Add('SUBSTRING(');
  FFunctions.Add('TRANSLATE(');
  FFunctions.Add('TRIM(');
  FFunctions.Add('UPPER(');

  {oracle functions}
  FFunctions.Add('SYSDATE');

end; {procedure, BuildFunctionList}

{------------------------------------------------------------------------------}
{ TdaOdacSession.ClassDescription }

class function TdaOdacSession.ClassDescription: string;
begin
  Result := 'ODACSession';
end; {class function, ClassDescription}

{------------------------------------------------------------------------------}
{ TdaOdacSession.DataSetClass }

class function TdaOdacSession.DataSetClass: TdaDataSetClass;
begin
  Result := TdaOdacDataSet;
end; {class function, DataSetClass}

{------------------------------------------------------------------------------}
{ TdaOdacSession.DatabaseClass }

class function TdaOdacSession.DatabaseClass: TComponentClass;
begin
  Result := TOraSession;
end;

{------------------------------------------------------------------------------}
{ TdaOdacSession.GetDefaultODACConnection }

class function TdaOdacSession.GetDefaultODACConnection: TOraSession;
begin

  {create the default Connection, if needed}
  if (FOdacConnection = nil) then
    begin
      {create default DOA Connection}
      FOdacConnection := TOraSession.Create(nil);
      FOdacConnection.Name := cDefaultConnection;

    end;

  Result := FODACConnection;

end; {class function, GetDefaultDOAConnection}

{------------------------------------------------------------------------------}
{ TdaOdacSession.LogonToDatabase }

class function TdaOdacSession.LogonToDatabase(aOdacConnection: TOraSession): Boolean;
begin

  if (aOdacConnection = nil) then
    Result := False

  else if aOdacConnection.Connected then
    Result := True

  else
    begin
      if (aOdacConnection = GetDefaultODACConnection) then
        FOdacLogon.Execute
      else
        aOdacConnection.Connected := True;

      Result := aOdacConnection.Connected;
    end;
end; {class function, LogonToDatabase}


{------------------------------------------------------------------------------}
{ TdaOdacSession.GetDatabaseType }

function TdaOdacSession.GetDatabaseType(const aDatabaseName: string): TppDatabaseType;
begin
  Result := dtOracle;
end; {procedure, GetDatabaseType}

{------------------------------------------------------------------------------}
{ TdaOdacSession.GetTableNames }

procedure TdaOdacSession.GetTableNames(const aDatabaseName: string; aList: TStrings);
var
  lsTableName: string;
  lConnection: TOraSession;
  lQuery: TOraQuery;

begin
  aList.Clear;

  lConnection := TOraSession(GetDatabaseForName(aDatabaseName));

  if not LogonToDatabase(lConnection) then
    Exit;

  {get list of table names from a table object}
  lQuery := TOraQuery.Create(nil);
  lQuery.Session := lConnection;
  lQuery.SQL.Text := 'select owner, object_name ' +
    'from all_objects ' +
    'where object_type in (''TABLE'', ''VIEW'') ' +
//    'and owner not in (''SYS'', ''SYSTEM'')';
    'and owner in (''PRIV_ADMIN'')';

  lQuery.Open;

  if lQuery.Active then
    begin

      lQuery.First;

      while not lQuery.EOF do
        begin
          lsTableName := lQuery.Fields[0].AsString + '.' + lQuery.Fields[1].AsString;
          aList.Add(lsTableName);

          lQuery.Next;

        end;

    end;


  lQuery.Free;

end; {procedure, GetTableNames}


{------------------------------------------------------------------------------}
{ TdaOdacSession.GetDatabaseNames }

procedure TdaOdacSession.GetDatabaseNames(aList: TStrings);
begin

  {call inherited to build list of available TOracleSession components}
  inherited GetDatabaseNames(aList);

// Missing some code??
end; {procedure, GetDatabaseNames}

{------------------------------------------------------------------------------}
{ TdaOdacSession.GetDefaultDatabase }

function TdaOdacSession.GetDefaultDatabase(const aDatabaseName: string): TComponent;
var
  lOracleSession: TOraSession;
begin

  lOracleSession := GetDefaultODACConnection;

  {set DatabaseName property, if needed}
  if (lOracleSession.ConnectString <> aDatabaseName) then
    begin
      if lOracleSession.Connected then
        lOracleSession.Connected := False;
      lOracleSession.ConnectString := aDatabaseName;

      {ODAC does not auto logon, so force a logon dialog here}
      LogonToDatabase(lOracleSession);

    end;

  Result := lOracleSession;

end; {function, GetDefaultDatabase}

{------------------------------------------------------------------------------}
{ TdaOdacSession.IsNamedDatabase }

function TdaOdacSession.IsNamedDatabase(const aDatabaseName: string; aDatabase: TComponent): Boolean;
begin

  Result := (AnsiCompareStr(aDatabase.Name, aDatabaseName) = 0) or
    (AnsiCompareStr(TOraSession(aDatabase).ConnectString, aDatabaseName) = 0);

end; {function, IsNamedDatabase}

{------------------------------------------------------------------------------}
{ TdaOdacSession.ValidDatabaseTypes }

function TdaOdacSession.ValidDatabaseTypes: TppDatabaseTypes;
begin
  Result := [dtOracle];

end; {function, ValidDatabaseTypes}


{******************************************************************************
 *
 ** ODAC D A T A S E T
 *
{******************************************************************************}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.Create }

constructor TdaOdacDataSet.Create(aOwner: TComponent);
begin

  inherited Create(aOwner);

  FQuery := nil;

end; {constructor, Create}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.Destroy }

destructor TdaOdacDataSet.Destroy;
begin

  FQuery.Free;

  inherited Destroy;

end; {destructor, Destroy}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.ClassDescription }

class function TdaOdacDataSet.ClassDescription: string;
begin
  Result := 'ODACDataSet';
end; {class function, ClassDescription}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.GetActive }

function TdaOdacDataSet.GetActive: Boolean;
begin
  Result := GetQuery.Active
end; {function, GetActive}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.SetActive }

procedure TdaOdacDataSet.SetActive(Value: Boolean);
begin
  GetQuery.Active := Value;
end; {procedure, SetActive}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.GetQuery }

function TdaOdacDataSet.GetQuery: TOraQuery;
begin

  {create DOA DataSet, if needed}
  if (FQuery = nil) then
    FQuery := TOraQuery.Create(Self);

  Result := FQuery;

end; {procedure, GetQuery}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.SetDatabase }

procedure TdaOdacDataSet.SetDatabase(aDatabase: TComponent);
begin

  inherited SetDatabase(aDatabase);

  {table cannot be active to set database property}
  if GetQuery.Active then
    FQuery.Active := False;

  {set ADOQuery.Connection}
  FQuery.Session := TOraSession(aDatabase);

end; {procedure, SetDatabase}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.SetDataName }

procedure TdaOdacDataSet.SetDataName(const aDataName: string);
begin

  inherited SetDataName(aDataName);

  {dataset cannot be active to set data name}
  if GetQuery.Active then
    FQuery.Active := False;

  {construct an SQL statment that returns an empty result set,
   this is used to get the field information }
  FQuery.SQL.Text := 'SELECT * FROM ' + aDataName +
    ' WHERE ''c'' <> ''c'' ';

end; {procedure, SetDataName}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.BuildFieldList }

procedure TdaOdacDataSet.BuildFieldList;
var
  liIndex: Integer;
  lQueryField: TField;
  lField: TppField;
begin

  inherited BuildFieldList;


  {set table to active}
  if not (GetQuery.Active) then
    FQuery.Active := True;

  {create TppField objects for each field in the table}
  for liIndex := 0 to FQuery.FieldCount - 1 do
    begin
      lQueryField := FQuery.Fields[liIndex];

      lField := TppField.Create(nil);

      lField.TableName := DataName;
      lField.FieldName := lQueryField.FieldName;
      lField.FieldAlias := lQueryField.DisplayLabel;
      lField.FieldLength := lQueryField.Size;
      lField.DataType := ppConvertFieldType(lQueryField.DataType);
      lField.DisplayWidth := lQueryField.DisplayWidth;


      AddField(lField);
    end;

end; {function, BuildFieldList}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.GetFieldNamesForSQL }

procedure TdaOdacDataSet.GetFieldNamesForSQL(aList: TStrings; aSQL: TStrings);
var
  lQuery: TOraQuery;
begin
  aList.Clear;

  {create a temporary query}
  lQuery := TOraQuery.Create(Self);

  {set the database and SQL properties}
  lQuery.Session := TOraSession(Database);
  lQuery.SQL := aSQL;

  {get the field names}
  lQuery.GetFieldNames(aList);

  lQuery.Free;

end; {procedure, GetFieldNamesForSQL}

{------------------------------------------------------------------------------}
{ TdaOdacDataSet.GetFieldsForSQL }

procedure TdaOdacDataSet.GetFieldsForSQL(aList: TList; aSQL: TStrings);
var
  lQuery: TOraQuery;
  lQueryField: TField;
  lField: TppField;
  liIndex: Integer;
begin
  aList.Clear;

  {create a temporary query}
  lQuery := TOraQuery.Create(Self);

  try
    {assign databae and SQL properties}
    lQuery.Session := TOraSession(Database);
    lQuery.SQL := aSQL;

    {set query to active}
    lQuery.Active := True;

    {create a TppField object for each field in the query}
    for liIndex := 0 to lQuery.FieldCount - 1 do
      begin
        lQueryField := lQuery.Fields[liIndex];

        lField := TppField.Create(nil);

        lField.FieldName := lQueryField.FieldName;
        lField.FieldAlias := lQueryField.DisplayLabel;
        lField.FieldLength := lQueryField.Size;
        lField.DataType := ppConvertFieldType(lQueryField.DataType);
        lField.DisplayWidth := lQueryField.DisplayWidth;

        aList.Add(lField);
      end;

  finally
    lQuery.Free;

  end;

end; {procedure, GetFieldsForSQL}


{******************************************************************************
 *
 ** ODAC  Q U E R Y   D A T A V I E W
 *
{******************************************************************************}

{------------------------------------------------------------------------------}
{ TdaOdacQueryDataView.Create }

constructor TdaOdacQueryDataView.Create(aOwner: TComponent);
begin

  inherited Create(aOwner);

  {notes: 1. must use ChildQuery, ChildDataSource, ChildPipeline etc.
          2. use Self as owner for Query, DataSource etc.
          3. do NOT assign a Name }

  FQuery := TdaChildOdacQuery.Create(Self);

  FDataSource := TppChildDataSource.Create(Self);
  FDataSource.DataSet := FQuery;

end; {constructor, Create}

{------------------------------------------------------------------------------}
{ TdaOdacQueryDataView.Destroy }

destructor TdaOdacQueryDataView.Destroy;
begin
  FDataSource.Free;
  FQuery.Free;

  inherited Destroy;

end; {destructor, Destroy}

{------------------------------------------------------------------------------}
{ TdaOdacQueryDataView.PreviewFormClass }

class function TdaOdacQueryDataView.PreviewFormClass: TFormClass;
begin
  Result := TFormClass(GetClass('TdaPreviewDataDialog'));
end; {class function, PreviewFormClass}

{------------------------------------------------------------------------------}
{ TdaOdacQueryDataView.SessionClass }

class function TdaOdacQueryDataView.SessionClass: TClass;
begin
  Result := TdaOdacSession;
end; {class function, SessionClass}

{------------------------------------------------------------------------------}
{ TdaOdacQueryDataView.ConnectPipelinesToData }

procedure TdaOdacQueryDataView.ConnectPipelinesToData;
begin

  if DataPipelineCount = 0 then
    Exit;

  {need to reconnect here}
  TppDBPipeline(DataPipelines[0]).DataSource := FDataSource;

end; {procedure, ConnectPipelinesToData}

{------------------------------------------------------------------------------}
{ TdaOdacQueryDataView.Init }

procedure TdaOdacQueryDataView.Init;
var
  lDataPipeline: TppChildDBPipeline;

begin

  inherited Init;

  if DataPipelineCount > 0 then
    Exit;

  {note: DataView's owner must own the DataPipeline }
  lDataPipeline := TppChildDBPipeline(ppComponentCreate(Self, TppChildDBPipeline));
  lDataPipeline.DataSource := FDataSource;

  lDataPipeline.AutoCreateFields := False;

  {add DataPipeline to the dataview }
  lDataPipeline.DataView := Self;

end; {procedure, Init}

{------------------------------------------------------------------------------}
{ TdaOdacQueryDataView.SQLChanged }

procedure TdaOdacQueryDataView.SQLChanged;
var
  lDatabase: TComponent;
begin

  if FQuery.Active then
    FQuery.Close;

  lDatabase := Session.GetDatabaseForName(SQL.DatabaseName);

  FQuery.Session := TOraSession(lDatabase);
  FQuery.SQL := SQL.MagicSQLText;

end; {procedure, SQLChanged}



initialization

  {register the DOA descendant classes}
  RegisterClasses([TdaChildOdacQuery, TdaChildOdacTable]);

  {register DADE descendant session, dataset, dataview}
  daRegisterSession(TdaOdacSession);
  daRegisterDataSet(TdaOdacDataSet);
  daRegisterDataView(TdaOdacQueryDataView);

  {initialize internal reference variables}
  FOdacConnection := nil;
  FOdacLogon := nil;


finalization

  {free the default connection object}
  FOdacConnection.Free;
  FOdacConnection := nil;
  FOdacLogon.Free;
  FOdacLogon := nil;

  {unregister the DOA descendant classes}
  UnRegisterClasses([TdaChildOdacQuery, TdaChildOdacTable]);

  {unregister DADE descendant the session, dataset, dataview}
  daUnRegisterSession(TdaOdacSession);
  daUnRegisterDataSet(TdaOdacDataSet);
  daUnRegisterDataView(TdaOdacQueryDataView);


end.


