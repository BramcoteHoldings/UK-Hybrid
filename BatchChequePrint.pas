unit BatchChequePrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxListView, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxEdit, cxLabel, DB,
  OracleUniProvider, Uni, DBAccess, MemDS, ComCtrls, ImgList, cxListBox, Menus,
  cxGraphics, cxLookAndFeels, Vcl.Buttons;

type
  TfrmBatchChequePrint = class(TForm)
    pbSelectCheque: TcxButton;
    pbselectAll: TcxButton;
    pbUnselectCheque: TcxButton;
    pbDeSelectAll: TcxButton;
    qryCheques: TUniQuery;
    dsCheques: TUniDataSource;
    cmbBanks: TcxLookupComboBox;
    qryBanks: TUniQuery;
    dsBanks: TUniDataSource;
    lblCheques: TcxLabel;
    ilstToolbar: TImageList;
    lvUnprintedCheques: TcxListView;
    lvChequesToPrint: TcxListView;
    qryTmp: TUniQuery;
    qryPrinter: TUniQuery;
    qryUpdateCheque: TUniQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pbCancel: TcxButton;
    pbPrint: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure lvUnprintedChequesSelectItem(Sender: TObject;
      Item: TListItem; Selected: Boolean);
    procedure lvChequesToPrintSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure pbPrintClick(Sender: TObject);
    procedure lvChequesToPrintDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure pbselectAllClick(Sender: TObject);
    procedure pbSelectChequeClick(Sender: TObject);
    procedure pbDeSelectAllClick(Sender: TObject);
    procedure pbUnselectChequeClick(Sender: TObject);
    procedure cmbBanksPropertiesChange(Sender: TObject);
    procedure lvChequesToPrintDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure lvUnprintedChequesStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure lvUnprintedChequesDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure lvUnprintedChequesDragDrop(Sender, Source: TObject; X,
      Y: Integer);

  private
    { Private declarations }
    FDragCount: integer;
    procedure LoadUnprintedcheques;
    procedure ListViewMoveAll(lvFrom: TcxListView; lvTo: TcxListView);
    procedure ListViewMoveSelected(lvFrom: TcxListView; lvTo: TcxListView);
  public
    { Public declarations }
  end;

var
  frmBatchChequePrint: TfrmBatchChequePrint;

implementation

uses
   Axiomdata, MiscFunc, ChequePrint;

{$R *.dfm}

procedure TfrmBatchChequePrint.FormCreate(Sender: TObject);
begin
   with qryBanks do
   begin
      ParamByName('entity').AsString := dmAxiom.Entity;
      Open;
   end;
end;

procedure TfrmBatchChequePrint.lvUnprintedChequesSelectItem(
  Sender: TObject; Item: TListItem; Selected: Boolean);
begin
   pbSelectCheque.Enabled := Selected;
end;

procedure TfrmBatchChequePrint.lvChequesToPrintSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
   pbUnselectCheque.Enabled := Selected;
end;

procedure TfrmBatchChequePrint.pbPrintClick(Sender: TObject);
var
   Printer, ChequeNo: string;
   iCtr: integer;
