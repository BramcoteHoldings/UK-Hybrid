unit PrecNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS,
  Grids, DBGrids, ExtCtrls, Menus, ImgList, cxMaskEdit,
  cxButtonEdit, cxDBEdit, cxContainer, cxEdit, cxTextEdit, cxPC, cxControls,
  cxPCdxBarPopupMenu, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxBarBuiltInMenu, System.ImageList;

const
  IDX_SAVEPATH = 1;
  IDX_DATAFILEPATH = 2;
  IDX_CONTROLMACRO = 3;
  IDX_AFTERMACRO = 4;

type
  TfrmPrecNew = class(TForm)
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    pagePrec: TPageControl;
    tabGeneral: TTabSheet;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    spSavePath: TSpeedButton;
    btnCategory: TBitBtn;
    dbtbDescr: TDBEdit;
    dbtbPath: TDBEdit;
    dbeCategoryName: TDBEdit;
    btnDataForm: TBitBtn;
    dbeDataForm: TDBEdit;
    dbtbControlMacro: TDBEdit;
    dbtbMainDataFile: TDBEdit;
    dbtbSavePath: TDBEdit;
    sbFileLoc: TSpeedButton;
    dbtbDataFilePath: TDBEdit;
    Label7: TLabel;
    sbDataFilePath: TSpeedButton;
    qryPrec: TUniQuery;
    dsPrec: TUniDataSource;
    tabWorkflowLink: TTabSheet;
    qryPrecCategory: TUniQuery;
    qryWorkflowLink: TUniQuery;
    dsWorkflowLink: TUniDataSource;
    lvWorkflowLink: TListView;
    pmWorkflowLink: TPopupMenu;
    ilPrec: TImageList;
    miAddType: TMenuItem;
    miRemoveType: TMenuItem;
    qryWorkflowType: TUniQuery;
    spControlMacro: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    dbeMergeFile: TDBEdit;
    btnTypeRemove: TBitBtn;
    btnTypeAdd: TBitBtn;
    dbedAfterMacro: TDBEdit;
    spAfterMacro: TSpeedButton;
    odlgFile: TOpenDialog;
    lbdDataFilePath: TOpenDialog;
    qryPrecNPREC: TFloatField;
    qryPrecDESCR: TStringField;
    qryPrecPATH: TStringField;
    qryPrecTYPE: TStringField;
    qryPrecWORKFLOWTYPE: TStringField;
    qryPrecDATAFORM: TStringField;
    qryPrecCONTROLMACRO: TStringField;
    qryPrecSAVEPATH: TStringField;
    qryPrecMAINDATAFILE: TStringField;
    qryPrecDATAFILEPATH: TStringField;
    qryPrecNPRECCATEGORY: TFloatField;
    qryPrecMACROSTARTUP: TFloatField;
    qryPrecMERGEFILE: TStringField;
    qryPrecAFTERMACRO: TStringField;
    qryPrecROWID: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxDBTextEdit1: TcxDBTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBButtonEdit4: TcxDBButtonEdit;
    cxDBButtonEdit5: TcxDBButtonEdit;
    cxDBButtonEdit6: TcxDBButtonEdit;
    cxDBButtonEdit7: TcxDBButtonEdit;
    cxTabSheet2: TcxTabSheet;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCategoryClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDataFormClick(Sender: TObject);
    procedure sbFileLocClick(Sender: TObject);
    procedure sbDataFilePathClick(Sender: TObject);
    procedure pagePrecChange(Sender: TObject);
    procedure miAddTypeClick(Sender: TObject);
    procedure miRemoveTypeClick(Sender: TObject);
    procedure pmWorkflowLinkPopup(Sender: TObject);
    procedure pagePrecChanging(Sender: TObject; var AllowChange: Boolean);
    procedure btnTypeAddClick(Sender: TObject);
    procedure btnTypeRemoveClick(Sender: TObject);
    procedure qryPrecAfterInsert(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }
    FStartUp: Boolean;
    FCategory : Integer;
    FWorkflowType : string;
    function OKtoPost : Boolean;
    procedure LoadWorkflowLinkList;
    function SavePrecedent: Boolean;
    procedure SetCategory(Category : Integer);
    procedure SetWorkflowType(sWorkflowType : string);
  public
    { Public declarations }
    property Category : Integer write SetCategory;
    property WorkflowType : string write SetWorkflowType;
    procedure DisplayPrecedent(sDescr : string);
  end;

var
  frmPrecNew: TfrmPrecNew;

implementation

uses
  GenericSearch, AxiomData, MiscFunc;

{$R *.DFM}

procedure TfrmPrecNew.LoadWorkflowLinkList;
var
  ImageItem: TListItem;
