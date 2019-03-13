unit ReleaseNotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxRichEdit, dxBar, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses;

type
  TfmReleaseNotes = class(TForm)
    mReleaseNotes: TcxRichEdit;
    dxBarManager1: TdxBarManager;
    pbPrint: TdxBarButton;
    pbClose: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pbPrintClick(Sender: TObject);
    procedure pbCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReleaseNotes: TfmReleaseNotes;

implementation

uses AxiomData;

{$R *.dfm}

procedure TfmReleaseNotes.FormShow(Sender: TObject);
var
  LhApp: THandle;
  LOfApp: OFSTRUCT;
  LBuff: PChar;
  LBytes, LBytesRead: DWORD;
  ResStream: TResourceStream;
const
  C_ID = 'RELEASENOTES';
begin
   mReleaseNotes.Lines.Clear();
   dmAxiom.qryTmp.SQL.Text := 'UPDATE employee SET RELEASENOTESREAD = RELEASENOTESREAD + 1  where code = ''' + dmAxiom.UserID + '''';
   dmAxiom.qryTmp.ExecSQL();

   try
      ResStream := TResourceStream.Create(hInstance, 'releasenotes', RT_RCDATA);
      mReleaseNotes.Lines.LoadFromStream(ResStream);
   finally
      ResStream.Free;
   end;

{  try
    LhApp := OpenFile(PAnsiChar(ParamStr(0)),LOfApp,OF_READ);
    if(LhApp = HFILE_ERROR) then
    begin
      mReleaseNotes.Lines.Add('Unable to read application file');
      Exit;
    end;

    SetFilePointer(LhApp,-Length(C_ID),nil,FILE_END);
    LBuff := AllocMem(20);
    try
      ReadFile(LhApp,LBuff[0],Length(C_ID), LBytesRead,nil);
      LBuff[LBytesRead] := #0;
      if(StrComp(C_ID,LBuff) <> 0) then
      begin
        mReleaseNotes.Lines.Add('Release notes not attached to application');
        Exit;
      end;
    finally
      FreeMem(LBuff);
    end;

    SetFilePointer(LhApp,-(Length(C_ID) + SizeOf(LBytes)),nil,FILE_END);

    ReadFile(LhApp,LBytes,SizeOf(LBytes),LBytesRead,nil);

    LBuff := AllocMem(LBytes + 20);
    try
      SetFilePointer(LhApp,-(LBytes + SizeOf(LBytes)),nil,FILE_END);

      ReadFile(LhApp,LBuff[0], LBytes, LBytesRead,nil);
      LBuff[LBytesRead] := #0;
      mReleaseNotes.Lines.Text := String(LBuff);
    finally
      FreeMem(LBuff);
    end;
  finally
  end;   }
end;

procedure TfmReleaseNotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fmReleaseNotes := nil;
end;

procedure TfmReleaseNotes.pbPrintClick(Sender: TObject);
begin
   mReleaseNotes.Print('Release Notes');
end;

procedure TfmReleaseNotes.pbCloseClick(Sender: TObject);
begin
   Self.Close;
end;

end.

