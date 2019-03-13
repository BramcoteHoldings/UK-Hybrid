unit documentcenter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Winapi.ShlObj,
  cxShellCommon, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxListView, cxShellListView, Vcl.ExtCtrls, DragDrop,
  DropTarget, DropComboTarget, Vcl.StdCtrls, Vcl.Buttons, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, cxTextEdit, cxMaskEdit, cxButtonEdit,
  JvBaseDlg, JvBrowseFolder;

type
  TfrmDocumentCenter = class(TForm)
    listScannedDocs: TcxShellListView;
    pnlMatters: TPanel;
    matterDropComboTarget: TDropComboTarget;
    BitBtn1: TBitBtn;
    btnTxtDocPath: TcxButtonEdit;
    BrowseDlg: TJvBrowseForFolderDialog;
    procedure FormShow(Sender: TObject);
    procedure matterDropComboTargetDrop(Sender: TObject; ShiftState: TShiftState;
      APoint: TPoint; var Effect: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTxtDocPathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
     tmpdir: string;
     FFileList: TStringList;
     FURL: boolean;
     function DoSave: boolean;
     procedure CleanUpEmails;
  public
    { Public declarations }
  end;

var
  frmDocumentCenter: TfrmDocumentCenter;

implementation

{$R *.dfm}

uses
   miscfunc, DocNew, citfunc;

procedure TfrmDocumentCenter.matterDropComboTargetDrop(Sender: TObject;
  ShiftState: TShiftState; APoint: TPoint; var Effect: Integer);
var
  Stream: TStream;
  i: integer;
  Name,
  TempFile,
  FileID,
  ASelectedFileName: string;
  bContinue: boolean;
begin
   FURL := False;
   // Extract dropped data.
   if matterDropComboTarget.Data.Count > 0 then
      FFileList := TStringList.Create;
   try
      for i := 0 to matterDropComboTarget.Data.Count-1 do
      begin
          Name := matterDropComboTarget.Data.Names[i];
          if (Name = '') then
              Name := intToStr(i)+'.dat';
          Stream := TFileStream.Create(tmpdir + Name, fmCreate);

          try
              // Copy dropped data to stream (in this case a file stream).
             Stream.CopyFrom(matterDropComboTarget.Data[i], matterDropComboTarget.Data[i].Size);
          finally
             Stream.Free;
          end;
          ASelectedFileName := listScannedDocs.Folders[listScannedDocs.InnerListView.ItemIndex].PathName;
          TempFile := tmpdir + Name;
          FFileList.Add(ASelectedFileName);
      end;
   finally
      bContinue := DoSave();
      CleanUpEmails();
      FFileList.Free;
      FFileList := nil;
   end;

   if (matterDropComboTarget.URL <> '') and bContinue then
   begin
      try
         FFileList := TStringList.Create;
         FFileList.Add(matterDropComboTarget.URL);
         FURL := True;
         DoSave();
      finally
         FFileList.Free;
         FFileList := nil;
      end;
   end;

  // Copy the rest of the dropped formats.
   if (matterDropComboTarget.Files.Count > 0) and bContinue then
   begin
      try
         FFileList := TStringList.Create;
         FFileList.Assign(matterDropComboTarget.Files);
         DoSave();
      finally
         FFileList.Free;
         FFileList := nil;
      end;
   end;

end;

procedure TfrmDocumentCenter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmDocumentCenter.FormShow(Sender: TObject);
begin
   with listScannedDocs.Root do
   begin
      BrowseFolder := bfCustomPath;
      CustomPath := SystemString('scanned_doc_dir');
      btnTxtDocPath.Text := SystemString('scanned_doc_dir');;
   end;
end;

function TfrmDocumentCenter.DoSave: boolean;
var
   i: integer;
   bRet: boolean;
begin
   if not FormExists(frmDocNew) then
      frmDocNew := TfrmDocNew.Create(Self);

   try
      if FFileList.Count > 0 then
      begin
         for i := 0 to (FFileList.Count - 1) do
         begin
            frmDocNew.DocName := FFileList.Strings[i];
            if FURL then
               frmDocNew.URLOnly := True
            else
               frmDocNew.URLOnly := False;
            frmDocNew.Repaint;
            bRet := False;
            if frmDocNew.ShowModal = mrOk then
               bRet := True;
         end;
      end;
   finally
      frmDocNew.Release;
   end;
   Result := bRet;
end;

procedure TfrmDocumentCenter.BitBtn1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmDocumentCenter.btnTxtDocPathPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
      0: begin
            if BrowseDlg.Execute then
               listScannedDocs.Root.CustomPath := BrowseDlg.GetNamePath;
         end;
  end;
end;

procedure TfrmDocumentCenter.CleanUpEmails;
var
   i: integer;
begin
   try
      if FFileList.Count > 0 then
      begin
         for i := 0 to (FFileList.Count - 1) do
            DeleteFile(FFileList.Strings[i]);
      end;
   except
      //
   end;
end;

end.
