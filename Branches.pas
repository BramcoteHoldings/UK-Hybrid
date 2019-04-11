unit Branches;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, MemDS, OracleUniProvider, Uni, DBAccess, ImgList, Menus,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, Buttons, Mask, DBCtrls,
  dxBarDBNav, dxBar, ppCtrls, ppPrnabl, ppClass, ppVar, ppDB,
  ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, cxLabel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, ppParameter, cxClasses,
  ppDesignLayer, cxImage, cxDBEdit, dxLayoutContainer, dxLayoutcxEditAdapters,
  cxButtonEdit, dxLayoutControl, System.ImageList;

type
  TfrmBranches = class(TfrmMaint)
    dbedDescr: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    edLedgerComponent: TDBEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    qryBanks: TUniQuery;
    dsBanks: TUniDataSource;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    cxDBImage1: TcxDBImage;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dlFile: TOpenDialog;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dbedCode: TcxDBButtonEdit;
    dxLayoutItem21: TdxLayoutItem;
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure btnCodeSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function validateData(var sError : String): boolean; override;
    procedure rpMaintReportBeforePrint(Sender: TObject);
    procedure qrySourceBeforePost(DataSet: TDataSet);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    sSetEntity : String;
    iGlComponentLength : integer;
  public
    { Public declarations }
    procedure set_entity(sEntity : String);
  end;

var
  frmBranches: TfrmBranches;

implementation

uses
  GenericSearch, AxiomData, miscfunc;

{$R *.DFM}

procedure TfrmBranches.set_entity(sEntity : String);
begin
    sSetEntity := sEntity;
end;

procedure TfrmBranches.qrySourceAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('ENTITY').AsString := sSetEntity;
  inherited;
end;

procedure TfrmBranches.qrySourceBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ENTITY').AsString := sSetEntity;
end;

procedure TfrmBranches.btnCodeSearchClick(Sender: TObject);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM BRANCH WHERE ENTITY = ''' + sSetEntity + ''' ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end;



procedure TfrmBranches.FormShow(Sender: TObject);
begin
   inherited;
   if sSetEntity = '' then
      sSetEntity := dmAxiom.Entity;

   qryBanks.Close;
   qryBanks.ParamByName('entity').AsString := sSetEntity;
   qryBanks.Open;
   qrySource.ParamByName('Entity').AsString := sSetEntity;
   qrySource.Close;
   qrySource.Open;
end;

procedure TfrmBranches.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   frmGenericSearch : TfrmGenericSearch;
begin
   frmGenericSearch := TfrmGenericSearch.Create(Self);
   with frmGenericSearch do
   begin
      SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM BRANCH WHERE ENTITY = ''' + sSetEntity + ''' ORDER BY CODE';
      if ShowModal = mrOK then
         Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
      Release;
   end;
end;

procedure TfrmBranches.dxBarButton1Click(Sender: TObject);
var
   sFileName: string;
   iPos: integer;
   bStream, fStream: TStream;
begin
   inherited;
  dlFile.Filter := 'JPG|*.jpg';
  if not dlFile.Execute then
    exit;

  sFileName := dlFile.FileName;

  if qrySource.State in [dsBrowse] then
    qrySource.edit;

  bStream := qrySource.CreateBlobStream(qrySource.fieldByname('LOGO_IMAGE'), bmReadWrite);
  fStream := TFileStream.Create(sFileName, fmOpenRead);
  bStream.CopyFrom(fStream, fStream.Size);
  bStream.free;
  fStream.free;
end;

procedure TfrmBranches.dxBarButton2Click(Sender: TObject);
var
   iPos: integer;
   bStream, fStream: TStream;
begin
  if qrySource.State in [dsBrowse] then
    qrySource.edit;

  qrySource.fieldByname('LOGO_IMAGE').Clear;
end;

procedure TfrmBranches.dxBarButton3Click(Sender: TObject);
var
   sFileName: string;
   iPos: integer;
   bStream, fStream: TStream;
begin
  dlFile.Filter := 'JPG|*.jpg';
  if not dlFile.Execute then
    exit;

  sFileName := dlFile.FileName;

  if qrySource.State in [dsBrowse] then
    qrySource.edit;

  bStream := qrySource.CreateBlobStream(qrySource.fieldByname('LOGO_IMAGE'), bmReadWrite);
  fStream := TFileStream.Create(sFileName, fmOpenRead);
  bStream.CopyFrom(fStream, fStream.Size);
  bStream.free;
  fStream.free;
end;

procedure TfrmBranches.FormCreate(Sender: TObject);
begin
   inherited;

   // get the lenght of thr gl_component field
   iGlComponentLength := dmAxiom.getGlComponents.getComponentLength('BRANCH');
   if iGlComponentLength = 0 then
      edLedgerComponent.Enabled := false
   else
      edLedgerComponent.MaxLength := iGlComponentLength;

end;

function TfrmBranches.validateData(var sError : String): boolean;
begin
   validateData := true;
   if (iGlComponentLength > 0) and (iGlComponentLength <> length(edLedgerComponent.Text))then
   begin
      validateData := false;
      sError := 'Error Ledger Component must be ' + intToStr(iGlComponentLength) + ' characters long';
   end;
end;

procedure TfrmBranches.rpMaintReportBeforePrint(Sender: TObject);
begin
  inherited;
   pplblTitle.Caption := 'Branches';
end;

end.