begin
  lvWorkflowLink.Items.BeginUpdate;
  lvWorkflowLink.Items.Clear;
  with qryWorkflowLink do
  begin
    Open;
    while not Eof do
    begin
      qryWorkflowType.Open;
      ImageItem := lvWorkflowLink.Items.Add;
      ImageItem.Caption := qryWorkflowType.FieldByName('DESCR').AsString;
      ImageItem.Data := GetBookmark;
      ImageItem.ImageIndex := 0;
      qryWorkflowType.Close;
      Next;
    end;
    Close;
  end;
  lvWorkflowLink.Items.EndUpdate;
end;


function TfrmPrecNew.SavePrecedent: Boolean;
begin
  Result := False;
  if OKtoPost then
  begin
    Result := True;
    if qryPrec.Modified then
    begin
      if qryPrec.FieldByName('SAVEPATH').AsString <> '' then
        qryPrec.FieldByName('SAVEPATH').AsString := IncludeTrailingPathDelimiter(qryPrec.FieldByName('SAVEPATH').AsString);
      if qryPrec.FieldByName('DATAFILEPATH').AsString <> '' then
        qryPrec.FieldByName('DATAFILEPATH').AsString := IncludeTrailingPathDelimiter(qryPrec.FieldByName('DATAFILEPATH').AsString);
      qryPrec.Post;
    end;
  end;
end;


procedure TfrmPrecNew.SetCategory(Category : Integer);
begin
  FCategory := Category;
end;


procedure TfrmPrecNew.SetWorkflowType(sWorkflowType : string);
begin
  FWorkflowType := sWorkflowType;
end;


procedure TfrmPrecNew.DisplayPrecedent(sDescr : string);
begin
  FStartup := True;
  with qryPrec do
  begin
    Close;
    ParamByName('DESCR').AsString := sDescr;
    Open;
    if IsEmpty then
      Close
    else
    begin
      Self.Caption := 'Precedent Edit';
      ShowModal;
    end;
  end;
end;


function TfrmPrecNew.OKtoPost : Boolean;
var
  sTmp : String;
begin
  OKtoPost := True;
  sTmp := '';
  if dbtbDescr.Text = '' then
    sTmp := '       Description' + Chr(13);
  if dbtbPath.Text = '' then
    sTmp := '       File Location' + Chr(13);
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Precedent details before saving:    ' + Chr(13) + Chr(13) + sTmp);
    OKtoPost := False;
  end;
end;


procedure TfrmPrecNew.btnSaveClick(Sender: TObject);
begin
  if SavePrecedent then
    Self.Close;
end;


procedure TfrmPrecNew.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPrecNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryPrec.Close;

  Action := caFree;
end;


procedure TfrmPrecNew.btnCategoryClick(Sender: TObject);
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT NPRECCATEGORY AS CODE, DESCR, ''N'' AS DEFAULTITEM FROM PRECCATEGORY ORDER BY CODE';
    SearchField := sfDescription;
    if ShowModal = mrOK then
    begin
      if not qryPrec.Modified then
        Self.qryPrec.Edit;
      Self.qryPrec.FieldByName('NPRECCATEGORY').AsInteger := qrySource.FieldByName('CODE').AsInteger;
    end;
  end;
end;


procedure TfrmPrecNew.FormShow(Sender: TObject);
begin
  FStartup := False;
  if not qryPrec.Active then
  begin
    qryPrec.Open;
    qryPrec.Insert;
    qryPrec.FieldByName('NPRECCATEGORY').AsInteger := FCategory;
    //qryPrec.FieldByName('WORKFLOWTYPE').AsString := FWorkflowtype;
  end;
  pagePrec.ActivePage := tabGeneral;
  Self.ActiveControl := dbtbDescr;
end;

procedure TfrmPrecNew.btnDataFormClick(Sender: TObject);
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM DATAFORM WHERE CODE <> ''SINGLEFIELDFORM'' ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      if not qryPrec.Modified then
        Self.qryPrec.Edit;
      Self.qryPrec.FieldByName('DATAFORM').AsString := qrySource.FieldByName('CODE').AsString;
    end;
  end;
end;

procedure TfrmPrecNew.sbFileLocClick(Sender: TObject);
begin
  odlgFile.InitialDir := qryPrec.FieldByName('PATH').AsString;
  if odlgFile.Execute then
  begin
    if not qryPrec.Modified then
      qryPrec.Edit;
    qryPrec.FieldByName('PATH').AsString := odlgFile.FileName;
  end;
end;

