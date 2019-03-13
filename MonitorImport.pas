unit MonitorImport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, MemDS, OracleUniProvider, Uni, DBAccess, Variants;

type
  TSundryRecord = record
    FileID: string;
    Units: integer;
    Amount: Double;
    SundryType: string;
  end;

  TfrmMonitorImport = class(TForm)
    Label3: TLabel;
    tbFile: TEdit;
    btnSave: TBitBtn;
    sdlgFile: TSaveDialog;
    btnOK: TBitBtn;
    qryMatter: TUniQuery;
    qrySundryInsert: TUniQuery;
    qrySundryErrorInsert: TUniQuery;
    qryTmp: TUniQuery;
    chkFileDelete: TCheckBox;
    qryMatterFILEID: TStringField;
    qryMatterNMATTER: TFloatField;
    qryMatterNCLIENT: TFloatField;
    qryMatterAUTHOR: TStringField;
    qryMatterCOMPLETED: TDateTimeField;
    btnCancel: TBitBtn;
    procedure btnOKClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    FSundry: TSundryRecord;
    FErrors: boolean;
    FCurrentError, FFirstError: integer;
    FFileName: string;
    FPrintErrors: boolean;
    FFileDelete: boolean;
    procedure SetFileDelete(Value: Boolean);
    procedure SaveError(sError: string);
  public
    { Public declarations }
    procedure ProcessSundries;
    property FileName: string read FFileName write FFileName;
    property PrintErrors: boolean read FPrintErrors write FPrintErrors;
    property FileDelete: boolean read FFileDelete Write SetFileDelete;
  end;

implementation

uses
  AxiomData, MiscFunc, SundryError;

{$R *.DFM}

procedure TfrmMonitorImport.SetFileDelete(Value: Boolean);
begin
  FFileDelete := Value;
  chkFileDelete.Checked := Value;
end;


procedure TfrmMonitorImport.btnOKClick(Sender: TObject);
begin
  FFileDelete := chkFileDelete.Checked;
  if (tbFile.Text <> '') then
  begin
    FFileName := tbFile.Text;
    if not FileExists(FFileName) then
      MsgErr('The import file does not exist')
    else
    begin
      ProcessSundries;
      if FErrors then
        with TfrmSundryError.Create(Self) do
          Show;
      Self.Close;
    end;
  end
  else
    MsgErr('Please enter the file names');
end;


procedure TfrmMonitorImport.ProcessSundries;
var
  fMonitor: TextFile;
  sNewline, sError: string;
