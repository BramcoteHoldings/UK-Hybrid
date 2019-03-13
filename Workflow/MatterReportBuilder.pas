unit MatterReportBuilder;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ImgList, ToolWin, Db, ExtCtrls,
  CheckLst, DBCtrls, OracleUniProvider, Uni, DBAccess, MemDS, dxBarDBNav, cxClasses,
  dxBar, Buttons, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC;

type
  TfrmMatterReportBuilder = class(TForm)
    ilstToolbar: TImageList;
    Label2: TLabel;
    Label4: TLabel;
    qryMatter: TUniQuery;
    qryFields: TUniQuery;
    dblblName: TDBText;
    dsDataReport: TUniDataSource;
    dbmmoDescr: TDBMemo;
    qryTmp: TUniQuery;
    qryDataReport: TUniQuery;
    qryMatterNMATTER: TFloatField;
    qryMatterOPENED: TDateTimeField;
    qryMatterPARTNER: TStringField;
    qryMatterAUTHOR: TStringField;
    qryMatterTYPE: TStringField;
    qryMatterRATE: TFloatField;
    qryMatterTITLE: TStringField;
    qryMatterFILEID: TStringField;
    qryMatterSTATUS: TFloatField;
    qryMatterNARCHIVE: TFloatField;
    qryMatterARCHIVED: TDateTimeField;
    qryMatterACCT: TStringField;
    qryMatterTRUSTAUTH: TStringField;
    qryMatterPARTY1: TStringField;
    qryMatterPARTY2: TStringField;
    qryMatterPARTY3: TStringField;
    qryMatterSHORTDESCR: TStringField;
    qryMatterLONGDESCR: TStringField;
    qryMatterOFFICE: TStringField;
    qryMatterTRUST_BAL: TFloatField;
    qryMatterCL_TRUST_BAL: TFloatField;
    qryMatterNCLIENT: TFloatField;
    qryMatterBILL_TO: TStringField;
    qryMatterBUDGET_FEES: TFloatField;
    qryMatterBUDGET_DISB: TFloatField;
    qryMatterBUDGET_TOTAL: TFloatField;
    qryMatterLASTTRANS: TDateTimeField;
    qryMatterLASTTRUST: TDateTimeField;
    qryMatterREFERREDBY: TStringField;
    qryMatterUNBILL_DISB: TFloatField;
    qryMatterDEBTORS: TFloatField;
    qryMatterUNBILL_FEES: TFloatField;
    qryMatterBILL_FEES: TFloatField;
    qryMatterUNBILL_SUND: TFloatField;
    qryMatterBILL_DISB: TFloatField;
    qryMatterRECVD_FEES: TFloatField;
    qryMatterBILL_SUND: TFloatField;
    qryMatterBILL_ANTD: TFloatField;
    qryMatterTRUST_TRANS: TFloatField;
    qryMatterSPEC_PURPOSE: TFloatField;
    qryMatterNOTES: TStringField;
    qryMatterUNBILL_ANTD: TFloatField;
    qryMatterLITIGATION: TStringField;
    qryMatterSPECULATION: TStringField;
    qryMatterAGENCY: TStringField;
    qryMatterGRATIS: TStringField;
    qryMatterBILLING_PLAN: TStringField;
    qryMatterCONTACT: TStringField;
    qryMatterPREV_NCMAUDIT: TFloatField;
    qryMatterPREV_NTRAUDIT: TFloatField;
    qryMatterTASK: TStringField;
    qryMatterEXPECTED_VALUE: TFloatField;
    qryMatterEXP_COMPLETION: TDateTimeField;
    qryMatterOPREF: TStringField;
    qryMatterTASK_DATE: TDateTimeField;
    qryMatterUNREC_DISB: TFloatField;
    qryMatterREFRESH: TIntegerField;
    qryMatterPERIOD0: TFloatField;
    qryMatterPERIOD1: TFloatField;
    qryMatterPERIOD2: TFloatField;
    qryMatterPERIOD3: TFloatField;
    qryMatterCONTROLLER: TStringField;
    qryMatterFEECODE: TStringField;
    qryMatterCOMPLETED: TDateTimeField;
    qryMatterWORKFLOW: TStringField;
    qryMatterLABELCODE: TStringField;
    qryMatterMODBY: TStringField;
    qryMatterARCHVLOCN: TStringField;
    qryMatterCLIENTID: TStringField;
    qryMatterNNAME: TFloatField;
    qryMatterINTTRIGDATE: TDateTimeField;
    qryMatterTCCLRDATE: TDateTimeField;
    qryMatterLASTBILLDATE: TDateTimeField;
    qryMatterLASTLETTER: TDateTimeField;
    qryMatterBFPRGDATE: TDateTimeField;
    qryMatterARCHIVEREVIEW: TDateTimeField;
    qryMatterARCHIVEDEST: TDateTimeField;
    qryMatterANTDISBS: TFloatField;
    qryMatterANTDRS: TFloatField;
    qryMatterFEESDRS: TFloatField;
    qryMatterUNBILL_UNITS: TFloatField;
    qryMatterAMT_LAST_REC: TFloatField;
    qryMatterDISBSWOFF: TFloatField;
    qryMatterDRSWOFF: TFloatField;
    qryMatterWIPWOFF: TFloatField;
    qryMatterBRANCH: TStringField;
    qryMatterARCHIVENUM: TFloatField;
    qryMatterGSTEXEMPT: TIntegerField;
    qryMatterCLOSED: TIntegerField;
    qryMatterTRSTMNT: TIntegerField;
    qryMatterTRAUTH: TIntegerField;
    qryMatterDISBSLIM: TFloatField;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    btnPrint: TdxBarButton;
    btnClose: TdxBarButton;
    pagSetup: TcxPageControl;
    tabFields: TcxTabSheet;
    tabSelect: TcxTabSheet;
    tabOrder: TcxTabSheet;
    tabSQL: TcxTabSheet;
    Label9: TLabel;
    lbOutputAll: TListBox;
    lbOutputFields: TListBox;
    btnOutputAll: TBitBtn;
    btnOutputSelected: TBitBtn;
    btnOutputUp: TBitBtn;
    btnOutputDown: TBitBtn;
    btnOutputUnselect: TBitBtn;
    btnOutputNone: TBitBtn;
    Label3: TLabel;
    Label10: TLabel;
    lbSelectAll: TListBox;
    btnSelectField: TBitBtn;
    mmoExpr: TMemo;
    Label1: TLabel;
    btnNE: TButton;
    btnEquals: TButton;
    btnGT: TButton;
    btnLT: TButton;
    btnGE: TButton;
    btnLE: TButton;
    btnAddition: TButton;
    btnSubtract: TButton;
    btnMultiply: TButton;
    btnDivide: TButton;
    btnAnd: TButton;
    btnOr: TButton;
    btnNot: TButton;
    btnLeft: TButton;
    btnRight: TButton;
    btnBoth: TButton;
    gbVariable: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    tbVarCode: TEdit;
    tbVarDescr: TEdit;
    btnVarAdd: TBitBtn;
    Label7: TLabel;
    lbOrderAll: TListBox;
    Label8: TLabel;
    lbOrderFields: TListBox;
    btnOrderAll: TBitBtn;
    btnOrderSelected: TBitBtn;
    btnOrderUp: TBitBtn;
    btnOrderDown: TBitBtn;
    btnOrderUnselect: TBitBtn;
    btnOrderNone: TBitBtn;
    dbmmoSQL: TDBMemo;
    procedure AddOperator(Sender: TObject);
    procedure btnVarAddClick(Sender: TObject);
    procedure btnFieldAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbVarCodeKeyPress(Sender: TObject; var Key: Char);
    procedure btnOutputAllClick(Sender: TObject);
    procedure btnOutputSelectedClick(Sender: TObject);
    procedure btnOutputUnselectClick(Sender: TObject);
    procedure btnOutputNoneClick(Sender: TObject);
    procedure btnOrderAllClick(Sender: TObject);
    procedure btnOrderSelectedClick(Sender: TObject);
    procedure btnOrderUnselectClick(Sender: TObject);
    procedure btnOrderNoneClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure btnBothClick(Sender: TObject);
    procedure lbSelectAllDblClick(Sender: TObject);
    procedure lbOutputAllDblClick(Sender: TObject);
    procedure lbOutputFieldsDblClick(Sender: TObject);
    procedure lbOrderAllDblClick(Sender: TObject);
    procedure lbOrderFieldsDblClick(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure qryDataReportAfterScroll(DataSet: TDataSet);
    procedure qryDataReportBeforeScroll(DataSet: TDataSet);
    procedure btnOutputUpClick(Sender: TObject);
    procedure btnOutputDownClick(Sender: TObject);
    procedure btnOrderUpClick(Sender: TObject);
    procedure btnOrderDownClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure dxBarDBNavInsert1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExprAddText(sText : string);
    procedure SaveDataReport;
    procedure SaveOutputFields;
    procedure SaveOrderFields;
  public
    { Public declarations }
  end;

var
  frmMatterReportBuilder: TfrmMatterReportBuilder;

implementation

{$R *.DFM}

uses
  AxiomData, DataReport, DataReportNew, MiscFunc;

procedure TfrmMatterReportBuilder.AddOperator(Sender: TObject);
begin
  ExprAddText((Sender as TButton).Caption);
end;

procedure TfrmMatterReportBuilder.btnVarAddClick(Sender: TObject);
begin
  if tbVarCode.Text <> '' then
    ExprAddText('{' + tbVarCode.Text + '}');
end;

procedure TfrmMatterReportBuilder.btnFieldAddClick(Sender: TObject);
begin
  if lbSelectAll.ItemIndex > 0 then
    ExprAddText('[' + lbSelectAll.Items.Strings[lbSelectAll.ItemIndex] + ']');
end;

procedure TfrmMatterReportBuilder.ExprAddText(sText : string);
var
  iStart : integer;
  sTmp : string;
begin
  sTmp := Trim(Copy(mmoExpr.Text, 0, mmoExpr.SelStart)) + ' ' + sText + ' ';
  iStart := Length(sTmp);
  mmoExpr.Text := sTmp + Trim(Copy(mmoExpr.Text, mmoExpr.SelStart + 1, 99999));
  mmoExpr.SelStart := iStart;
  mmoExpr.SetFocus;
end;

procedure TfrmMatterReportBuilder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMatter.Close;
  qryFields.Close;
  qryDataReport.Close;
  qryTmp.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;


procedure TfrmMatterReportBuilder.tbVarCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = ' ' then
    Key := '_';
end;

procedure TfrmMatterReportBuilder.btnOutputAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbOutputAll, lbOutputFields);
  lbOutputFields.Tag := 1;
