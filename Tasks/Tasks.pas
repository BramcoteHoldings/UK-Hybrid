unit Tasks;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Db, Buttons, Mask, Spin, ComCtrls,
  ToolWin, Grids, DBGrids, ImgList, Menus, Ora, OracleUniProvider, Uni,
  DBAccess, MemDS;

type
  TfrmTasks = class(TForm)
    qryTask: TUniQuery;
    dsTask: TUniDataSource;
    lblType: TLabel;
    ToolBar1: TToolBar;
    ilstToolbar: TImageList;
    tbtnNew: TToolButton;
    tbtnDelete: TToolButton;
    ToolButton3: TToolButton;
    tbtnFirst: TToolButton;
    tbtnPrev: TToolButton;
    tbtnNext: TToolButton;
    tbtnLast: TToolButton;
    ToolButton8: TToolButton;
    tbtnPrint: TToolButton;
    ToolButton10: TToolButton;
    Label1: TLabel;
    Label2: TLabel;
    dblblWorkflowType: TDBText;
    dblblCode: TDBText;
    dbmmoDesc: TDBMemo;
    dbtbDays: TDBEdit;
    Label3: TLabel;
    chkMaster: TCheckBox;
    pagTaskItems: TPageControl;
    tabTaskStart: TTabSheet;
    tabTaskEnd: TTabSheet;
    qryTaskItems: TUniQuery;
    dsTaskItems: TUniDataSource;
    dbgrTaskItemStart: TDBGrid;
    dbgrTaskItemEnd: TDBGrid;
    btnAddStartTask: TBitBtn;
    btnAddEndTask: TBitBtn;
    qryTaskLink: TUniQuery;
    btnDeleteStartTask: TBitBtn;
    qryTaskUnlink: TUniQuery;
    btnDeleteEndTask: TBitBtn;
    tbEdit: TToolButton;
    qryTaskTmp: TUniQuery;
    popTaskOrder: TPopupMenu;
    mnuMoveUp: TMenuItem;
    mnuMoveDown: TMenuItem;
    ToolButton1: TToolButton;
    procedure btnFindMatterClick(Sender: TObject);
    procedure qryTaskBeforePost(DataSet: TDataSet);
    procedure qryTaskAfterScroll(DataSet: TDataSet);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkMasterClick(Sender: TObject);
    procedure pagTaskItemsChange(Sender: TObject);
    procedure btnAddStartTaskClick(Sender: TObject);
    procedure btnAddEndTaskClick(Sender: TObject);
    procedure btnDeleteStartTaskClick(Sender: TObject);
    procedure btnDeleteEndTaskClick(Sender: TObject);
    procedure tbEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure popTaskOrderPopup(Sender: TObject);
    procedure mnuTaskMoveClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmTasks: TfrmTasks;

implementation

uses
  TaskTempNew, MSearch, MiscFunc, AxiomData, TaskItemSearch;

{$R *.DFM}

procedure TfrmTasks.btnFindMatterClick(Sender: TObject);
begin
  frmMatterSearch := TfrmMatterSearch.Create(Self);
  if frmMatterSearch.ShowModal = mrOk then
  begin
    if not qryTask.Modified then
      qryTask.Edit;
    qryTask.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
    qryTask.Post;
  end;
end;


procedure TfrmTasks.qryTaskBeforePost(DataSet: TDataSet);
begin
  if not qryTask.Modified then
    qryTask.Edit;
end;


procedure TfrmTasks.qryTaskAfterScroll(DataSet: TDataSet);
begin
  tbtnFirst.Enabled := not qryTask.BOF;
  tbtnPrev.Enabled := not qryTask.BOF;
  tbtnNext.Enabled := not qryTask.EOF;
  tbtnLast.Enabled := not qryTask.EOF;

  if qryTask.FieldByName('MASTER').AsString = 'Y' then
    chkMaster.Checked := True
  else
    chkMaster.Checked := False;
  pagTaskItems.OnChange(Self);
end;


procedure TfrmTasks.tbtnFirstClick(Sender: TObject);
begin
  if qryTask.Modified then
    qryTask.Post;
  qryTask.First;
