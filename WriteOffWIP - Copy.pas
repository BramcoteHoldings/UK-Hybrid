unit WriteOffWIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, dxBar, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxButtonEdit,
  DBAccess, Uni, MemDS, cxCheckBox;

type
  TfrmWIPWriteOff = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnedMatter: TcxButtonEdit;
    Label1: TLabel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    qryFees: TUniQuery;
    UniDataSource1: TUniDataSource;
    cxGrid1DBTableView1NFEE: TcxGridDBColumn;
    cxGrid1DBTableView1CREATED: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1MINS: TcxGridDBColumn;
    cxGrid1DBTableView1AUTHOR: TcxGridDBColumn;
    cxGrid1DBTableView1NMATTER: TcxGridDBColumn;
    cxGrid1DBTableView1UNITS: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1TASK_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1ITEMS: TcxGridDBColumn;
    cxGrid1DBTableView1VALUE: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_UNIT: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnedMatterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    lNMatter: integer;
    procedure PopulateGrid(ANMatter: integer);
  public
    { Public declarations }
  end;

var
  frmWIPWriteOff: TfrmWIPWriteOff;

implementation

{$R *.dfm}

uses
  axiomdata, msearch, citfunc, miscfunc;

procedure TfrmWIPWriteOff.btnedMatterPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if btnedMatter.Text <> '' then
   begin
      DisplayValue := PadFileID(DisplayValue);
      lNMatter := StrToInt(Matterstring(string(DisplayValue),'NMATTER'));
      PopulateGrid(LNMAtter);
   end;
end;

procedure TfrmWIPWriteOff.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
      btnedMatter.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      lNMatter := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;
      PopulateGrid(LNMAtter);
   end;
end;

procedure TfrmWIPWriteOff.PopulateGrid(ANMatter: integer);
begin
    with qryFees do
    begin
       Close;
       ParamByName('nmatter').AsInteger := ANMatter;
       Open;
    end;
end;

end.