procedure TfrmPrecNew.sbDataFilePathClick(Sender: TObject);
begin
  case TSpeedButton(Sender).Tag of
    IDX_SAVEPATH:
    begin
      if qryPrec.FieldByName('SAVEPATH').AsString <> '' then
        //lbdDataFilePath.SelectedFolder := qryPrec.FieldByName('SAVEPATH').AsString;
        lbdDataFilePath.InitialDir := qryPrec.FieldByName('SAVEPATH').AsString;
      if lbdDataFilePath.Execute then
      begin
        if not qryPrec.Modified then
          qryPrec.Edit;
        //qryPrec.FieldByName('SAVEPATH').AsString := IncludeTrailingBackslash(lbdDataFilePath.SelectedFolder);
        qryPrec.FieldByName('SAVEPATH').AsString := IncludeTrailingPathDelimiter(lbdDataFilePath.InitialDir);
      end;
    end;
    IDX_DATAFILEPATH:
    begin
      if qryPrec.FieldByName('DATAFILEPATH').AsString <> '' then
        lbdDataFilePath.InitialDir := qryPrec.FieldByName('DATAFILEPATH').AsString;
        //lbdDataFilePath.SelectedFolder := qryPrec.FieldByName('DATAFILEPATH').AsString;
      if lbdDataFilePath.Execute then
      begin
        if not qryPrec.Modified then
          qryPrec.Edit;
        //qryPrec.FieldByName('DATAFILEPATH').AsString := IncludeTrailingBackslash(lbdDataFilePath.SelectedFolder);
        qryPrec.FieldByName('DATAFILEPATH').AsString := IncludeTrailingPathDelimiter(lbdDataFilePath.InitialDir);
      end;
    end;
    IDX_CONTROLMACRO:
    begin
      if qryPrec.FieldByName('CONTROLMACRO').AsString <> '' then
        odlgFile.FileName := qryPrec.FieldByName('CONTROLMACRO').AsString;
      if odlgFile.Execute then
      begin
        if not qryPrec.Modified then
          qryPrec.Edit;
        qryPrec.FieldByName('CONTROLMACRO').AsString := odlgFile.FileName;
      end;
    end;
    IDX_AFTERMACRO:
    begin
      if qryPrec.FieldByName('AFTERMACRO').AsString <> '' then
        odlgFile.FileName := qryPrec.FieldByName('AFTERMACRO').AsString;
      if odlgFile.Execute then
      begin
        if not qryPrec.Modified then
          qryPrec.Edit;
        qryPrec.FieldByName('AFTERMACRO').AsString := odlgFile.FileName;
      end;
    end;
  end;
end;


procedure TfrmPrecNew.pagePrecChange(Sender: TObject);
{
  Modified 25.10.2002 GG
  Removed compiler hint
var
  bmPlaceHolder: TBookmark;
}
begin
  if pagePrec.ActivePage = tabWorkflowLink then
  begin
    LoadWorkflowLinkList;
  end;
end;

procedure TfrmPrecNew.miAddTypeClick(Sender: TObject);
begin
  btnTypeAdd.Click;
end;

procedure TfrmPrecNew.miRemoveTypeClick(Sender: TObject);
begin
  btnTypeRemove.Click;
end;


procedure TfrmPrecNew.pmWorkflowLinkPopup(Sender: TObject);
begin
  if lvWorkflowLink.Selected <> nil then
    miRemoveType.Enabled := True
  else
    miRemoveType.Enabled := False;
end;

procedure TfrmPrecNew.pagePrecChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if not SavePrecedent then
    AllowChange := False;
end;

procedure TfrmPrecNew.btnTypeAddClick(Sender: TObject);
{
  Modified 25.10.2002 GG
  Removed compiler hint
var
  sPrecPath: string;
}
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM WORKFLOWTYPE ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      (* this method is to refresh the record set as it does not work any other way *)
(*      sPrecPath := Self.qryPrec.FieldByName('PATH').AsString;
      Self.qryPrec.Close;
      Self.qryPrec.Open;
      Self.qryPrec.Locate('PATH', sPrecPath, []);*)
      (* add a new Workflow Type link *)
      Self.qryWorkflowLink.Open;
      Self.qryWorkflowLink.Insert;
      Self.qryWorkflowLink.FieldByName('NPREC').AsInteger := Self.qryPrec.FieldByName('NPREC').AsInteger;
      Self.qryWorkflowLink.FieldByName('WORKFLOWTYPE').AsString := qrySource.FieldByName('CODE').AsString;
      Self.qryWorkflowLink.Post;
      Self.qryWorkflowLink.Close;
    end;
  end;
  LoadWorkflowLinkList;
end;


procedure TfrmPrecNew.btnTypeRemoveClick(Sender: TObject);
begin
  with qryWorkflowLink do
  begin
    Open;
//    GotoBookmark(lvWorkflowLink.Selected.Data);
    Delete;
    Close;
  end;
  LoadWorkflowLinkList;
