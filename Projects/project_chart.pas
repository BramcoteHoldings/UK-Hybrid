unit project_chart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxorgcedadv, dxorgchr, dxdborgc, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmProjectChart = class(TForm)
    dsProjectScaleLinks: TUniDataSource;
    qryProjectScaleLinks: TUniQuery;
    dxDbOrgChart1: TdxDbOrgChart;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDbOrgChart1CreateNode(Sender: TObject; Node: TdxOcNode);
  private
    { Private declarations }
    function GetShape(const AShapeName: String): TdxOcShape;
    function GetNodeAlign(const AAlignName: string): TdxOcNodeAlign;
    function GetImageAlign(const AAlignName: string): TdxOcImageAlign;

  public
    { Public declarations }
    procedure Display_chart(ATemplateID: integer);
  end;

var
  frmProjectChart: TfrmProjectChart;

implementation

{$R *.dfm}

uses
   axiomdata;

type
  TdxCustomOrgChartAccess = class(TdxCustomOrgChart);

procedure TfrmProjectChart.Display_chart(ATemplateID: integer);
begin
   qryProjectScaleLinks.Close;
   qryProjectScaleLinks.ParamByName('p_val').AsInteger := ATemplateID;
   qryProjectScaleLinks.Open;
   TdxCustomOrgChartAccess(dxDbOrgChart1).FullExpand;
end;

procedure TfrmProjectChart.dxDbOrgChart1CreateNode(Sender: TObject;
  Node: TdxOcNode);
begin
   with Node, qryProjectScaleLinks do
   begin
      Shape := GetShape(FindField('type').AsString);
      Color := FindField('colour').AsInteger;
   end;
end;

procedure TfrmProjectChart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryProjectScaleLinks.Close;
end;

function TfrmProjectChart.GetShape(const AShapeName: String): TdxOcShape;
const
  ShapeMap: array[TdxOcShape] of string = ('Rectangle', 'Round Rect', 'Ellipse', 'Diamond');
var
   AIndex: TdxOcShape;
begin
   Result := Low(TdxOcShape);
   for AIndex := Low(TdxOcShape) to High(TdxOcShape) do
      if SameText(ShapeMap[AIndex], AShapeName) then
      begin
         Result := AIndex;
         Break;
      end;
end;

function TfrmProjectChart.GetNodeAlign(const AAlignName: string): TdxOcNodeAlign;
const
   AlignMap: array[TdxOcNodeAlign] of string = ('Left', 'Center', 'Right');
var
   AIndex: TdxOcNodeAlign;
begin
   Result := Low(TdxOcNodeAlign);
   for AIndex := Low(TdxOcNodeAlign) to High(TdxOcNodeAlign) do
      if SameText(AlignMap[AIndex], AAlignName) then
      begin
         Result := AIndex;
         Break;
      end;
end;

function TfrmProjectChart.GetImageAlign(const AAlignName: string): TdxOcImageAlign;
const
  AlignMap: array[TdxOcImageAlign] of string = (
   'None',
   'Left-Top', 'Left-Center', 'Left-Bottom',
   'Right-Top', 'Right-Center', 'Right-Bottom',
   'Top-Left', 'Top-Center', 'Top-Right',
   'Bottom-Left', 'Bottom-Center', 'Bottom-Right');
var
   AIndex: TdxOcImageAlign;
begin
   Result := Low(TdxOcImageAlign);
   for AIndex := Low(TdxOcImageAlign) to High(TdxOcImageAlign) do
      if SameText(AlignMap[AIndex], AAlignName) then
      begin
         Result := AIndex;
         Break;
      end;
end;

end.
