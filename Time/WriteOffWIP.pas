unit WriteOffWIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, dxBar, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxButtonEdit,
  DBAccess, Uni, MemDS, cxCheckBox, cxGroupBox, cxRadioGroup,
  cxDataControllerConditionalFormattingRulesManagerDialog;

const
  UM_CHECK = WM_USER + 10000;

type
  TfrmWIPWriteOff = class(TForm)
    tvFeeList: TcxGridDBTableView;
    grdFeeListLevel1: TcxGridLevel;
    grdFeeList: TcxGrid;
    btnedMatter: TcxButtonEdit;
    Label1: TLabel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    qryFees: TUniQuery;
    dsFees: TUniDataSource;
    tvFeeListNFEE: TcxGridDBColumn;
    tvFeeListCREATED: TcxGridDBColumn;
    tvFeeListDESCR: TcxGridDBColumn;
    tvFeeListMINS: TcxGridDBColumn;
    tvFeeListAUTHOR: TcxGridDBColumn;
    tvFeeListNMATTER: TcxGridDBColumn;
    tvFeeListUNITS: TcxGridDBColumn;
    tvFeeListAMOUNT: TcxGridDBColumn;
    tvFeeListTASK_AMOUNT: TcxGridDBColumn;
    tvFeeListITEMS: TcxGridDBColumn;
    tvFeeListVALUE: TcxGridDBColumn;
    tvFeeListITEM_UNIT: TcxGridDBColumn;
    tvFeeListITEM_AMOUNT: TcxGridDBColumn;
    tvFeeListSelect: TcxGridDBColumn;
    dxBarButton2: TdxBarButton;
    sqlFeeUpdate: TUniSQL;
    rgWIPActions: TcxRadioGroup;
    sqlFeeUndo: TUniSQL;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnedMatterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure tvFeeListSelectPropertiesEditValueChanged(Sender: TObject);
    procedure tvFeeListFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgWIPActionsClick(Sender: TObject);
    procedure tvFeeListSelectHeaderClick(Sender: TObject);
  private
    { Private declarations }
    lNMatter: integer;
    sMsgText: string;
    procedure PopulateGrid(ANMatter: integer);
    procedure SetProcessFlag;
  public
    { Public declarations }
    procedure Check(AGridView: TcxGridDBTableView);
    procedure UmCheck(var Message: TMessage); message UM_CHECK;
  end;

var
  frmWIPWriteOff: TfrmWIPWriteOff;

implementation

{$R *.dfm}

uses
  axiomdata, msearch, citfunc, miscfunc;

procedure TfrmWIPWriteOff.btnedMatterPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if btnedMatter.Text <> '' then
   begin
      DisplayValue := PadFileID(DisplayValue);
      if (Matterstring(string(DisplayValue),'NMATTER') <> '') then
      begin
         lNMatter := StrToInt(Matterstring(string(DisplayValue),'NMATTER'));
         PopulateGrid(LNMAtter);
      end
      else
         MsgErr('The Matter entered was not found in the database.  Please check and try again');
   end;
end;

procedure TfrmWIPWriteOff.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
      btnedMatter.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      lNMatter := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;
      PopulateGrid(LNMAtter);
   end;
end;

procedure TfrmWIPWriteOff.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmWIPWriteOff.dxBarButton2Click(Sender: TObject);
var
  iCtr: integer;
  ARowIndex: integer;
begin
   try
      for iCtr := 0 to tvFeeList.Controller.SelectedRowCount - 1 do
      begin
         ARowIndex := tvFeeList.DataController.GetSelectedRowIndex(iCtr);
         tvFeeList.ViewData.Records[ARowIndex].Focused  := True;
         if rgWIPActions.ItemIndex = 0 then
         begin
            sqlFeeUpdate.ParamByName('nfee').AsInteger := tvFeeListNFEE.EditValue;
            sqlFeeUpdate.Execute;
         end
         else
         begin
            sqlFeeUndo.ParamByName('nfee').AsInteger := tvFeeListNFEE.EditValue;
            sqlFeeUndo.Execute;
         end;
      end;
   finally
      //dw 20 Sep 2018 only display if there is an issue
      if (sMsgText <> '') then
          MsgInfo(sMsgText);
      qryFees.Close;
      qryFees.Open;
   end;
end;

