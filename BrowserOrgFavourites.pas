unit BrowserOrgFavourites;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxLabel, StdCtrls, cxButtons, cxEdit,
  cxGroupBox, cxControls, cxContainer, cxListView, DB, MemDS,
  DBAccess, OracleUniProvider, Uni, ComCtrls, Menus, cxGraphics, cxLookAndFeels;

type
  TfrmBrowserOrgFavourites = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    pbClose: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    lvFavourites: TcxListView;
    qryFavourites: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvFavouritesClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    FSelectedItem: Integer;
  public
    { Public declarations }
  end;

var
  frmBrowserOrgFavourites: TfrmBrowserOrgFavourites;

implementation

uses AxiomData, MiscFunc;

{$R *.dfm}

procedure TfrmBrowserOrgFavourites.FormCreate(Sender: TObject);
var
   newListItem: TListItem;
begin
   try
      qryFavourites.Close;
      qryFavourites.SQL.Text := 'SELECT * FROM SETTINGS WHERE EMP = :Emp AND OWNER = ''FAVOURITES'' ORDER BY INTVALUE';
      qryFavourites.Params[0].AsString := dmAxiom.UserID;
      qryFavourites.Open;

      lvFavourites.Items.Clear;
      lvFavourites.Items.BeginUpdate;
      while not qryFavourites.EOF do
      begin
        newListItem := lvFavourites.Items.Add;
        newListItem.ImageIndex := 18;
        newListItem.StateIndex := qryFavourites.FieldByName('INTVALUE').AsInteger;
        newListItem.Caption := qryFavourites.FieldByName('ITEM').AsString;
        newListItem.SubItems.Add(qryFavourites.FieldByName('VALUE').AsString);
        qryFavourites.Next;
      end;
      // Now Draw the TListView now that all items are loaded
      lvFavourites.Items.EndUpdate;

      qryFavourites.First;
      lvFavourites.Items.Item[0].Selected := True;
      cxLabel2.Caption := qryFavourites.FieldByName('VALUE').AsString;
      cxLabel3.Caption := lvFavourites.Selected.Caption;
   except
     // nothing yet
   end;
end;

procedure TfrmBrowserOrgFavourites.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryFavourites.Close;
end;

procedure TfrmBrowserOrgFavourites.lvFavouritesClick(Sender: TObject);
begin
   FSelectedItem := lvFavourites.ItemIndex;
   qryFavourites.Locate('INTVALUE',lvFavourites.Selected.StateIndex,[loCaseInsensitive]);
   cxLabel2.Caption := qryFavourites.FieldByName('VALUE').AsString;
   cxLabel3.Caption := lvFavourites.Selected.Caption;
end;

procedure TfrmBrowserOrgFavourites.cxButton1Click(Sender: TObject);
begin
   lvFavourites.RowSelect := True;
   lvFavourites.Items.Item[FSelectedItem].Selected := True;
   lvFavourites.Selected.Focused := True;
end;

procedure TfrmBrowserOrgFavourites.cxButton2Click(Sender: TObject);
begin
    SettingDelete(dmAxiom.UserID,'FAVOURITES', lvFavourites.Selected.StateIndex);
    lvFavourites.Selected.Delete;
end;

end.
