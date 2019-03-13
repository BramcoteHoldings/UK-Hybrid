unit ClientGroups;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, DBCtrls, Mask, Menus, Db, ImgList,
  ExtCtrls, ComCtrls, ToolWin, OracleUniProvider, Uni, DBAccess, MemDS, AxiomData,
  dxBarDBNav, dxBar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters,
  myChkBox, ppCtrls, ppDB, ppDBPipe, ppBands, ppPrnabl, ppClass, ppVar,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter, ppDesignLayer,
  cxNavigator;

type
  TfrmClientGroups = class(TfrmMaint)
    qryClientUpdate: TUniQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CATEGORY: TcxGridDBColumn;
    cxGrid1DBTableView1SUPERGROUP: TcxGridDBColumn;
    cxGrid1DBTableView1FINANCIAL_YN: TcxGridDBColumn;
    cxGrid1DBTableView1ROWID: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    ppDBText1: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure qrySourceAfterPost(DataSet: TDataSet);
    procedure qrySourceBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientGroups: TfrmClientGroups;

implementation

uses
   miscfunc;
{$R *.DFM}

procedure TfrmClientGroups.FormCreate(Sender: TObject);
begin
  inherited;
  PrimaryField := 'CATEGORY';
end;

procedure TfrmClientGroups.qrySourceAfterInsert(DataSet: TDataSet);
begin
  inherited;
   qrySource.FieldByName('SUPERGROUP').AsString := 'N';
  qrySource.FieldByName('FINANCIAL_YN').AsString := 'N';
end;

procedure TfrmClientGroups.qrySourceAfterPost(DataSet: TDataSet);
begin
  inherited;
  with qryClientUpdate do
  begin
    if qrySource.FieldByName('SUPERGROUP').AsString = 'Y' then
    begin
      SQL.Clear;
      SQL.Add('UPDATE CLIENT SET CLIENTGROUP = ' + QuotedStr(qrySource.FieldByName('CATEGORY').AsString) + ' ');
      SQL.Add('WHERE nclient in ');
      SQL.Add('(SELECT NCLIENT FROM CLIENTGROUPINGS ');
      SQL.Add('WHERE CLIENT.NCLIENT = CLIENTGROUPINGS.NCLIENT ');
      SQL.Add('AND CLIENTGROUPINGS.CATEGORY = ' + QuotedStr(qrySource.FieldByName('CATEGORY').AsString) + ')');
      ExecSQL;
    end
    else
    begin
      SQL.Text := 'UPDATE CLIENT SET CLIENTGROUP = Null WHERE CLIENTGROUP = ' + QuotedStr(qrySource.FieldByName('CATEGORY').AsString);
      ExecSQL;
    end;
  end;
end;

procedure TfrmClientGroups.qrySourceBeforeDelete(DataSet: TDataSet);
begin
   inherited;
   with qryClientUpdate do
   begin
      SQL.Clear;
      Close;
      SQL.Text := 'SELECT ''x'' from clientgroupings cgs '+
                  'where cgs.CATEGORY = ' + QuotedStr(qrySource.FieldByName('CATEGORY').AsString);
      Open;
      if (not qryClientUpdate.Eof) then
      begin
         MsgInfo('This group is currently attached to Clients.  It cannot be deleted.');
         Abort;
      end;
   end;
end;

end.
