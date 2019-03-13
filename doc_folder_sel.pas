unit doc_folder_sel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Data.DB, DBAccess, Uni, MemDS,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrmdoc_folder_sel = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cmbFolderList: TcxLookupComboBox;
    qryFolderList: TUniQuery;
    dsFolderList: TUniDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FNmatter: integer;
  public
    { Public declarations }
    property Matter: integer read FNmatter write FNmatter;
  end;

var
  frmdoc_folder_sel: Tfrmdoc_folder_sel;

implementation

{$R *.dfm}

uses
   axiomdata;

procedure Tfrmdoc_folder_sel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryFolderList.Close;
end;

procedure Tfrmdoc_folder_sel.FormShow(Sender: TObject);
begin
   qryFolderList.Close;
   qryFolderList.ParamByName('nmatter').AsInteger := Matter;
   qryFolderList.Open;
end;

end.
