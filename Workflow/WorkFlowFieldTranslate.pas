unit WorkFlowFieldTranslate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleUniProvider, Uni, DBAccess, MemDS, Grids, DBGrids,
  DBActns, ActnList, ActnMan, ToolWin, ActnCtrls, 
  ImgList, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, dxBar, dxBarDBNav,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, XPStyleActnCtrls, cxNavigator, System.Actions,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBLookupComboBox;

type
  TfmWorkFlowFieldTranslate = class(TForm)
    ImageList: TImageList;
    ActionManager: TActionManager;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    grdTranslate: TcxGrid;
    grdTranslateLevel1: TcxGridLevel;
    tvTranslate: TcxGridDBTableView;
    tvTranslateWORKFLOWFIELD: TcxGridDBColumn;
    tvTranslateEXTERNALFIELD: TcxGridDBColumn;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarManager1: TdxBarManager;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    tbTranslateEdit: TUniTable;
    dsTranslateEdit: TUniDataSource;
    tvTranslateDESCR: TcxGridDBColumn;
    tvTranslateSAMPLE_DATA: TcxGridDBColumn;
    tbFields: TUniTable;
    dsFields: TUniDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWorkFlowFieldTranslate: TfmWorkFlowFieldTranslate;

implementation

uses WorkFlowDataModule, WorkFlowDataModuleMerge;

{$R *.dfm}

procedure TfmWorkFlowFieldTranslate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   tbTranslateEdit.Close();
   tbFields.Close;
   Action := caFree;
   fmWorkFlowFieldTranslate := nil;
end;

procedure TfmWorkFlowFieldTranslate.FormCreate(Sender: TObject);
begin
   tbFields.Open;
end;

procedure TfmWorkFlowFieldTranslate.FormShow(Sender: TObject);
begin
   if(not Assigned(dmWorkFlowDataModule)) then
      dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
   tbTranslateEdit.Open();
end;

end.