end;


procedure TfrmTasks.tbtnPrevClick(Sender: TObject);
begin
  if qryTask.Modified then
    qryTask.Post;
  qryTask.Prior;
end;


procedure TfrmTasks.tbtnNextClick(Sender: TObject);
begin
  if qryTask.Modified then
    qryTask.Post;
  qryTask.Next;
end;


procedure TfrmTasks.tbtnLastClick(Sender: TObject);
begin
  if qryTask.Modified then
    qryTask.Post;
  qryTask.Last;
end;


procedure TfrmTasks.tbtnNewClick(Sender: TObject);
begin
  if qryTask.Modified then
    qryTask.Post;
  with TfrmTaskTempNew.Create(Self) do
    ShowModal;
  qryTask.Close;
  qryTask.Open;
end;


procedure TfrmTasks.tbtnDeleteClick(Sender: TObject);
begin
  if qryTask.Modified then
    qryTask.Post;
  MsgErr('You may not delete this Task');
end;


procedure TfrmTasks.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryTaskLink.Close;
  qryTaskItems.Close;
  qryTask.Close;
  qryTaskUnlink.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;


procedure TfrmTasks.chkMasterClick(Sender: TObject);
begin
  if not qryTask.Modified then
    qryTask.Edit;
  if chkMaster.Checked then
    qryTask.FieldByName('MASTER').AsString := 'Y'
  else
    qryTask.FieldByName('MASTER').AsString := 'N';
end;


procedure TfrmTasks.pagTaskItemsChange(Sender: TObject);
begin
  with qryTaskItems do
  begin
    Close;
    if pagTaskItems.ActivePage = tabTaskStart then
    begin
      ParamByName('P_TaskCode').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('P_Event').AsString := 'B';
      Open;
    end
    else if pagTaskItems.ActivePage = tabTaskEnd then
    begin
      ParamByName('P_TaskCode').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('P_Event').AsString := 'E';
      Open;
    end;
  end;

end;


procedure TfrmTasks.btnAddStartTaskClick(Sender: TObject);
var
  iItemCount: Integer;
begin
  frmTaskItemSearch := TfrmTaskItemSearch.Create(Self);
  if frmTaskItemSearch.ShowModal = mrOK then
  begin
    with qryTaskTmp do
    begin
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) ITEMCOUNT');
      SQL.Add('FROM TASKLINK, TASKITEM');
      SQL.Add('WHERE TASKLINK.TASKCODE = :P_TaskCode');
      SQL.Add('AND TASKLINK.EVENT = :P_Event');
      SQL.Add('AND TASKLINK.TASKITEMCODE = TASKITEM.CODE');
      ParamByName('P_TaskCode').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('P_Event').AsString := 'B';
      Open;
      iItemCount := FieldByName('ITEMCOUNT').AsInteger;
      Close;
    end;
    qryTaskItems.Close;
    with qryTaskLink do
    begin
      ParamByName('TASKCODE').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('TASKITEMCODE').AsString := frmTaskItemSearch.qryTaskItems.FieldByName('CODE').AsString;
      ParamByName('EVENT').AsString := 'B';
      ParamByName('TASKORDER').AsInteger := iItemCount+1;
      ExecSQL;
    end;
    qryTaskItems.Open;
  end;
end;


procedure TfrmTasks.btnAddEndTaskClick(Sender: TObject);
var
  iItemCount: Integer;
begin
  if frmTaskItemSearch.ShowModal = mrOK then
  begin
    with qryTaskTmp do
    begin
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) ITEMCOUNT');
      SQL.Add('FROM TASKLINK, TASKITEM');
      SQL.Add('WHERE TASKLINK.TASKCODE = :P_TaskCode');
      SQL.Add('AND TASKLINK.EVENT = :P_Event');
      SQL.Add('AND TASKLINK.TASKITEMCODE = TASKITEM.CODE');
      ParamByName('P_TaskCode').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('P_Event').AsString := 'E';
      Open;
      iItemCount := FieldByName('ITEMCOUNT').AsInteger;
      Close;
    end;
    qryTaskItems.Close;
    with qryTaskLink do
    begin
      ParamByName('TASKCODE').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('TASKITEMCODE').AsString := frmTaskItemSearch.qryTaskItems.FieldByName('CODE').AsString;
      ParamByName('EVENT').AsString := 'E';
      ParamByName('TASKORDER').AsInteger := iItemCount+1;
      ExecSQL;
    end;
    qryTaskItems.Open;
  end;
