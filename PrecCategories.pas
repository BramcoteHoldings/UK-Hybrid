unit PrecCategories;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, OracleUniProvider, Uni, DBAccess, MemDS, ImgList, Menus,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, Buttons, Mask, DBCtrls,
  ExtDlgs, dxBarDBNav, dxBar, ppDB, ppDBPipe, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, cxClasses, ppDesignLayer, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxColorEdit, dxDBColorEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid;

type
  TfrmPrecCategories = class(TfrmMaint)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    btnImageMan: TBitBtn;
    qryImage: TUniQuery;
    dsImages: TUniDataSource;
    imPrecCategory: TImage;
    pmImage: TPopupMenu;
    miEdit: TMenuItem;
    miClear: TMenuItem;
    qryImageIMAGE: TBlobField;
    ppDBText1: TppDBText;
    dxDBColorEdit1: TdxDBColorEdit;
    Label3: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NPRECCATEGORY: TcxGridDBColumn;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1IMAGEINDEX: TcxGridDBColumn;
    cxGrid1DBTableView1ROW_COLOUR: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryImageAfterScroll(DataSet: TDataSet);
    procedure btnImageManClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure miEditClick(Sender: TObject);
    procedure miClearClick(Sender: TObject);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure imPrecCategoryDblClick(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure RefreshImage;
  public
    { Public declarations }
  end;

var
  frmPrecCategories: TfrmPrecCategories;

implementation

{$R *.DFM}

{$WARN UNIT_PLATFORM OFF}

uses
  AxiomData, System.zLib, FileCtrl, ImageManager;

procedure TfrmPrecCategories.RefreshImage;
var
  TempFileName: string;
  fsTempFile: TFileStream;
  dsImage: TzDecompressionStream;
  msCompressedImage: TMemoryStream;
begin
  if not qryImage.IsEmpty then
  begin
    //TempFileName := dmAxiom.SysInfo.TempPath+'$Axiom\~image.bmp';
    TempFileName := dmAxiom.SysInfoPath+'$Axiom\~image.bmp';

{
  Modified 25.10.2002 GG
  Removed compiler warning
}
    msCompressedImage:= nil;
    dsImage:= nil;

    try
      if not DirectoryExists(ExtractFilePath(TempFileName)) then
      begin
        if not CreateDir(ExtractFilePath(TempFileName)) then
          raise Exception.Create('Cannot create '+ExtractFilePath(TempFileName));
      end;
      msCompressedImage := TMemoryStream.Create;
      TBlobField(qryImage.FieldByName('IMAGE')).SaveToStream(msCompressedImage);
      dsImage := TzDecompressionStream.Create(msCompressedImage, 32768);

{
  Modified 25.10.2002 GG
  Removed compiler warning
}
      fsTempFile:= nil;
      try
        fsTempFile := TFileStream.Create(TempFileName, fmCreate or fmShareDenyWrite);
        fsTempFile.CopyFrom(dsImage, 0);
      finally
        fsTempFile.Free;
      end;
      imPrecCategory.Picture.LoadFromFile(TempFileName);
    finally
      dsImage.Free;
      msCompressedImage.Free;
      DeleteFile(TempFileName);
    end;
  end
  else
    dmAxiom.ilPrecCategory.GetBitmap(0, imPrecCategory.Picture.Bitmap);
end;


procedure TfrmPrecCategories.FormCreate(Sender: TObject);
begin
  inherited;
  PrimaryField := 'DESCR';
end;

procedure TfrmPrecCategories.FormShow(Sender: TObject);
begin
  inherited;
  qryImage.Open;
end;

procedure TfrmPrecCategories.qryImageAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshImage;
end;

procedure TfrmPrecCategories.btnImageManClick(Sender: TObject);
begin
  inherited;
  with TfrmImageManager.Create(Self) do
  begin
    ShowModal;
    if (SelectedImage <> 0) and (lvImages.Selected <> nil) then
    begin
      with qrySource do
      begin
        Edit;
        FieldByName('IMAGEINDEX').AsInteger := SelectedImage;
        Post;
        qryImage.Close;
        qryImage.Open;
      end;
    end;
  end;
end;

procedure TfrmPrecCategories.tbtnNewClick(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('IMAGEINDEX').AsInteger := 0;
end;

procedure TfrmPrecCategories.miEditClick(Sender: TObject);
begin
  inherited;
  btnImageMan.Click;
end;

procedure TfrmPrecCategories.miClearClick(Sender: TObject);
begin
  inherited;
  if not qrySource.Modified then
  begin
    qrySource.Edit;
    qrySource.FieldByName('IMAGEINDEX').AsInteger := 0;
    qrySource.Post;
  end;
end;

procedure TfrmPrecCategories.qrySourceAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('NPRECCATEGORY').AsInteger := StrToInt(dmAxiom.GetSeqNumber('PRECCATEGORY_NPRECCATEGORY'));
end;

procedure TfrmPrecCategories.qrySourceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshImage;
end;

procedure TfrmPrecCategories.imPrecCategoryDblClick(Sender: TObject);
begin
  inherited;
  btnImageMan.Click;
end;

end.