end;

procedure TfrmMatterReportBuilder.btnOutputSelectedClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbOutputAll, lbOutputFields);
  lbOutputFields.Tag := 1;
end;

procedure TfrmMatterReportBuilder.btnOutputUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbOutputFields, lbOutputAll);
  lbOutputFields.Tag := 1;
end;

procedure TfrmMatterReportBuilder.btnOutputNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbOutputFields, lbOutputAll);
  lbOutputFields.Tag := 1;
end;

procedure TfrmMatterReportBuilder.btnOrderAllClick(Sender: TObject);
begin
  ListBoxMoveAll(lbOrderAll, lbOrderFields);
  lbOrderFields.Tag := 1;
end;

procedure TfrmMatterReportBuilder.btnOrderSelectedClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbOrderAll, lbOrderFields);
  lbOrderFields.Tag := 1;
end;

procedure TfrmMatterReportBuilder.btnOrderUnselectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbOrderFields, lbOrderAll);
  lbOrderFields.Tag := 1;
end;

procedure TfrmMatterReportBuilder.btnOrderNoneClick(Sender: TObject);
begin
  ListBoxMoveAll(lbOrderFields, lbOrderAll);
  lbOrderFields.Tag := 1;
end;

procedure TfrmMatterReportBuilder.tbtnNewClick(Sender: TObject);
begin
  with TfrmDataReportNew.Create(Self) do
  begin
    ShowModal;
  end;

