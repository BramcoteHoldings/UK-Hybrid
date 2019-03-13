unit MatterLabel;

interface

uses
  Classes, Windows, Controls, Forms, Dialogs, SysUtils, OracleUniProvider, Uni,
  DBAccess, MemDS,MatterLabelPrint;

type
  TPrintMode = (pmPreview, pmPrintDirect);

  TMatterLabel = class(TObject)
    private
      LibHandle: THandle;
      FArchiveMode: Boolean;
      FCancelled: Boolean;
      FNumCopies: Integer;
      FShowPreview: Boolean;
      flabelPrint : TfrmMatterLabelPrint;
      //Initialize: function(AffOraHdl: TUniConnection): Boolean; stdcall;
      //PrintLabel: function(PrinterName: PChar; NumCopies: Integer;
      //ShowPreview: Boolean; ArchivedMatter: Boolean): Boolean; stdcall;
      //AddMatter: procedure(MatterNo: Integer); stdcall;
      procedure SetNumCopies(Value: Integer);
    public
      property ArchiveMode: Boolean read FArchiveMode Write FArchiveMode
        default False;
      property Cancelled: Boolean read FCancelled;
      property NumCopies: Integer read FNumCopies Write SetNumCopies;
      property ShowPreview: Boolean read FShowPreview Write FShowPreview
        default False;
      constructor Create(DatabaseCon: TUniConnection);
      destructor Destroy; override;
      function Print(MatterNo: Integer; LabelType: string = 'MATTERLABEL'): Boolean; overload;
      function Print(LabelType: string = 'MATTERLABEL'): Boolean; overload;
      procedure Add(MatterNo: Integer);
  end;


implementation

uses
  AxiomData, OptionsUser;

constructor TMatterLabel.Create(DatabaseCon: TUniConnection);
var
  qryLabel: TUniQuery;
  sMatterLabelLib: string;
  bFirstLabel: Boolean;

