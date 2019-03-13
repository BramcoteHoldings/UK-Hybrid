unit ExpenseAllocation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, OracleUniProvider, Uni, DBAccess, MemDS, StdCtrls,
  cxGridCardView, cxDropDownEdit, cxTextEdit, dxBarExtItems, dxBar,
  cxButtonEdit, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator;

type
  TfrmExpenseAllocations = class(TForm)
    tvExpenseAllocations: TcxGridDBTableView;
    dbgrExpenseAllocationsLevel1: TcxGridLevel;
    dbgrExpenseAllocations: TcxGrid;
    qryExpenseAllocations: TUniQuery;
    dsExpenseAllocations: TUniDataSource;
    tvExpenseAllocationsDBColumn1: TcxGridDBColumn;
    tvExpenseAllocationsDBColumn2: TcxGridDBColumn;
    tvExpenseAllocationsDBColumn3: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    tvExpenseAllocationsDBDescription: TcxGridDBColumn;
    lblMasterChart: TLabel;
    lblDescription: TLabel;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Label3: TLabel;
    lblTotalPercent: TLabel;
    Label4: TLabel;
    lblTotalPercentUn: TLabel;
    btnDelete: TdxBarButton;
    procedure qryExpenseAllocationsNewRecord(DataSet: TDataSet);
    procedure dbgrExpenseAllocationsDBTableView1DBColumn1PropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dbgrExpenseAllocationsDBTableView1DBColumn1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure updateGrid(sGlValue: string);
    procedure updatePercentage;
    procedure qryExpenseAllocationsAfterDelete(DataSet: TDataSet);
    procedure qryExpenseAllocationsAfterPost(DataSet: TDataSet);
    procedure dbgrExpenseAllocationsExit(Sender: TObject);
    function checkChartType(sChartKey,sBank : String) : boolean;
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    sLKey: string;
    sBank: string;
    sNew : boolean;
  public
    { Public declarations }
    procedure loadChart(sLKey, sBank, sChart: string);
  end;

var
  frmExpenseAllocations: TfrmExpenseAllocations;

implementation

{$R *.dfm}

uses MiscFunc, glComponentUtil, axiomData, LSearch, citfunc;


procedure TfrmExpenseAllocations.loadChart(sLKey, sBank, sChart: string);
begin
  self.sLKey := sLKey;
  self.sBank := sBank;
  qryExpenseAllocations.close;
  qryExpenseAllocations.ParamByName('CODE').AsString := sLKey;
  qryExpenseAllocations.ParamByName('BANK').AsString := sBank;
  qryExpenseAllocations.open;
  if qryExpenseAllocations.Eof then
  begin
    sNew := true;
    qryExpenseAllocations.Insert;
  end;

  lblMasterChart.caption := sChart;
  lblDescription.Caption := LedgerString(sLKey, 'DESCR');
  updatePercentage;

end;

procedure TfrmExpenseAllocations.qryExpenseAllocationsNewRecord(
  DataSet: TDataSet);
begin
  DataSet.fieldByName('MASTER_BANK').AsString := sBank;
  DataSet.fieldByName('MASTER_CODE').AsString := sLKey;
  DataSet.fieldByName('IS_ROUNDING').AsString := 'N';
  DataSet.fieldByName('PERCENTAGE').AsInteger := 0;
end;

procedure TfrmExpenseAllocations.dbgrExpenseAllocationsDBTableView1DBColumn1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
  var glValue : String;
begin
        glValue := DisplayValue;
        updateGrid(glValue);
end;

procedure TfrmExpenseAllocations.dxBarButton2Click(Sender: TObject);
begin
  self.close;
end;

function TfrmExpenseAllocations.checkChartType(sChartKey,sBank : String) : boolean;
begin
    with dmAxiom.qryTmp do
    begin
        close;
        SQL.Clear;
        SQL.Add('select ct.reporttype from chart c,charttype ct');
        SQL.Add('where c.TYPE = ct.code');
        SQL.Add('and c.code = :code');
        SQL.Add('and c.bank = :bank');
        paramByName('code').AsString := sChartKey;
        ParamByName('bank').AsString := sBank;
        open;
        checkChartType := fieldByname('reporttype').AsString = 'P';
        close;
    end;
end;

