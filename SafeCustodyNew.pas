unit SafeCustodyNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  DBDateTimePicker, Mask, ExtCtrls, Buttons, cxMemo, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, cxLabel, cxGroupBox, ActnList, ActnMan,
  dxBar, cxImage, cxPC, DelphiTwain_VCL, jpeg, cxDBLabel, cxCheckListBox,
  cxCheckBox, cxBlobEdit, OleCtnrs, Menus, cxGraphics, XPStyleActnCtrls,
  cxLookAndFeels, System.Actions, dxGDIPlusClasses, dxDPIAwareUtils, cxClasses;

type
  TfrmSafeCustodyNew = class(TForm)
    dsDocReg2: TUniDataSource;
    qryDocReg2: TUniQuery;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qryDocTypes: TUniQuery;
    dsDocTypes: TDataSource;
    lblClient: TcxLabel;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    ActionManager1: TActionManager;
    actSave: TAction;
    dxBarManager1: TdxBarManager;
    dxattachImage: TdxBarButton;
    dlFile: TOpenDialog;
    dxloadImage: TdxBarButton;
    dxPopupImage: TdxBarPopupMenu;
    dxAcquireImage: TdxBarButton;
    mmoDescription: TcxMemo;
    mmoLocation: TcxMemo;
    tbPacket: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    cmbDocType: TcxDBLookupComboBox;
    dtpLodged: TcxDBDateEdit;
    mmoDesc: TcxDBMemo;
    dtpRelease: TcxDBDateEdit;
    dtpReturned: TcxDBDateEdit;
    edReleasedTo: TcxDBTextEdit;
    edMovement: TcxDBTextEdit;
    dtpRequestedDate: TcxDBDateEdit;
    cmbRequestedBy: TcxDBLookupComboBox;
    dtpReviewDate: TcxDBDateEdit;
    edCode: TcxDBTextEdit;
    mmoComments: TcxDBMemo;
    cmbFirm: TcxDBCheckBox;
    dfFirmDetails: TcxDBTextEdit;
    btnAddAttachment: TcxButton;
    btnAcquireDoc: TcxButton;
    btnViewDoc: TcxButton;
    imgDocument: TcxImage;
    btnRemoveAttDoc: TcxButton;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtpReturnedPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actSaveUpdate(Sender: TObject);
    procedure dxPopupImagePopup(Sender: TObject);
    procedure dxattachImageClick(Sender: TObject);
    procedure imgDocumentDblClick(Sender: TObject);
    procedure btnAcquireDocClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbFirmClick(Sender: TObject);
    procedure btnViewDocClick(Sender: TObject);
    procedure btnRemoveAttDocClick(Sender: TObject);

  published
      constructor Create(AOwner: TComponent; NClient: integer; SPacketId: String); reintroduce; overload;
  private
    { Private declarations }
    FNClient: integer;
    FSPacketId: string;
    Twain: TDelphiTwain;

    function Save: boolean;
    procedure TwainTwainAcquire(Sender: TObject; const Index: Integer;
      Image: TBitmap; var Cancel: Boolean);
  public
    { Public declarations }
    procedure CreateItem(Packet, Descr, Location: string);
    function OKtoPost : boolean;
    procedure DisplayPacket(PacketID, Document: integer; Packet, Descr, Location: string);
  end;

var
  frmSafeCustodyNew: TfrmSafeCustodyNew;

implementation

uses
  Clients, MiscFunc, AxiomData, MSearch,cxDateUtils,ShellAPI, System.zLib;

{$R *.dfm}

constructor TfrmSafeCustodyNew.Create(AOwner: TComponent; NClient: integer; SPacketId: String);
begin
  inherited Create(AOwner);
  FNClient := NClient;
  FSPacketId := SPacketId;
  lblClient.Caption := TableString('CLIENT', 'NCLIENT', FNClient, 'SEARCH');
end;

procedure TfrmSafeCustodyNew.CreateItem(Packet, Descr, Location: string);
begin
  lblClient.Caption := TableString('CLIENT', 'NCLIENT', FNClient, 'SEARCH');
  tbPacket.Text := Packet;
  mmoDescription.Text := Descr;
  mmoLocation.Text := Location;
  dtpLodged.Date := Now;
