unit MSOpenReadOnly;

interface

uses  Classes, SysUtils, Data.DB;

function ReadDocument(sDocumentPath: string): Integer;

implementation

uses
  Dialogs, ComObj, Variants,
  Office2010, Word2010, Excel2010, Powerpoint2010,
  Windows, MiscFunc, Controls, ActiveX, DocDescription, AxiomData;

function ReadDocument(sDocumentPath: string): Integer;
var
   AExt: string;
   WA: TWordApplication;
   EA: TExcelApplication;
   PA: TPowerpointApplication;
   WDoc: _Document;
   Ebook: _Workbook;
   Pslide: _Presentation;
begin
    Result := mrCancel;
    try

        AExt := UPPERCASE(ExtractFileExt(sDocumentPath));

        if ((AExt = '.PPT') or (AExt = '.PPTX') or (AExt = '.PPTM') or (AExt = '.POTX') or (AExt = '.POTM') or (AExt = '.PPSX') or (AExt = '.PPSM')) then
        begin
           PA := TPowerpointApplication.Create( nil );
           PA.Connect;
           Pslide := PA.Presentations.Open( sDocumentPath, msoTrue , msoFalse, msoTrue);
           PA.Visible := msoTrue;
        end;
        if ((AExt = '.XLS') or (AExt = '.XLSX') or (AExt = '.XLT') or (AExt = '.XLTX') or (AExt = '.XLTM')) then
        begin
           EA := TExcelApplication.Create( nil );
           EA.Connect;
           EBook := EA.WorkBooks.Open( sDocumentPath, EmptyParam, True , EmptyParam,
                                          EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                          EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                          EmptyParam, EmptyParam, EmptyParam, GetUserDefaultLCID);
           EA.Visible[GetUserDefaultLCID] := True;
        end;
        if ((AExt = '.DOC') or (AExt = '.DOCX') or (AExt = '.DOT') or (AExt = '.DOTX') or (AExt = '.DOTM') or (AExt = '.DOCM')) then
        begin
           WA := TWordApplication.Create( nil );
           WA.Connect;
           WA.Visible := True;
           WDoc := Wa.Documents.Open( sDocumentPath, EmptyParam, true , EmptyParam,
                                          EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                          EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                          True, EmptyParam, EmptyParam, EmptyParam);
           WA.ActiveWindow.Caption := sDocumentPath;
           WA.ActiveWindow.WindowState := wdWindowStateMaximize;
           WA.WindowState  := wdWindowStateMaximize;
           WA.ActiveWindow.SetFocus;
        end;
      except
         on E: Exception do
          MessageDlg('Error during opening of a Microsoft Office file: ' + E.Message, mtError, [mbOK], 0);
      end;
end;

end.
