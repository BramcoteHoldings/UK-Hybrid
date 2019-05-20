unit MaintAncestor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DbCtrls, ComCtrls, ImgList, ToolWin, ExtCtrls,
  Menus, OracleUniProvider, Uni, MemDS, AxiomData, DBAccess, dxBarDBNav, dxBar,
  ppCache, ppClass, ppBands, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls,
  ppPrnabl, ppVar, ppProd, ppReport, ppParameter, cxClasses, ppDesignLayer,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, System.ImageList;

type
  TfrmMaint = class(TForm)
    dsSource: TUniDataSource;
    ilstToolbar: TImageList;
    qrySource: TUniQuery;
    bmMain: TdxBarManager;
    mnuFileDelete: TdxBarButton;
    mnuFilePrint: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuFile: TdxBarSubItem;
    mnuSearchFirst: TdxBarButton;
    mnuSearchPrior: TdxBarButton;
    mnuSearchNext: TdxBarButton;
    mnuSearchLast: TdxBarButton;
    mnuSearch: TdxBarSubItem;
    mnuHelpHelp: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev3: TdxBarDBNavButton;
    dxBarDBNavNext3: TdxBarDBNavButton;
    dxBarDBNavLast3: TdxBarDBNavButton;
    dxBarDBNavInsert4: TdxBarDBNavButton;
    dxBarDBNavDelete3: TdxBarDBNavButton;
    dxBarDBNavPost3: TdxBarDBNavButton;
    dxBarDBNavCancel3: TdxBarDBNavButton;
    rpMaintReport: TppReport;
    ppMaintHeaderBand: TppHeaderBand;
    ppMaintDetailBand: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    pplblEntity: TppLabel;
    pplblTitle: TppLabel;
    plSource: TppDBPipeline;
    ppLine1: TppLine;
    ppMaintSummaryBand: TppSummaryBand;
    ppLine2: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPriorClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qrySourceAfterPost(DataSet: TDataSet);
    procedure mnuFilePrintClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure qrySourceAfterEdit(DataSet: TDataSet);
    procedure qrySourceAfterCancel(DataSet: TDataSet);
    procedure dxBarDBNavInsert3Click(Sender: TObject);
    procedure dxBarDBNavDelete2Click(Sender: TObject);
    procedure dxBarDBNavPost3Click(Sender: TObject);
    function validateData(var sError : String): boolean; virtual;
    procedure dxBarDBNavFirst1Click(Sender: TObject);
    procedure dxBarDBNavPrev3Click(Sender: TObject);
    procedure dxBarDBNavNext3Click(Sender: TObject);
    procedure dxBarDBNavLast3Click(Sender: TObject);
    procedure rpMaintReportBeforePrint(Sender: TObject);
  private
    FPrimaryField : string;
    procedure SetToolbuttons;
  public
    property PrimaryField : string read FPrimaryField write FPrimaryField;
    function locateByKey(vKey : Variant) : boolean ;
  end;

var
  frmMaint: TfrmMaint;

implementation

{$R *.DFM}

uses
  MiscFunc;

procedure TfrmMaint.tbtnNewClick(Sender: TObject);
var
  iCtr : integer;
begin
  qrySource.Insert;
  // Release all the Memos
  for iCtr := 0 to Self.ControlCount - 1 do
    if Self.Controls[iCtr] is TDBEdit then
      if (Self.Controls[iCtr] as TDBEdit).TabOrder = 0 then
        (Self.Controls[iCtr] as TDBEdit).SetFocus;
end;

procedure TfrmMaint.tbtnFirstClick(Sender: TObject);
begin
  qrySource.First;
end;

procedure TfrmMaint.tbtnPriorClick(Sender: TObject);
begin
  qrySource.Prior;
end;

procedure TfrmMaint.tbtnNextClick(Sender: TObject);
begin
  qrySource.Next;
end;

procedure TfrmMaint.tbtnLastClick(Sender: TObject);
begin
  qrySource.Last;
end;

procedure TfrmMaint.SetToolbuttons;
begin
 { if qrySource.IsEmpty then
    tbtnDelete.Enabled := False
  else
    tbtnDelete.Enabled := True;
  if qrySource.BOF then
  begin
    tbtnFirst.Enabled := False;
    tbtnPrior.Enabled := False;
  end
  else
  begin
    tbtnFirst.Enabled := True;
    tbtnPrior.Enabled := True;
  end;
  if qrySource.EOF then
  begin
    tbtnLast.Enabled := False;
    tbtnNext.Enabled := False;
  end
  else
  begin
    tbtnLast.Enabled := True;
    tbtnNext.Enabled := True;
  end;    }