end;


procedure TfrmTasks.btnDeleteStartTaskClick(Sender: TObject);
var
  iCtr: Integer;
  sTaskEvent: string;
begin
  if pagTaskItems.ActivePage = tabTaskStart then
    sTaskEvent := 'B'
  else
    sTaskEvent := 'E';
  with qryTaskUnlink do
  begin
    ParamByName('P_TaskCode').AsString := qryTask.FieldByName('CODE').AsString;
    ParamByName('P_TaskItemCode').AsString := qryTaskItems.FieldByName('TASKITEMCODE').AsString;
    ParamByName('P_Event').AsString := 'B';
    Open;
    qryTaskItems.Close;
    if not EOF then
      Delete;
    Close;
    qryTaskItems.Open;
  end;
  iCtr := 1;
  while not(qryTaskItems.EOF) do
  begin
    if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;
    with qryTaskTmp do
    begin
      SQL.Clear;
      SQL.Add('UPDATE TASKLINK SET TASKORDER = :TASKORDER');
      SQL.Add('WHERE TASKCODE = :TASKCODE AND TASKITEMCODE = :TASKITEMCODE AND EVENT = :EVENT');
      ParamByName('TASKORDER').AsInteger := iCtr;
      ParamByName('TASKCODE').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('TASKITEMCODE').AsString := qryTaskItems.FieldByName('TASKITEMCODE').AsString;
      ParamByName('EVENT').AsString := sTaskEvent;
      ExecSQL;
    end;
    dmAxiom.uniInsight.Commit;
    Inc(iCtr);
    qryTaskItems.Next;
  end;
  qryTaskItems.Close;
  qryTaskItems.Open;
end;


procedure TfrmTasks.btnDeleteEndTaskClick(Sender: TObject);
begin
  with qryTaskUnlink do
  begin
    ParamByName('P_TaskCode').AsString := qryTask.FieldByName('CODE').AsString;
    ParamByName('P_TaskItemCode').AsString := qryTaskItems.FieldByName('TASKITEMCODE').AsString;
    ParamByName('P_Event').AsString := 'E';
    Open;
    qryTaskItems.Close;
    if not EOF then
      Delete;
    Close;
    qryTaskItems.Open;
  end;
end;

procedure TfrmTasks.tbEditClick(Sender: TObject);
var
  sTemplateCode: string;
begin
  sTemplateCode := qryTask.FieldByName('CODE').AsString;
  if qryTask.Modified then
    qryTask.Post;
  with TfrmTaskTempNew.Create(Self) do
  begin
    FindTemplate(sTemplateCode);
    Caption := 'Task Template Edit';
    ShowModal;
  end;
  qryTask.Close;
  qryTask.Open;
  qryTask.Locate('CODE', sTemplateCode, []);
end;

procedure TfrmTasks.FormShow(Sender: TObject);
begin
  qryTask.Open;
  qryTaskItems.Open;
end;

procedure TfrmTasks.popTaskOrderPopup(Sender: TObject);
begin
  if qryTaskItems.BOF then
  begin
    qryTaskItems.Next;
    if qryTaskItems.EOF then
    begin
      mnuMoveUp.Enabled := False;
      mnuMoveDown.Enabled := False;
    end
    else
    begin
      qryTaskItems.Prior;
      mnuMoveUp.Enabled := False;
      mnuMoveDown.Enabled := True;
    end;
  end
  else if qryTaskItems.EOF then
  begin
    qryTaskItems.Prior;
    if qryTaskItems.EOF then
    begin
      mnuMoveUp.Enabled := False;
      mnuMoveDown.Enabled := False;
    end
    else
    begin
      qryTaskItems.Next;
      mnuMoveUp.Enabled := True;
      mnuMoveDown.Enabled := False;
    end;
  end
  else
    mnuMoveUp.Enabled := True;
    mnuMoveDown.Enabled := True;
  begin
  end;
