unit SettingsMaint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxContainer, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, OracleUniProvider, Uni,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxBar, ExtCtrls,
  cxBlobEdit, MemDS, cxNavigator;

type
  TfrmEmpSettingsMaint = class(TForm)
    Panel1: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrySettings: TUniQuery;
    dsSettings: TUniDataSource;
    cxGrid1DBTableView1EMP: TcxGridDBColumn;
    cxGrid1DBTableView1OWNER: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM: TcxGridDBColumn;
    cxGrid1DBTableView1VALUE: TcxGridDBColumn;
    cxGrid1DBTableView1INTVALUE: TcxGridDBColumn;
    cxGrid1DBTableView1OPTIONS: TcxGridDBColumn;
    cxGrid1DBTableView1ROWID: TcxGridDBColumn;
    cmbEmployee: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbEmployeePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpSettingsMaint: TfrmEmpSettingsMaint;

implementation

uses
  AxiomData, miscfunc;

{$R *.dfm}

procedure TfrmEmpSettingsMaint.cmbEmployeePropertiesCloseUp(Sender: TObject);
begin
   try
      if cmbEmployee.Text <> '' then
      begin
         with qrySettings do
         begin
            Close;
            ParamByName('emp').AsString := cmbEmployee.EditValue;
            Open;
         end;
      end;
   except
     //
   end;
end;

procedure TfrmEmpSettingsMaint.dxBarButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmEmpSettingsMaint.FormCreate(Sender: TObject);
begin
   qryEmployee.Open;
end;

procedure TfrmEmpSettingsMaint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   try
      qryEmployee.Close;
      qrySettings.Close;
   finally
      RemoveFromDesktop(Self);
   end;
end;

end.