end;

procedure TfrmMaint.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  mrResult : Word;
begin
  if qrySource.Modified then
  begin
    mrResult := MessageDlg('Do you want to save your changes?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
    case mrResult of
      mrYes : qrySource.Post;
      mrCancel : CanClose := False;
    end;
  end;
end;

procedure TfrmMaint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrySource.Close;
//  Action := caFree;
   RemoveFromDesktop(Self);
end;

procedure TfrmMaint.FormCreate(Sender: TObject);
begin
   pplblEntity.Caption := CN_PROGRAM_NAME + ' Software ';
   PrimaryField := 'CODE';
//   qrySource.AfterScroll := nil;
   if not qrySource.Active then
      qrySource.Open;
//   qrySource.AfterScroll := qrySourceAfterScroll;
end;

procedure TfrmMaint.qrySourceAfterPost(DataSet: TDataSet);
var
  sCode : string;
begin
  try
    sCode := qrySource.FieldByName(PrimaryField).AsString;
//    qrySource.DisableControls;
    qrySource.Close;
    qrySource.Open;
    if not qrySource.Locate(PrimaryField, sCode, []) then
      qrySource.First;
  finally
//    qrySource.EnableControls;
//    ToggleEditButtons(Self, ebaDisableCancelPost);
  end;
end;

procedure TfrmMaint.mnuFilePrintClick(Sender: TObject);
var
  ReportBookmark: TBookmark;
begin
  ReportBookmark := qrySource.GetBookmark;
  rpMaintReport.Print;
//  qrMaintReport.PreviewModal;
  qrySource.GotoBookmark(ReportBookmark);
  qrySource.FreeBookmark(ReportBookmark);
end;

procedure TfrmMaint.mnuFileExitClick(Sender: TObject);
begin
  Self.Close;  
end;


procedure TfrmMaint.qrySourceAfterEdit(DataSet: TDataSet);
begin
//  ToggleEditButtons(Self, ebaEnableCancelPost);
end;

procedure TfrmMaint.qrySourceAfterCancel(DataSet: TDataSet);
begin
//  ToggleEditButtons(Self, ebaDisableCancelPost);
end;

procedure TfrmMaint.dxBarDBNavInsert3Click(Sender: TObject);
var
  iCtr : integer;
begin
  qrySource.Insert;
  // Release all the Memos
  for iCtr := 0 to Self.ControlCount - 1 do
    if Self.Controls[iCtr] is TDBEdit then
      if (Self.Controls[iCtr] as TDBEdit).TabOrder = 0 then
        (Self.Controls[iCtr] as TDBEdit).SetFocus;
end;

procedure TfrmMaint.dxBarDBNavDelete2Click(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this entry: "' + qrySource.FieldByName(PrimaryField).AsString + '"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    qrySource.Delete;
    PlaySound('Delete');
  end;
end;

{override this in child classes to validate data}
function TfrmMaint.validateData(var sError : String): boolean;
begin
        validateData := true;
end;

procedure TfrmMaint.dxBarDBNavPost3Click(Sender: TObject);
var sError : String;
begin

if validateData(sError) then
begin
        qrySource.Post;
end
else
        MsgErr(sError);

end;

procedure TfrmMaint.dxBarDBNavFirst1Click(Sender: TObject);
var sError : String;
begin

if validateData(sError) then
begin
        qrySource.First;
end
else
        MsgErr(sError);

end;


procedure TfrmMaint.dxBarDBNavPrev3Click(Sender: TObject);
var sError : String;
begin

if validateData(sError) then
begin
        qrySource.Prior;
end
else
        MsgErr(sError);

end;

procedure TfrmMaint.dxBarDBNavNext3Click(Sender: TObject);
var
   sError : String;
begin
   if validateData(sError) then
   begin
        qrySource.Next;
   end
   else
        MsgErr(sError);
end;

procedure TfrmMaint.dxBarDBNavLast3Click(Sender: TObject);
var
   sError : String;
begin
   if validateData(sError) then
   begin
        qrySource.Last;
   end
   else
        MsgErr(sError);
end;

function TfrmMaint.locateByKey(vKey : Variant) : boolean ;
begin
    locateByKey := qrySource.Locate(PrimaryField, vKey, []);
end;


procedure TfrmMaint.rpMaintReportBeforePrint(Sender: TObject);
begin
   pplblEntity.Caption := dmAxiom.EntityName;
   pplblTitle.Caption := Self.Caption;
end;

end.
