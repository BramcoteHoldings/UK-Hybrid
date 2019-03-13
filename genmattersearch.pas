unit genmattersearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, DBAccess, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    OraQuery1: TUniQuery;
    OraDataSource1: TUniDataSource;
    cxGrid1DBTableView1FILEID: TcxGridDBColumn;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1SEARCH: TcxGridDBColumn;
    cxGrid1DBTableView1SHORTDESCR: TcxGridDBColumn;
  private
    { Private declarations }
    FText: string;
  public
    { Public declarations }
    property AText: string read FText write FText;
  end;

var
  Form1: TForm1;

implementation

uses
    AxiomData, MiscFunc;

{$R *.dfm}

procedure TForm1.MakeSQL
begin
   with OraQuery1 do
   begin
      sql.clear;
      sql.text := 'select m.fileid,c.code, p.search, m.shortdescr from '+
                  'matter m, client c, phonebook p where '+
                  'm.nclient = c.nclient '+
                  'and c.nclient = p.nclient '+
                  'and CONTAINS (m.dummy,' + QuotedStr('%' + AText + '%') + ',1) > 0';
      open;
   end;
end;

end.
