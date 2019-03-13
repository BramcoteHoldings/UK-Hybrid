unit EmpType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Mask, DBCtrls, Db, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Menus, OracleUniProvider, Uni, MemDS, AxiomData,
  DBAccess, dxBarDBNav, dxBar, cxControls, cxContainer, cxEdit,
  cxLabel, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxLookAndFeelPainters, cxButtons, cxListBox, ActnList, ActnMan,
  cxLookAndFeels, XPStyleActnCtrls, ppCtrls, ppDB, ppDBPipe, ppBands,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  cxPCdxBarPopupMenu, ppParameter, ppDesignLayer, System.Actions,
  dxBarBuiltInMenu, cxCustomListBox;

const
  imgNO = 0;
  imgYES = 1;
  imgTYPE = 2;
  imgEMP = 3;

type
  TfrmEmpType = class(TfrmMaint)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    qryFeeCodeTypeChange: TUniQuery;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    qryEmpTypeSecurityUpdate: TUniQuery;
    dxBarButton1: TdxBarButton;
    qrySecurity: TUniQuery;
    ilstTreeView: TImageList;
    cxPageControl1: TcxPageControl;
    tsSecurity: TcxTabSheet;
    tvSecurity: TTreeView;
    tsDefaultLaunch: TcxTabSheet;
    Label4: TLabel;
    lbLaunchAll: TcxListBox;
    btnLaunchAll: TcxButton;
    btnLaunchSelect: TcxButton;
    Label5: TLabel;
    btnRemove: TcxButton;
    btnLaunchNone: TcxButton;
    lbLaunchSelected: TcxListBox;
    qryEmpCuts: TUniQuery;
    qryShortcuts: TUniQuery;
    qryUpdate: TUniQuery;
    bbtnSecuritySave: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    ActionManager1: TActionManager;
    actSaveSecurity: TAction;
    dxBarDockControl2: TdxBarDockControl;
    dxBarButton2: TdxBarButton;
    actLaunchSave: TAction;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    procedure qrySourceBeforeDelete(DataSet: TDataSet);
    procedure qrySourceBeforePost(DataSet: TDataSet);
    procedure tbtnSecurityClick(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure tbtnPrintClick(Sender: TObject);
    procedure qrySourceBeforeScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure tvSecurityKeyPress(Sender: TObject; var Key: Char);
    procedure tvSecurityDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnLaunchAllClick(Sender: TObject);
    procedure btnLaunchSelectClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnLaunchNoneClick(Sender: TObject);
    procedure actSaveSecurityUpdate(Sender: TObject);
    procedure actSaveSecurityExecute(Sender: TObject);
    procedure actLaunchSaveExecute(Sender: TObject);
    procedure actLaunchSaveUpdate(Sender: TObject);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
 private
    { Private declarations }
    FTable : string;
    FCode : string;
    SecurityChanged : boolean;
    LaunchChanged: boolean;
    procedure AddNodes(nodParent : TTreeNode; sPrefix : string);
    procedure EmpCutsDelete(sCode : string);
    procedure SaveLaunch(sCode : string);
    procedure LoadEmpTypeCuts(sCode : string);
  public
    { Public declarations }
    procedure ShowSecurity(sType : string; sCode : string);
    procedure SaveSecurity(nodParent : TTreeNode; sPrefix : string);
    procedure UpdateChildren(nodParent : TTreeNode);
  end;
var
  frmEmpType: TfrmEmpType;

implementation

{$R *.DFM}

uses
  Security, MiscFunc;

procedure TfrmEmpType.qrySourceBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with qryFeeCodeTypeChange do
  begin
    SQL.Text := 'DELETE FROM FEECODETYPE WHERE EMPTYPE = ''' + qrySource.FieldByName('CODE').AsString + '''';
    ExecSQL;
  end;

  with qryEmpTypeSecurityUpdate do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM EMPTYPESECURITY');
    SQL.Add('WHERE EMPTYPE = '+QuotedStr(qrySource.FieldByName('CODE').AsString));
    ExecSQL;
  end;
end;

procedure TfrmEmpType.qrySourceBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrySource.State = dsInsert then
  begin
    with qryFeeCodeTypeChange do
    begin
      SQL.Text := 'INSERT INTO FEECODETYPE (FEECODE, EMPTYPE, RATE) SELECT CODE, ''' +
                  qrySource.FieldByName('CODE').AsString + ''', NULL FROM FEECODE';
      ExecSQL;
    end;

    dxBarDBNavPost3.Enabled := True;
    qryEmpTypeSecurityUpdate.SQL.Clear;
    qryEmpTypeSecurityUpdate.SQL.Add('INSERT INTO EMPTYPESECURITY');
    qryEmpTypeSecurityUpdate.SQL.Add('SELECT DISTINCT');
    qryEmpTypeSecurityUpdate.SQL.Add(QuotedStr(qrySource.FieldByName('CODE').AsString));
    qryEmpTypeSecurityUpdate.SQL.Add(', ITEM, 0 FROM EMPTYPESECURITY');
    qryEmpTypeSecurityUpdate.ExecSQL;
  end;
end;

procedure TfrmEmpType.tbtnSecurityClick(Sender: TObject);
begin
//  with TfrmSecurity.Create(Self) do
//    ShowSecurity('EMPTYPE', qrySource.FieldByName('CODE').AsString);
end;

procedure TfrmEmpType.qrySourceAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrySource.FieldByName('REPORTGROUP').AsInteger := 0;
end;

procedure TfrmEmpType.qrySourceAfterScroll(DataSet: TDataSet);
begin
  inherited;
   ShowSecurity('EMPTYPE', qrySource.FieldByName('CODE').AsString);
   LoadEmpTypeCuts(qrySource.FieldByName('CODE').AsString);
end;

procedure TfrmEmpType.tbtnPrintClick(Sender: TObject);
begin
  inherited;
  rpMaintReport.Print;
end;

procedure TfrmEmpType.qrySourceBeforeScroll(DataSet: TDataSet);
begin
   inherited;
   if SecurityChanged then
      if MsgAsk('You have changed the security for ' + tvSecurity.Items[0].Text + #13 + #13 + 'Do you want to save your changes?') = mrYes then
         SaveSecurity(tvSecurity.Items[0], '');
end;

procedure TfrmEmpType.SaveSecurity(nodParent : TTreeNode; sPrefix : string);
var
  nodWalker : TTreeNode;
begin
   Screen.Cursor := crSQLWait;
   nodWalker := nodParent.GetFirstChild;
   while nodWalker <> nil do
   begin
      with qrySecurity do
      begin
         SQL.Text := 'UPDATE ' + FTable + 'SECURITY SET ENABLED = ' + IntToStr(nodWalker.ImageIndex) + ' WHERE ' + FTable + ' = ''' + FCode + ''' AND ITEM = ''' + sPrefix + nodWalker.Text + '''';
         ExecSQL;
      end;
      if nodWalker.HasChildren then
         SaveSecurity(nodWalker, sPrefix + nodWalker.Text + '.');
      nodWalker := nodParent.GetNextChild(nodWalker);
   end;
   SecurityChanged := False;
   Screen.Cursor := crDefault;
end;

procedure TfrmEmpType.FormCreate(Sender: TObject);
begin
  inherited;
   SecurityChanged := False;
   LaunchChanged := False;
end;

procedure TfrmEmpType.tvSecurityKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if Key = ' ' then
    tvSecurity.OnDblClick(Self);
  Key := #0;
end;

procedure TfrmEmpType.tvSecurityDblClick(Sender: TObject);
var
  nodWalker : TTreeNode;
begin
   inherited;
   Screen.Cursor := crHourGlass;
   if (tvSecurity.Selected <> nil) and (tvSecurity.Selected <> tvSecurity.Items[0]) then
   begin
     tvSecurity.Items.BeginUpdate;
     SecurityChanged := True;
     if tvSecurity.Selected.ImageIndex = imgNO then
       tvSecurity.Selected.ImageIndex := imgYES
     else if tvSecurity.Selected.ImageIndex = imgYES then
       tvSecurity.Selected.ImageIndex := imgNO;
     tvSecurity.Selected.SelectedIndex := tvSecurity.Selected.ImageIndex;
     if tvSecurity.Selected.ImageIndex = imgYES then
     begin
       // If we allow access to the child, allow it also for the parent
       nodWalker := tvSecurity.Selected.Parent;
       while nodWalker <> tvSecurity.Items[0] do
       begin
         nodWalker.ImageIndex := imgYES;
         nodWalker.SelectedIndex := imgYES;
         nodWalker := nodWalker.Parent;
       end;
     end;
     if tvSecurity.Selected.HasChildren then
     begin
       // Make all the child nodes the same selection
       UpdateChildren(tvSecurity.Selected);
       // Repaint is stuffed - go to next node on this level
       tvSecurity.Selected := tvSecurity.Selected.Parent.GetNextChild(tvSecurity.Selected);
     end
     else
       // Find next node to trigger a repaint of this node
       tvSecurity.Selected := tvSecurity.Selected.GetNext;
     tvSecurity.Items.EndUpdate;
   end;
   Screen.Cursor := crDefault;
end;

procedure TfrmEmpType.UpdateChildren(nodParent : TTreeNode);
var
  nodWalker : TTreeNode;
begin
  nodWalker := nodParent.GetFirstChild;
  while nodWalker <> nil do
  begin
    nodWalker.ImageIndex := nodParent.ImageIndex;
    nodWalker.SelectedIndex := nodParent.SelectedIndex;
    if nodWalker.HasChildren then
      UpdateChildren(nodWalker);
    nodWalker := nodParent.GetNextChild(nodWalker);
  end;
end;

procedure TfrmEmpType.ShowSecurity(sType : string; sCode : string);
var
  sTmp : string;
  iRootImg : integer;
  nodRoot : TTreeNode;
begin
   Screen.Cursor := crHourGlass;
   FTable := sType;
   FCode := sCode;

   tvSecurity.Items.Clear;

   if FTable = 'EMPTYPE' then
   begin
     Self.Caption := 'Employee Type Security';
     sTmp := TableString('EMPTYPE', 'CODE', sCode, 'DESCR');
     iRootImg := imgTYPE;
   end
   else
   begin
     Self.Caption := 'Employee Security';
     sTmp := TableString('EMPLOYEE', 'CODE', sCode, 'NAME');
     iRootImg := imgEMP;
   end;

   if sTmp <> '' then
   begin
     tvSecurity.Items.BeginUpdate;
     nodRoot := tvSecurity.Items.Add(Nil, sTmp);
     nodRoot.ImageIndex := iRootImg;
     nodRoot.SelectedIndex := iRootImg;
     with qrySecurity do
     begin
       SQL.Text := 'SELECT ITEM, ENABLED FROM ' + FTable + 'SECURITY WHERE ' + FTable + ' = ''' + FCode + ''' ORDER BY ITEM';
       Open;
       AddNodes(nodRoot, '');
       Close;
     end;

     tvSecurity.Items.EndUpdate;
     nodRoot.Expand(False);
   end;
   Screen.Cursor := crDefault;
end;


procedure TfrmEmpType.AddNodes(nodParent : TTreeNode; sPrefix : string);
var
  sTmp : string;
  nodNew : TTreeNode;
begin
  while not qrySecurity.EOF do
  begin
    sTmp := qrySecurity.FieldByName('ITEM').AsString;
    while Pos('.', sTmp) > 0 do
      sTmp := Copy(sTmp, Pos('.', sTmp) + 1, 255);
    nodNew := tvSecurity.Items.AddChild(nodParent, sTmp);
    nodNew.ImageIndex := qrySecurity.FieldByName('ENABLED').AsInteger;
    nodNew.SelectedIndex := nodNew.ImageIndex;
    qrySecurity.Next;
    if sPrefix + nodNew.Text = Copy(qrySecurity.FieldByName('ITEM').AsString, 1, Length(sPrefix + nodNew.Text)) then
      AddNodes(nodNew, sPrefix + nodNew.Text + '.');
    if sPrefix <> Copy(qrySecurity.FieldByName('ITEM').AsString, 1, Length(sPrefix)) then
      Exit;
  end;
end;

procedure TfrmEmpType.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   inherited;
   if SecurityChanged then
   begin
      if MsgAsk('You have changed the security for ' + tvSecurity.Items[0].Text + #13 + #13 + 'Do you want to save your changes?') = mrYes then
         SaveSecurity(tvSecurity.Items[0], '');
   end;
   if LaunchChanged then
   begin
      if MsgAsk('You have changed the default Launch programs for ' + tvSecurity.Items[0].Text + #13 + #13 + 'Do you want to save your changes?') = mrYes then
         SaveLaunch(qrySource.FieldByName('CODE').AsString);
   end;
end;

procedure TfrmEmpType.btnLaunchAllClick(Sender: TObject);
begin
  inherited;
   ListBoxMoveAll(lbLaunchAll, lbLaunchSelected);
   LaunchChanged := True;
end;

procedure TfrmEmpType.btnLaunchSelectClick(Sender: TObject);
begin
  inherited;
  ListBoxMoveSelected(lbLaunchAll, lbLaunchSelected);
  LaunchChanged := True;
end;

procedure TfrmEmpType.btnRemoveClick(Sender: TObject);
begin
  inherited;
   ListBoxMoveSelected(lbLaunchSelected, lbLaunchAll);
   LaunchChanged := True;
end;

procedure TfrmEmpType.btnLaunchNoneClick(Sender: TObject);
begin
  inherited;
   ListBoxMoveAll(lbLaunchSelected, lbLaunchAll);
   LaunchChanged := True;
end;

procedure TfrmEmpType.SaveLaunch(sCode : string);
var
  iCtr: integer;
begin
  EmpCutsDelete(sCode);
  with qryEmpCuts do
  begin
    Open;
    for iCtr := 0 to lbLaunchSelected.Items.Count - 1 do
    begin
      if qryShortcuts.Locate('NAME', lbLaunchSelected.Items.Strings[iCtr], []) then
      begin
        Insert;
        FieldByName('EMPTYPE').AsString := sCode;
        FieldByName('NAME').AsString := lbLaunchSelected.Items.Strings[iCtr];
        FieldByName('IMAGEINDEX').AsInteger := qryShortcuts.FieldByName('IMAGEINDEX').AsInteger;
        FieldByName('SHORTCUT_GROUP').AsInteger := qryShortcuts.FieldByName('SHORTCUT_GROUP').AsInteger;
        Post;
      end;
    end;
  end;
end;

procedure TfrmEmpType.EmpCutsDelete(sCode : string);
begin
  qryUpdate.SQL.Text := 'DELETE FROM EMP_TYPE_CUTS WHERE EMPTYPE = ' + QuotedStr(sCode);
  qryUpdate.ExecSQL;
end;

procedure TfrmEmpType.LoadEmpTypeCuts(sCode : string);
begin
    lbLaunchSelected.Clear;
    lbLaunchAll.Clear;
    // Load the shortcuts
    lbLaunchAll.Clear;
    if (qryShortcuts.Active = false) then
      qryShortcuts.Open;
    qryShortcuts.First;
    while not qryShortcuts.EOF do
    begin
      lbLaunchAll.Items.Add(qryShortcuts.FieldByName('NAME').AsString);
      qryShortcuts.Next;
    end;
    // Load this Employees shortcuts
    lbLaunchSelected.Clear;
    qryEmpCuts.ParamByName('P_EmpType').AsString := sCode;
    qryEmpCuts.Open;
    while not qryEmpCuts.EOF do
    begin
      lbLaunchSelected.Items.Add(qryEmpCuts.FieldByName('NAME').AsString);
      lbLaunchAll.Items.Delete(lbLaunchAll.Items.IndexOf(qryEmpCuts.FieldByName('NAME').AsString));

      qryEmpCuts.Next;
    end;
    qryEmpCuts.Close;
end; 

procedure TfrmEmpType.actSaveSecurityUpdate(Sender: TObject);
begin
  inherited;
  actSaveSecurity.Enabled := SecurityChanged;
end;

procedure TfrmEmpType.actSaveSecurityExecute(Sender: TObject);
begin
   inherited;
   SaveSecurity(tvSecurity.Items[0], '');
   SecurityChanged := False;
end;

procedure TfrmEmpType.actLaunchSaveExecute(Sender: TObject);
begin
  inherited;
  SaveLaunch(qrySource.FieldByName('CODE').AsString);
  LaunchChanged := False;
end;

procedure TfrmEmpType.actLaunchSaveUpdate(Sender: TObject);
begin
  inherited;
   actLaunchSave.Enabled := LaunchChanged;
end;

end.