end;

procedure TfrmMatterReportBuilder.tbtnLastClick(Sender: TObject);
begin
  qryDataReport.Last;
end;

procedure TfrmMatterReportBuilder.tbtnNextClick(Sender: TObject);
begin
  qryDataReport.Next;
end;

procedure TfrmMatterReportBuilder.tbtnPrevClick(Sender: TObject);
begin
  qryDataReport.Prior;
end;

procedure TfrmMatterReportBuilder.tbtnFirstClick(Sender: TObject);
begin
  qryDataReport.First;
end;

procedure TfrmMatterReportBuilder.btnBothClick(Sender: TObject);
begin
  mmoExpr.Text := '(' + Trim(mmoExpr.Text) + ')';
end;

procedure TfrmMatterReportBuilder.lbSelectAllDblClick(Sender: TObject);
begin
  btnSelectField.Click;
end;


procedure TfrmMatterReportBuilder.lbOutputAllDblClick(Sender: TObject);
begin
  btnOutputSelected.Click;
end;

procedure TfrmMatterReportBuilder.lbOutputFieldsDblClick(Sender: TObject);
begin
  btnOutputUnselect.Click;
end;

procedure TfrmMatterReportBuilder.lbOrderAllDblClick(Sender: TObject);
begin
  btnOrderSelected.Click;
end;