//  with qryDocReg do
//  begin
//    close;
//    ParamByName('NClient').AsInteger := FNClient;
//    ParamByName('NDOCREG').Value := FSPacketId;
//    Open;
//    qryDocReg.FieldByName('PACKETID').AsString := FSPacketId;
//    Insert;
//  end;

  qryDocReg2.Open;
  qryDocReg2.Insert;
  btnViewDoc.Enabled := False;
  btnRemoveAttDoc.Enabled := False;
//  dtpLodged.Checked := True;
//  Self.ShowModal;
end;

function TfrmSafeCustodyNew.OKtoPost : boolean;
var
  sTmp : String;
begin
  OKtoPost := True;
  sTmp := '';
  if mmoDesc.Text = '' then
    sTmp := sTmp + '       Description' + Chr(13);
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Safe Custody details before exiting:    ' + Chr(13) + Chr(13) + sTmp);
    OKtoPost := False
  end;
end;

procedure TfrmSafeCustodyNew.btnSaveClick(Sender: TObject);
begin
   ModalResult := mrNone;
//   if OKtoPost then
//   begin
      if Save then
      begin
         Close;
         ModalResult := mrOk;
      end;
{      if qryDocReg2.State in [dsInsert] then
         qryDocReg2.FieldByName('ENVELOPE').AsString := GetEnvelopeId(FNClient, FSPacketId);

      if qryDocReg2.State in [dsInsert,dsEdit] then
      begin
         qryDocReg2.FieldByName('NCLIENT').AsInteger := FNClient;
         qryDocReg2.FieldByName('PACKETID').AsString := tbPacket.Text;
         if not varIsNull(cmbDocType.EditValue) then
           qryDocReg2.FieldByName('DOCUMENT_TYPE').AsString := cmbDocType.EditValue;
         qryDocReg2.FieldByName('NDOCREG').AsString := FSPacketId;
      end;
//     qryDocReg2.Post;
//     qryDocReg2.ApplyUpdates;

      qryDocReg2.DisableControls;
      if qryDocReg2.Modified then
      begin
         qryDocReg2.Post;
         qryDocReg2.ApplyUpdates;
      end;

      dmAxiom.uniInsight.Commit;
      Close;
      ModalResult := mrOk;
//     if Self.Owner.ClassName = 'TfrmClients' then
//       TfrmClients(Self.Owner).pagDetailsChange(Self);
   end;  }
end;

procedure TfrmSafeCustodyNew.DisplayPacket(PacketID, Document: integer; Packet, Descr, Location: string);
begin
//  with qryDocReg do
//  begin
//    ParamByName('NClient').AsInteger := FNClient;
//    ParamByName('NDOCREG').AsInteger := PacketID;
//    Open;
//    if IsEmpty then
//      dtpLodged.Date := Now
//    else
//    begin
   tbPacket.Text := Packet;
   mmoDescription.Text := Descr;
   mmoLocation.Text := Location;
   if TableInteger('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ACCESSLEVEL') <> 0 then
      tbPacket.Enabled := False;
   Self.ActiveControl := mmoDesc;
//    end;
//  end;
   qryDocReg2.Close;
   qryDocReg2.ParamByName('NClient').AsInteger := FNClient;
   qryDocReg2.ParamByName('ndocument').AsInteger := Document;
   qryDocReg2.Open;
   btnViewDoc.Enabled := (not qryDocReg2.fieldByname('IMAGE').IsNull);
   btnRemoveAttDoc.Enabled := (not qryDocReg2.fieldByname('IMAGE').IsNull) AND dmAxiom.Security.SafeCustody.DeleteAttachment;
   if qryDocReg2.FieldByName('FIRM_MANAGED').AsString = 'Y' then
      dfFirmDetails.Enabled := True;
//  Self.Show;
end;

procedure TfrmSafeCustodyNew.btnCancelClick(Sender: TObject);
begin
//  qryDocReg.CancelUpdates;
  qryDocReg2.CancelUpdates;

  Close;
end;

procedure TfrmSafeCustodyNew.FormCreate(Sender: TObject);
begin
   qryDocTypes.Open;
   qryDocReg2.SpecificOptions.Values['KeySequence'] := 'SEQ_DOCREGITEM';
   qryEmployee.Open;
   btnRemoveAttDoc.Enabled := dmAxiom.Security.SafeCustody.DeleteAttachment;
   btnAddAttachment.Enabled := dmAxiom.Security.SafeCustody.AddAttachment;
   btnAcquireDoc.Enabled := dmAxiom.Security.SafeCustody.AddAttachment;