procedure TfrmExpenseAllocations.dxBarButton1Click(Sender: TObject);
var iNumRound: Integer;
iTotalPer : double;
begin
        // validate the data
   iTotalPer := 0.0;
   iNumRound := 0;
   qryExpenseAllocations.First;
   while not qryExpenseAllocations.Eof do
   begin
      iTotalPer := iTotalPer + qryExpenseAllocations.fieldByName('percentage').AsFloat;

      if qryExpenseAllocations.fieldByName('is_rounding').AsString = 'Y' then
         inc(iNumRound);

    // check that charts are P/L

      if not checkChartType(qryExpenseAllocations.fieldByName('code').AsString,qryExpenseAllocations.fieldByName('bank').AsString) then
      begin
         MsgErr('Error ' + qryExpenseAllocations.fieldByName('component_code_display').AsString + ' is not a P/L account');
         exit;
      end;

      qryExpenseAllocations.Next;
   end;

   if round(iTotalPer*100)/100 <> 100 then
   begin
      MsgErr('Error the total percentage allocated must be 100%');
      exit;
   end;

   if iNumRound <> 1 then
   begin
      MsgErr('Error one entry must have rounding selected');
      exit;
   end;

   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      qryExpenseAllocations.ApplyUpdates;
      dmAxiom.uniInsight.commit;
   except
      on e: exception do
      begin
         dmAxiom.uniInsight.Rollback;
         raise;
      end;
   end;
   close;
end;

procedure TfrmExpenseAllocations.dbgrExpenseAllocationsDBTableView1DBColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var sGlValue: string;
begin
  if not FormExists(frmLedgerSearch) then
    Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);

  if frmLedgerSearch.ShowModal = mrOk then
  begin
        sGlValue := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
        updateGrid(sGlValue);
  end;

end;

procedure TfrmExpenseAllocations.updateGrid(sGlValue: string);
var glInstance: TglComponentInstance;
begin

    qryExpenseAllocations.Edit;
   // calculate the gl component
    glInstance := dmAxiom.getGlComponents.parseString(sGlValue, true);
    if not glInstance.valid then
    begin
      glInstance.displayError;
      qryExpenseAllocations.fieldByName('BANK').AsString := '';
      qryExpenseAllocations.fieldByName('CODE').AsString := '';
      qryExpenseAllocations.fieldByName('DESCR').AsString := '';
    end
    else
    begin

      qryExpenseAllocations.fieldByName('BANK').AsString := sBank;
      qryExpenseAllocations.fieldByName('CODE').AsString := glInstance.ledgerKey;
      qryExpenseAllocations.fieldByName('DESCR').AsString := ledgerString(glInstance.ledgerKey, 'DESCR');
      qryExpenseAllocations.fieldByName('component_code_display').AsString := glInstance.fullCode;
      //DisplayValue := glInstance.fullCode;
    end;
    glInstance.free;

end;

procedure TfrmExpenseAllocations.updatePercentage;
var bmPrevRecord : TBookmark;
iPercent,fTmp : double;
begin
   if sNew then
   begin
      lblTotalPercent.Caption := intToStr(0) + '%';
      lblTotalPercentUn.Caption := intToStr(100) + '%';
      exit;
   end;
   bmPrevRecord := qryExpenseAllocations.GetBookmark;
   qryExpenseAllocations.First;
   iPercent := 0;
   while not qryExpenseAllocations.Eof do
   begin
      iPercent := iPercent + qryExpenseAllocations.fieldByName('PERCENTAGE').AsFloat;
      qryExpenseAllocations.Next;
   end;

   qryExpenseAllocations.GotoBookmark(bmPrevRecord);
   qryExpenseAllocations.FreeBookmark(bmPrevRecord);

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

procedure TfrmExpenseAllocations.qryExpenseAllocationsAfterDelete(
  DataSet: TDataSet);
begin
   updatePercentage;
end;

procedure TfrmExpenseAllocations.qryExpenseAllocationsAfterPost(
  DataSet: TDataSet);
begin
   sNew := false;
   updatePercentage;
end;

procedure TfrmExpenseAllocations.dbgrExpenseAllocationsExit(
  Sender: TObject);
begin
   updatePercentage;
end;

procedure TfrmExpenseAllocations.btnDeleteClick(Sender: TObject);
begin
   qryExpenseAllocations.Delete;
//   Self.Close;
end;

end.

