unit CustomProcedures;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, OracleUniProvider, Uni, DBAccess, MemDS, ImgList,
  cxControls, cxContainer, cxListView, cxEdit, cxLabel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters;

type

  TProcedureData = record
    Name: string;
  end;


  TfrmCustomProcedure = class(TForm)
    qryProcedures: TUniQuery;
    dsProcedures: TUniDataSource;
    ImageList1: TImageList;
    pcRun: TUniStoredProc;
    lvProcedure: TcxListView;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure lvProcedureDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure refreshList;
    procedure execute(lData: TProcedureData);
  public

    { Public declarations }
  end;

var
  frmCustomProcedure: TfrmCustomProcedure;

implementation

{$R *.dfm}
uses
      miscFunc, AxiomData;

procedure TfrmCustomProcedure.refreshList;
var sName: string;
  lData: ^TProcedureData;
  lItem: TListItem;

begin
  lvProcedure.Items.Clear;
  qryProcedures.Open;
  while not qryProcedures.Eof do
  begin
    sName := qryProcedures.fieldByName('OBJECT_NAME').AsString;
    new(lData);
    lData^.Name := sName;
    lItem := lvProcedure.Items.Add;
    lItem.Data := lData;
    lItem.Caption := sName;
    lItem.ImageIndex := 1;

    qryProcedures.Next;
  end;
end;

procedure TfrmCustomProcedure.FormShow(Sender: TObject);
begin
  refreshList;
end;

procedure TfrmCustomProcedure.lvProcedureDblClick(Sender: TObject);
var ldata: ^TProcedureData;
begin
  if lvProcedure.SelCount = 1 then
  begin
    ldata := lvProcedure.Selected.Data;
    execute(ldata^);
  end;
end;

procedure TfrmCustomProcedure.execute(lData: TProcedureData);
begin
   cxLabel1.Caption := 'Executing '+ lData.Name +'...';
   Application.ProcessMessages;
   pcRun.StoredProcName := lData.Name;
   try
      pcRun.ExecSQL;
      cxLabel1.Caption := 'Finished';
      Application.ProcessMessages;
      MsgInfo('Procedure ' + lData.Name + ' Run');
      lvProcedure.Selected.ImageIndex := 2;
   except
      cxLabel1.Caption := 'Error executing '+ lData.Name +'...';
      Application.ProcessMessages;
   end;
end;

end.

