unit WinFront;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, checklst, Menus;

type
  TfrmWindows = class(TForm)
    sbarWindows: TStatusBar;
    popList: TPopupMenu;
    popCloseAll: TMenuItem;
    clbWindows: TCheckListBox;
    popCloseSel: TMenuItem;
    popOpen: TMenuItem;
    popSelectAll: TMenuItem;
    popUnselectAll: TMenuItem;
    popReverse: TMenuItem;
    popLine1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure popCloseAllClick(Sender: TObject);
    procedure popSelectAllClick(Sender: TObject);
    procedure popOpenClick(Sender: TObject);
    procedure popUnselectAllClick(Sender: TObject);
    procedure popReverseClick(Sender: TObject);
    procedure clbWindowsDblClick(Sender: TObject);
    procedure popCloseSelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReDisplay;

  end;

var
  frmWindows: TfrmWindows;

implementation

{$R *.DFM}


procedure TfrmWindows.FormShow(Sender: TObject);
begin
  Self.ReDisplay;
end;

procedure TfrmWindows.ReDisplay;
var
  iCtr : integer;
  iOpen : integer;
begin
  clbWindows.Clear;
  iOpen := 0;
  for iCtr := 0 to Screen.Formcount - 1 do
    if (Screen.Forms[iCtr].Name <> 'frmDesktop') AND (Screen.Forms[iCtr].Name <> 'frmWindows') AND Screen.Forms[iCtr].Visible then
    begin
      iOpen := iOpen + 1;
      clbWindows.Items.Add(Screen.Forms[iCtr].Caption);
    end;
  sbarWindows.Panels.Items[0].Text := IntToStr(iOpen) + ' windows open';
end;


procedure TfrmWindows.FormActivate(Sender: TObject);
begin
  ReDisplay;
end;


procedure TfrmWindows.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Release;
end;


procedure TfrmWindows.popCloseAllClick(Sender: TObject);
var
  iCtr : integer;
begin
  iCtr := 0;
  while iCtr < Screen.FormCount do
  begin
    if (Screen.Forms[iCtr].Name <> 'frmDesktop') and (Screen.Forms[iCtr].Name <> 'frmWindows') and (Screen.Forms[iCtr].Visible) then
    begin
      Screen.Forms[iCtr].Close;
      iCtr := -1;
    end;
    iCtr := iCtr + 1;
  end;
  Self.Release;
end;


procedure TfrmWindows.popSelectAllClick(Sender: TObject);
var
  iCtr : integer;
begin
  for iCtr := 0 to clbWindows.Items.Count - 1 do
    clbWindows.Checked[iCtr] := True;
end;


procedure TfrmWindows.popOpenClick(Sender: TObject);
var
  iCtr : integer;
begin
  if clbWindows.ItemIndex >= 0 then
    for iCtr := 0 to Screen.FormCount - 1 do
      if Screen.Forms[iCtr].Caption = clbWindows.Items.Strings[clbWindows.ItemIndex] then
      begin
        Screen.Forms[iCtr].Show;
        if Screen.Forms[iCtr].WindowState = wsMinimized then
          Screen.Forms[iCtr].WindowState := wsNormal;
      end;
  Self.Release;
end;


procedure TfrmWindows.popUnselectAllClick(Sender: TObject);
var
  iCtr : integer;
begin
  for iCtr := 0 to clbWindows.Items.Count - 1 do
    clbWindows.Checked[iCtr] := False;
end;


procedure TfrmWindows.popReverseClick(Sender: TObject);
var
  iCtr : integer;
begin
  for iCtr := 0 to clbWindows.Items.Count - 1 do
    clbWindows.Checked[iCtr] := not clbWindows.Checked[iCtr];
end;


procedure TfrmWindows.clbWindowsDblClick(Sender: TObject);
begin
  popOpen.Click;
end;


procedure TfrmWindows.popCloseSelClick(Sender: TObject);
var
  iListCtr, iWindowCtr : integer;
  bClosed : boolean;
begin
  for iListCtr := 0 to clbWindows.Items.Count - 1 do
    if clbWindows.Checked[iListCtr] then
    begin
      iWindowCtr := 0;
      bClosed := False;
      while (iWindowCtr < Screen.FormCount) and not bClosed do
      begin
        if Screen.Forms[iWindowCtr].Caption = clbWindows.Items.Strings[iListCtr] then
        begin
          Screen.Forms[iWindowCtr].Close;
          bClosed := True;
        end;
        iWindowCtr := iWindowCtr + 1;
      end;
    end;

  Redisplay;
end;


end.