begin
   Printer := qryCheques.FieldByName('PRINTER').AsString;
   qryPrinter.Close;
   qryPrinter.ParamByName('CODE').AsString := Printer;
   qryPrinter.Open;
   try
      lblCheques.Visible := True;
      for iCtr := 0 to lvChequesToPrint.Items.Count - 1 do
      begin
         with TfrmChequePrint.Create(Self) do
         begin
            PrinterPath := Printer;
            ChequeNo := NextRefno(Self.qryPrinter.FieldByName('NUM_LAST').AsString);
            //update printer with chqno
            Self.qryPrinter.Edit;
            Self.qryPrinter.FieldByName('NUM_LAST').AsString :=  ChequeNo;
            Self.qryPrinter.Post;

            lblCheques.Caption := 'Printing cheque ' + ChequeNo + '...';
            qryUpdateCheque.ParamByName('CHQNO').AsString := ChequeNo;
            qryUpdateCheque.ParamByName('NCHEQUE').AsString := trim(lvChequesToPrint.Items.Item[iCtr].SubItems.Text);
            qryUpdateCheque.ExecSQL;

            // update transitem.refno with chqno
            qryTmp.Close;
            qryTmp.SQL.Text := 'UPDATE TRANSITEM SET REFNO = ' + ChequeNo + ' WHERE NCHEQUE = ' + trim(lvChequesToPrint.Items.Item[iCtr].SubItems.Text);
            qryTmp.ExecSQL;
            // update alloc.refno with chqno
            qryTmp.Close;
            qryTmp.SQL.Text := 'UPDATE ALLOC SET REFNO = ' + ChequeNo + ' WHERE NCHEQUE = ' + trim(lvChequesToPrint.Items.Item[iCtr].SubItems.Text);
            qryTmp.ExecSQL;

            Self.qryPrinter.ApplyUpdates;

            PrintCheque(StrToInt(trim(lvChequesToPrint.Items.Item[iCtr].SubItems.Text)));
         end;
      end;
      lvChequesToPrint.Clear;
      lblCheques.Caption := 'Finished Printing cheques.';
   except
      on E: Exception do
        MsgErr('Printing failed:' + #13 + E.Message + #13#13 + 'You may print this cheque by locating it in the Cheques screen');
   end;
end;

procedure TfrmBatchChequePrint.lvChequesToPrintDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
//   Accept := True;
end;

procedure TfrmBatchChequePrint.pbselectAllClick(Sender: TObject);
begin
   ListViewMoveAll(lvUnprintedCheques,lvChequesToPrint);
end;


procedure TfrmBatchChequePrint.pbSelectChequeClick(Sender: TObject);
begin
   ListViewMoveSelected(lvUnprintedCheques,lvChequesToPrint);
end;

procedure TfrmBatchChequePrint.pbDeSelectAllClick(Sender: TObject);
begin
   ListViewMoveAll(lvChequesToPrint, lvUnprintedCheques);
end;

procedure TfrmBatchChequePrint.pbUnselectChequeClick(Sender: TObject);
begin
   ListViewMoveSelected(lvChequesToPrint, lvUnprintedCheques);
end;

procedure TfrmBatchChequePrint.cmbBanksPropertiesChange(Sender: TObject);
begin
   LoadUnprintedcheques;
end;

procedure TfrmBatchChequePrint.LoadUnprintedcheques;
var
   newListItem: TListItem;
begin
   Screen.Cursor := crHourGlass;
   lvUnprintedCheques.Clear;
   lvChequesToPrint.Clear;
   qryCheques.Close;
   qryCheques.ParamByName('BANK').AsString := cmbBanks.EditValue;
   qryCheques.Open;
   qryCheques.First;

   while not qryCheques.EOF do
   begin
      newListItem := lvUnprintedCheques.Items.Add;
      newListItem.ImageIndex := 0;
      newListItem.Caption :=  qryCheques.FieldByName('Payee').AsString + ' - ' +
                              qryCheques.FieldByName('DESCR').AsString + ' : ' +
                              Format('%.2m', [qryCheques.FieldByName('AMOUNT').AsCurrency]);
      newListItem.SubItems.Add(qryCheques.FieldByName('ncheque').AsString);

      qryCheques.Next;
   end;
   Screen.Cursor := crDefault;
end;

procedure TfrmBatchChequePrint.ListViewMoveAll(lvFrom: TcxListView; lvTo: TcxListView);
var
   iCtr, iSel: integer;
   newListItem: TListItem;
begin
{ Note - MultiSelect must be true for this to work }
   iSel := -1;
   for iCtr := 0 to lvFrom.Items.Count - 1 do
   begin
      newListItem := lvTo.Items.Add;
      newListItem.ImageIndex := 0;
      newListItem.Caption :=  lvFrom.Items.Item[iCtr].Caption;
      newListItem.SubItems.Add(lvFrom.Items.Item[iCtr].SubItems.Text);
   end;
   lvFrom.Clear;
//   lvTo.ItemIndex := iSel;
end;

procedure TfrmBatchChequePrint.ListViewMoveSelected(lvFrom: TcxListView; lvTo: TcxListView);
var
  iCtr, iSel: integer;
  newListItem: TListItem;
begin
{ Note - MultiSelect must be true for this to work }
   if (lvFrom.SelCount > 0) or (FDragCount > 0) then
      case lvFrom.SelCount of
         1: // Only one selected - do it the simple way
         begin
            newListItem := lvTo.Items.Add;
            newListItem.ImageIndex := 0;
            newListItem.Caption :=  lvFrom.Selected.Caption;
            newListItem.SubItems.Add(lvFrom.Selected.SubItems.Text);
            lvFrom.Selected.Delete;
         end;
         else  // Multiple selected items
         begin
            lvFrom.CopySelection(TCustomListControl(lvTo.InnerListView));
            lvFrom.DeleteSelected;
         end;
    end;
end;

procedure TfrmBatchChequePrint.lvChequesToPrintDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
//   lvUnprintedCheques.Items.BeginUpdate;
//   lvUnprintedCheques.CopySelection(TCustomListControl(lvChequesToPrint.InnerListView));
//   lvUnprintedCheques.DeleteSelected;
//   lvUnprintedCheques.Items.EndUpdate;
end;

procedure TfrmBatchChequePrint.lvUnprintedChequesStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
   FDragCount := lvUnprintedCheques.SelCount;
end;

procedure TfrmBatchChequePrint.lvUnprintedChequesDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
//   Accept := True;
end;

procedure TfrmBatchChequePrint.lvUnprintedChequesDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
//   lvChequesToPrint.CopySelection(TCustomListControl(lvUnprintedCheques.InnerListView));
//   lvChequesToPrint.DeleteSelected;
end;

end.
