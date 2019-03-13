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
  ppDesignLayer, cxImage, cxDBEdit;

type
  TfrmBranches = class(TfrmMaint)
    Label1: TLabel;
    Label2: TLabel;
    dbedCode: TDBEdit;
    dbedDescr: TDBEdit;
    btnCodeSearch: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblState: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    edLedgerComponent: TDBEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    qryBanks: TUniQuery;
    dsBanks: TUniDataSource;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    lblMailingState: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    cxDBImage1: TcxDBImage;
    cxLabel1: TcxLabel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dlFile: TOpenDialog;
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

   if SystemString('LOCALE_NAME') <> '' then
   begin
      lblMailingState.Caption := 'Mailing County';
      lblState.Caption := 'County';
   end;
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
