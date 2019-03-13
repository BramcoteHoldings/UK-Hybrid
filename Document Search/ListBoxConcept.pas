unit ListBoxConcept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCustomListBox, cxListBox, cxDBEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfrmdtSearchMaintain = class(TForm)
    dsIndexUsers: TUniDataSource;
    QryIndexUsers: TUniQuery;
    cxDBListBox1: TcxDBListBox;
    qryIndexes: TUniQuery;
    dsIndexes: TUniDataSource;
    cxDBListBox2: TcxDBListBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdtSearchMaintain: TfrmdtSearchMaintain;

implementation

{$R *.dfm}

procedure TfrmdtSearchMaintain.FormShow(Sender: TObject);
begin
  qryIndexes.Open;
  QryIndexUsers.Open;
end;

end.
