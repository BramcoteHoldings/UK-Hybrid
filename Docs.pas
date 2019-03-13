unit Docs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, Db, DBCtrls, FMXUtils, Ora, OracleUniProvider, Uni, DBAccess, MemDS,
  MemDS, OraSmart, DBAccess;

type
  TfrmDocs = class(TForm)
    qryDocs: TUniQuery;
    dsDocs: TUniDataSource;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dbtbName: TDBEdit;
    dbtbNotes: TDBEdit;
    dbtbJuris: TDBEdit;
    dbtbPath: TDBEdit;
    DBNavigator1: TDBNavigator;
    btnEdit: TBitBtn;
    dbtbFileID: TDBEdit;
    dbtbSearch: TDBEdit;
    procedure btnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocs: TfrmDocs;

implementation

uses AxiomData;

{$R *.DFM}

procedure TfrmDocs.btnEditClick(Sender: TObject);
begin
  ExecuteFile(qryDocs.FieldByName('PATH').AsString, '', '.', SW_SHOWNORMAL);
end;

procedure TfrmDocs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryDocs.Close;

  Self.Release;
end;

end.