end;

procedure TfrmSafeCustodyNew.FormShow(Sender: TObject);
begin
  cmbDocType.SetFocus;
end;

procedure TfrmSafeCustodyNew.dtpReturnedPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if dtpReturned.Date > dtpRequestedDate.Date then
      qryDocReg2.FieldByName('REQUESTED_DATE').AsVariant := null;
end;

procedure TfrmSafeCustodyNew.actSaveUpdate(Sender: TObject);
begin
//   btnSave.Enabled := (qryDocReg2.State in [dsEdit, dsInsert]);
end;

procedure TfrmSafeCustodyNew.dxPopupImagePopup(Sender: TObject);
begin
   dxPopupImage.ItemLinks.Clear;
   dxPopupImage.ItemLinks.Add.Item :=  dxattachImage;
   if not qryDocReg2.fieldByname('IMAGE').IsNull then
      dxPopupImage.ItemLinks.Add.Item :=  dxloadImage;
end;

procedure TfrmSafeCustodyNew.dxattachImageClick(Sender: TObject);
var
   sFileName, TempFileName: string;
  iPos: integer;
  bStream, fStream: TStream;
  CompressionStream: TzCompressionStream;
  msCompressedDoc: TMemoryStream;
begin
   if Save then
   begin
      if not dlFile.Execute then
         exit;

      sFileName := dlFile.FileName;

      try
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
         try
            dmAxiom.uniInsight.StartTransaction;
            if qryDocReg2.State in [dsBrowse] then
               qryDocReg2.edit;

            if (not qryDocReg2.fieldByname('IMAGE').IsNull) then
               if MsgAsk('There is a document currently attached to this packet. Do you want to continue?') = mrNo then
                  Exit;

            qryDocReg2.fieldByname('IMAGE').Clear;
            // check the document
            qryDocReg2.FieldByName('IMAGE_EXT').AsString := Copy(ExtractFileExt(sFileName),2,3);
            bStream := qryDocReg2.CreateBlobStream(qryDocReg2.FieldByName('IMAGE') , bmReadWrite);
            fStream := TFileStream.Create(sFileName, fmOpenRead);
            bStream.CopyFrom(fStream, fStream.Size);

            qryDocReg2.ApplyUpdates;
            btnViewDoc.Enabled := True;
            btnRemoveAttDoc.Enabled := True;
         finally
            dmAxiom.uniInsight.commit;
         end;
      except
         Raise;
      end;
      bStream.free;
      fStream.free;
   end;


{   if Save then
   begin
      if not dlFile.Execute then
         exit;

      CompressionStream:= nil;
      msCompressedDoc := nil;
      sFileName := dlFile.FileName;

      try
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
         dmAxiom.uniInsight.StartTransaction;
         if qryDocReg2.State in [dsBrowse] then
            qryDocReg2.edit;

         if (not qryDocReg2.fieldByname('IMAGE').IsNull) then
            if MsgAsk('There is a document currently attached to this packet. Do you want to continue?') = mrNo then
               Exit;

         qryDocReg2.fieldByname('IMAGE').Clear;
    // check the document
         qryDocReg2.FieldByName('IMAGE_EXT').AsString := Copy(ExtractFileExt(sFileName),2,3);



//         fStream := TFileStream.Create(TempFileName,fmOpenRead OR fmShareDenyWrite);
         msCompressedDoc := TMemoryStream.Create;
         msCompressedDoc.LoadFromFile(sFileName);
         CompressionStream := TzCompressionStream.Create(msCompressedDoc);
         bStream := qryDocReg2.CreateBlobStream(qryDocReg2.FieldByName('IMAGE'), bmWrite);
         try
            bStream.Seek(0, soFromBeginning);
//            CompressionStream.CopyFrom(msCompressedDoc,0);
            try
               bStream.CopyFrom(CompressionStream, CompressionStream.Size);
            finally
  //             fStream.Free;
               CompressionStream.Free;
            end;
         finally
             bStream.Free;
             msCompressedDoc.Free;
         end;

         FileStream := TFileStream.Create(sFileName,fmOpenRead OR fmShareDenyWrite);

         CompFileStream := TFileStream.Create(FileName+'.compress',fmCreate);
         CompressionStream := TCompressionStream.Create(clDefault,CompFileStream);
         CompressionStream.CopyFrom(FileStream,0);
         CompressionStream.Free;
         CompFileStream.Free;
         FileStream.Free;  }

