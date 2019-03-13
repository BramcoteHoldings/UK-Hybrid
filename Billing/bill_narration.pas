unit bill_narration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit, cxTextEdit,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, OracleUniProvider, Uni, DBAccess, MemDS,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  Menus, ImgList, ComCtrls, DBCtrls, dxBar, dxBarExtItems, cxBlobEdit,
  cxContainer, cxTreeView, cxLabel, cxDBLabel, cxCheckBox,
  cxLookAndFeels, Vcl.ExtCtrls, cxMemo, cxRichEdit, cxDBRichEdit;

type
  TfrmBillNarrations = class(TForm)
    qryBillNarrations: TUniQuery;
    dsBillNarrations: TUniDataSource;
    qryTmp: TUniQuery;
    tvLaunch: TcxTreeView;
    cxDBLabel1: TcxDBLabel;
    qryBillNarrationsList: TUniQuery;
    cxDBLabel2: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Panel1: TPanel;
    cbKeepOpen: TcxCheckBox;
    btnDelete: TcxButton;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    aRichEdit: TcxDBRichEdit;
    procedure FormShow(Sender: TObject);
    procedure qryBillNarrationsAfterInsert(DataSet: TDataSet);
    procedure btnOkClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure tvBillNarrationTYPE_TEXTPropertiesInitPopup(Sender: TObject);
    procedure tvBillNarrationTYPE_TEXTPropertiesCloseUp(Sender: TObject);
    procedure tvBillNarrationTYPE_TEXTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aRichEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure tvLaunchClick(Sender: TObject);
  private
    { Private declarations }
    FNMemo: integer;
    procedure DisplayIcons;
  public
    { Public declarations } 
    property BNMemo: integer read FNMemo write FNMemo;
  end;

var
  frmBillNarrations: TfrmBillNarrations;

implementation

{$R *.dfm}

uses
   miscfunc, AxiomData;


procedure TfrmBillNarrations.FormShow(Sender: TObject);
begin
//   if not assigned(frmNarrationEdit) then
//      frmNarrationEdit := TfrmNarrationEdit.Create(Self);
   DisplayIcons;
{   with qryBillNarrations do
   begin
      Close;
      ParamByName('NMEMO').AsInteger := FNMemo;
      Open;
   end;  }

   if SystemString('preassign_bill_no') = 'Y' then
      Self.Caption := 'Bill Narration for: ' + TableString('NMEMO','NMEMO',IntToStr(FNMemo),'DRAFT_BILL_NO')
   else
      Self.Caption := 'Bill Narration for: ' + TableString('NMEMO','NMEMO',IntToStr(FNMemo),'REFNO');
end;

procedure TfrmBillNarrations.qryBillNarrationsAfterInsert(
  DataSet: TDataSet);
begin
   DataSet.FieldByName('NMEMO').AsInteger := FNMemo;
end;

procedure TfrmBillNarrations.btnOkClick(Sender: TObject);
begin
    if qryBillNarrations.Modified then
    begin
//      qryBillNarrations.ApplyUpdates;
      qryBillNarrations.Post;
//      dmAxiom.uniInsight.Commit;
    end;
    if cbKeepOpen.Checked then
    begin
      ModalResult := mrNone;
      Displayicons;
      qryBillNarrations.Close;
    end;
end;

procedure TfrmBillNarrations.btnDeleteClick(Sender: TObject);
begin
   with qryTmp do
   begin
      SQL.Clear;
      SQL.Text := 'delete from bill_narration where nmemo = :nmemo and '+
                  'type = :type and type_position = :type_position ';
      ParamByName('nmemo').AsInteger := FNMemo;
      ParamByName('type').AsString := qryBillNarrations.FieldByName('type').AsString;
      ParamByName('type_position').AsString := qryBillNarrations.FieldByName('type_position').AsString;
      Execute;
      qryBillNarrations.Close;
//      qryBillNarrations.Open;
      DisplayIcons;
      btnDelete.Enabled := False;
   end;
end;

procedure TfrmBillNarrations.tvBillNarrationTYPE_TEXTPropertiesInitPopup(
  Sender: TObject);
begin
   try
//      aRichEdit.Text := tvBillNarrationTYPE_TEXT.EditValue;
   except
      // silent
   end;
end;

procedure TfrmBillNarrations.tvBillNarrationTYPE_TEXTPropertiesCloseUp(
  Sender: TObject);
begin
   try
//      tvBillNarrationTYPE_TEXT.EditValue := frmNarrationEdit.aRichEdit.Text;
   except
     // silent
   end;
end;

procedure TfrmBillNarrations.tvBillNarrationTYPE_TEXTPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
//   qryBillNarrations.FieldByName('TYPE_TEXT').AsString := Trim(DisplayValue);
end;

procedure TfrmBillNarrations.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   frmNarrationEdit.Free;
//   frmNarrationEdit := nil;
   qryBillNarrations.Close;
end;

procedure TfrmBillNarrations.aRichEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_SPACE then
      QuickCode(Sender);
end;

procedure TfrmBillNarrations.FormCreate(Sender: TObject);
begin
//   if dmAxiom.DictionaryInstalled then
//      aRichEdit.AddictSpell := dmAxiom.Addict;
end;

procedure TfrmBillNarrations.DisplayIcons;
var
  tnParentHead,tnParentBody,tnParentFooter , tnChild: TTreeNode;
