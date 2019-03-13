unit TableCache;

interface

uses
   Data.DB, DBAccess, Uni, System.Classes, MemDS, VirtualTable, System.SysUtils;

{
to-do
Refresh the virtual tables when entity changes ?
}



{  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, VCL.Dialogs,
  Db, VirtualTable, OracleUniProvider, Uni, DBAccess, MemDS;
 }

type
   ETableCache = class(Exception);

type
  TdmTableCache = class(TDataModule)
    vtSettings: TVirtualTable;
    vtEmpTypeSecurity: TVirtualTable;
    vtDisplayName: TVirtualTable;
    vtJurisdiction: TVirtualTable;
    vtBranches: TVirtualTable;
    vtFeeBasis: TVirtualTable;
    qrySql: TUniQuery;
    vtReqFields: TVirtualTable;
    vtMatterType: TVirtualTable;
    vtWorkFlow: TVirtualTable;
    vtMatterStatus: TVirtualTable;
    vtMatterSubStatus: TVirtualTable;
    vtMatterSubType: TVirtualTable;
    vtSundryType: TVirtualTable;
    vtEntity: TVirtualTable;
    vtSubJurisdiction: TVirtualTable;
    vtEmpSecurity: TVirtualTable;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    tableEntityRefreshList : Tlist;
  public
    { Public declarations }
    procedure LoadVirtualTable(vtable: TVirtualTable;stable,swhere : String); overload;
    procedure LoadVirtualTable(vtable: TVirtualTable;stable,swhere,sOrder : String); overload;
    function  VGetString(vtable: TVirtualTable;LookupField, LookupValue, ReturnField: string): string; overload;
    function  VGetString(vtable: TVirtualTable;LookupField, LookupValue : array of string; ReturnField: string): string; overload;
    function VGetInteger(vtable: TVirtualTable;LookupField, LookupValue, ReturnField: string): integer;
    procedure StringPopulate(Target: TStrings;vtable : TVirtualTable;Field: string); overload;
    procedure StringPopulate(Target: TStrings;vtable : TVirtualTable;Field,lookupfield,lookupvalue: string); overload;
  end;

var
  dmTableCache: TdmTableCache;

implementation

uses AxiomData;

procedure TdmTableCache.StringPopulate(Target: TStrings;vtable : TVirtualTable;Field: string);
begin
    Target.Clear;
    vtable.First;
    while not vtable.EOF do
    begin
        Target.Add(vtable.FieldByName(Field).AsString);
        vtable.next;
    end;
end;

procedure TdmTableCache.StringPopulate(Target: TStrings;vtable : TVirtualTable;Field,lookupfield,lookupvalue: string);
begin
    Target.Clear;
    vtable.First;
    while not vtable.EOF do
    begin
        if vtable.FieldByName(lookupfield).AsString = lookupvalue then
            Target.Add(vtable.FieldByName(Field).AsString);
        vtable.next;
    end;
end;

procedure TdmTableCache.LoadVirtualTable(vtable : TVirtualTable;stable,swhere : String);
begin
   LoadVirtualTable(vTable,stable,swhere,'');
end;

function TdmTableCache.VGetString(vtable : TVirtualTable;LookupField, LookupValue, ReturnField: string): string;
begin
    // do some checks
    // has the table been populated?
    if vtable.State = dsInactive then
        raise ETableCache.Create('Virtual table ' + vTable.Name +  ' has not been populated');
    // are the fields valid ?
    if (vTable.FindField(LookupField) = nil) then
        raise ETableCache.Create('Field ' + LookupField + ' not in Virtual Table ' + vTable.Name);
    if (vTable.FindField(ReturnField) = nil) then
        raise ETableCache.Create('Field ' + ReturnField + ' not in Virtual Table ' + vTable.Name);

    VGetString := '';

    with vtable do
    begin
        first;
        while not EOF  do
        begin
            if FieldByName(LookupField).AsString = LookupValue then
               begin
               VGetString := FieldByName(ReturnField).AsString;
               exit;
               end;

            next;
        end;
    end;
end;

function TdmTableCache.VGetString(vtable : TVirtualTable;LookupField, LookupValue : array of string; ReturnField: string): string;
var
  iStringIndex : Integer;
  iFound : Boolean;
begin
    // do some checks

    // has the table been populated?
    if vtable.State = dsInactive then
        raise ETableCache.Create('Virtual table ' + vTable.Name +  ' has not been populated');
    // are the fields valid ?
//    if (vTable.FindField(LookupField) = nil) then
//        raise ETableCache.Create('Field ' + LookupField + ' not in Virtual Table ' + vTable.Name);
//    if (vTable.FindField(ReturnField) = nil) then
//        raise ETableCache.Create('Field ' + ReturnField + ' not in Virtual Table ' + vTable.Name);

    VGetString := '';
    with vtable do
    begin
        first;
        while not EOF  do
        begin
            iStringIndex := 0;
            iFound := True;
            while LookupField[iStringIndex] <> '' do
            begin
                if vtable.FieldByName(LookupField[iStringIndex]).AsString <> LookupValue[iStringIndex] then
                iFound := False;
                iStringIndex := iStringIndex + 1;
            end;
            if iFound  then
               begin
               VGetString := FieldByName(ReturnField).AsString;
               exit;
               end;
            next;
        end;
    end;
end;

function TdmTableCache.VGetInteger(vtable : TVirtualTable;LookupField, LookupValue, ReturnField: string): integer;
begin
    // do some checks
    // has the table been populated?
    if vtable.State = dsInactive then
        raise ETableCache.Create('Virtual table ' + vTable.Name +  ' has not been populated');
    // are the fields valid ?
    if (vTable.FindField(LookupField) = nil) then
        raise ETableCache.Create('Field ' + LookupField + ' not in Virtual Table ' + vTable.Name);
    if (vTable.FindField(ReturnField) = nil) then
        raise ETableCache.Create('Field ' + ReturnField + ' not in Virtual Table ' + vTable.Name);

    VGetInteger := 0;

    with vtable do
    begin
        first;
        while not EOF  do
        begin
            if FieldByName(LookupField).AsString = LookupValue then
               begin
               VGetInteger := FieldByName(ReturnField).AsInteger;
               exit;
               end;

            next;
        end;
    end;
end;

procedure TdmTableCache.LoadVirtualTable(vtable : TVirtualTable;stable,swhere,sOrder : String);
var
  i : INTEGER;
begin
  // only load empty table
   if vtable.State = dsInactive then
   begin
      with qrySql do
      begin
         close;
         SQL.Clear;
         SQL.Add('select * from ' + stable);
         if swhere <> '' then
             SQL.Add(' WHERE ' + swhere);
         if sOrder <> '' then
             SQL.Add(' ORDER BY ' + sOrder + ' DESC');
         open;
          // copy fields into VT

         for i := 0 to fieldcount-1 do
         begin
              vtable.AddField(fields[i].FieldName,fields[i].DataType,fields[i].Size);
         end;
         vtable.Open;
          // now copy the data into the vtable

         while not EOF do
         begin
            vtable.Insert;
            for i := 0 to fieldcount-1 do
            begin
              vtable.fields[i].AsVariant := fields[i].AsVariant;
            end;
            vtable.Post;
            next;
         end;
         close;
      end;
      vtable.First;
   end;
end;


{$R *.DFM}

procedure TdmTableCache.DataModuleCreate(Sender: TObject);
begin
  tableEntityRefreshList := TList.Create;
  qrySql.Connection := dmAxiom.uniInsight;
end;

procedure TdmTableCache.DataModuleDestroy(Sender: TObject);
begin
  tableEntityRefreshList.Free;
end;

end.
