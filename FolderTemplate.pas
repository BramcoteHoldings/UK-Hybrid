unit FolderTemplate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, OracleUniProvider, Uni, ImgList, Menus,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, dxBarDBNav, dxBar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  cxClasses, ppDesignLayer, VirtualTrees, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, MaintAncestor;

type
   PFolderData = ^TFolderData;
   TFolderData = record
      Text: WideString;
      ImageIndex: Integer;
      FolderID: integer;
      FolderLvl: integer;
   end;

type
  TfrmDoc_Fldr_Tmpl = class(TForm)
    lblDescription: TLabel;
    cxDescription: TcxDBTextEdit;
    lblMatterType: TLabel;
    cxMatterType: TcxDBLookupComboBox;
    qryFolderTmpl: TUniQuery;
    dsFolderTmpl: TUniDataSource;
    qryMatterType: TUniQuery;
    dsMatterType: TUniDataSource;
    qryFolders: TUniQuery;
    qryFldTmp: TUniQuery;
    pmDocFolders: TPopupMenu;
    AddFolder1: TMenuItem;
    DeleteFolder1: TMenuItem;
    N1: TMenuItem;
    EditFolder1: TMenuItem;
    lvFolders: TVirtualStringTree;
    Label4: TLabel;
    ilstToolbar: TImageList;
    bmMain: TdxBarManager;
    bmMainBar3: TdxBar;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    dxBarButton9: TdxBarButton;
    ilstDocuments: TImageList;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    btnClose: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnOKClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure AddFolder1Click(Sender: TObject);
    procedure EditFolder1Click(Sender: TObject);
    procedure DeleteFolder1Click(Sender: TObject);
    procedure SetupDocFolderTab;
    procedure lvFoldersGetImageIndex(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
      var Ghosted: Boolean; var ImageIndex: Integer);
    procedure lvFoldersGetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: string);
    function AddNodeData(AVST: TCustomVirtualStringTree; ANode: PVirtualNode;
                                    ARecord: TFolderData): PVirtualNode;
    procedure qryFolderTmplNewRecord(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmDoc_Fldr_Tmpl: TfrmDoc_Fldr_Tmpl;

implementation

uses
   axiomdata, MiscFunc;

{$R *.DFM}

procedure TfrmDoc_Fldr_Tmpl.FormShow(Sender: TObject);
var
  LStarter: integer;
begin
    //SetupDocFolderTab;
    qryFolderTmpl.Open;
    qryMatterType.Open;
    LStarter := qryFolderTmpl.FieldByName('ndoc_tmpl_hdr').AsInteger;
    if (LStarter <> 0) then
        SetupDocFolderTab;
end;

procedure TfrmDoc_Fldr_Tmpl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RemoveFromDesktop(Self);
//  Action := caFree;
end;

procedure TfrmDoc_Fldr_Tmpl.tbtnOKClick(Sender: TObject);
begin
  if qryFolderTmpl.Modified then
  begin
      qryFolderTmpl.Post;
      qryFolderTmpl.Refresh;
  end;
end;

procedure TfrmDoc_Fldr_Tmpl.tbtnDeleteClick(Sender: TObject);
var
     LQuery: string;
begin
  if MessageDlg('Do you want to delete this entry: ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     LQuery := 'delete from doc_fldr_tmpl where n_tmpl = ' + inttostr(qryFolderTmpl.FieldByName('ndoc_tmpl_hdr').AsInteger);
     qryFldTmp.Close;
     qryFldTmp.SQL.Clear;
     qryFldTmp.SQL.Add(LQuery);
     qryFldTmp.Execute;

     qryFolderTmpl.Delete;
     PlaySound('Delete');
     qryFolderTmpl.Prior;
  end;
end;

procedure TfrmDoc_Fldr_Tmpl.tbtnFirstClick(Sender: TObject);
begin
  if qryFolderTmpl.Modified then
  begin
      qryFolderTmpl.Post;
      qryFolderTmpl.First;
      SetupDocFolderTab;
  end
  else
  begin
      qryFolderTmpl.First;
      SetupDocFolderTab;
  end;
end;
procedure TfrmDoc_Fldr_Tmpl.tbtnPrevClick(Sender: TObject);
begin
  if qryFolderTmpl.Modified then
  begin
      qryFolderTmpl.Post;
      qryFolderTmpl.Prior;
      SetupDocFolderTab;
  end
  else
    qryFolderTmpl.Prior;
    SetupDocFolderTab;
end;

procedure TfrmDoc_Fldr_Tmpl.tbtnNextClick(Sender: TObject);
begin
  if qryFolderTmpl.Modified then
  begin
      qryFolderTmpl.Post;
      qryFolderTmpl.Next;
      SetupDocFolderTab;
  end
  else
    qryFolderTmpl.Next;
    SetupDocFolderTab;
end;

procedure TfrmDoc_Fldr_Tmpl.tbtnLastClick(Sender: TObject);
begin
  if qryFolderTmpl.Modified then
  begin
      qryFolderTmpl.Post;
      qryFolderTmpl.Last;
      SetupDocFolderTab;
  end
  else
    qryFolderTmpl.Last;
    SetupDocFolderTab;
end;

procedure TfrmDoc_Fldr_Tmpl.tbtnNewClick(Sender: TObject);
var
  bOK : boolean;
  iCtr : integer;
begin
  bOK := True;
  if qryFolderTmpl.Modified then
      if MsgAsk('Do you want to save your changes?') = mrYes then
      begin
          qryFolderTmpl.Post;
      end
      else
      begin
          bOK := False;
          qryFolderTmpl.CancelUpdates;
      end;

  if bOK then
  begin
     qryFolderTmpl.Insert;
     // Release all the Memos
     for iCtr := 0 to Self.ControlCount - 1 do
       if Self.Controls[iCtr] is TDBEdit then
          if (Self.Controls[iCtr] as TDBEdit).TabOrder = 0 then
            (Self.Controls[iCtr] as TDBEdit).SetFocus;
     lvFolders.Clear;
  end;
end;

procedure TfrmDoc_Fldr_Tmpl.ToolButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;
procedure TfrmDoc_Fldr_Tmpl.AddFolder1Click(Sender: TObject);
var
   AValue: string;
   Node: PVirtualNode;
   Data: PFolderData;
   LFolderId: integer;
   lFolderlvl: integer;
   LTemplate: integer;
   LQuery: string;
   bOK : boolean;
begin
   //qryFolderTmpl.Post;
   bOK := true;
   if qryFolderTmpl.Modified then
    if MsgAsk('Do you want to save your changes?') = mrYes then
    begin
        qryFolderTmpl.Post;
    end
    else
    begin
        bOK := False;
        qryFolderTmpl.CancelUpdates;
    end;

   qryFolderTmpl.RefreshRecord;

   Node := lvFolders.FocusedNode;
   if InputQueryString('Add Folder','Enter Folder name to create','Folder',AValue) = True then
   begin
      try
         if not Assigned(Node) then
         begin
           LFolderID := 0;
           LFolderLvl := 0;
         end
         else
         begin
           Data := lvFolders.GetNodeData(Node);
           LFolderId := Data.FolderID;
           lFolderlvl := Data.FolderLvl + 1;
         end;
         lTemplate :=  qryFolderTmpl.FieldByName('ndoc_tmpl_hdr').AsInteger;
         LQuery := 'insert into doc_fldr_tmpl (n_tmpl, descr, parent_id, folder_level) values ';
         LQuery := LQuery + '(' + inttoStr(lTemplate) + ', '  + quotedstr(AValue) + ', ' + inttostr(LFolderID) + ', ';
         LQuery := LQuery + inttostr(LFolderLvl) + ')';

           qryFldTmp.Close;
           qryFldTmp.SQL.Clear;
           qryFldTmp.SQL.Add(LQuery);
           qryFldTmp.Execute;

      finally
         qryFldTmp.Close;
         SetupDocFolderTab;
      end;
   end;
end;

procedure TfrmDoc_Fldr_Tmpl.EditFolder1Click(Sender: TObject);
var
   AValue: string;
   Node: PVirtualNode;
   Data: PFolderData;
   LFolderId: integer;
begin
   Node := lvFolders.FocusedNode;
   if not Assigned(Node) then
      Exit;

   Data := lvFolders.GetNodeData(Node);
   LFolderId := Data.FolderID;
   AValue := Data.Text;
   if ((AValue <> 'All Files') and (AValue <> 'Unallocated Files')) then
   begin
      if InputQueryString('Edit Folder','Edit Folder name','Folder',AValue) = True then
      begin
         try
            with qryFldTmp do
            begin
               Close;
               SQL.Clear;
               SQL.Text := 'update doc_fldr_tmpl set descr = ' + quotedstr(AValue) +
                           ' where n_tmpl = '+ inttostr(qryFolderTmpl.FieldByName('NDOC_TMPL_HDR').AsInteger) +
                           ' and folder_id = ' + IntToStr(LFolderId);
               Execute;
            end;
         finally
            qryFldTmp.Close;
            SetupDocFolderTab;
         end;
      end;
   end;
end;

procedure TfrmDoc_Fldr_Tmpl.DeleteFolder1Click(Sender: TObject);
var
   Node: PVirtualNode;
   Data: PFolderData;
   LFolderId: integer;
begin
   Node := lvFolders.FocusedNode;
   if not Assigned(Node) then
      Exit;

   Data := lvFolders.GetNodeData(Node);
   if Data.Text = 'All Files' then
   begin
      MsgErr('The ''All Files'' directory cannot be deleted');
      Exit;
   end;

   if Data.Text = 'Unallocated Files' then
   begin
      MsgErr('The ''Unallocated Files'' directory cannot be deleted');
      Exit;
   end;

   if MsgAsk('Delete directory ' + Data.Text) = mrYes then
   begin
      with qryFldTmp do
      begin
         qryFldTmp.Close;
         qryFldTmp.SQL.Clear;
         qryFldTmp.SQL.Text := 'select count(*) as foldercount from doc_fldr_tmpl where parent_id = '+ IntToStr(Data.FolderID);
         qryFldTmp.Open;
         if (qryFldTmp.FieldByName('foldercount').AsInteger > 0) then
         begin
            MsgErr('This folder is currently has sub-folders.  It cannot be deleted.');
            Exit;
         end;
         // end of change
         Close;
         Sql.Text := 'delete from doc_fldr_tmpl where folder_id = :folder_id and n_tmpl = :n_tmpl';
         ParamByName('folder_id').AsInteger := Data.FolderID;
         ParamByName('n_tmpl').AsInteger := qryFolderTmpl.FieldByName('NDOC_TMPL_HDR').AsInteger;
         ExecSQL;
         SetupDocFolderTab;
      end;
   end;
end;


procedure TfrmDoc_Fldr_Tmpl.SetupDocFolderTab;
var
   LTFolderData: TFolderData;
   RootNode: PVirtualNode;
   SubNode: PVirtualNode;
   LMaxLevel: integer;
   lTmp: integer;
   lParentID: integer;
   lFolderID: integer;
   lFolderLvl: integer;
   lSubFolderID: integer;
   lTmpFolderID: integer;
   Data: PFolderData;

begin
   lTmpFolderID := 0;
   lvFolders.Clear;
   lvFolders.BeginUpdate;
   lvFolders.NodeDataSize := SizeOf(TFolderData);
   qryFolders.Close;
   qryFolders.SQL.Clear;
   qryFolders.SQL.Text := 'SELECT descr, FOLDER_ID, PARENT_ID, FOLDER_LEVEL ' + '  FROM doc_fldr_tmpl '+
                  'WHERE n_tmpl = :n_tmpl ORDER BY 4, 2 asc';
    qryFolders.ParamByName('n_tmpl').AsInteger := qryFolderTmpl.FieldByName('ndoc_tmpl_hdr').AsInteger;
    qryFolders.Open;
    qryFolders.First;
    while (not qryFolders.eof) do
    begin
         lParentID := qryFolders.FieldByName('PARENT_ID').AsInteger;
         lFolderID := qryFolders.FieldByName('FOLDER_ID').AsInteger;
         lFolderLvl := qryFolders.FieldByName('FOLDER_LEVEL').AsInteger;
         if (lFolderLvl < 1) then
         begin
             LTFolderData.Text := qryFolders.FieldByName('DESCR').AsString;
             LTFolderData.ImageIndex := 12;
             LTFolderData.FolderID := qryFolders.FieldByName('FOLDER_ID').AsInteger;
             LTFolderData.FolderLvl := qryFolders.FieldByName('FOLDER_LEVEL').AsInteger;
             RootNode := AddNodeData(lvFolders, nil, LTFolderData);
         end
         else
         begin
             RootNode := lvFolders.GetFirst(False);
             Data := lvFolders.GetNodeData(RootNode);
             lTmpFolderID :=  Data.FolderID;
             while (lTmpFolderID <> lParentID) do
             begin
                RootNode := lvFolders.GetNext(RootNode);
                if not Assigned(RootNode) then
                begin
                    qryFolders.Close;
                    lvFolders.EndUpdate;
                    Exit;
                end;
                Data := lvFolders.GetNodeData(RootNode);
                lTmpFolderID :=  Data.FolderID;
             end;
             LTFolderData.Text := qryFolders.FieldByName('DESCR').AsString;
             LTFolderData.ImageIndex := 12;
             LTFolderData.FolderID := qryFolders.FieldByName('FOLDER_ID').AsInteger;
             LTFolderData.FolderLvl := qryFolders.FieldByName('FOLDER_LEVEL').AsInteger;
             SubNode := AddNodeData(lvFolders, RootNode, LTFolderData);
         end;
         // end of sub-folders add
         qryFolders.Next;
    end;
    qryFolders.Close;
    lvFolders.EndUpdate;
end;

procedure TfrmDoc_Fldr_Tmpl.lvFoldersGetImageIndex(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
  var Ghosted: Boolean; var ImageIndex: Integer);
var
   Data: PFolderData;
begin
   Data := Sender.GetNodeData(Node);
   ImageIndex := Data^.ImageIndex;
end;

procedure TfrmDoc_Fldr_Tmpl.lvFoldersGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
   Data: PFolderData;
begin
   Data := lvFolders.GetNodeData(Node);
   CellText := Data^.Text;
end;


procedure TfrmDoc_Fldr_Tmpl.qryFolderTmplNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('NDOC_TMPL_HDR').AsInteger := GetSequenceNumber('seq_doc_tmpl_hdr_id');
end;

function TfrmDoc_Fldr_Tmpl.AddNodeData(AVST: TCustomVirtualStringTree; ANode: PVirtualNode;
                                    ARecord: TFolderData): PVirtualNode;
var
   Data: PFolderData;
begin
   Result := AVST.AddChild(ANode);
   Data := AVST.GetNodeData(Result);
   AVST.ValidateNode(Result, False);
   Data^.Text := ARecord.Text;
   Data^.ImageIndex := Arecord.ImageIndex;
   Data^.FolderID := ARecord.FolderID;
   Data^.FolderLvl := ARecord.FolderLvl;
end;

end.