end;

procedure TfrmPrecNew.qryPrecAfterInsert(DataSet: TDataSet);
var
  qryDir: TUniQuery;
begin
  qryDir := TUniQuery.Create(nil);
  qryDir.Connection := dmAxiom.uniInsight;
  with qryDir do
  begin
    SQL.Text := 'SELECT SAVEPATH FROM PREC GROUP BY SAVEPATH ORDER BY COUNT(*) DESC';
    Open;
    qryPrec.FieldByName('SAVEPATH').AsString := FieldByName('SAVEPATH').AsString;
    Close;
    SQL.Text := 'SELECT DATAFILEPATH FROM PREC GROUP BY DATAFILEPATH ORDER BY COUNT(*) DESC';
    Open;
    qryPrec.FieldByName('DATAFILEPATH').AsString := FieldByName('DATAFILEPATH').AsString;
    Close;
  end;
  qryDir.Free;
end;

procedure TfrmPrecNew.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  odlgFile.InitialDir := qryPrec.FieldByName('PATH').AsString;
  if odlgFile.Execute then
  begin
    if not qryPrec.Modified then
      qryPrec.Edit;
    qryPrec.FieldByName('PATH').AsString := odlgFile.FileName;
  end;
end;

procedure TfrmPrecNew.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT NPRECCATEGORY AS CODE, DESCR, ''N'' AS DEFAULTITEM FROM PRECCATEGORY ORDER BY CODE';
    SearchField := sfDescription;
    if ShowModal = mrOK then
    begin
      if not qryPrec.Modified then
        Self.qryPrec.Edit;
      Self.qryPrec.FieldByName('NPRECCATEGORY').AsInteger := qrySource.FieldByName('CODE').AsInteger;
    end;
  end;
end;

procedure TfrmPrecNew.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM DATAFORM WHERE CODE <> ''SINGLEFIELDFORM'' ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      if not qryPrec.Modified then
        Self.qryPrec.Edit;
      Self.qryPrec.FieldByName('DATAFORM').AsString := qrySource.FieldByName('CODE').AsString;
    end;
  end;
end;

procedure TfrmPrecNew.cxDBButtonEdit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    case TcxDBButtonEdit(Sender).Tag of
    IDX_SAVEPATH:
    begin
      if qryPrec.FieldByName('SAVEPATH').AsString <> '' then
        //lbdDataFilePath.SelectedFolder := qryPrec.FieldByName('SAVEPATH').AsString;
        lbdDataFilePath.InitialDir := qryPrec.FieldByName('SAVEPATH').AsString;
      if lbdDataFilePath.Execute then
      begin
        if not qryPrec.Modified then
          qryPrec.Edit;
        //qryPrec.FieldByName('SAVEPATH').AsString := IncludeTrailingBackslash(lbdDataFilePath.SelectedFolder);
        qryPrec.FieldByName('SAVEPATH').AsString := IncludeTrailingPathDelimiter(lbdDataFilePath.InitialDir);
      end;
    end;
    IDX_DATAFILEPATH:
    begin
      if qryPrec.FieldByName('DATAFILEPATH').AsString <> '' then
        lbdDataFilePath.InitialDir := qryPrec.FieldByName('DATAFILEPATH').AsString;
        //lbdDataFilePath.SelectedFolder := qryPrec.FieldByName('DATAFILEPATH').AsString;
      if lbdDataFilePath.Execute then
      begin
        if not qryPrec.Modified then
          qryPrec.Edit;
        //qryPrec.FieldByName('DATAFILEPATH').AsString := IncludeTrailingBackslash(lbdDataFilePath.SelectedFolder);
        qryPrec.FieldByName('DATAFILEPATH').AsString := IncludeTrailingPathDelimiter(lbdDataFilePath.InitialDir);
      end;
    end;
    IDX_CONTROLMACRO:
    begin
      if qryPrec.FieldByName('CONTROLMACRO').AsString <> '' then
        odlgFile.FileName := qryPrec.FieldByName('CONTROLMACRO').AsString;
      if odlgFile.Execute then
      begin
        if not qryPrec.Modified then
          qryPrec.Edit;
        qryPrec.FieldByName('CONTROLMACRO').AsString := odlgFile.FileName;
      end;
    end;
    IDX_AFTERMACRO:
    begin
      if qryPrec.FieldByName('AFTERMACRO').AsString <> '' then
        odlgFile.FileName := qryPrec.FieldByName('AFTERMACRO').AsString;
      if odlgFile.Execute then
      begin
        if not qryPrec.Modified then
          qryPrec.Edit;
        qryPrec.FieldByName('AFTERMACRO').AsString := odlgFile.FileName;
      end;
    end;
  end;
end;

end.