end;

procedure TfrmTasks.mnuTaskMoveClick(Sender: TObject);
var
  sTaskEvent: string;
  bmPreviousPos: TBookmark;
begin
  if pagTaskItems.ActivePage = tabTaskStart then
    sTaskEvent := 'B'
  else
    sTaskEvent := 'E';
  bmPreviousPos := qryTaskItems.GetBookmark;
  if TMenuItem(Sender).Name = 'mnuMoveUp' then
  begin
    if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;
    with qryTaskTmp do
    begin
      SQL.Clear;
      SQL.Add('UPDATE TASKLINK SET TASKORDER = :TASKORDER - 1');
      SQL.Add('WHERE TASKCODE = :TASKCODE AND TASKITEMCODE = :TASKITEMCODE AND EVENT = :EVENT');
      ParamByName('TASKORDER').AsInteger := qryTaskItems.FieldByName('TASKORDER').AsInteger;
      ParamByName('TASKCODE').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('TASKITEMCODE').AsString := qryTaskItems.FieldByName('TASKITEMCODE').AsString;
      ParamByName('EVENT').AsString := sTaskEvent;
      ExecSQL;
      qryTaskItems.Prior;
      SQL.Clear;
      SQL.Add('UPDATE TASKLINK SET TASKORDER = :TASKORDER + 1');
      SQL.Add('WHERE TASKCODE = :TASKCODE AND TASKITEMCODE = :TASKITEMCODE AND EVENT = :EVENT');
      ParamByName('TASKORDER').AsInteger := qryTaskItems.FieldByName('TASKORDER').AsInteger;
      ParamByName('TASKCODE').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('TASKITEMCODE').AsString := qryTaskItems.FieldByName('TASKITEMCODE').AsString;
      ParamByName('EVENT').AsString := sTaskEvent;
      ExecSQL;
    end;
    dmAxiom.uniInsight.Commit;
    qryTaskItems.Close;
    qryTaskItems.Open;
    qryTaskItems.GotoBookmark(bmPreviousPos);
    qryTaskItems.Prior;
  end
  else
  begin
    if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
    dmAxiom.uniInsight.StartTransaction;
    with qryTaskTmp do
    begin
      SQL.Clear;
      SQL.Add('UPDATE TASKLINK SET TASKORDER = :TASKORDER + 1');
      SQL.Add('WHERE TASKCODE = :TASKCODE AND TASKITEMCODE = :TASKITEMCODE AND EVENT = :EVENT');
      ParamByName('TASKORDER').AsInteger := qryTaskItems.FieldByName('TASKORDER').AsInteger;
      ParamByName('TASKCODE').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('TASKITEMCODE').AsString := qryTaskItems.FieldByName('TASKITEMCODE').AsString;
      ParamByName('EVENT').AsString := sTaskEvent;
      ExecSQL;
      qryTaskItems.Next;
      SQL.Clear;
      SQL.Add('UPDATE TASKLINK SET TASKORDER = :TASKORDER - 1');
      SQL.Add('WHERE TASKCODE = :TASKCODE AND TASKITEMCODE = :TASKITEMCODE AND EVENT = :EVENT');
      ParamByName('TASKORDER').AsInteger := qryTaskItems.FieldByName('TASKORDER').AsInteger;
      ParamByName('TASKCODE').AsString := qryTask.FieldByName('CODE').AsString;
      ParamByName('TASKITEMCODE').AsString := qryTaskItems.FieldByName('TASKITEMCODE').AsString;
      ParamByName('EVENT').AsString := sTaskEvent;
      ExecSQL;
    end;
    dmAxiom.uniInsight.Commit;
    qryTaskItems.Close;
    qryTaskItems.Open;
    qryTaskItems.GotoBookmark(bmPreviousPos);
    qryTaskItems.Next;
    qryTaskItems.FreeBookmark(bmPreviousPos);
  end;
end;

procedure TfrmTasks.ToolButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

end.
