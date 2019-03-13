unit MaisterAnalysis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, NumberLabel, ExtCtrls, DBCtrls, OracleUniProvider, Uni,
  MemDS, DBAccess;

type
  TfrmMaisterAnalysis = class(TForm)
    fraTheFirm: TGroupBox;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    dblblFirmRecvdFees: TDBText;
    dblblFirmJuniorCost: TDBText;
    dblblFirmPartnerCost: TDBText;
    bvlLine: TBevel;
    lblComparison: TLabel;
    nlFirmGrossCont: TNumberLabel;
    nlFirmDifference: TNumberLabel;
    chkPartner: TCheckBox;
    chkType: TCheckBox;
    chkAuthor: TCheckBox;
    fraThisMatter: TGroupBox;
    Label15: TLabel;
    dblblJuniorCost: TDBText;
    dblblPartnerCost: TDBText;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    dblblRecvdFees: TDBText;
    nlGrossCont: TNumberLabel;
    nlDifference: TNumberLabel;
    nlPercentVariance: TNumberLabel;
    nlVariance: TNumberLabel;
    Label21: TLabel;
    qryPartnerCost: TUniQuery;
    dsPartnerCost: TUniDataSource;
    qryJuniorCost: TUniQuery;
    dsJuniorCost: TUniDataSource;
    qryFirmRevenue: TUniQuery;
    dsFirmRevenue: TUniDataSource;
    qryFirmJuniorCost: TUniQuery;
    dsFirmJuniorCost: TUniDataSource;
    qryFirmPartnerCost: TUniQuery;
    dsFirmPartnerCost: TUniDataSource;
    btnAnalyse: TBitBtn;
    lblMatter: TLabel;
    lblClient: TLabel;
    lblMatterDesc: TLabel;
    Label1: TLabel;
    btnMatter: TBitBtn;
    qryMatter: TUniQuery;
    dsMatter: TUniDataSource;
    qryFirmPartnerCostCOST: TFloatField;
    qryMatterFILEID: TStringField;
    qryMatterTITLE: TStringField;
    qryMatterSHORTDESCR: TStringField;
    qryMatterPARTNER: TStringField;
    qryMatterAUTHOR: TStringField;
    qryMatterTYPE: TStringField;
    qryMatterOPENED: TDateTimeField;
    qryPartnerCostCOST: TFloatField;
    qryJuniorCostCOST: TFloatField;
    qryFirmRevenueREVENUE: TFloatField;
    qryFirmJuniorCostCOST: TFloatField;
    qryMatterFEES_PAID: TFloatField;
    procedure btnAnalyseClick(Sender: TObject);
    procedure chkPartnerClick(Sender: TObject);
    procedure chkAuthorClick(Sender: TObject);
    procedure btnMatterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkTypeClick(Sender: TObject);
  private
    { Private declarations }
    procedure AnalyseFirm;
  public
    { Public declarations }
    procedure DisplayMatter(sFileID : string);
  end;

var
  frmMaisterAnalysis: TfrmMaisterAnalysis;

implementation

uses
  AxiomData, MiscFunc, MSearch;

{$R *.DFM}


procedure TfrmMaisterAnalysis.DisplayMatter(sFileID : string);
begin
  with qryMatter do
  begin
    Close;
    ParamByName('FILEID').AsString := sFileID;
    Open;
    if IsEmpty then
      Self.Close
    else
    begin
      lblMatter.Caption := sFileID;
      lblClient.Caption := FieldByName('TITLE').AsString;
      lblMatterDesc.Caption := FieldByName('SHORTDESCR').AsString;
      Self.Show;
    end;
  end;
end;


procedure TfrmMaisterAnalysis.btnAnalyseClick(Sender: TObject);
var
  cAmt1, cAmt2 : Currency;
begin
  qryJuniorCost.Close;
  qryPartnerCost.Close;

  // For the Selected Matter
  qryJuniorCost.ParamByName('P_Matter').AsInteger := TableInteger('MATTER', 'FILEID', lblMatter.Caption, 'NMATTER');
  qryJuniorCost.Open;
  qryPartnerCost.ParamByName('P_Matter').AsInteger := TableInteger('MATTER', 'FILEID', lblMatter.Caption, 'NMATTER');
  qryPartnerCost.Open;
  try
    cAmt1 := StrToCurr(dblblRecvdFees.Field.AsString);
  except
    cAmt1 := 0;
  end;
  try
    cAmt2 := StrToCurr(dblblJuniorCost.Field.AsString);
  except
    cAmt2 := 0;
  end;
  nlGrossCont.AsCurrency := cAmt1 - cAmt2;
  cAmt1 := nlGrossCont.AsCurrency;
  try
    cAmt2 := StrToCurr(dblblPartnerCost.Field.AsString);
  except
    cAmt2 := 1; // Cater for divide by zero
  end;
  if cAmt2 <> 0 then
    nlDifference.AsCurrency := cAmt1 / cAmt2;
  // Calculate the firm's selected figures
  AnalyseFirm;
end;


