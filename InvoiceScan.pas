unit InvoiceScan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  Mask, ExtCtrls, Buttons, cxMemo, cxDBEdit,
  cxImage, DelphiTwain_VCL, jpeg, cxBlobEdit, OleCtnrs, Menus, cxGraphics, cxControls,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxButtons, cxLookAndFeels;

type
  TfrmInvScan = class(TForm)
    btnCancel: TcxButton;
    imgDocument: TcxImage;
    btnAcquireDoc: TcxButton;
    qryInvoiceBlob: TUniQuery;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAcquireDocClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  published
      constructor Create(AOwner: TComponent; NInvoice: integer); reintroduce; overload;
  private
    { Private declarations }
    FNInvoice: integer;
    Twain: TDelphiTwain;

    procedure TwainTwainAcquire(Sender: TObject; const Index: Integer;
      Image: TBitmap; var Cancel: Boolean);
  protected
      procedure DoCreate; override;
  public
    { Public declarations }
    function OKtoPost : boolean;
  end;

var
  frmInvScan: TfrmInvScan;

implementation

uses
  Clients, MiscFunc, AxiomData, MSearch, cxDateUtils, ShellAPI;

{$R *.dfm}

constructor TfrmInvScan.Create(AOwner: TComponent; NInvoice: integer);
begin
  inherited Create(AOwner);
  FNInvoice := NInvoice;
end;

function TfrmInvScan.OKtoPost : boolean;
begin

end;

procedure TfrmInvScan.DoCreate;
begin
   inherited;
   ReportMemoryLeaksOnShutdown := True;
end;

procedure TfrmInvScan.btnSaveClick(Sender: TObject);
begin
   ModalResult := mrNone;
   dmAxiom.uniInsight.Commit;
   Close;
   ModalResult := mrOk;
end;

procedure TfrmInvScan.btnCancelClick(Sender: TObject);
begin
   Try
      if Twain <> nil then
      begin
         if Twain.LibraryLoaded  = True then
            Twain.UnloadLibrary;
      end;
   finally
      Twain.UnloadSourceManager(True);
      Close;
   end;
end;

procedure TfrmInvScan.FormCreate(Sender: TObject);
begin
   btnAcquireDoc.Enabled := dmAxiom.Security.SafeCustody.AddAttachment;
end;

procedure TfrmInvScan.btnAcquireDocClick(Sender: TObject);
var
  SourceIndex: Integer;
//  SelectedSource: TTwainSource;
begin
   if dmAxiom.uniInsight.InTransaction then
      dmAxiom.uniInsight.Commit;

   if Twain = nil then begin
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
      SourceIndex := Twain.SelectSource;
      if SourceIndex <> -1 then
      begin
         {Load source, select transference method and enable (display interface)}
         Twain.Source[SourceIndex].Loaded := TRUE;
         Twain.Source[SourceIndex].Enabled := True;
      end {if SelectedSource <> -1}
   end
   else
      showmessage('Twain is not installed.');
end;

procedure TfrmInvScan.TwainTwainAcquire(Sender: TObject;
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

         qryInvoiceBlob.Close;
         qryInvoiceBlob.ParamByName('ninvoice').AsInteger := FNInvoice;
         qryInvoiceBlob.Open;

         if qryInvoiceBlob.State in [dsBrowse] then
            qryInvoiceBlob.edit;
         try
            bStream := qryInvoiceBlob.CreateBlobStream(qryInvoiceBlob.fieldByname('INVOICE_COPY'), bmReadWrite);
            try
               fStream := TFileStream.Create(sFileName, fmOpenRead);
               bStream.CopyFrom(fStream, fStream.Size);
               qryInvoiceBlob.FieldByName('INVOICE_COPY_EXT').AsString := 'jpg';
               qryInvoiceBlob.ApplyUpdates;
            finally
               FreeAndNil(bStream);
            end;
         finally
            FreeAndNil(fStream);
         end;
      finally
         dmAxiom.uniInsight.Commit;
      end;
   except
   //
   end;
   Cancel := TRUE;
   try
//      TTwainSource(Sender).UnloadSource;
//      try
//         DelphiTwain1.UnloadLibrary;
//         DelphiTwain1.UnloadSourceManager(True);
//      except
         //
//      end;
      ModalResult := mrOk;
      Self.Close;

   except
//      DelphiTwain1.UnloadLibrary;
//      DelphiTwain1.UnloadSourceManager(True);
      ModalResult := mrOk;
      Self.Close;
   end;
end;

procedure TfrmInvScan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   try
      if dmAxiom.uniInsight.InTransaction = True then
         dmAxiom.uniInsight.Commit;
   finally
      qryInvoiceBlob.Close;
   end;
//   Action := caFree;
end;

end.