procedure TfrmMatterReportBuilder.lbOrderFieldsDblClick(Sender: TObject);
begin
  btnOrderUnselect.Click;
end;


procedure TfrmMatterReportBuilder.SaveDataReport;
var
  iCtr : integer;
begin
  with qryTmp do
  begin
    // The Fields to Output
    SQL.Text := 'DELETE FROM DATAREPORTFIELD WHERE DATAREPORT = ' + QuotedStr(qryDataReport.FieldByName('NAME').AsString);
    ExecSQL;
    SQL.Text := 'INSERT INTO DATAREPORTFIELD (DATAREPORT, FIELDNAME, SEQ) VALUES (:DATAREPORT, :FIELDNAME, :SEQ)';
    for iCtr := 0 to lbOutputFields.Items.Count - 1 do
    begin
      ParamByName('DATAREPORT').AsString := qryDataReport.FieldByName('NAME').AsString;
      ParamByName('FIELDNAME').AsString := lbOutputFields.Items.Strings[iCtr];
      ParamByName('SEQ').AsInteger := iCtr;
      ExecSQL;
    end;

    // The Order By Clause
    SQL.Text := 'DELETE FROM DATAREPORTORDER WHERE DATAREPORT = ' + QuotedStr(qryDataReport.FieldByName('NAME').AsString);
    ExecSQL;
    SQL.Text := 'INSERT INTO DATAREPORTORDER (DATAREPORT, FIELDNAME, SEQ) VALUES (:DATAREPORT, :FIELDNAME, :SEQ)';
    for iCtr := 0 to lbOrderFields.Items.Count - 1 do
    begin
      ParamByName('DATAREPORT').AsString := qryDataReport.FieldByName('NAME').AsString;
      ParamByName('FIELDNAME').AsString := lbOrderFields.Items.Strings[iCtr];
      ParamByName('SEQ').AsInteger := iCtr;
      ExecSQL;
    end;
  end;
end;


procedure TfrmMatterReportBuilder.tbtnPrintClick(Sender: TObject);
begin
  SaveDataReport;
  with TfrmDataReport.Create(Self) do
  begin
    LoadReport(Self.qryDataReport.FieldByName('NAME').AsString);
    Show;
  end;
end;

procedure TfrmMatterReportBuilder.qryDataReportAfterScroll(
  DataSet: TDataSet);
begin
  lbOutputFields.Clear;
  lbOrderFields.Clear;

  with qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT FIELDNAME FROM DATAREPORTFIELD WHERE DATAREPORT = ' + QuotedStr(qryDataReport.FieldByName('NAME').AsString) + ' ORDER BY SEQ';
    Open;
    while not EOF do
    begin
      lbOutputFields.Items.Add(FieldByName('FIELDNAME').AsString);
      lbOutputAll.Items.Delete(lbOutputAll.Items.IndexOf(FieldByName('FIELDNAME').AsString));
      Next;
    end;
    Close;

    SQL.Text := 'SELECT FIELDNAME FROM DATAREPORTORDER WHERE DATAREPORT = ' + QuotedStr(qryDataReport.FieldByName('NAME').AsString) + ' ORDER BY SEQ';
    Open;
    while not EOF do
    begin
      lbOrderFields.Items.Add(FieldByName('FIELDNAME').AsString);
      lbOrderAll.Items.Delete(lbOutputAll.Items.IndexOf(FieldByName('FIELDNAME').AsString));
      Next;
    end;
  end;

end;


procedure TfrmMatterReportBuilder.SaveOutputFields;
var
  iCtr : integer;
begin
  with qryTmp do
  begin
    Close;
    SQL.Text := 'DELETE FROM DATAREPORTFIELD WHERE DATAREPORT = ' + QuotedStr(qryDataReport.FieldByName('NAME').AsString);
    ExecSQL;
    SQL.Text := 'INSERT INTO DATAREPORTFIELD (DATAREPORT, FIELDNAME, SEQ) VALUES (' + QuotedStr(qryDataReport.FieldByName('NAME').AsString) + ', :FIELDNAME, :SEQ)';
    for iCtr := 0 to lbOutputFields.Items.Count - 1 do
    begin
      ParamByName('FIELDNAME').AsString := lbOutputFields.Items.Strings[iCtr];
      ParamByName('SEQ').AsInteger := iCtr;
      ExecSQL;
    end;
  end;
  lbOutputFields.Tag := 0;
end;


procedure TfrmMatterReportBuilder.SaveOrderFields;
var
  iCtr : integer;
