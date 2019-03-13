unit AttachEmailToMatter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, DB, MemDS, DBAccess, OracleUniProvider, Uni,
  StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxControls, cxContainer, cxEdit, cxGroupBox,
  Menus, cxGraphics, cxLookAndFeels, uRwMapiInterfaces, uRwMapiSession;

type
  TfrmAttachEmailToMatter = class(TForm)
    cxGroupBox1: TcxGroupBox;
    btnMatterSearch: TcxButtonEdit;
    lblOne: TcxLabel;
    btnAttach: TcxButton;
    btnClose: TcxButton;
    SmartQuery1: TUniQuery;
    lblSubjectValue: TcxLabel;
    procedure btnMatterSearchPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnAttachClick(Sender: TObject);
  private
    { Private declarations }
     FSession: TRwMapiSession;
     FMessage: IRwMapiMessage;
     FEmailDate: TDateTime;
  public
    { Public declarations }

    procedure SetMessage(const ASession: TRwMapiSession; const AMessage: IRwMapiMessage);
  end;

var
  frmAttachEmailToMatter: TfrmAttachEmailToMatter;

implementation

{$R *.dfm}

uses
   AxiomData
   , MSearch
   , citfunc
//   , uRwSysUtils
   , uRwDateTimeUtils
   , uRwMapiUtils
   , uRwBoxes
   , uRwMapiMessage
   , uRwMapiProps
   , MiscFunc;

procedure TfrmAttachEmailToMatter.btnMatterSearchPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOK then
   begin
      btnMatterSearch.Text := dmAxiom.qryMSearch.FieldByName('fileid').AsString;
      btnMatterSearch.EditValue := dmAxiom.qryMSearch.FieldByName('nmatter').AsInteger;
      lblOne.Caption := dmAxiom.qryMSearch.FieldByName('shortdescr').AsString;
      btnattach.Enabled := True;
   end;
end;

procedure TfrmAttachEmailToMatter.btnAttachClick(Sender: TObject);
var
  bStream: TStream;
  tmpFileName,
  Folder,
  ADir,
  AIndexDir,
  ANewDocName,
  AParsedDir,
  sSubject,
  AParsedDocName,
  FileID: string;
begin
   dmAxiom.qryMatterAttachments.Open;
   if dmAxiom.qryMatterAttachments.State in [dsBrowse] then
      dmAxiom.qryMatterAttachments.edit;

   sSubject := FMessage.PropByName(PR_SUBJECT).AsString;
   FileID := btnMatterSearch.Text;

   dmAxiom.qryMatterAttachments.FieldByName('fileid').AsString := btnMatterSearch.Text;
   dmAxiom.qryMatterAttachments.FieldByName('nmatter').AsInteger := btnMatterSearch.EditValue;
   dmAxiom.qryMatterAttachments.FieldByName('D_CREATE').AsDateTime := FEmailDate;
   dmAxiom.qryMatterAttachments.FieldByName('IMAGEINDEX').AsInteger := 1;
   dmAxiom.qryMatterAttachments.FieldByName('DOC_NAME').AsString := lblSubjectValue.Caption;

   ANewDocName := sSubject + '_' + '[DOCSEQUENCE]'+'.msg';
   AParsedDocName := ParseMacros(ANewDocName, TableInteger('MATTER','FILEID',FileID,'NMATTER'));

   ADir := SystemString('DRAG_DEFAULT_DIRECTORY')+ '\';
   AParsedDir := ParseMacros(ADir, TableInteger('MATTER','FILEID',FileID,'NMATTER'));

   // check directory exists, if not create it
   if not DirectoryExists(AParsedDir) then
      ForceDirectories(AParsedDir);

   try
      FMessage.SaveToFile(AParsedDir + AParsedDocName);
   except
      on e: Exception do
      begin
         MessageDlg('Error saving Email: '#13#13 + E.Message, mtError, [mbOK], 0);
         dmAxiom.qryMatterAttachments.Cancel;
         dmAxiom.uniInsight.Rollback;
         Exit;
      end;
   end;
   dmAxiom.qryMatterAttachments.FieldByName('display_path').AsString := AParsedDir + AParsedDocName;
   dmAxiom.qryMatterAttachments.FieldByName('path').AsString := IndexPath(AParsedDir, 'DOC_SHARE_PATH') + ANewDocName;

{   bStream := dmAxiom.qryMatterAttachments.CreateBlobStream(dmAxiom.qryMatterAttachments.fieldByname('DOCUMENT'), bmReadWrite);
   FMessage.SaveMessageTextToStream(bStream);
   bStream.free;  }
   dmAxiom.qryMatterAttachments.Post;
   dmAxiom.uniInsight.Commit;
   Self.Close;
end;

procedure TfrmAttachEmailToMatter.SetMessage(const ASession: TRwMapiSession; const AMessage: IRwMapiMessage);
begin
   FSession := ASession;
   FMessage := AMessage;
   lblSubjectValue.Caption := FMessage.PropByName(PR_SUBJECT).AsString;
   FEmailDate := RwUTCToLocal(FMessage.PropByName(PR_MESSAGE_DELIVERY_TIME).AsDateTime);
end;

end.