begin
   tnParentHead := nil;
   tnParentBody := nil;
   tnParentFooter := nil;
   
   // Initialize Tables
   with qryBillNarrationsList do
   begin
      Close;
      ParamByName('NMEMO').AsInteger := FNMemo;
      Open;
   end;

   tvLaunch.Items.Clear;
   if tnParentHead = nil then
      tnParentHead := tvLaunch.Items.Add(nil, 'Header');
   if tnParentBody = nil then
      tnParentBody := tvLaunch.Items.Add(nil, 'Body');
   if tnParentFooter = nil then
      tnParentFooter := tvLaunch.Items.Add(nil, 'Footer');

   while not qryBillNarrationsList.EOF do
   begin
      if qryBillNarrationsList.FieldByName('TYPE').AsString = 'Header' then
      begin
//        shortgroup_id := qryBillNarrations.FieldByName('SHORTCUT_GROUP').AsInteger;
//        tnParent.ImageIndex := qryBillNarrations.FieldByName('SGIMAGEINDEX').AsInteger;
//        tnParent.SelectedIndex := qryBillNarrations.FieldByName('SGIMAGEINDEX').AsInteger;
         tnChild := tvLaunch.Items.AddChild(tnParentHead,qryBillNarrationsList.FieldByName('TYPE_POSITION').AsString);
//         tnChild.ImageIndex := qryBillNarrations.FieldByName('IMAGEINDEX').AsInteger;
//         tnChild.SelectedIndex := qryBillNarrations.FieldByName('IMAGEINDEX').AsInteger;
      end
      else if qryBillNarrationsList.FieldByName('TYPE').AsString = 'Body' then
      begin
//        shortgroup_id := qryBillNarrations.FieldByName('SHORTCUT_GROUP').AsInteger;
//        tnParent.ImageIndex := qryBillNarrations.FieldByName('SGIMAGEINDEX').AsInteger;
//        tnParent.SelectedIndex := qryBillNarrations.FieldByName('SGIMAGEINDEX').AsInteger;
         tnChild := tvLaunch.Items.AddChild(tnParentBody,qryBillNarrationsList.FieldByName('TYPE_POSITION').AsString);
//         tnChild.ImageIndex := qryBillNarrations.FieldByName('IMAGEINDEX').AsInteger;
//         tnChild.SelectedIndex := qryBillNarrations.FieldByName('IMAGEINDEX').AsInteger;
      end
      else if qryBillNarrationsList.FieldByName('TYPE').AsString = 'Footer' then
      begin
//        shortgroup_id := qryBillNarrations.FieldByName('SHORTCUT_GROUP').AsInteger;
//        tnParent.ImageIndex := qryBillNarrations.FieldByName('SGIMAGEINDEX').AsInteger;
//        tnParent.SelectedIndex := qryBillNarrations.FieldByName('SGIMAGEINDEX').AsInteger;
         tnChild := tvLaunch.Items.AddChild(tnParentFooter,qryBillNarrationsList.FieldByName('TYPE_POSITION').AsString);
//         tnChild.ImageIndex := qryBillNarrations.FieldByName('IMAGEINDEX').AsInteger;
//         tnChild.SelectedIndex := qryBillNarrations.FieldByName('IMAGEINDEX').AsInteger;
      end;
      qryBillNarrationsList.Next;
   end;
   tvLaunch.Items.AddChild(tnParentHead,'Add...');
   tvLaunch.Items.AddChild(tnParentFooter,'Add...');
   tvLaunch.Items.AddChild(tnParentBody,'Add...');
   qryBillNarrationsList.Close;
   tvLaunch.FullExpand;
end;

procedure TfrmBillNarrations.tvLaunchClick(Sender: TObject);
var
   LPos: integer;
begin
   qryBillNarrations.Close;
   btnDelete.Enabled := False;
   if (not tvLaunch.Selected.HasChildren) then
      with qryBillNarrations do
      begin
         if tvLaunch.Selected.Text = 'Add...' then
         begin
            dmAxiom.qryTmp.Close;
            dmAxiom.qryTmp.SQL.Clear;
            dmAxiom.qryTmp.SQL.Text := 'Select max(nvl(type_position,0)) + 1 as pos '+
                                       'from bill_narration where nmemo = :nmemo '+
                                       'and type = :type ';
            dmAxiom.qryTmp.ParamByName('TYPE').AsString := tvLaunch.Selected.Parent.Text;
            dmAxiom.qryTmp.ParamByName('NMEMO').AsInteger := FNMemo;
            dmAxiom.qryTmp.Open;
            LPos := dmAxiom.qryTmp.FieldByName('pos').AsInteger;
            dmAxiom.qryTmp.Close;

            if LPos = 0 then LPos := 1;
            ParamByName('TYPE').AsString := tvLaunch.Selected.Parent.Text;
            ParamByName('TYPE_POSITION').AsInteger := LPos;
            ParamByName('NMEMO').AsInteger := FNMemo;
            Open;
            insert;
            FieldByName('TYPE_POSITION').AsInteger := LPos;
            FieldByName('TYPE').AsString := tvLaunch.Selected.Parent.Text;
            FieldByName('NMEMO').AsInteger := FNMemo;
         end
         else
         begin
            Close;
            ParamByName('TYPE').AsString := tvLaunch.Selected.Parent.Text;
            ParamByName('TYPE_POSITION').AsString := tvLaunch.Selected.Text;
            ParamByName('NMEMO').AsInteger := FNMemo;
            Open;
            Edit;
            btnDelete.Enabled := True;
         end;
      end;
end;

end.
