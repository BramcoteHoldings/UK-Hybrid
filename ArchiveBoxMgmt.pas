unit ArchiveBoxMgmt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, VirtualTable, StdCtrls, Buttons, ExtCtrls, Ora, OracleUniProvider, Uni, DBAccess, MemDS, Grids, DBGrids,
  DBAccess;

type
  TfrmArchiveBoxMgmt = class(TForm)
    vtArchiveBoxes: TVirtualTable;
    dsArchiveBoxes: TUniDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    dbgArchiveBoxes: TDBGrid;
    qryArchive: TUniQuery;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsArchiveBoxesDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure vtArchiveBoxesBeforeScroll(DataSet: TDataSet);
    procedure vtArchiveBoxesAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FStoredBox: string;
  public
    { Public declarations }
  end;

var
  frmArchiveBoxMgmt: TfrmArchiveBoxMgmt;

implementation

{$R *.DFM}

uses
  AxiomData;

procedure TfrmArchiveBoxMgmt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Self.ModalResult = mrOk then
  begin
    vtArchiveBoxes.First;
    while not(vtArchiveBoxes.Eof) do
    begin
      try
        try
          if vtArchiveBoxes.FieldByName('ArchiveNo').AsString <> '' then
          begin
            qryArchive.SQL.Clear;
            qryArchive.SQL.Add('UPDATE ARCHIVE');
            qryArchive.SQL.Add('SET BOXNO = '+QuotedStr(vtArchiveBoxes.FieldByName('BoxNumber').AsString));
            qryArchive.SQL.Add('WHERE NARCHIVE = '+vtArchiveBoxes.FieldByName('ArchiveNo').AsString);
            qryArchive.ExecSQL;
          end;
        except
          // silent excpetion
        end;
      finally
        vtArchiveBoxes.Next;
      end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfrmArchiveBoxMgmt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmArchiveBoxMgmt.dsArchiveBoxesDataChange(Sender: TObject;
  Field: TField);
begin
  if (Assigned(Field)) and (Field.FullName = 'FileID') and (vtArchiveBoxes.FieldByName('ArchiveNo').IsNull) then
  begin
    with qryArchive do
    begin
      SQL.Clear;
      SQL.Add('SELECT NARCHIVE FROM ARCHIVE');
      SQL.Add('WHERE FILEID = '+QuotedStr(Field.AsString));
      Open;
      vtArchiveBoxes.FieldByName('ArchiveNo').AsString := qryArchive.FieldByName('NARCHIVE').AsString;
    end;
  end
  else if (Assigned(Field)) and (Field.FullName = 'ArchiveNo') and (vtArchiveBoxes.FieldByName('FileID').IsNull) then
  begin
    with qryArchive do
    begin
      SQL.Clear;
      SQL.Add('SELECT FILEID FROM ARCHIVE');
      SQL.Add('WHERE NARCHIVE = '+QuotedStr(Field.AsString));
      Open;
      vtArchiveBoxes.FieldByName('FileID').AsString := qryArchive.FieldByName('FILEID').AsString;
    end;
  end;
(*  else if (Assigned(Field)) and (Field.FullName = 'BoxNumber') then*)
end;

procedure TfrmArchiveBoxMgmt.FormCreate(Sender: TObject);
begin
  FStoredBox := '';
end;

procedure TfrmArchiveBoxMgmt.vtArchiveBoxesBeforeScroll(DataSet: TDataSet);
begin
  FStoredBox := vtArchiveBoxes.FieldByName('BoxNumber').AsString;
end;

procedure TfrmArchiveBoxMgmt.vtArchiveBoxesAfterScroll(DataSet: TDataSet);
begin
  try
    vtArchiveBoxes.FieldByName('BoxNumber').AsString := FStoredBox;
  except
    // silent exception
  end;
end;

procedure TfrmArchiveBoxMgmt.FormShow(Sender: TObject);
begin
  vtArchiveBoxes.Insert;
end;

end.