procedure TfrmMaisterAnalysis.AnalyseFirm;
var
  cArg1, cArg2 : currency;
begin
  // For the Entire Firm
  with qryFirmJuniorCost do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(FEE.MINS * EMPLOYEE.COST_PER_HOUR / 60) AS COST');
    SQL.Add('FROM FEE, EMPLOYEE');
    if chkType.Checked then
      SQL.Add(', MATTER');
    SQL.Add('WHERE FEE.CREATED >= :P_Opened AND EMPLOYEE.ISPARTNER <> ''Y''');
    if chkPartner.Checked then
      SQL.Add('AND FEE.PARTNER = ''' + qryMatter.FieldByName('PARTNER').AsString + '''');
    if chkAuthor.Checked then
      SQL.Add('AND FEE.AUTHOR = ''' + qryMatter.FieldByName('AUTHOR').AsString + '''');
    if chkType.Checked then
      SQL.Add('AND FEE.NMATTER = MATTER.NMATTER AND MATTER.TYPE = ''' + qryMatter.FieldByName('TYPE').AsString + '''');
    ParamByName('P_Opened').AsDate := qryMatter.FieldByName('OPENED').AsDateTime;
    Open;
  end;

  with qryFirmPartnerCost do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(FEE.MINS * EMPLOYEE.COST_PER_HOUR / 60) AS COST');
    SQL.Add('FROM FEE, EMPLOYEE');
    if chkType.Checked then
      SQL.Add(', MATTER');
    SQL.Add('WHERE FEE.CREATED >= :P_Opened AND FEE.EMP_TYPE = ''PAR''');
    if chkPartner.Checked then
      SQL.Add('AND FEE.PARTNER = ''' + qryMatter.FieldByName('PARTNER').AsString + '''');
    if chkAuthor.Checked then
      SQL.Add('AND FEE.AUTHOR = ''' + qryMatter.FieldByName('AUTHOR').AsString + '''');
    if chkType.Checked then
      SQL.Add('AND FEE.NMATTER = MATTER.NMATTER AND MATTER.TYPE = ''' + qryMatter.FieldByName('TYPE').AsString + '''');
    ParamByName('P_Opened').AsDate := qryMatter.FieldByName('OPENED').AsDateTime;
    Open;
  end;

  with qryFirmRevenue do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(FEES_PAID) AS REVENUE FROM MATTER, NMEMO WHERE MATTER.OPENED >= :P_Opened AND MATTER.NMATTER = NMEMO.NMATTER ');
    if chkPartner.Checked then
      SQL.Add('AND MATTER.PARTNER = ''' + qryMatter.FieldByName('PARTNER').AsString + '''');
    if chkAuthor.Checked then
      SQL.Add('AND MATTER.AUTHOR = ''' + qryMatter.FieldByName('AUTHOR').AsString + '''');
    if chkType.Checked then
      SQL.Add('AND MATTER.TYPE = ''' + qryMatter.FieldByName('TYPE').AsString + '''');
    ParamByName('P_Opened').AsDate := qryMatter.FieldByName('OPENED').AsDateTime;
    Open;
  end;

  if dblblFirmRecvdFees.Field.AsString <> '' then
    cArg1 := StrToCurr(dblblFirmRecvdFees.Field.AsString)
  else
    cArg1 := 0;
  if dblblFirmJuniorCost.Field.AsString <> '' then
    cArg2 := StrToCurr(dblblFirmJuniorCost.Field.AsString)
  else
    cArg2 := 0;
  nlFirmGrossCont.AsCurrency := cArg1 - cArg2;
  cArg1 := nlFirmGrossCont.AsCurrency;
  cArg2 := 1;
  if dblblFirmPartnerCost.Field.AsString <> '' then
    cArg2 := StrToCurr(dblblFirmPartnerCost.Field.AsString);
  if cArg2 = 0 then
    cArg2 := 1; // To stop divide by zero errors
  nlFirmDifference.AsCurrency := cArg1 / cArg2;
  // Variance
  nlVariance.AsCurrency := nlDifference.AsCurrency - nlFirmDifference.AsCurrency;
  nlPercentVariance.AsDouble := nlDifference.AsCurrency / nlFirmDifference.AsCurrency * 100;
end;


procedure TfrmMaisterAnalysis.chkPartnerClick(Sender: TObject);
begin
  AnalyseFirm;
end;

procedure TfrmMaisterAnalysis.chkAuthorClick(Sender: TObject);
begin
  AnalyseFirm;
end;


procedure TfrmMaisterAnalysis.btnMatterClick(Sender: TObject);
begin
  if frmMatterSearch.ShowModal = mrOK then
    DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
end;

procedure TfrmMaisterAnalysis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryFirmPartnerCost.Close;
  qryPartnerCost.Close;
  qryFirmRevenue.Close;
  qryFirmJuniorCost.Close;
  qryJuniorCOst.Close;

  Self.Release;
end;

procedure TfrmMaisterAnalysis.chkTypeClick(Sender: TObject);
begin
  AnalyseFirm;
end;

end.
