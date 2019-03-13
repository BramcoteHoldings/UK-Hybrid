unit SetFeeBasis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxLabel, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, MemDS, DBAccess,
  OracleUniProvider, Uni, cxGraphics, cxLookAndFeels, Menus;

type
  TfrmSetFeeBasis = class(TForm)
    Label14: TLabel;
    cbFeeBasis: TcxLookupComboBox;
    Label1: TLabel;
    lblMatterDesc: TcxLabel;
    lblClient: TcxLabel;
    Label2: TLabel;
    lblMatter: TcxLabel;
    lblDate: TcxLabel;
    btnCancel: TcxButton;
    btnOk: TcxButton;
    qryBillType: TUniQuery;
    qryFeeBasisList: TUniQuery;
    dsFeeBasisList: TUniDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetFeeBasis: TfrmSetFeeBasis;

implementation

uses
   MiscFunc, AxiomData;

{$R *.dfm}

procedure TfrmSetFeeBasis.FormShow(Sender: TObject);
begin
   lblMatterDesc.Caption := MatterString(lblMatter.Caption, 'SHORTDESCR');
   lblClient.Caption := MatterString(lblMatter.Caption, 'TITLE');
end;

procedure TfrmSetFeeBasis.FormCreate(Sender: TObject);
begin
   qryFeeBasisList.Open;
end;

procedure TfrmSetFeeBasis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryFeeBasisList.Close;
end;

end.
