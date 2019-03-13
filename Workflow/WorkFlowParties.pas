unit WorkFlowParties;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ImgList, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, ExtCtrls, cxLookAndFeels, cxNavigator;

type
  TfrmWorkFlowParties = class(TForm)
    tvParties: TcxGridDBTableView;
    grdPartiesLevel1: TcxGridLevel;
    grdParties: TcxGrid;
    tvPartiesNNAME: TcxGridDBColumn;
    tvPartiesCATEGORY: TcxGridDBColumn;
    tvPartiesSEARCH: TcxGridDBColumn;
    ImageList: TImageList;
    Panel1: TPanel;
    cxButton1: TcxButton;
    procedure btnContinueClick(Sender: TObject);
    procedure tvPartiesCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);

  private
    { Private declarations }
    FNMatter: Integer;
    FSPartyType: string;
  public
    { Public declarations }
    property NMatter:             Integer    read FNMatter             write FNMatter;
    property SPartyType:          string     read FSPartyType          write FSPartyType;
    procedure PopulatePartyGrid;
  end;

var
  frmWorkFlowParties: TfrmWorkFlowParties;

implementation

uses
    WorkFlowDataModuleMerge, MiscFunc, AxiomData;

{$R *.dfm}

procedure TfrmWorkFlowParties.btnContinueClick(Sender: TObject);
begin
//   ModalResult := mrOk;
end;

procedure TfrmWorkFlowParties.PopulatePartyGrid;
begin
   try
      dmWorkFlowDataModuleMerge.qTaskParty.Close();
      dmWorkFlowDataModuleMerge.qTaskParty.ParamByName('nmatter').AsInteger := NMatter;
      dmWorkFlowDataModuleMerge.qTaskParty.ParamByName('partytype').AsString := SPartyType;
      dmWorkFlowDataModuleMerge.qTaskParty.Open();
   except
      //
   end;
end;


procedure TfrmWorkFlowParties.tvPartiesCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
   AViewInfo.Text := StringReplace(AViewInfo.Text, 'Relevant Parties : ', '  ', [rfIgnoreCase]);
end;

end.
