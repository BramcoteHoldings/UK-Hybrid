unit MatterAssociate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, MemDS, OracleUniProvider, Uni, DBAccess, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, Vcl.ImgList, cxButtons, cxContainer, cxLabel;

type
  TfrmMatterAssociate = class(TForm)
    Label1: TLabel;
    qryAssocSetup: TUniQuery;
    qryAssocInsert: TUniQuery;
    Label2: TLabel;
    btnAdd: TcxButton;
    btnRemove: TcxButton;
    btnMaster: TcxButton;
    ImageList1: TImageList;
    grdAssocLevel1: TcxGridLevel;
    grdAssoc: TcxGrid;
    tvAssoc: TcxGridTableView;
    tvAssocFILEID: TcxGridColumn;
    tvAssocDESCR: TcxGridColumn;
    tvAssocNMATTER: TcxGridColumn;
    btnSave: TcxButton;
    cxButton2: TcxButton;
    lblMaster: TcxLabel;
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMasterClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
  public
    { Public declarations }
    procedure SetupAssociations(sFile : string);
  end;

var
  frmMatterAssociate: TfrmMatterAssociate;
  sMainMatter : string;
  slstDeletions : TStringList;

implementation

uses
  AxiomData, MiscFunc, MSearch, citfunc;

{$R *.DFM}
procedure TfrmMatterAssociate.SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
begin
   try
      tvAssoc.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   except

   end;
end;

procedure TfrmMatterAssociate.SetupAssociations(sFile : string);
var
   I: integer;
begin
//   slstDeletions := TStringList.Create;
   lblMaster.Caption := sFile;
   sMainMatter := sFile;
   with qryAssocSetup do
   begin
      ParamByName('FILEID').AsString := sFile;
      Open;
//    slstDeletions.Add('DELETE FROM MATTERASSOC WHERE MAINMATTER = ' + QuotedStr(sFile));
      I := 0;
      while not EOF do
      begin
         tvAssoc.DataController.AppendRecord;
         SetRecordValue(I, tvAssocFILEID.Index, FieldByName('ASSOCMATTER').AsString);
         SetRecordValue(I, tvAssocDESCR.Index, TableString('MATTER', 'FILEID', FieldByName('ASSOCMATTER').AsString, 'SHORTDESCR'));
         SetRecordValue(I, tvAssocNMATTER.Index, TableInteger('MATTER', 'FILEID', FieldByName('ASSOCMATTER').AsString, 'NMATTER'));

{      if FieldByName('MASTER').AsString = 'Y' then
         lbAssoc.AddItem(FieldByName('ASSOCMATTER').AsString,2)
      else
         lbAssoc.Items.Add(FieldByName('ASSOCMATTER').AsString);   }
//      slstDeletions.Add('DELETE FROM MATTERASSOC WHERE MAINMATTER = ' + QuotedStr(FieldByName('ASSOCMATTER').AsString));
         inc(I);
         Next;
      end;
//      if lbAssoc.Items.Count = 0 then
//         btnMaster.Enabled := False;
   end;
end;


procedure TfrmMatterAssociate.btnAddClick(Sender: TObject);
var
I: integer;
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOk then
   begin
      if dmAxiom.qryMSearch.FieldByName('FILEID').AsString <> sMainMatter then
      begin
         tvAssoc.DataController.AppendRecord;
         I := (tvAssoc.DataController.RowCount - 1);
         begin
           SetRecordValue(I, tvAssocFILEID.Index, dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
           SetRecordValue(I, tvAssocDESCR.Index, dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString);
           SetRecordValue(I, tvAssocNMATTER.Index, dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger);
         end;
//         btnMaster.Enabled := True;
      end
      else
         MsgErr('You may not associate a matter with itself');
   end;
end;

procedure TfrmMatterAssociate.btnRemoveClick(Sender: TObject);
begin
   if tvAssoc.Controller.SelectedRowCount >= 0 then
   begin
      tvAssoc.DataController.DeleteSelection;
   end;
end;

procedure TfrmMatterAssociate.btnSaveClick(Sender: TObject);
var
  iMainCtr, iAssocCtr : integer;
begin
  // Delete the old associations
{   for iMainCtr := 0 to slstDeletions.Count - 1 do
   begin   }
      with qryAssocSetup do
      begin
         SQL.Text := 'DELETE FROM MATTERASSOC WHERE MAINMATTER = ' + QuotedStr(sMainMatter);
         ExecSQL;
      end;
//   end; }

  // Save the associated matters

   with qryAssocInsert do
   begin
      for iMainCtr := 0 to tvAssoc.DataController.RowCount - 1 do
      begin
         tvAssoc.Controller.FocusedRowIndex := iMainCtr;
         ParamByName('MAINMATTER').AsString := sMainMatter;
         ParamByName('ASSOCMATTER').AsString := tvAssocFILEID.EditValue;
         ParamByName('MASTER').AsString := 'N';
         ExecSQL;

{        ParamByName('MAINMATTER').AsString := lbAssoc.Items[iAssocCtr];
        ParamByName('ASSOCMATTER').AsString := lbAssoc.Items[iMainCtr];
        if lbAssoc.Items[iMainCtr] = lblMaster.Caption then
          ParamByName('MASTER').AsString := 'Y'
        else
          ParamByName('MASTER').AsString := 'N';
        ExecSQL;  }
      end;
   end;
   qryAssocSetup.Close;
   Close;
end;

procedure TfrmMatterAssociate.cxButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmMatterAssociate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RefreshMatter(sMainMatter);
  Self.Release;
end;

procedure TfrmMatterAssociate.btnMasterClick(Sender: TObject);
begin
{  if lbAssoc.ItemIndex >= 0 then
  begin
    lblMaster.Caption := lbAssoc.Items[lbAssoc.ItemIndex];
  end;    }
end;

end.
