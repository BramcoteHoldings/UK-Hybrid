unit SubBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, OracleUniProvider,
  Uni, DBAccess, MemDS, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxBar, StdCtrls, cxCheckBox, cxButtonEdit, cxDBExtLookupComboBox,
  cxMemo, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator;

type
  TfrmSubBill = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxGridSubbillsDBTableView1: TcxGridDBTableView;
    cxGridSubbillsLevel1: TcxGridLevel;
    cxGridSubbills: TcxGrid;
    qrySubBills: TUniQuery;
    dsSubBills: TUniDataSource;
    cxGridSubbillsDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridSubbillsDBTableView1DBColumn2: TcxGridDBColumn;
    cxGridSubbillsDBTableView1DBColumn3: TcxGridDBColumn;
    Label3: TLabel;
    lblTotalPercent: TLabel;
    Label4: TLabel;
    lblTotalPercentUn: TLabel;
    cxGridSubbillsTOTAL: TcxGridDBColumn;
    cxGridSubbillsOWING: TcxGridDBColumn;
    cxGridSubbillsTAX: TcxGridDBColumn;
    procedure qrySubBillsAfterPost(DataSet: TDataSet);
    procedure dxBarButton1Click(Sender: TObject);
    procedure qrySubBillsNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DBColumn1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    iNmemo : integer;
    sNew : boolean;
    iSequence : integer;
    procedure updatePercentage;
    procedure showTotals(bIn : boolean);


  public
    { Public declarations }

  procedure displaySubBill(iNmemo : integer);
  property Totals : boolean write showTotals;

  end;

var
  frmSubBill: TfrmSubBill;

implementation

uses miscFunc, AxiomData,NSearch;

{$R *.dfm}

procedure TfrmSubBill.displaySubBill(iNmemo : integer);
begin
   self.iNmemo := iNmemo;
   qrySubBills.ParamByName('NMEMO').AsInteger := iNmemo;
   qrySubBills.Open;
   if qrySubBills.Eof then
   begin
      iSequence := 0;
      qrySubBills.Insert;
      sNew := true;
   end
   else
   begin
      iSequence := -1;
      while not qrySubBills.eof do
      begin
        if qrySubBills.fieldByName('NSUBBILL').AsInteger >  iSequence then
                iSequence := qrySubBills.fieldByName('NSUBBILL').AsInteger;
        qrySubBills.Next;
      end;
   end;

   updatePercentage;
end;

procedure TfrmSubBill.updatePercentage;
var bmPrevRecord : TBookmark;
iPercent,fTmp : double;
begin
   if sNew then
   begin
      lblTotalPercent.Caption := intToStr(0) + '%';
      lblTotalPercentUn.Caption := intToStr(100) + '%';
      exit;
   end;
   bmPrevRecord := qrySubBills.GetBookmark;
   qrySubBills.First;
   iPercent := 0;
   while not qrySubBills.Eof do
   begin
      iPercent := iPercent + qrySubBills.fieldByName('PERCENTAGE').AsFloat;
      qrySubBills.Next;
   end;

   qrySubBills.GotoBookmark(bmPrevRecord);
   qrySubBills.FreeBookmark(bmPrevRecord);

   fTmp := round((100-iPercent)*100)/100;
   iPercent := round((iPercent)*100)/100;

   lblTotalPercent.Caption := floatToStr(iPercent) + '%';
   lblTotalPercentUn.Caption := floatToStr(fTmp) + '%';
   if iPercent <> 100 then
   begin
      lblTotalPercent.Font.Color := clRed;
      lblTotalPercentUn.Font.Color := clRed;
   end
   else
   begin
      lblTotalPercent.Font.Color := clWindowText;
      lblTotalPercentUn.Font.Color := clWindowText;
   end;
end;

procedure TfrmSubBill.qrySubBillsAfterPost(DataSet: TDataSet);
begin
   sNew := false;
   updatePercentage;
end;

procedure TfrmSubBill.dxBarButton1Click(Sender: TObject);
var
   iNumRound: Integer;
   iTotalPer : double;
   bSavedOk: boolean;
begin
   bSavedOk := True;
   // validate the data
   iTotalPer := 0.0;
   iNumRound := 0;
   qrySubBills.First;
   while not qrySubBills.Eof do
   begin
      iTotalPer := iTotalPer + qrySubBills.fieldByName('percentage').AsFloat;

      if qrySubBills.fieldByName('rounding').AsString = 'Y' then
         inc(iNumRound);

      qrySubBills.Next;
   end;

   if round(iTotalPer*100)/100 <> 100 then
   begin
      MsgErr('Error: The total percentage allocated must be 100%');
      bSavedOk := False;
      exit;
   end;

   if iNumRound <> 1 then
   begin
      MsgErr('Error: One entry must have rounding selected');
      bSavedOk := False;
      exit;
   end;

//  try
//    dmAxiom.uniInsight.StartTransaction;
//qrySubBills.ApplyUpdates;
    //dmAxiom.uniInsight.commit;
//    dmAxiom.uniInsight.commit;
//  except
//    on e: exception do
//    begin
//      dmAxiom.uniInsight.Rollback;
//      raise;
//    end;
//  end;
   if bSavedOk then
   begin
      qrySubBills.ApplyUpdates;
      self.ModalResult := mrOK;
   end;
end;

procedure TfrmSubBill.qrySubBillsNewRecord(DataSet: TDataSet);
begin
   qrySubBills.FieldByName('NMEMO').AsInteger := iNmemo;
   inc(iSequence);
   qrySubBills.FieldByName('NSUBBILL').AsInteger := iSequence;
   qrySubBills.FieldByName('ROUNDING').AsString := 'N';
end;

procedure TfrmSubBill.cxGrid1DBTableView1DBColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  iNName : integer;
  sSearch : String;
  FPhonebookSearch : TfrmPhoneBookSearch;
begin
   if qrySubBills.State = dsBrowse then
      qrySubBills.Edit;

   FPhoneBookSearch := TfrmPhoneBookSearch.Create(Application.MainForm);

   if(FPhoneBookSearch.ShowModal() = mrOk) then
   begin
      iNName := FPhoneBookSearch.NName;
      sSearch := FPhoneBookSearch.Search;
      qrySubBills.FieldByName('NBILL_TO').AsInteger := iNName;
      qrySubBills.FieldByName('debtor_name').AsString := sSearch;
   end;
end;

procedure TfrmSubBill.showTotals(bIn : boolean);
begin
   qrySubBills.ReadOnly := bIn;
   cxGridSubbillsTOTAL.Visible := bIn;
   cxGridSubbillsTAX.Visible := bIn;
   cxGridSubbillsOWING.Visible := bIn;
end;

procedure TfrmSubBill.FormCreate(Sender: TObject);
begin
   cxGridSubbillsTOTAL.Visible := false;
   cxGridSubbillsTAX.Visible := false;
   cxGridSubbillsOWING.Visible := false;
end;

end.