begin
  if FFileName <> '' then
  begin
    with qryTmp do
    begin
      SQL.Text := 'SELECT MAX(NSUNDRYERROR) + 1 AS NSUNDRYERROR FROM SUNDRYERROR';
      Open;
      FCurrentError := FieldByName('NSUNDRYERROR').AsInteger;
      FFirstError := FieldByName('NSUNDRYERROR').AsInteger;
    end;
    AssignFile(fMonitor, FFileName);
    Reset(fMonitor);

    while not Eof(fMonitor) do
    begin
      Readln(fMonitor, sNewline);
      sError := '';
      // Set up the sundry record
      FSundry.FileID := Trim(Copy(sNewline, 6, 7));
      try
        FSundry.Units := StrToInt(Trim(Copy(sNewline, 13, 6)));
        if FSundry.Units = 0 then
          FSundry.Units := 1;
      except
        sError := 'Invalid units';
        qrySundryInsert.ParamByName('UNITS').AsInteger := 1;
      end;
      FSundry.SundryType := Copy(sNewline, 56, 2);
      if FSundry.SundryType <> TableString('SUNDRYTYPE', 'CODE', FSundry.SundryType, 'CODE') then
        sError := 'Unknown Sundry Type';
      try
        FSundry.Amount := StrToInt(Trim(Copy(sNewline, 58, 5))) / 100;
      except
        sError := 'Invalid amount';
        FSundry.Amount := 0;
      end;

      if sError <> '' then
        SaveError(sError)
      else

        with qryMatter do
        begin
          Close;
          ParamByName('FILEID').AsString := FSundry.FileID;
          Open;
          if IsEmpty then
            // No such matter - make an error entry
            SaveError('Not a current Matter')
          else
          begin
            if FieldByName('COMPLETED').Value = Null then
            begin
              qrySundryInsert.ParamByName('ACCT').AsString := dmAxiom.Entity;
              qrySundryInsert.ParamByName('CREATED').AsDateTime := Now;
              qrySundryInsert.ParamByName('FILEID').AsString := FSundry.FileID;
              qrySundryInsert.ParamByName('NMATTER').AsInteger := FieldByName('NMATTER').AsInteger;
              qrySundryInsert.ParamByName('NCLIENT').AsInteger := FieldByName('NCLIENT').AsInteger;
              qrySundryInsert.ParamByName('UNITS').AsInteger := FSundry.Units;
              qrySundryInsert.ParamByName('PERUNIT').AsFloat := qrySundryInsert.ParamByName('AMOUNT').AsFloat / qrySundryInsert.ParamByName('UNITS').AsInteger;
              qrySundryInsert.ParamByName('TYPE').AsString := FSundry.SundryType;
              qrySundryInsert.ParamByName('DESCR').AsString := TableString('SUNDRYTYPE', 'CODE', FSundry.SundryType, 'DESCR');
              // Work out the tax
              qrySundryInsert.ParamByName('TAXCODE').AsString := TableString('SUNDRYTYPE', 'CODE', FSundry.SundryType, 'TAXCODE');
              if qrySundryInsert.ParamByName('TAXCODE').AsString = '' then
                qrySundryInsert.ParamByName('TAXCODE').AsString := dmAxiom.DefaultTax;
              qrySundryInsert.ParamByName('TAX').AsFloat := TaxCalc(FSundry.Amount, '', qrySundryInsert.ParamByName('TAXCODE').AsString, Now);
              qrySundryInsert.ParamByName('AMOUNT').AsFloat := FSundry.Amount;

              qrySundryInsert.ExecSQL;

              MatterUpdate(qryMatter.FieldByName('NMATTER').AsInteger, 'UNBILL_SUND', qrySundryInsert.ParamByName('AMOUNT').AsFloat);
              if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
                PostLedgers(qrySundryInsert.ParamByName('CREATED').AsDateTime
                  , qrySundryInsert.ParamByName('AMOUNT').AsFloat
                  , qrySundryInsert.ParamByName('FILEID').AsString
                  , 'SUNDRY'
                  , qrySundryInsert.ParamByName('NSUNDRY').AsInteger
                  , qrySundryInsert.ParamByName('DESCR').AsString
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR')
                  , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR')
                  , qryMatter.FieldByName('AUTHOR').AsString
                  , dmAxiom.DefaultTax);
            end
            else
              // Matter completed
              SaveError('Matter has been completed');
          end;
        end;
    end;
    if FPrintErrors then
      with TfrmSundryError.Create(Self) do
      begin
        FirstError := FFirstError;
        PrintErrors;
        Release;
      end;
    if FFileDelete then
      DeleteFile(FFileName);
  end;

  
  CheckLedgerTotal;

end;


procedure TfrmMonitorImport.SaveError(sError : string);
begin
  FErrors := True;
  with qrySundryErrorInsert do
  begin
    ParamByName('NSUNDRYERROR').AsInteger := FCurrentError;
    FCurrentError := FCurrentError + 1;
    ParamByName('CREATED').AsDateTime := Now;
    ParamByName('FILEID').AsString := FSundry.FileID;
    ParamByName('DESCR').AsString := TableString('SUNDRYTYPE', 'CODE', FSundry.SundryType, 'DESCR');
    ParamByName('ERROR').AsString := sError;
    ParamByName('UNITS').AsInteger := FSundry.Units;
    ParamByName('AMOUNT').AsFloat := FSundry.Amount;
    ParamByName('SUNDRYTYPE').AsString := FSundry.SundryType;
    ExecSQL;
  end;
end;


procedure TfrmMonitorImport.btnSaveClick(Sender: TObject);
begin
  if sdlgFile.Execute then
    tbFile.Text := sdlgFile.FileName;
end;

procedure TfrmMonitorImport.FormShow(Sender: TObject);
begin
  tbFile.Text := SettingLoadString('MonitorImport', 'Import File');
end;

procedure TfrmMonitorImport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SettingSave('MonitorImport', 'Import File', tbFile.Text);
  RemoveFromDesktop(Self);
end;

procedure TfrmMonitorImport.FormCreate(Sender: TObject);
begin
  FErrors := False;
  FPrintErrors := False;
  FFileDelete := False;
  FFileName := '';
end;

procedure TfrmMonitorImport.btnCancelClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

end.

