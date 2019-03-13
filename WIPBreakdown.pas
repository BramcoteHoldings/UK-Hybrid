unit WIPBreakdown;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, Menus, cxPC, MemDS, DBAccess, Ora, OracleUniProvider, Uni, DBAccess, MemDS,
  cxLookAndFeels, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ExtCtrls;

type
  TfrmWIPBreakdown = class(TForm)
    dsWIP: TUniDataSource;
    qryWIP: TUniQuery;
    grdWIP: TcxGrid;
    tvWIP: TcxGridDBTableView;
    tvWIPNFEE: TcxGridDBColumn;
    tvWIPCREATED: TcxGridDBColumn;
    tvWIPAUTHOR: TcxGridDBColumn;
    tvWIPPARTNERNAME: TcxGridDBColumn;
    tvWIPFILEID: TcxGridDBColumn;
    tvWIPDESCR: TcxGridDBColumn;
    tvWIPAMOUNT: TcxGridDBColumn;
    tvWIPUNITS: TcxGridDBColumn;
    tvWIPMINS: TcxGridDBColumn;
    tvWIPRATE: TcxGridDBColumn;
    tvWIPINVOICEDATE: TcxGridDBColumn;
    tvWIPBILLED: TcxGridDBColumn;
    tvWIPTYPE: TcxGridDBColumn;
    tvWIPTASK: TcxGridDBColumn;
    tvWIPBILLNO: TcxGridDBColumn;
    tvWIPTITLE: TcxGridDBColumn;
    tvWIPBRANCH: TcxGridDBColumn;
    tvWIPDEPT: TcxGridDBColumn;
    tvWIPPARTDEPT: TcxGridDBColumn;
    tvWIPBILLTYPE: TcxGridDBColumn;
    tvWIPTIME_TYPE: TcxGridDBColumn;
    grdWIPLevel1: TcxGridLevel;
    Panel1: TPanel;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FAuthor: string;
    FOrderBy: String;
    FDateFrom, FDateTo: TDateTime;
    FFormTitle: string;
  public
    { Public declarations }
    property Author: string read FAuthor write FAuthor;
    property DateFrom: TDateTime read FDateFrom write FDateFrom;
    property Dateto: TDateTime read FDateTo write FDateTo;
    property FormTitle: string read FFormTitle write FFormTitle;
    procedure GetSQLWhereFrom(var AWhere, AFrom, AGroupField: String; InitialWhere: string);
    procedure MakeSQL(AOrderGroup: Boolean);
  end;

var
  frmWIPBreakdown: TfrmWIPBreakdown;

implementation

uses AxiomData, DashboardIndDataModule;

{$R *.dfm}

procedure TfrmWIPBreakdown.cxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmWIPBreakdown.GetSQLWhereFrom(var AWhere, AFrom, AGroupField: String; InitialWhere: string);
var
  LWhere, LFrom: TStringList;
begin
  LWhere := TStringList.Create();
  LFrom  := TStringList.Create();
  try
    // Build the SQL Filter query

    if InitialWhere <> '' then
    begin
      LWhere.Add('WHERE');
      LWhere.Add(InitialWhere);
    end else
      LWhere.Add('WHERE 1=1 ');

    LFrom.Add('FEE');

    LWhere.Add('AND FEE.AUTHOR = ' + QuotedStr(FAuthor));

 {   if  (cbPartner.EditValue <> '') then
      LWhere.Add('AND FEE.PARTNER = ' + QuotedStr(cbPartner.EditValue));

    if eMatter.Text <> '' then
      LWhere.Add('AND FEE.FILEID = ' + QuotedStr(FMatterNo));

    AGroupField := 'FEE.CREATED';
    case rgBilled.ItemIndex of
      1: // Unbilled
        LWhere.Add('AND FEE.BILLED = ''N'' AND FEE.billtype = ''Billable''');
      2: // Billed
        begin
        LWhere.Add('AND FEE.BILLED = ''Y''');
        AGroupField := 'FEE.INVOICEDATE';
        end;
      3: // Billings by Invoicedate
        begin
        LWhere.Add('AND FEE.billtype = ''NonBillable''');
        end;
    end;

    case rgValue.ItemIndex of
      1: // Positive Only
        LWhere.Add('AND FEE.AMOUNT > 0');
      2: // Negative Only
        LWhere.Add('AND FEE.AMOUNT < 0');
      3: // Zero Only
        LWhere.Add('AND FEE.AMOUNT = 0');
    end;

    if (cbFeeType.EditValue <> '')  then
      LWhere.Add('AND FEE.TYPE = ' + QuotedStr(cbFeeType.EditValue));

    if (cbDept.EditValue <> '') then
      LWhere.Add('AND FEE.DEPT = ' + QuotedStr(cbDept.EditValue));

    if (cbAuthorType.EditValue <> '') then
      LWhere.Add('AND FEE.EMP_TYPE = ' + QuotedStr(cbAuthorType.EditValue));

    if (cbBranch.EditValue <> '') then
    begin
      LWhere.Add('AND MATTER.BRANCH = ' + QuotedStr(cbBranch.EditValue));
      LWhere.Add('AND FEE.NMATTER = MATTER.NMATTER');
      LFrom.Add('MATTER');
    end;

    if (cbScale.EditValue <> '') then
      LWhere.Add('AND FEE.TASK = ' + QuotedStr(cbScale.EditValue));

    if dtpDateFrom.Checked then }
      LWhere.Add('AND FEE.CREATED >= :P_DateFrom');
      LWhere.Add('AND FEE.CREATED < :P_DateTo ');

 {   if dtpDateTo.Checked then
      LWhere.Add('AND ' + AGroupField + ' < :P_DateTo ');

    if edClientCode.Text <> '' then
    begin
      LWhere.Add('AND CLIENT.CODE = ' + QuotedStr(FClientCode));
      LWhere.Add('AND FEE.NCLIENT = CLIENT.NCLIENT');
      LFrom.Add('CLIENT');
    end;

    if (cbEntity.EditValue <> '') then
      LWhere.Add('AND FEE.BANK_ACCT = ' + QuotedStr(cbEntity.EditValue));

    if edBillNum.Text <> '' then
    begin
      LWhere.Add('AND NMEMO.REFNO = ' + QuotedStr(edBillNum.Text));
      LWhere.Add('AND NMEMO.NMEMO = FEE.NMEMO');
      LFrom.Add('NMEMO');
    end;                     }

    AWhere := LWhere.Text;
    AFrom  := LFrom.CommaText;
  finally
    FreeAndNil(LWhere);
    FreeAndNil(LFrom);
  end;
