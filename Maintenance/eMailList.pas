unit eMailList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid;

type
  TfrmEmailList = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdEmailListLevel1: TcxGridLevel;
    grdEmailList: TcxGrid;
    tvEmailList: TcxGridTableView;
    tvEmailListNAME: TcxGridColumn;
    tvEmailListEMAIL: TcxGridColumn;
    tvEmailListTYPE: TcxGridColumn;
    procedure BitBtn2Click(Sender: TObject);
    procedure tvEmailListDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmailList: TfrmEmailList;

implementation

{$R *.dfm}

procedure TfrmEmailList.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmailList.tvEmailListDblClick(Sender: TObject);
begin
   BitBtn1.Click;
end;

end.
