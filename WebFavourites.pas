unit WebFavourites;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxLabel, cxControls,
  cxContainer, cxEdit, cxTextEdit, ExtCtrls, OracleUniProvider, Uni, DBAccess, MemDS, Menus,
  cxGraphics, cxLookAndFeels;

type
  TfrmFavourites = class(TForm)
    Image1: TImage;
    dfFavourite: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel2: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FLocationName: string;
    FFavouriteURL: string;
    function GetMaxIntValue(EMP: string; OWNER: string): integer;
  public
    { Public declarations }
    property LocationName : string read FLocationName write FLocationName;
    property FavouriteURL : string read FFavouriteURL write FFavouriteURL;
  end;

var
  frmFavourites: TfrmFavourites;

implementation

uses AxiomData, MiscFunc;

{$R *.dfm}
procedure TfrmFavourites.cxButton1Click(Sender: TObject);
begin
   SettingSave(dmAxiom.UserID,'FAVOURITES',dfFavourite.Text,FavouriteURL,GetMaxIntValue(dmAxiom.UserID,'FAVOURITES'));
end;

procedure TfrmFavourites.FormShow(Sender: TObject);
begin
   dfFavourite.Text := LocationName;
end;

function TfrmFavourites.GetMaxIntValue(EMP: string; OWNER: string): integer;
var
  loQry : TUniQuery;
begin
   try
      loQry := nil;

      try
         loQry := TUniQuery.Create(nil);
         loQry.Connection := dmAxiom.uniInsight;

         loQry.Close;
         loQry.SQL.Clear;
         loQry.SQL.Add('SELECT nvl(max(intvalue)+1,1) FROM settings WHERE EMP = :EMP and OWNER = :OWNER');
         loQry.Params[0].AsString := EMP;
         loQry.Params[1].AsString := OWNER;

         loQry.Open;

         Result := loQry.Fields[0].AsInteger;
      finally
      loQry.Close;
      FreeAndNil(loQry);
    end;    //  end try-finally
    except
       on E : Exception do
       begin
          Raise;
       end;
    end;
end;

end.