begin
   // Default Matter label printing library
   sMatterLabelLib := 'MTRLBL.DLL';
   FArchiveMode := False;
   FCancelled := False;
   FNumCopies := 1;
   FShowPreview := False;

   // Set up the query for reading settings
   qryLabel := TUniQuery.Create(nil);
   qryLabel.Connection := dmAxiom.uniInsight;
   if ArchiveMode = True then
   begin
     with qryLabel do
     begin
       SQL.Add('SELECT VALUE, INTVALUE');
       SQL.Add('FROM SETTINGS');
       SQL.Add('WHERE EMP = :Emp');
       SQL.Add('  AND OWNER = :Owner');
       SQL.Add('  AND ITEM = :Item');
     end;

     // If they haven't done a Matter label before, find out their settings
     bFirstLabel := True;
     with qryLabel do
     begin
       ParamByName('Emp').AsString := dmAxiom.UserID;
       ParamByName('Owner').AsString := 'ARCHIVELABEL';
       ParamByName('Item').AsString := 'ARCHIVEPRINTER';
       Open;
       if not IsEmpty then
       begin
         if FieldByName('INTVALUE').AsInteger = 1 then
           bFirstLabel := False;
       end;
       Close;
     end;

     if not FCancelled then
     begin
       // get the user configured number of labels to print
       with qryLabel do
       begin
         ParamByName('Emp').AsString := dmAxiom.UserID;
         ParamByName('Owner').AsString := 'ARCHIVELABEL';
         ParamByName('Item').AsString := 'NUMCOPIES';
         Open;
         if not IsEmpty then
           FNumCopies := FieldByName('INTVALUE').AsInteger;
         Close;
       end;

       // Find out the user configured Matter label library
       with qryLabel do
       begin
         ParamByName('Emp').AsString := 'sys';
         ParamByName('Owner').AsString := 'APPLICATION';
         ParamByName('Item').AsString := 'ARCHIVELABEL';
         Open;
         if not IsEmpty then
           sMatterLabelLib := FieldByName('VALUE').AsString;
         Close;
       end;
     end;
   end
   else
   begin
     with qryLabel do
     begin
       SQL.Add('SELECT VALUE, INTVALUE');
       SQL.Add('FROM SETTINGS');
       SQL.Add('WHERE EMP = :Emp');
       SQL.Add('  AND OWNER = :Owner');
       SQL.Add('  AND ITEM = :Item');
     end;

     // If they haven't done a Matter label before, find out their settings
     bFirstLabel := True;
     with qryLabel do
     begin
       ParamByName('Emp').AsString := dmAxiom.UserID;
       ParamByName('Owner').AsString := 'MATTERLABEL';
       ParamByName('Item').AsString := 'PRINTER';
       Open;
       if not IsEmpty then
       begin
         if FieldByName('INTVALUE').AsInteger = 1 then
           bFirstLabel := False;
       end;
       Close;
     end;
     {if bFirstLabel then
     begin
       with TfrmOptionsUser.Create(TUniConnection(DatabaseCon).Owner) do
       begin
         ShowOption(tabMatterLabels);
         if ShowModal = mrCancel then
           FCancelled := True;
         Close;
       end;
     end;
     }

     if not FCancelled then
     begin
       // get the user configured number of labels to print
       with qryLabel do
       begin
         ParamByName('Emp').AsString := dmAxiom.UserID;
         ParamByName('Owner').AsString := 'MATTERLABEL';
         ParamByName('Item').AsString := 'NUMCOPIES';
         Open;
         if not IsEmpty then
           FNumCopies := FieldByName('INTVALUE').AsInteger;
         Close;
       end;

       // Find out the user configured Matter label library
       with qryLabel do
       begin
         ParamByName('Emp').AsString := 'sys';
         ParamByName('Owner').AsString := 'APPLICATION';
         ParamByName('Item').AsString := 'MATTERLABEL';
         Open;
         if not IsEmpty then
           sMatterLabelLib := FieldByName('VALUE').AsString;
         Close;
       end;
     end;
     qryLabel.Free;

     flabelPrint := TfrmMatterLabelPrint.Create(nil);

   {
    try
      LibHandle := LoadLibrary(PChar(UpperCase(ExtractFilePath(Application.EXEName)
        + sMatterLabelLib)));
      if LibHandle <> 0 then
      begin
        @Initialize := GetProcAddress(LibHandle, 'Initialize');
        if @Initialize <> nil then
        begin
          if not(Initialize(DatabaseCon)) then
            raise Exception.Create('Failed to initialise label.');
          @AddMatter := GetProcAddress(LibHandle, 'AddMatter');
          @PrintLabel := GetProcAddress(LibHandle, 'PrintLabel');
        end
        else
          raise Exception.Create('Failed to initialise library - ' + sMatterLabelLib + '.');
      end
      else
        raise Exception.Create('Failed to initialise library - ' + sMatterLabelLib + '.');
    except
      on E:Exception do
      begin
        FCancelled := True;
        MessageDlg('Error invoking Matter Label:'#13#13 + E.Message, mtError, [mbOK], 0);
      end;

    end;
    }
   end;
end;

destructor TMatterLabel.Destroy;
begin
  FreeLibrary(LibHandle);
  flabelPrint.Free;
  inherited Destroy;
end;

procedure TMatterLabel.SetNumCopies(Value: Integer);
begin
  if Value > 0 then
    FNumCopies := Value;
end;

function TMatterLabel.Print(MatterNo: Integer; LabelType: string): Boolean;
begin
  flabelPrint.AddMatter(MatterNo);
  Result := Print(LabelType);
end;

function TMatterLabel.Print(LabelType: string): Boolean;
var
  qryLabel: TUniQuery;
  bUseDefaults: Boolean;
  sPrinter, APrinter: string;
begin
  // Set up the query for reading settings
  qryLabel := TUniQuery.Create(nil);
  qryLabel.Connection := dmAxiom.uniInsight;
  with qryLabel do
  begin
    SQL.Add('SELECT VALUE, INTVALUE');
    SQL.Add('FROM SETTINGS');
    SQL.Add('WHERE EMP = :Emp');
    SQL.Add('  AND OWNER = :Owner');
    SQL.Add('  AND ITEM = :Item');
  end;

  // display system configured values if there are no user configured values
  bUseDefaults := True;
  with qryLabel do
  begin
    ParamByName('Emp').AsString := dmAxiom.UserID;
    ParamByName('Owner').AsString := LabelType;
    if LabelType = 'ARCHIVELABEL' then
      ParamByName('Item').AsString := 'ARCHIVEPRINTER'
    else
      ParamByName('Item').AsString := 'PRINTER';
    Open;
    if not IsEmpty then
      bUseDefaults := FieldByName('INTVALUE').AsInteger = 1;
    if bUseDefaults then
    begin
      Close;
      ParamByName('Emp').AsString := 'sys';
      Open;
    end;
    APrinter := dmAxiom.LabelPrinter;
    if APrinter = '' then
       sPrinter := FieldByName('VALUE').AsString;

    Close;
  end;

  qryLabel.Free;
  FShowPreview := true;
  Result := flabelPrint.PrintLabel(PChar(sPrinter), FNumCopies, FShowPreview, FArchiveMode, LabelType );
  flabelPrint.MatterList.Clear;
end;

procedure TMatterLabel.Add(MatterNo: Integer);
begin
  flabelPrint.AddMatter(MatterNo);
end;

end.