begin
  with qryTmp do
  begin
    Close;
    SQL.Text := 'DELETE FROM DATAREPORTORDER WHERE DATAREPORT = ' + QuotedStr(qryDataReport.FieldByName('NAME').AsString);
    ExecSQL;
    SQL.Text := 'INSERT INTO DATAREPORTORDER (DATAREPORT, FIELDNAME, SEQ) VALUES (' + QuotedStr(qryDataReport.FieldByName('NAME').AsString) + ', :FIELDNAME, :SEQ)';
    for iCtr := 0 to lbOrderFields.Items.Count - 1 do
    begin
      ParamByName('FIELDNAME').AsString := lbOrderFields.Items.Strings[iCtr];
      ParamByName('SEQ').AsInteger := iCtr;
      ExecSQL;
    end;
  end;
  lbOrderFields.Tag := 0;
end;


procedure TfrmMatterReportBuilder.qryDataReportBeforeScroll(
  DataSet: TDataSet);
begin
  if lbOutputFields.Tag = 1 then
    SaveOutputFields;
  if lbOrderFields.Tag = 1 then
    SaveOrderFields;
end;

procedure TfrmMatterReportBuilder.btnOutputUpClick(Sender: TObject);
var
  OldSelectedIndex: integer;
begin
  inherited;
  if lbOutputFields.ItemIndex > 0 then
  begin
    OldSelectedIndex := lbOutputFields.ItemIndex;
    lbOutputFields.Items.Move(lbOutputFields.ItemIndex, lbOutputFields.ItemIndex - 1);
    lbOutputFields.SetFocus;
    lbOutputFields.ItemIndex := OldSelectedIndex-1;
    lbOutputFields.Tag := 1;
  end;
end;


procedure TfrmMatterReportBuilder.btnOutputDownClick(Sender: TObject);
var
  OldSelectedIndex: integer;
begin
  inherited;
  if lbOutputFields.ItemIndex < lbOutputFields.Items.Count then
  begin
    OldSelectedIndex := lbOutputFields.ItemIndex;
    lbOutputFields.Items.Move(lbOutputFields.ItemIndex, lbOutputFields.ItemIndex + 1);
    lbOutputFields.SetFocus;
    lbOutputFields.ItemIndex := OldSelectedIndex+1;
    lbOutputFields.Tag := 1;
  end;
end;


procedure TfrmMatterReportBuilder.btnOrderUpClick(Sender: TObject);
var
  OldSelectedIndex: integer;
begin
  inherited;
  if lbOrderFields.ItemIndex > 0 then
  begin
    OldSelectedIndex := lbOrderFields.ItemIndex;
    lbOrderFields.Items.Move(lbOrderFields.ItemIndex, lbOrderFields.ItemIndex - 1);
    lbOrderFields.SetFocus;
    lbOrderFields.ItemIndex := OldSelectedIndex-1;
    lbOrderFields.Tag := 1;
  end;
end;


procedure TfrmMatterReportBuilder.btnOrderDownClick(Sender: TObject);
var
  OldSelectedIndex: integer;
begin
  inherited;
  if lbOrderFields.ItemIndex < lbOrderFields.Items.Count then
  begin
    OldSelectedIndex := lbOrderFields.ItemIndex;
    lbOrderFields.Items.Move(lbOrderFields.ItemIndex, lbOrderFields.ItemIndex + 1);
    lbOrderFields.SetFocus;
    lbOrderFields.ItemIndex := OldSelectedIndex+1;
    lbOrderFields.Tag := 1;
  end;
end;



procedure TfrmMatterReportBuilder.FormCreate(Sender: TObject);
var
  iCtr : integer;
begin
  qryFields.Open;
  qryDataReport.Open;
  qryTmp.Open;

  // Load the dataform fields into the sort list
  while not qryFields.EOF do
  begin
    lbOutputAll.Items.Add(qryFields.FieldByName('NAME').AsString);
    qryFields.Next;
  end;
  qryFields.Close;
  for iCtr := 0 to lbOutputAll.Items.Count - 1 do
  begin
    lbSelectAll.Items.Add(lbOutputAll.Items.Strings[iCtr]);
    lbOrderAll.Items.Add(lbOutputAll.Items.Strings[iCtr]);
  end;
end;


procedure TfrmMatterReportBuilder.ToolButton2Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmMatterReportBuilder.dxBarDBNavInsert1Click(Sender: TObject);
begin
   with TfrmDataReportNew.Create(Self) do
   begin
      ShowModal;
{      qryDataReport.Insert;
      if ShowModal = mrOK then
         qryDataReport.Post
      else
         qryDataReport.Cancel;}
      qryDataReport.Refresh;
  end;
end;

end.

