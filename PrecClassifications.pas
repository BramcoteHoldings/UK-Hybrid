unit PrecClassifications;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MaintAncestorNoRep, dxBarDBNav, dxBar, DB, MemDS, DBAccess, ImgList,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, Uni, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxColorEdit, dxDBColorEdit;

type
  TfrmPrecClassifications = class(TfrmMaintNoRep)
    Label1: TLabel;
    Label2: TLabel;
    imPrecCategory: TImage;
    btnImageMan: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1IMAGEINDEX: TcxGridDBColumn;
    edDesription: TDBEdit;
    cxGrid1DBTableView1ROW_COLOUR: TcxGridDBColumn;
    Label3: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    qryImage: TUniQuery;
    procedure btnImageManClick(Sender: TObject);
    procedure dxBarDBNavInsert1Click(Sender: TObject);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryImageAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure RefreshImage;
  public
    { Public declarations }
  end;

var
  frmPrecClassifications: TfrmPrecClassifications;

implementation

uses AxiomData, System.zLib, FileCtrl, ImageManager;

{$R *.dfm}

procedure TfrmPrecClassifications.RefreshImage;
var
  TempFileName: string;
  fsTempFile: TFileStream;
  dsImage: TzDecompressionStream;
  msCompressedImage: TMemoryStream;
begin
  if not qryImage.IsEmpty then
  begin
    TempFileName := dmAxiom.SysInfoPath+'$Axiom\~image.bmp';

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

procedure TfrmPrecClassifications.btnImageManClick(Sender: TObject);
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

procedure TfrmPrecClassifications.dxBarDBNavInsert1Click(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('IMAGEINDEX').AsInteger := 0;
end;

procedure TfrmPrecClassifications.qrySourceAfterInsert(DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('NPRECCLASSIFICATION').AsInteger := StrToInt(dmAxiom.GetSeqNumber('SEQ_PRECCLASSIFICATION'));
end;

procedure TfrmPrecClassifications.qrySourceAfterScroll(DataSet: TDataSet);
begin
   inherited;
   RefreshImage;
end;

procedure TfrmPrecClassifications.FormShow(Sender: TObject);
begin
  inherited;
   qryImage.Open;
end;

procedure TfrmPrecClassifications.qryImageAfterScroll(DataSet: TDataSet);
begin
  inherited;
   RefreshImage;
end;

procedure TfrmPrecClassifications.FormCreate(Sender: TObject);
begin
  inherited;
   PrimaryField := 'NPRECCLASSIFICATION';
end;

end.