end;

procedure TfrmWIPBreakdown.MakeSQL(AOrderGroup: Boolean);
var
  LSqlWhere, LSqlFrom, LGroupField: String;
  LStr: String;
  i: Integer;
begin
  qryWIP.Close;
  qryWIP.SQL.Clear;

  GetSQLWhereFrom(LSqlWhere, LSqlFrom, LGroupField, 'FEE.NMATTER = MATTER.NMATTER(+) AND '+
                                                    'FEE.NMEMO = NMEMO.NMEMO(+) AND '+
                                                    'FEE.TYPE = FEETYPE.CODE(+) AND '+
                                                    'FEE.PARTNER = PART.CODE(+) AND '+
                                                    'FEE.AUTHOR = AUTH.CODE AND '+
                                                    'MATTER.BRANCH = BR.CODE(+) AND ' +
                                                    'FEE.DEPT = DPT.CODE(+) AND ' +
                                                    'PART.DEPT = PARTDPT.CODE(+) AND ' +
                                                    'MATTER.NCLIENT = PHONEBOOK.NCLIENT(+) AND '+
                                                    'FEE.billtype = ''Billable'' AND '+
                                                    'FEE.type not in (''wo'',''ia'') ');

  qryWIP.SQL.Add('SELECT /*+ ORDERED */FEE.NFEE, /*+ ORDERED */trunc(FEE.CREATED) "CREATED", FEE.AUTHOR, FEE.FILEID, FEE.NMATTER');
  qryWIP.SQL.Add(', FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS');
  qryWIP.SQL.Add(', FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK');
  qryWIP.SQL.Add(', FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, PHONEBOOK.SEARCH AS TITLE');
  qryWIP.SQL.Add(', MATTER.SHORTDESCR, BR.DESCR "BRANCH", FEETYPE.DESCR AS FEETYPE');
  qryWIP.SQL.Add(', PART.NAME AS PARTNERNAME, AUTH.NAME AS AUTHORNAME');
  qryWIP.SQL.Add(', DPT.DESCR AS DEPT, PARTDPT.DESCR AS PARTDEPT, FEE.BILLTYPE, FEE.TIME_TYPE ');

  if(Pos('MATTER',LSqlFrom) = 0) then
    LSQLFrom := LSQLFrom + ',MATTER';
  if(Pos('NMEMO',LSqlFrom) = 0) then
    LSQLFrom := LSQLFrom + ',NMEMO';

  qryWIP.SQL.Add('FROM ' + LSQLFrom);
  qryWIP.SQL.Add(',PHONEBOOK, FEETYPE, EMPLOYEE PART, EMPLOYEE AUTH, BRANCH BR, EMPDEPT DPT, EMPDEPT PARTDPT');
  qryWIP.SQL.Add(LSqlWhere);

  if(AOrderGroup) then
  begin
//    SetOrderByLocal(True);
    LStr := '';
    if(Trim(LStr) <> '') then
      LStr := LStr + ',' + FOrderBy
    else
      LStr := FOrderBy;
    if(Trim(LStr) <> '') then
      qryWIP.SQL.Add('ORDER BY ' + LStr);
  end else
  begin
    qryWIP.SQL.Add(FOrderBy);
  end;

//  if dtpDateFrom.Checked then
    qryWIP.ParamByName('P_DateFrom').AsDate := Trunc(FDateFrom);
//  if dtpDateTo.Checked then
    qryWIP.ParamByName('P_DateTo').AsDate := Trunc(FDateTo) + 1;

  qryWIP.Open;
end;

procedure TfrmWIPBreakdown.FormShow(Sender: TObject);
begin
   Self.Caption := FFormTitle;
   MakeSQL(False);
end;

end.
