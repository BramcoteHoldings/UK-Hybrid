unit TemplateSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, cxCalendar,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList;

type
  TFrmSelectTemplate = class(TForm)
    GrdTemplatesDBTableView1: TcxGridDBTableView;
    GrdTemplatesLevel1: TcxGridLevel;
    GrdTemplates: TcxGrid;
    GrdTemplatesName: TcxGridDBColumn;
    GrdTemplatesDescription: TcxGridDBColumn;
    GrdTemplatesLastModified: TcxGridDBColumn;
    GrdTemplatesLastModifiedBy: TcxGridDBColumn;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dsTemplateData: TUniDataSource;
    GrdTemplatesAmount: TcxGridDBColumn;
    procedure ActOKExecute(Sender: TObject);
    procedure GrdTemplatesDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure SetupData;
  protected
    FTemplateName: String;
    FTemplateDataSet: TUniQuery;
  public
    { Public declarations }
    class function SelectChequeTemplate(ADataSet: TUniQuery): Boolean;
  end;

var
  FrmSelectTemplate: TFrmSelectTemplate;

implementation

{$R *.dfm}

uses AxiomData;

{ TFrmSelectTemplate }

{
   The primary responsibility of this form is to take a template Dataset
   (ie. Cheque, Fee, etc.) and save it with an appropriate name or delete it
   as needed.
}

procedure TFrmSelectTemplate.ActOKExecute(Sender: TObject);
begin
   ModalResult := mrOk;
end;

procedure TFrmSelectTemplate.GrdTemplatesDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   ModalResult := mrok;
end;

procedure TFrmSelectTemplate.SetupData;
begin
   dsTemplateData.DataSet := FTemplateDataSet;
end;

class function TFrmSelectTemplate.SelectChequeTemplate(ADataSet: TUniQuery): Boolean;
var
   ClickResult: TModalResult;
begin
   FrmSelectTemplate := TFrmSelectTemplate.Create(nil);
   try
      FrmSelectTemplate.FTemplateDataSet := ADataSet;
      FrmSelectTemplate.SetupData;
      ClickResult := FrmSelectTemplate.ShowModal;

      Result := ClickResult = mrOk;
   finally
      FrmSelectTemplate.Release;
   end;

end;

end.
