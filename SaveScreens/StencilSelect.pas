unit StencilSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxPropertiesStore,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, cxCalendar,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList, ScreenSave;

type
  TScreenSaveID = Integer;

  TFrmSelectStencil = class(TForm)
    GrdStencilsDBTableView1: TcxGridDBTableView;
    GrdStencilsLevel1: TcxGridLevel;
    GrdStencils: TcxGrid;
    GrdTemplatesDescription: TcxGridDBColumn;
    GrdTemplatesLastModified: TcxGridDBColumn;
    GrdTemplatesLastModifiedBy: TcxGridDBColumn;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dsStencilData: TUniDataSource;
    GrdTemplatesAmount: TcxGridDBColumn;
    procedure ActOKExecute(Sender: TObject);
    procedure GrdStencilsDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure SetupData;
  protected
    FStencilName: String;
    FGroupName: String;
    FStencilDataSet: TUniQuery;
    FScreenSave: TScreenStencil;
  public
    { Public declarations }
    class function SelectStencil(APropertiesStore: TcxPropertiesStore;
      AChildDataFieldNames: array of string; AChildData: TDataSet): TScreenSaveID;
    class function SaveStencil(APropertiesStore: TcxPropertiesStore;
      ATotal: Currency;
      ADescription: String;
      AChildData: TDataSet;
      ACurrentStencilID: TScreenSaveID): TScreenSaveID;
    class function DeleteStencil(AStencilID: TScreenSaveID): Boolean;
    constructor Create(AOwner: TComponent); override;
    destructor destroy; override;
  end;

var
  FrmSelectStencil: TFrmSelectStencil;

implementation

{$R *.dfm}

uses AxiomData;

{ TFrmSelectTemplate }

{
   The primary responsibility of this form is to take a template Dataset
   (ie. Cheque, Fee, etc.) and save it with an appropriate name or delete it
   as needed.
}

procedure TFrmSelectStencil.ActOKExecute(Sender: TObject);
begin
   ModalResult := mrOk;
end;

constructor TFrmSelectStencil.Create(AOwner: TComponent);
begin
  inherited;
  FScreenSave := TScreenStencil.Create;
end;

class function TFrmSelectStencil.DeleteStencil(
  AStencilID: TScreenSaveID): Boolean;
var
  ScreenSave: TScreenStencil;
begin
  if FrmSelectStencil.FStencilDataSet = nil then
    exit;
  if FrmSelectStencil.FStencilDataSet.Locate('NSaved_screen', VarArrayOf([AStencilID]), []) then
  begin
    dmAxiom.uniInsight.StartTransaction;
    FrmSelectStencil.FStencilDataSet.Delete;
    dmAxiom.uniInsight.Commit;
  end;

end;

destructor TFrmSelectStencil.destroy;
begin
  FScreenSave.Free;
  inherited;
end;

procedure TFrmSelectStencil.GrdStencilsDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   ModalResult := mrok;
end;

procedure TFrmSelectStencil.SetupData;
begin
  FStencilDataSet := TUniQuery.Create(nil);
  FStencilDataSet.Connection := dmAxiom.uniInsight;
  FStencilDataSet.SQL.Text := 'Select s.* from SAVED_SCREEN s';

  FStencilDataSet.Filter := 'Group_Name = ' + QuotedStr(trim(FGroupName));
  FStencilDataSet.Filtered := true;
  FStencilDataSet.Open;
  dsStencilData.DataSet := FStencilDataSet;
end;

class function TFrmSelectStencil.SaveStencil(
  APropertiesStore: TcxPropertiesStore;
  ATotal: Currency;
  ADescription: String;
  AChildData: TDataSet;
  ACurrentStencilID: TScreenSaveID): TScreenSaveID;
var
  ScreenSave: TScreenStencil;
begin
  ScreenSave := TScreenStencil.Create;
  try
    Result := ScreenSave.SaveScreen(APropertiesStore, ATotal, ADescription, AChildData, ACurrentStencilID);
  finally
    ScreenSave.Free;
  end;
end;

class function TFrmSelectStencil.SelectStencil(APropertiesStore: TcxPropertiesStore;
  AChildDataFieldNames: array of string; AChildData: TDataSet): TScreenSaveID;
begin
  FrmSelectStencil := TFrmSelectStencil.Create(nil);
  FrmSelectStencil.FGroupName := APropertiesStore.StorageName;
  try
    FrmSelectStencil.SetupData;

    if FrmSelectStencil.FStencilDataSet.RecordCount = 1 then
    begin
      FrmSelectStencil.FScreenSave.LoadScreen(APropertiesStore, AChildDataFieldNames,
        AChildData, FrmSelectStencil.FStencilDataSet.FieldByName('NSaved_Screen').AsInteger);
    end
    else if FrmSelectStencil.ShowModal = mrOk then
        FrmSelectStencil.FScreenSave.LoadScreen(APropertiesStore, AChildDataFieldNames,
          AChildData, FrmSelectStencil.FStencilDataSet.FieldByName('NSaved_Screen').AsInteger);
    // Pass back the StencilID, will be unique. Up to caller to manage it.
    Result := FrmSelectStencil.FStencilDataSet.FieldByName('NSaved_Screen').AsInteger;
  finally
    FrmSelectStencil.Release;
  end;

end;

end.