procedure TfrmWIPWriteOff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmWIPWriteOff.PopulateGrid(ANMatter: integer);
begin
   if (btnedMatter.Text <> '') then
   begin
      with qryFees do
      begin
         Close;
         ParamByName('nmatter').AsInteger := ANMatter;
         case rgWIPActions.ItemIndex of
            0: begin
                  ParamByName('billed').AsString := 'N';
                  ParamByName('type').AsString := 'N';
                  ParamByName('WOFF').AsString := 'N';
                  sMsgText := 'WIP written off.';
               end;
            1: begin
                  ParamByName('billed').AsString := 'Y';
                  ParamByName('type').AsString := 'wo';
                  ParamByName('WOFF').AsString := 'Y';
                  sMsgText := 'Written off WIP undone.';
               end;
         end;
         Open;
      end;
   end;
end;

procedure TfrmWIPWriteOff.rgWIPActionsClick(Sender: TObject);
begin
   PopulateGrid(lNMatter);
end;

procedure TfrmWIPWriteOff.tvFeeListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  AView: TcxGridDBTableView;
begin
  AView := Sender as TcxGridDBTableView;
  PostMessage(Handle, UM_CHECK, Integer(AView), 0);
end;

procedure TfrmWIPWriteOff.tvFeeListSelectHeaderClick(Sender: TObject);
begin
   SetProcessFlag;
end;

procedure TfrmWIPWriteOff.tvFeeListSelectPropertiesEditValueChanged(
  Sender: TObject);
var
   ACheck: TcxCheckBox;
   AGridSite: TcxGridSite;
   AGridView: TcxGridDBTableView;
begin
   ACheck := Sender as TcxCheckBox;
   AGridSite := ACheck.Parent as TcxGridSite;
   AGridView := AGridSite.GridView as TcxGridDBTableView;
   Check(AGridView);
end;

procedure TfrmWIPWriteOff.Check(AGridView: TcxGridDBTableView);
var
  i: integer;
begin
   for i:= 0 to AGridView.DataController.RecordCount - 1 do
   begin
      if AGridView.DataController.Values[i, tvFeeListSelect.Index] = True then
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True),true)
      else
         AGridView.DataController.ChangeRowSelection(AGridView.DataController.GetRowIndexByRecordIndex(I, True), false);
   end;
end;

procedure TfrmWIPWriteOff.UmCheck(var Message: TMessage);
begin
  Check(TcxGridDBTableView(Message.WParam));
end;

procedure TfrmWIPWriteOff.SetProcessFlag;
var
   Idx, I: Integer;
   ABookmark: TBookmark;
   DC: TcxDBDataController;
   GV: TcxGridDBTableView;
   bitmap: TBitmap;
begin
   GV := grdFeeList.ActiveView as TcxGridDBTableView;
   DC := GV.DataController;
   DC.BeginUpdate;
   Idx := DC.FocusedRowIndex;

   try
      if GV.DataController.RowCount > 0 then
      begin
         Bitmap:= TBitmap.Create;
         if tvFeeListSelect.Tag = 0 then
         begin
            Bitmap.LoadFromResourceName(HInstance,'CHECKBOXUNTICK');
            tvFeeListSelect.HeaderGlyph.Assign(Bitmap);
            tvFeeListSelect.Tag := 1;
            GV.ViewData.Records[0].Focused := True;
            for I := 0 to GV.ViewData.RowCount - 1 do
            begin
               GV.ViewData.Records[I].Focused := True;
               if (DC.Values[I, tvFeeListSelect.Index] = null) or
                  (DC.Values[I, tvFeeListSelect.Index] = False) then
               begin
                  tvFeeListSelect.EditValue := true;
               end;
            end;
         end
         else
         begin
            Bitmap.LoadFromResourceName(HInstance,'CHECKBOXTICK');
            tvFeeListSelect.HeaderGlyph.Assign(Bitmap);
            tvFeeListSelect.Tag := 0;
            GV.ViewData.Records[0].Focused := True;
            for I := 0 to GV.ViewData.RowCount - 1 do
            begin
               GV.ViewData.Records[I].Focused := True;
               if DC.Values[I, tvFeeListSelect.Index] = true then
               begin
                  tvFeeListSelect.EditValue := false;
               end;
            end;
         end;
         Bitmap.Free;
      end;
   finally
//      DC.FocusedRowIndex := Idx;
      DC.EndUpdate;
   end;
end;

end.
