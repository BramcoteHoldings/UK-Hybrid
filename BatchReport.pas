unit BatchReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  citfunc,RptLedgerTrust,ComCtrls, Buttons, StdCtrls,RptLedgerCombo, Db, MemDS,
  DBAccess, OracleUniProvider, Uni, cxCustomData, ImgList, dxBar,
  cxClasses;

type
  TfrmBatchReport = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    lsList: TListView;
    qryMatterCount: TUniQuery;
    btnRemove: TBitBtn;
    btnAdd: TBitBtn;
    edMatter: TEdit;
    Label1: TLabel;
    btTrust: TBitBtn;
    btnSearch: TBitBtn;
    Status: TStatusBar;
    images: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    procedure btnAddClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btTrustClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBatchReport: TfrmBatchReport;

implementation

uses MSearch, AxiomData, MiscFunc;

{$R *.DFM}

procedure TfrmBatchReport.btnAddClick(Sender: TObject);
var
   tmpList : TListItem;
   tmpLabel : TLabel;
begin
    qryMatterCount.Close;
    qryMatterCount.ParamByName('FILEID').AsString := edMatter.Text;

    qryMatterCount.Open;
    if not qryMatterCount.EOF then
    begin
        tmpList := lsList.Items.Add;
        tmpList.ImageIndex := 0;
        tmpList.Caption := edMatter.Text + ' : ' + qryMatterCount.FieldByName('SHORTDESCR').AsString;
        tmpLabel := TLabel.Create(self);
        tmpLabel.Caption := edMatter.Text;
        tmpList.Data := tmpLabel;
        Status.Panels[0].Text := 'Matter ' + edMatter.Text + ' added';
        edMatter.Text := '';
    end
    else
        Status.Panels[0].Text := 'Matter ' + edMatter.Text + ' not found';

    qryMatterCount.Close;
    edMatter.SetFocus;
end;

procedure TfrmBatchReport.BitBtn1Click(Sender: TObject);
var iLoop : Integer;
begin
    for iloop := 1 to lsList.Items.Count do
       with TfrmRptLedgerCombo.Create(Self) do
       begin
          DisplayMatter(TLabel(lsList.Items[iloop-1].Data).Caption);
          Print(True);
          destroy;
       end;
    if lsList.Items.Count > 0  then
        Status.Panels[0].Text := 'Reports Printed'
    else
        Status.Panels[0].Text := 'Nothing to print';

end;

procedure TfrmBatchReport.FormHide(Sender: TObject);
var iLoop : integer;
begin
    for iloop := 1 to lsList.Items.Count do
    begin
          TLabel(lsList.Items[iloop-1].Data).Destroy;
    end;

    lsList.Items.Clear;
end;

procedure TfrmBatchReport.btnRemoveClick(Sender: TObject);
begin

if lslist.SelCount > 0 then
begin
   Status.Panels[0].Text := 'Matter ' + TLabel(lslist.Selected.data).Caption + ' removed';
   TLabel(lslist.Selected.data).Destroy;
   lslist.Selected.Delete;
   lslist.Refresh;
end;

end;

procedure TfrmBatchReport.btTrustClick(Sender: TObject);
var iLoop : Integer;
begin
    for iloop := 1 to lsList.Items.Count do
       with TfrmRptLedgerTrust.Create(Self) do
       begin
          DisplayMatter(TLabel(lsList.Items[iloop-1].Data).Caption);
          Print(True);

          destroy;
       end;
       
    if lsList.Items.Count > 0  then
        Status.Panels[0].Text := 'Reports Printed'
    else
        Status.Panels[0].Text := 'Nothing to print';

end;

procedure TfrmBatchReport.btnSearchClick(Sender: TObject);
var
   iCtr, ARowIndex: integer;
   tmpList : TListItem;
   tmpLabel : TLabel;
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
   begin
      if frmMatterSearch.vMatters.DataController.GetSelectedCount = 1 then
      begin
         edMatter.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
         btnAddClick(Self);
      end
      else
      begin
         for iCtr := 0 to frmMatterSearch.vMatters.DataController.GetSelectedCount - 1 do
         begin
            ARowIndex := frmMatterSearch.vMatters.DataController.GetSelectedRowIndex(iCtr);
            frmMatterSearch.vMatters.DataController.FocusedRowIndex := ARowIndex;
            tmpList := lsList.Items.Add;
            tmpList.ImageIndex := 0;
            tmpList.Caption := dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' : ' + dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString;
            tmpLabel := TLabel.Create(self);
            tmpLabel.Caption := edMatter.Text;
            tmpList.Data := tmpLabel;
         end;
      end;
   end;
end;

procedure TfrmBatchReport.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmBatchReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

end.
