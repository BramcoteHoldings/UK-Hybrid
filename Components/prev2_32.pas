{ :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  :: QuickReport 3.0 for Delphi 3 or newer                   ::
  ::                                                         ::
  :: Example Custom preview project                          ::
  ::                                                         ::
  :: Copyright (c) 1999 QuSoft AS                            ::
  :: All Rights Reserved                                     ::
  ::                                                         ::
  :: web: http://www.qusoft.no   fax: +47 22 41 74 91        ::
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: }
unit prev2_32;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, qrprntr, quickrpt, Buttons, ComCtrls;

type
  // To have a custom preview be used as the default preview,
  // you first define an interface class.  You will provide two
  // functions for this class, Show, and ShowModal.

  TQRMDIPreviewInterface = class(TQRPreviewInterface)
  public
    function Show(AQRPrinter : TQRPrinter) : TWinControl; override;
    function ShowModal(AQRPrinter : TQRPrinter): TWinControl; override;
  end;

  // We need the ParentReport property from TQRCompositeWinControl.  As of
  // the 3.0.4 release, this property is protected.  We create a descendant
  // class and that will give us access to the property
  TQRPatch = class(TQRCompositeWinControl)
  end;

  TfrmNetScapePreview = class(TForm)
    Panel1: TPanel;
    QRPreview1: TQRPreview;
    btnSave: TBitBtn;
    btnPrint: TBitBtn;
    btnNextPage: TBitBtn;
    btnPrevPage: TBitBtn;
    btnZoomIn: TBitBtn;
    btnZoomOut: TBitBtn;
    btnClose: TBitBtn;
    btnOpen: TBitBtn;
    StatusBar: TStatusBar;
    ProgressBar: TProgressBar;
    procedure btnPrintClick(Sender: TObject);
    procedure btnPrevPageClick(Sender: TObject);
    procedure btnNextPageClick(Sender: TObject);
    procedure btnZoomInClick(Sender: TObject);
    procedure btnZoomOutClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure QRPreview1PageAvailable(Sender: TObject; PageNum: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure StatusBarDrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure QRPreview1ProgressUpdate(Sender: TObject; Progress: Integer);
  private
    { Private declarations }
    FQRPrinter : TQRPrinter;
    procedure Init;
    procedure UpdateButtons;
    procedure SetMyWindow;
  public
    { Public declarations }
    pQuickreport : TQuickRep;
    bPleaseInit : Boolean;
    bCanPrint: boolean;
    sStatus,
    sTitle : string;
    constructor CreatePreview(AOwner : TComponent; aQRPrinter : TQRPrinter);
    property QRPrinter : TQRPrinter read FQRPrinter write FQRPrinter;
  end;

var
  frmNetScapePreview: TfrmNetScapePreview;
  PrintPreviewImage,
  CanPrint: boolean;

implementation

uses
  qrselect, qrqrp;

{$R *.DFM}

// Now define the functions for the interface class.

function TQRMDIPreviewInterface.Show(AQRPrinter : TQRPrinter) : TWinControl;
begin
  Result := TfrmNetScapePreview.CreatePreview(Application, AQRPrinter);

  // You can set options for your preview here
  TfrmNetScapePreview(Result).bCanPrint := CanPrint;

  TfrmNetScapePreview(Result).Show;
end;

function TQRMDIPreviewInterface.ShowModal(AQRPrinter : TQRPrinter) : TWinControl;
begin
  Result := TfrmNetScapePreview.CreatePreview(Application, AQRPrinter);
  // You can set options for your preview here
  TfrmNetScapePreview(Result).bCanPrint := CanPrint;

  //TfrmNetScapePreview(Result).ShowModal;
end;

constructor TfrmNetScapePreview.CreatePreview(AOwner : TComponent; aQRPrinter : TQRPrinter);
begin
  inherited Create(AOwner);
  QRPrinter := aQRPrinter;
  // Connect the preview component to the report's qrprinter object
  QRPreview1.QRPrinter := aQRPrinter;
  if (QRPrinter <> nil) and (QRPrinter.Title <> '') then
    Caption := QRPrinter.Title;
end;

procedure TfrmNetScapePreview.UpdateButtons;
begin
  with QRPreview1 do
  begin
    btnPrevPage.Enabled := PageNumber > 1;
    btnNextPage.Enabled := PageNumber < QRPreview1.QRPrinter.PageCount;
  end;
  StatusBar.Panels[0].Text := sStatus;
  StatusBar.Panels[1].Text := 'Page ' + IntToStr(QRPreview1.PageNumber) + ' of ' +
    IntToStr(QRPreview1.QRPrinter.PageCount);
end;

procedure TfrmNetScapePreview.btnPrintClick(Sender: TObject);
var
  SrcFileName, DestFileName, CopyFileName: string;
  i: integer;
  RepeatPrint: boolean;
  CopyList: TStringList;
begin
  if PrintPreviewImage then
    QRPreview1.QRPrinter.Master := nil;

  // When you have a QRP file, you can't use
  // the printersetup dialog.  In this case
  // we use a simple dialog to allow the user
  // to select the printer and set the page range

  // This dialog is very simple, you can pick the printer
  // the range of pages.  You could easily add other features
  // like prompting for the number copies.


  with TfrmSelectPrinter.Create(application) do
  begin
    QRPrinter := self.QRPrinter;
    PrinterIndex := qrprinter.printerindex;
    OutputBin := qrprinter.OutputBin;
    ShowModal;
    if ModalResult = mrOk then
    begin
      qrprinter.printerindex := cbprinters.ItemIndex;
      qrprinter.OutputBin := OutputBin;
      // If the user selected a range of pages, then
      // we do some extra work.  We save the rendered report
      // to a QRP file and then call a function that will
      // copy the range of pages to a new QRP file.  We then
      // print that file.
      if (FromPage > 0) or (qrprinter.master = nil) then
      begin
        SrcFileName := TempFileName;
        DestFileName := TempFileName;
        CopyFileName := TempFileName;

        // Save the report to a file so that we can work with it.
        qrprinter.Save(SrcFileName);

        // Build a new file with the range of pages that was selected
        RangeFromQRP(SrcFileName, DestFileName, FromPage, ToPage);

        with TQRPrinter.Create do
        begin
          printerindex := cbprinters.ItemIndex;
          qrprinter.OutputBin := OutputBin;
          // If we want more than 1 copy, we just repeat the pages in the
          // list.  This will make sure that only a single print job is
          // issued.
          if NumCopies > 1 then begin
            CopyList := TStringList.Create;

            for i := 1 to NumCopies do
              CopyList.Add(DestFileName);

            CombineQRP(CopyFileName, CopyList);

            CopyList.Free;

            Load(CopyFileName);
          end
          else
            Load(DestFileName);

            Print;
          Free;
        end;
        DeleteFile(CopyFileName);
        DeleteFile(DestFileName);
        DeleteFile(SrcFileName);
      end
      else begin
        TQuickRep(qrprinter.master).printersettings.printerindex := cbprinters.ItemIndex;
        TQuickRep(qrprinter.master).printersettings.OutputBin := OutputBin;
        //ShowMessage('Bin: '+IntToStr(Ord(OutputBin)));
        // If we are rendering the report, we check to see the printer driver
        // supports multiple copies.  If it does, we set the
        // report's PrinterSettings.copies property.  Otherwise, we just print
        // it over and over again.
        if NumCopies > 1 then begin
          qrprinter.Copies := NumCopies;

          RepeatPrint := qrprinter.Copies = 1;
        end
        else
          RepeatPrint := false;

        if RepeatPrint then begin
          for I := 1 to NumCopies do
            qrprinter.Print;
        end
        else begin
          TQuickRep(qrprinter.master).PrinterSettings.Copies := NumCopies;
          qrprinter.print;
        end;
      end;
    end;
    free;
  end;
end;

procedure TfrmNetScapePreview.btnPrevPageClick(Sender: TObject);
begin
  Application.ProcessMessages;
  with QRPreview1 do
    if PageNumber > 1 then
      PageNumber := PageNumber - 1;
  UpdateButtons;
end;

procedure TfrmNetScapePreview.btnNextPageClick(Sender: TObject);
begin
  Application.ProcessMessages;

  with QRPreview1 do
    if PageNumber < QRPreview1.QRPrinter.PageCount then
      PageNumber := PageNumber + 1;
  UpdateButtons;
end;

procedure TfrmNetScapePreview.btnZoomInClick(Sender: TObject);
begin
  Application.ProcessMessages;
  with QRPreview1 do
    Zoom := Zoom + 10;
end;

procedure TfrmNetScapePreview.btnZoomOutClick(Sender: TObject);
begin
  Application.ProcessMessages;
  with QRPreview1 do
    if Zoom > 10 then
      Zoom := Zoom - 10;
end;

procedure TfrmNetScapePreview.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNetScapePreview.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QRPrinter.ClosePreview(Self);
  Action := caFree;
end;

procedure TfrmNetScapePreview.SetMyWindow;
var
  wp: TWindowPlacement;
  Rec: TRect;
begin
  // Get the client area of the desktop so we can force the preview
  // to use all of the available space.  This keeps the user from
  // minizing the form.
  SystemParametersInfo(SPI_GETWORKAREA, 0, @Rec, 0);
  wp.length := sizeof(wp);
  GetWindowPlacement(handle, @wp);
  wp.rcNormalposition := rec;
  setwindowplacement(handle, @wp);
end;

procedure TfrmNetScapePreview.FormShow(Sender: TObject);
begin
  bPleaseInit := True;
end;

procedure TfrmNetScapePreview.Init;
var
  OffSet: integer;
begin
  if bPleaseInit then
  begin
    { Force the preview to come up in the zoom setting that we want}
    QRPreview1.ZoomToFit;

    { If the caller reports want to disable printing, then it will set}
    { the following boolean to false }
    if not bCanPrint then
    begin
      btnPrint.Enabled := bCanPrint;
      btnPrint.Visible := bCanPrint;

      // Shift the rest of the buttons over to fill the space of the hidden control
      OffSet := btnPrevPage.Left - btnPrint.Left;
      btnNextPage.Left := btnNextPage.Left - Offset;
      btnPrevPage.Left := btnPrevPage.Left - Offset;
      btnZoomIn.Left := btnZoomIn.Left - Offset;
      btnZoomOut.Left := btnZoomOut.Left - Offset;
      btnOpen.Left := btnOpen.Left - Offset;
      btnSave.Left := btnSave.Left - Offset;
      btnClose.Left := btnClose.Left - Offset;
    end;
    UpdateButtons;

    bPleaseInit := False;
  end;
end;

procedure TfrmNetScapePreview.QRPreview1PageAvailable(Sender: TObject;
  PageNum: Integer);
var
  sTitle: string;
begin
  Init;

  sTitle := QRPreview1.QRPrinter.Title;
  if sTitle = '' then
    sTitle := 'Untitled report';

  if PageNum = 1 then
    Caption := sTitle + ' - 1 page'
  else
    Caption := sTitle + ' - ' + IntToStr(PageNum) + ' pages';

  case QRPreview1.QRPrinter.Status of
    mpReady: sStatus := 'Ready';
    mpBusy: sStatus := 'Busy';
    mpFinished: sStatus := 'Finished';
  end;
  UpdateButtons;
end;

procedure TfrmNetScapePreview.FormCreate(Sender: TObject);
begin
  { We can disable the print functionality at runtime }
  bCanPrint := True;
  // Put the progress bar on the statusbar
  ProgressBar.Parent := StatusBar;

  // Get the client area of the desktop
  SetMyWindow;
end;

procedure TfrmNetScapePreview.btnOpenClick(Sender: TObject);
begin
  // Prompt the user for a saved report.
  with TOpenDialog.Create(Application) do
  try
    Title := 'Load report';
    Filter := 'QuickReport file (*.' +cQRPDefaultExt + ')|*.' + cqrpDefaultExt;
    if Execute then
      if FileExists(FileName) then
      begin
        qrprinter.master := nil;
        QRPrinter.Load(Filename);
        QRPreview1.PageNumber := 1;
        QRPreview1.PreviewImage.PageNumber := 1;
        Caption := 'Viewing saved report - ' + FileName + ' - ' + IntToStr(QRPrinter.PageCount) + ' pages';
        UpdateButtons;
      end
      else
        ShowMessage('Error!  File does not exist');
  finally
    free;
  end;
end;

procedure TfrmNetScapePreview.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Let the user navigate through the preview by the keyboard
  if ssAlt in Shift then begin
    case Key of
      vk_Down  : With QRPreview1.VertScrollBar do
                   Position := Position + trunc(Range / 10);
      vk_Up    : With QRPreview1.VertScrollBar do
                   Position := Position - trunc(Range / 10);
      vk_Left  : With QRPreview1.HorzScrollBar do
                   Position := Position - trunc(Range / 10);
      vk_Right : With QRPreview1.HorzScrollBar do
                   Position := Position + trunc(Range / 10);
    end;
  end;
  case Key of
    VK_Next : btnNextPageClick(Self);
    VK_Prior : btnPrevPageClick(Self);
    VK_Home : begin
      QRPreview1.PageNumber := 1;
      Application.ProcessMessages;
      UpdateButtons;
    end;
    VK_End : begin
      QRPreview1.PageNumber := QRPreview1.QRPrinter.PageCount;
      Application.ProcessMessages;
      UpdateButtons;
    end;
    VK_Escape : btnCloseClick(self)
   end;
end;

procedure TfrmNetScapePreview.btnSaveClick(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    Title := 'Save report';
    Filter := QRExportFilterLibrary.SaveDialogFilterString;
    DefaultExt := cQRPDefaultExt;
    if Execute then
    begin
      if FilterIndex = 1 then
        QRPrinter.Save(Filename)
      else
      begin
        try
          aExportFilter := TQRExportFilterLibraryEntry(
            QRExportFilterLibrary.Filters[FilterIndex - 2]).ExportFilterClass.Create(Filename);
          QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free
        end
      end
    end;
  finally
    Free;
  end;
end;

procedure TfrmNetScapePreview.StatusBarDrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
var
  aRect: TRect;
begin
  if Panel = StatusBar.Panels[2] then begin
    aRect := Rect;
    InflateRect(aRect, 1, 1);
    ProgressBar.BoundsRect := aRect;
  end;
end;

procedure TfrmNetScapePreview.QRPreview1ProgressUpdate(Sender: TObject;
  Progress: Integer);
begin
  ProgressBar.Position := Progress;
  if (Progress = 0) or (Progress = 100) then
    ProgressBar.Position := 0;
end;

initialization
  CanPrint := true;
  PrintPreviewImage := false;

end.

