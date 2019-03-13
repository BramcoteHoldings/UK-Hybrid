unit Security;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ComCtrls, ImgList, OracleUniProvider, Uni, DBAccess, MemDS, dxBar,
  cxClasses;

const
  imgNO = 0;
  imgYES = 1;
  imgTYPE = 2;
  imgEMP = 3;

type
  TfrmSecurity = class(TForm)
    tvSecurity: TTreeView;
    ilstTreeView: TImageList;
    qryEmpSecurityUpdate: TUniQuery;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    qrySecurity: TUniQuery;
    btnRemove: TdxBarButton;
    procedure tvSecurityDblClick(Sender: TObject);
    procedure tvSecurityKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
  private
    { Private declarations }
    FTable : string;
    FCode : string;
    FTypeCode: string;
    SecurityChanged : boolean;
    procedure AddNodes(nodParent : TTreeNode; sPrefix : string);
  public
    { Public declarations }
    procedure ShowSecurity(sType : string; sCode, sTypeCode : string);
    procedure SaveSecurity(nodParent : TTreeNode; sPrefix : string);
    procedure UpdateChildren(nodParent : TTreeNode);
  end;

implementation

{$R *.DFM}

uses
  AxiomData, MiscFunc;

procedure TfrmSecurity.ShowSecurity(sType : string; sCode, sTypeCode : string);
var
  sTmp : string;
  iRootImg : integer;
  nodRoot : TTreeNode;
begin
   FTable    := sType;
   FCode     := sCode;
   FTypeCode := sTypeCode;

   tvSecurity.Items.Clear;

   if FTable = 'EMPTYPE' then
   begin
      Self.Caption := 'Employee Type Security';
      sTmp := TableString('EMPTYPE', 'CODE', sCode, 'DESCR');
    iRootImg := imgTYPE;
   end
   else
   begin
      Self.Caption := 'Security settings for ' + scode;
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
         SQL.Text := 'SELECT ITEM, ENABLED FROM EMPSECURITY WHERE ' + FTable + ' = ''' + FCode + ''' ORDER BY ITEM';
         Open;
         if (EOF) then
         begin
            Close;
            SQL.Text := 'SELECT ITEM, ENABLED FROM EMPTYPESECURITY WHERE EMPTYPE = ''' + sTypeCode + ''' ORDER BY ITEM';
            Open;
            //
            qryEmpSecurityUpdate.SQL.Clear;
            qryEmpSecurityUpdate.SQL.Add('INSERT INTO EMPSECURITY');
            qryEmpSecurityUpdate.SQL.Add('SELECT DISTINCT');
            qryEmpSecurityUpdate.SQL.Add(QuotedStr(FCode));
            qryEmpSecurityUpdate.SQL.Add(', ITEM, ENABLED FROM EMPTYPESECURITY');
            qryEmpSecurityUpdate.SQL.Add('WHERE EMPTYPE = ' + QuotedStr(sTypeCode));
            qryEmpSecurityUpdate.ExecSQL;
            //
            Close;
         end;
         SQL.Text := 'SELECT ITEM, ENABLED FROM EMPSECURITY WHERE ' + FTable + ' = ''' + FCode + ''' ORDER BY ITEM';
         Open;
         AddNodes(nodRoot, '');
         Close;
      end;

      tvSecurity.Items.EndUpdate;
      nodRoot.Expand(False);
      Show;
   end;
end;

procedure TfrmSecurity.AddNodes(nodParent : TTreeNode; sPrefix : string);
var
  sTmp : string;
  nodNew : TTreeNode;
begin
  while not qrySecurity.EOF do
  begin
    sTmp := qrySecurity.FieldByName('ITEM').AsString;
    while Pos('.', sTmp) > 0 do
      sTmp := Copy(sTmp, Pos('.', sTmp) + 1, 99);
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

procedure TfrmSecurity.tvSecurityDblClick(Sender: TObject);
var
  nodWalker : TTreeNode;
begin
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
end;

procedure TfrmSecurity.UpdateChildren(nodParent : TTreeNode);
var
  nodWalker : TTreeNode;
begin
   try
      nodWalker := nodParent.GetFirstChild;
      while nodWalker <> nil do
      begin
         nodWalker.ImageIndex := nodParent.ImageIndex;
         nodWalker.SelectedIndex := nodParent.SelectedIndex;
         if nodWalker.HasChildren then
            UpdateChildren(nodWalker);
         nodWalker := nodParent.GetNextChild(nodWalker);
      end;
   except
     //
   end;
end;

procedure TfrmSecurity.tvSecurityKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    tvSecurity.OnDblClick(Self);
  Key := #0;
end;

procedure TfrmSecurity.FormCreate(Sender: TObject);
begin
  SecurityChanged := False;
end;

procedure TfrmSecurity.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrySecurity.Close;
  Action := caFree;
end;

procedure TfrmSecurity.SaveSecurity(nodParent : TTreeNode; sPrefix : string);
var
  nodWalker : TTreeNode;
begin
  try
    nodWalker := nodParent.GetFirstChild;
    while nodWalker <> nil do
    begin
      with qrySecurity do
      begin
        SQL.Text := 'UPDATE EMPSECURITY SET ENABLED = ' + IntToStr(nodWalker.ImageIndex) + ' WHERE ' + FTable + ' = ''' + FCode + ''' AND ITEM = ''' + sPrefix + nodWalker.Text + '''';
        ExecSQL;
        if (RowsAffected = -1) then
        begin
          SQL.Text := 'INSERT INTO EMPSECURITY VALUES (' +  QuotedStr(FCode) +','+ QuotedStr(sPrefix + nodWalker.Text) +','+ IntToStr(nodWalker.ImageIndex) + ')' ;
          ExecSQL;
        end;
      end;
      if nodWalker.HasChildren then
        SaveSecurity(nodWalker, sPrefix + nodWalker.Text + '.');
      nodWalker := nodParent.GetNextChild(nodWalker);
    end;
  except
  //
  end;
end;


procedure TfrmSecurity.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   try
      if SecurityChanged then
         if MsgAsk('You have changed the security for ' + tvSecurity.Items[0].Text + #13 + #13 + 'Do you want to save your changes?') = mrYes then
         begin
            SaveSecurity(tvSecurity.Items[0], '');
         end;
   except
     //
   end;
end;

procedure TfrmSecurity.dxBarButton1Click(Sender: TObject);
begin
   try
      if tvSecurity.Items.Count > 0 then
         SaveSecurity(tvSecurity.Items[0], '');
   finally
      SecurityChanged := False;
      MsgInfo('Settings saved.');
   end;
end;

procedure TfrmSecurity.dxBarButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmSecurity.btnRemoveClick(Sender: TObject);
begin
   try
      with qrySecurity do
      begin
         SQL.Text := 'DELETE FROM EMPSECURITY WHERE ' + FTable + ' = ''' + FCode + '''';
         ExecSQL;
      end;
   finally
      tvSecurity.Items.Clear;
   end;
end;

end.

