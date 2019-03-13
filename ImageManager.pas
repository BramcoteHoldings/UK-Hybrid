unit ImageManager;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Menus, Db, MemDS, OracleUniProvider, Uni, DBAccess, ExtDlgs;

type
  TfrmImageManager = class(TForm)
    Panel1: TPanel;
    lvImages: TListView;
    pmManageImages: TPopupMenu;
    miAddImage: TMenuItem;
    miBulkAdd: TMenuItem;
    sbImageManager: TStatusBar;
    qryImageUpdate: TUniQuery;
    openImage: TOpenPictureDialog;
    procedure FormShow(Sender: TObject);
    procedure miAddImageClick(Sender: TObject);
    procedure miBulkAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvImagesDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure LoadImages;
  public
    { Public declarations }
    SelectedImage: Integer;
  end;

var
  frmImageManager: TfrmImageManager;

implementation

{$R *.DFM}

{$WARN UNIT_PLATFORM OFF}

uses
  FileCtrl, AxiomData, System.zLib, Process;

procedure TfrmImageManager.LoadImages;
var
  i: Integer;
  ImageItem: TListItem;
begin
  lvImages.Items.BeginUpdate;
  lvImages.Items.Clear;
  for i := 1 to dmAxiom.ilPrecCategory.Count-1 do
  begin
    ImageItem := lvImages.Items.Add;
    ImageItem.Caption := 'Image '+IntToStr(i);
    ImageItem.ImageIndex := i;
  end;
  lvImages.Items.EndUpdate;
end;

procedure TfrmImageManager.FormShow(Sender: TObject);
begin
  LoadImages;

  sbImageManager.SimpleText := IntToStr(lvImages.Items.Count)+' images';
  SelectedImage := 0;

  if dmAxiom.AxiomAdminMode then
    miBulkAdd.Enabled := True
  else
    miBulkAdd.Enabled := False;
end;

procedure TfrmImageManager.miAddImageClick(Sender: TObject);
var
  TempFileName: string;
  fsTempFile: TFileStream;
  msImageFile: TMemoryStream;
  csImage: TzCompressionStream;
  bmImage: TBitmap;
begin
  inherited;
  openImage.Options := openImage.Options - [ofAllowMultiSelect];
  if openImage.Execute then
  begin
    bmImage := TBitmap.Create;
    try
      bmImage.LoadFromFile(openImage.FileName);
      if (bmImage.Height <> 32) and (bmImage.Width <> 32) then
      begin
        MessageDlg('You cannot add this image as it is the wrong size!', mtWarning, [mbOK], 0);
        Exit;
      end
      else
      (* add the image to ilPrecCategory as well *)
      dmAxiom.ilPrecCategory.Add(bmImage, nil);
    finally
      bmImage.Free;
    end;
// PJB
//    TempFileName := dmAxiom.SysInfo.TempPath+'$Axiom\~image.cmp';

{
  Modified 25.10.2002 GG
  Removed compiler warning
}
    msImageFile := nil;
    fsTempFile:= nil;
    csImage:= nil;
    
    try
      if not DirectoryExists(ExtractFilePath(TempFileName)) then
      begin
        if not CreateDir(ExtractFilePath(TempFileName)) then
          raise Exception.Create('Cannot create '+ExtractFilePath(TempFileName));
      end;
      fsTempFile := TFileStream.Create(TempFileName, fmCreate or fmShareDenyWrite);
      msImageFile := TMemoryStream.Create;
      msImageFile.LoadFromFile(openImage.FileName);
      csImage := TzCompressionStream.Create(fsTempFile {,zcDefault,0, 32768, zsDefault});
      csImage.CopyFrom(msImageFile, 0);
    finally
      csImage.Free;
      msImageFile.Free;
      fsTempFile.Free;
    end;
    try
      with qryImageUpdate do
      begin
        Open;
        Insert;
        FieldByName('OWNER').AsString := 'PRECCATEGORY';
        TBlobField(FieldByName('IMAGE')).LoadFromFile(TempFileName);
        Post;
        Close;
      end;
    finally
      DeleteFile(TempFileName);
    end;
  end;
  // do this for now ???
  LoadImages;

  sbImageManager.SimpleText := IntToStr(lvImages.Items.Count)+' images';
end;

procedure TfrmImageManager.miBulkAddClick(Sender: TObject);
var
  i: Integer;
  TempFileName: string;
  fsTempFile: TFileStream;
  msImageFile: TMemoryStream;
  csImage: TzCompressionStream;
  bmImage: TBitmap;
  frmProgress: TfrmProcess;
begin
  inherited;
  frmProgress := TfrmProcess.Create(Self);
  openImage.Options := openImage.Options + [ofAllowMultiSelect];
  if openImage.Execute then
  begin
    bmImage := TBitmap.Create;
    try
      frmProgress.Show;
      for i := 0 to openImage.Files.Count-1 do
      begin
        frmProgress.SetProgress((i/(openImage.Files.Count-1)), 'Loading '+
                                ExtractFileName(openImage.Files.Strings[i])+'...');
        bmImage.LoadFromFile(openImage.FileName);
        if (bmImage.Height <> 32) and (bmImage.Width <> 32) then
          MessageDlg('You cannot add "'+openImage.Files.Strings[i]+'" as the image is the wrong size!', mtWarning, [mbOK], 0)
        else
        begin
          //dmAxiom.ilPrecCategory.Add(bmImage, nil);
          //TempFileName := dmAxiom.SysInfo.TempPath+'$Axiom\~image.cmp';
          TempFileName := dmAxiom.SysInfoPath+'$Axiom\~image.cmp';

{
  Modified 25.10.2002 GG
  Removed compiler warning
}
          msImageFile:= nil;
          fsTempFile:= nil;
          csImage:= nil;

          try
            if not DirectoryExists(ExtractFilePath(TempFileName)) then
            begin
              if not CreateDir(ExtractFilePath(TempFileName)) then
                raise Exception.Create('Cannot create '+ExtractFilePath(TempFileName));
            end;
            fsTempFile := TFileStream.Create(TempFileName, fmCreate or fmShareDenyWrite);
            msImageFile := TMemoryStream.Create;
            msImageFile.LoadFromFile(openImage.Files.Strings[i]);
            csImage := TzCompressionStream.Create(fsTempFile);
            csImage.CopyFrom(msImageFile, 0);
          finally
            csImage.Free;
            msImageFile.Free;
            fsTempFile.Free;
          end;
          try
            with qryImageUpdate do
            begin
              Open;
              Insert;
              FieldByName('OWNER').AsString := 'PRECCATEGORY';
              TBlobField(FieldByName('IMAGE')).LoadFromFile(TempFileName);
              Post;
              Close;
            end;
          finally
            dmAxiom.uniInsight.Commit;
            DeleteFile(TempFileName);
          end;
        end;
      end;
    finally
      bmImage.Free;
    end;
  end;
  frmProgress.Release;
  (* now load the images into ilPrecCategory *)
  dmAxiom.PrecImagesLoad;
  LoadImages;
end;

procedure TfrmImageManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmImageManager.lvImagesDblClick(Sender: TObject);
begin
  SelectedImage := lvImages.Selected.Index+1;
  Close;
end;

procedure TfrmImageManager.FormResize(Sender: TObject);
begin
  //lvImages.Arrange(ComCtrls.arDefault);
end;

end.
