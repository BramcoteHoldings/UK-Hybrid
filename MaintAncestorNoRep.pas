unit MaintAncestorNoRep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DbCtrls, ComCtrls, ImgList, ToolWin, ExtCtrls,
  Menus, OracleUniProvider, Uni, DBAccess, MemDS, AxiomData, dxBar, dxBarDBNav,
  cxClasses;

type
  TfrmMaintNoRep = class(TForm)
    dsSource: TUniDataSource;
    ilstToolbar: TImageList;
    qrySource: TUniQuery;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    mnuFileNew: TdxBarButton;
    mnuFileDelete: TdxBarButton;
    mnuFilePrint: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuFile: TdxBarSubItem;
    mnuSearchFirst: TdxBarButton;
    mnuSearchPrior: TdxBarButton;
    mnuSearchNext: TdxBarButton;
    mnuSearchLast: TdxBarButton;
    mnuSearch: TdxBarSubItem;
    mnuHelpHelp: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPriorClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qrySourceAfterPost(DataSet: TDataSet);
    procedure mnuFileExitClick(Sender: TObject);
    procedure tbtnPostClick(Sender: TObject);
    procedure tbtnCancelClick(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure qrySourceAfterEdit(DataSet: TDataSet);
    procedure qrySourceAfterCancel(DataSet: TDataSet);
    procedure dxBarDBNavInsert1Click(Sender: TObject);
    procedure dxBarDBNavDelete1Click(Sender: TObject);
  private
    FPrimaryField : string;
    procedure SetToolbuttons;
  public
    property PrimaryField : string read FPrimaryField write FPrimaryField;
  end;

var
  frmMaintNoRep: TfrmMaintNoRep;

implementation

{$R *.DFM}

uses
  MiscFunc;

procedure TfrmMaintNoRep.tbtnNewClick(Sender: TObject);
var
  iCtr : integer;
begin
  qrySource.Insert;
  // Release all the Memos
  for iCtr := 0 to Self.ControlCount - 1 do
    if Self.Controls[iCtr] is TDBEdit then
      if (Self.Controls[iCtr] as TDBEdit).TabOrder = 0 then
        (Self.Controls[iCtr] as TDBEdit).SetFocus;
end;

procedure TfrmMaintNoRep.tbtnDeleteClick(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this entry: "' + qrySource.FieldByName(PrimaryField).AsString + '"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    qrySource.Delete;
    PlaySound('Delete');
  end;
end;

procedure TfrmMaintNoRep.tbtnFirstClick(Sender: TObject);
begin
  qrySource.First;
end;

procedure TfrmMaintNoRep.tbtnPriorClick(Sender: TObject);
begin
  qrySource.Prior;
end;

procedure TfrmMaintNoRep.tbtnNextClick(Sender: TObject);
begin
  qrySource.Next;
end;

procedure TfrmMaintNoRep.tbtnLastClick(Sender: TObject);
begin
  qrySource.Last;
end;

procedure TfrmMaintNoRep.SetToolbuttons;
begin

end;

procedure TfrmMaintNoRep.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  mrResult : Word;
begin
  if qrySource.Modified then
  begin
    mrResult := MessageDlg('Do you want to save your changes?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
    case mrResult of
      mrYes : qrySource.Post;
      mrCancel : CanClose := False;
    end;
  end;
end;

procedure TfrmMaintNoRep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrySource.Close;
//  Action := caFree;
  RemoveFromDesktop(Self);
end;

procedure TfrmMaintNoRep.qrySourceAfterScroll(DataSet: TDataSet);
begin
  SetToolbuttons;
//  if DataSet.State <> dsInsert then
//    ToggleEditButtons(Self, ebaDisableCancelPost);
end;

procedure TfrmMaintNoRep.FormCreate(Sender: TObject);
begin
  PrimaryField := 'CODE';
  if not qrySource.Active then
    qrySource.Open;
end;

procedure TfrmMaintNoRep.qrySourceAfterPost(DataSet: TDataSet);
var
  sCode : string;
begin
  try
    sCode := qrySource.FieldByName(PrimaryField).AsString;
//    dsSource.DataSet.DisableControls;
    qrySource.Close;
    qrySource.Open;
    if not qrySource.Locate(PrimaryField, sCode, []) then
      qrySource.First;
  finally
//    dsSource.DataSet.EnableControls;
//    ToggleEditButtons(Self, ebaDisableCancelPost);
  end;
end;

procedure TfrmMaintNoRep.mnuFileExitClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmMaintNoRep.tbtnPostClick(Sender: TObject);
begin
  qrySource.Post;
end;

procedure TfrmMaintNoRep.tbtnCancelClick(Sender: TObject);
begin
  qrySource.Cancel;
end;

procedure TfrmMaintNoRep.qrySourceAfterInsert(DataSet: TDataSet);
begin
//  ToggleEditButtons(Self, ebaEnableCancelPost);
end;

procedure TfrmMaintNoRep.qrySourceAfterEdit(DataSet: TDataSet);
begin
//  ToggleEditButtons(Self, ebaEnableCancelPost);
end;

procedure TfrmMaintNoRep.qrySourceAfterCancel(DataSet: TDataSet);
begin
//  ToggleEditButtons(Self, ebaDisableCancelPost);
end;

procedure TfrmMaintNoRep.dxBarDBNavInsert1Click(Sender: TObject);
var
  iCtr : integer;
begin
  qrySource.Insert;
  // Release all the Memos
  for iCtr := 0 to Self.ControlCount - 1 do
    if Self.Controls[iCtr] is TDBEdit then
      if (Self.Controls[iCtr] as TDBEdit).TabOrder = 0 then
        (Self.Controls[iCtr] as TDBEdit).SetFocus;

end;

procedure TfrmMaintNoRep.dxBarDBNavDelete1Click(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this entry: "' + qrySource.FieldByName(PrimaryField).AsString + '"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    qrySource.Delete;
    PlaySound('Delete');
  end;
end;

end.
