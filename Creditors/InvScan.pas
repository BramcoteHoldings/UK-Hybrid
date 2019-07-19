unit InvScan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, DelphiTwain;

type
  TForm1 = class(TForm)
    btnAcquireDoc: TcxButton;
    TwainInvoice: TDelphiTwain;
    procedure btnAcquireDocClick(Sender: TObject);
    procedure TwainInvoiceTwainAcquire(Sender: TObject;
      const Index: Integer; Image: TBitmap; var Cancel: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAcquireDocClick(Sender: TObject);
var
  SourceIndex: Integer;
  Source: TTwainSource;
begin
   //Make sure that the library and Source Manager
   //are loaded
   TwainInvoice.LibraryLoaded := TRUE;
   TwainInvoice.SourceManagerLoaded := TRUE;
   //SelectSource method displays a common Twain dialog
   //to allow the user to select one of the avaliable
   //sources and returns it's index or -1 if either
   //the user pressed Cancel or if there were no sources
   SourceIndex := TwainInvoice.SelectSource();
   if (SourceIndex <> -1) then
   begin
      //Now that we know the index of the source, we'll
      //get the object for this source
      Source := TwainInvoice.Source[SourceIndex];
      //Load source and acquire image
      Source.Loaded := TRUE;
      Source.Enabled := TRUE;
   end; {if (SourceIndex <> -1)}
end;

procedure TForm1.TwainInvoiceTwainAcquire(Sender: TObject;
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
      dmAxiom.uniInsight.StartTransaction;
      if qryAccounts.State in [dsBrowse] then
         qryAccounts.edit;
      try
         bStream := qryAccounts.CreateBlobStream(qryAccounts.fieldByname('INVOICE_COPY'), bmReadWrite);
         fStream := TFileStream.Create(sFileName, fmOpenRead);
         bStream.CopyFrom(fStream, fStream.Size);
//         qryAccounts.FieldByName('INVOICE_COPY_EXT').AsString := 'jpg';
         qryAccounts.ApplyUpdates;
      finally
         FreeAndNil(bStream);
      end;
   finally
      FreeAndNil(fStream);
   end;
   //Because the component supports multiple images
   //from the source device, Cancel will tell the
   //source that we don't want any more images
   Cancel := TRUE;
   TTwainSource(Sender).UnloadSource;
end;

end.