//         bStream := qryDocReg2.CreateBlobStream(qryDocReg2.FieldByName('IMAGE') , bmReadWrite);
//         fStream := TFileStream.Create(sFileName, fmOpenRead);
//         bStream.CopyFrom(fStream, fStream.Size);

{         qryDocReg2.ApplyUpdates;
         btnViewDoc.Enabled := True;
         btnRemoveAttDoc.Enabled := True;
         dmAxiom.uniInsight.Commit;
      except
         dmAxiom.uniInsight.Rollback;
         Raise;
      end;
//      bStream.free;
//      fStream.free;
   end;       }
end;

procedure TfrmSafeCustodyNew.imgDocumentDblClick(Sender: TObject);
var
   sFileName: string;
   bStream, fStream: TStream;
   OpenFileErr: integer;
begin
   if qryDocReg2.fieldByname('IMAGE').IsNull then
      exit;

   try
      // load the image in external application
      bStream := qryDocReg2.CreateBlobStream(qryDocReg2.fieldByname('IMAGE'), bmRead);

      sFileName := dmAxiom.GetEnvVar('TMP')+'\';  //'c:\tmp\';
      sFileName := sFileName + qryDocReg2.fieldByName('ndocument').AsString+ '_safe.'+qryDocReg2.FieldByName('IMAGE_EXT').AsString;
      fStream := TFileStream.Create(sFileName, fmCreate);
      fStream.CopyFrom(bStream,bStream.Size);

      OpenFileErr := ShellExecute(Handle,'open',PChar(sFileName),nil,nil,SW_SHOWNORMAL);
      if OpenFileErr = SE_ERR_NOASSOC then
         MsgWarn('There is no application associated with the given filename extension.');
   except
      Raise;
   end;
   bStream.free;
   fStream.free;
end;

procedure TfrmSafeCustodyNew.btnAcquireDocClick(Sender: TObject);
var
  SourceIndex: Integer;
//  Source: TTwainSource;
  SelectedSource: Integer;
begin
   if dmAxiom.uniInsight.InTransaction then
      dmAxiom.uniInsight.Commit;
   if Twain = nil then
   begin
      Twain := TDelphiTwain.Create();
      Twain.OnTwainAcquire := TwainTwainAcquire;
   end;

  {It is always recommended to load library dynamically, never forcing}
  {final user to have twain installed}
  if Twain.LoadLibrary then
  begin
    {Load source manager}
    Twain.SourceManagerLoaded := TRUE;
    {Allow user to select source}
    SelectedSource := Twain.SelectSource;
    if SelectedSource <> -1 then
    begin
      {Load source, select transference method and enable (display interface)}
      Twain.Source[SelectedSource].Loaded := TRUE;
      Twain.Source[SelectedSource].Enabled := True;
    end {if SelectedSource <> -1}
  end
  else
    showmessage('Twain is not installed.');
end;

procedure TfrmSafeCustodyNew.TwainTwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
var
   bStream: TStream;
   fStream: TStream;
   sFileName, sDate: string;
   jp: TJPEGImage;
begin
  jp := TJPEGImage.Create;
   DateTimeToString(sDate,'ddmmyyyyhhnnss',Now());
   sFileName := dmAxiom.GetEnvVar('TMP')+'\ax' + sDate + '.jpg';
   //Copies the acquired bitmap to the TImage control
   imgDocument.Picture.Assign(Image);
   // convert bitmap to jpeg
   try
      with jp do
      begin
         Assign(imgDocument.Picture.Bitmap);
         SaveToFile(sFileName)
      end;
   finally
      jp.Free;
   end;
   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      try
         dmAxiom.uniInsight.StartTransaction;
         if qryDocReg2.State in [dsBrowse] then
            qryDocReg2.edit;
         try
            bStream := qryDocReg2.CreateBlobStream(qryDocReg2.fieldByname('IMAGE'), bmReadWrite);
            fStream := TFileStream.Create(sFileName, fmOpenRead);
            bStream.CopyFrom(fStream, fStream.Size);
            qryDocReg2.ApplyUpdates;
         finally
            bStream.free;
         end;
      finally
         dmAxiom.uniInsight.Commit;
      end;
   finally
      fStream.free;
   end;
   //Because the component supports multiple images
   //from the source device, Cancel will tell the
   //source that we don't want any more images
   Cancel := TRUE;
//   TTwainSource(Sender).UnloadSource;
end;

procedure TfrmSafeCustodyNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryDocReg2.Close;
   qryDocTypes.Close;
   qryEmployee.Close;
   Action := caFree;
end;

procedure TfrmSafeCustodyNew.cmbFirmClick(Sender: TObject);
begin
   dfFirmDetails.Enabled := cmbFirm.Checked;
end;

procedure TfrmSafeCustodyNew.btnViewDocClick(Sender: TObject);
var
   sFileName: string;
   bStream, fStream: TStream;
   OpenFileErr: integer;
   AExt: string;
begin
   if qryDocReg2.fieldByname('IMAGE').IsNull then
      exit;

   try
      sFileName := 'doc_';
      // load the image in external application
      try
         bStream := qryDocReg2.CreateBlobStream(qryDocReg2.fieldByname('IMAGE'), bmRead);

         sFileName := dmAxiom.GetEnvVar('TMP')+'\';  //'c:\tmp\';
         AExt := qryDocReg2.FieldByName('IMAGE_EXT').AsString;
         if AExt = '' then
            AExt := 'jpg';
         sFileName := sFileName + 'doc_' + qryDocReg2.fieldByName('ndocument').AsString+ '_safe.' + AExt;
         fStream := TFileStream.Create(sFileName, fmCreate);
         try
            fStream.CopyFrom(bStream,bStream.Size);
         finally
            FreeAndNil(fStream);
         end;
      finally
         FreeAndNil(bStream);
      end;
      
      OpenFileErr := ShellExecute(Handle,'open',PChar(sFileName),nil,nil,SW_SHOWNORMAL);
      if OpenFileErr = SE_ERR_NOASSOC then
         MsgInfo('There is no application associated with the given filename extension.');
   except
      Raise;
   end;
end;

function TfrmSafeCustodyNew.Save: boolean;
begin
   try
      if OKtoPost then
      begin
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;

         try
            dmAxiom.uniInsight.StartTransaction;
            if qryDocReg2.State in [dsInsert] then
               qryDocReg2.FieldByName('ENVELOPE').AsString := GetEnvelopeId(FNClient, FSPacketId);

            if qryDocReg2.State in [dsInsert,dsEdit] then
            begin
               qryDocReg2.FieldByName('NCLIENT').AsInteger := FNClient;
               qryDocReg2.FieldByName('PACKETID').AsString := tbPacket.Text;
//               if not varIsNull(cmbDocType.EditValue) then
//                  qryDocReg2.FieldByName('DOCUMENT_TYPE').AsString := cmbDocType.EditValue;
               qryDocReg2.FieldByName('NDOCREG').AsString := FSPacketId;
            end;

            qryDocReg2.DisableControls;
            if qryDocReg2.State in [dsInsert,dsEdit] then
            begin
               try
                  qryDocReg2.Post;
                  qryDocReg2.ApplyUpdates;
               except
                  //
               end;
            end;
         finally
            dmAxiom.uniInsight.Commit;
            Result := True;
         end;
      end
      else
         Result := False;
   except
      ;
   end;
end;

procedure TfrmSafeCustodyNew.btnRemoveAttDocClick(Sender: TObject);
begin
   if MsgAsk('Do you want to remove the attached document.') = mrYes then
   begin
      if qryDocReg2.fieldByname('IMAGE').IsNull then
         exit;
      try
          if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
          dmAxiom.uniInsight.StartTransaction;
          if qryDocReg2.State in [dsBrowse] then
             qryDocReg2.edit;

          qryDocReg2.fieldByname('IMAGE').Clear;

          qryDocReg2.ApplyUpdates;
          btnViewDoc.Enabled := False;
          btnRemoveAttDoc.Enabled := False;
      except
         Raise;
      end;
   end;
end;

end.
