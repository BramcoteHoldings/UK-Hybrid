unit SundryError;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  ExtCtrls, ToolWin, ImgList, OracleUniProvider, Uni, DBAccess, MemDS,
  dxBar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxDBLookupComboBox,
  cxLookAndFeels, cxLookAndFeelPainters, ppCtrls, ppPrnabl, ppClass, ppVar,
  ppBands, ppCache, ppDB, ppDesignLayer, ppParameter, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, cxNavigator;

const
  colDATE = 0;
  colFILE = 1;
  colTYPE = 2;
  colDESCR = 3;
  colUNITS = 4;
  colAMOUNT = 5;
  colERROR = 6;

type
  TfrmSundryError = class(TForm)
    qrySundry: TUniQuery;
    qrySundType: TUniQuery;
    popGrid: TPopupMenu;
    popDelete: TMenuItem;
    popUpdate: TMenuItem;
    qrySundryError: TUniQuery;
    dsSundryError: TUniDataSource;
    ilstToolbar: TImageList;
    popGridDeleteAll: TMenuItem;
    sbarMatlocate: TStatusBar;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    tbtnClearAll: TdxBarButton;
    tbtnProcess: TdxBarButton;
    tbtnDelete: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dbgrSundry: TcxGrid;
    dbgrSundryLevel1: TcxGridLevel;
    tvSundry: TcxGridDBTableView;
    tvSundryCREATED1: TcxGridDBColumn;
    tvSundryFILEID1: TcxGridDBColumn;
    tvSundrySUNDRYTYPE1: TcxGridDBColumn;
    tvSundryDESCR1: TcxGridDBColumn;
    tvSundryUNITS1: TcxGridDBColumn;
    tvSundryAMOUNT1: TcxGridDBColumn;
    tvSundryERROR1: TcxGridDBColumn;
    dsSundType: TUniDataSource;
    qrySundryErrRpt: TUniQuery;
    dsSundryErrRpt: TUniDataSource;
    plSundryErrRpt: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    procedure FormShow(Sender: TObject);
    procedure dbgrSundryColExit(Sender: TObject);
    procedure dbgrSundryEditButtonClick(Sender: TObject);
    procedure popUpdateClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrSundryColEnter(Sender: TObject);
    procedure dbgrSundryEnter(Sender: TObject);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure tbDescExit(Sender: TObject);
    procedure qrySundryErrorAfterScroll(DataSet: TDataSet);
    procedure dbgrSundryKeyPress(Sender: TObject; var Key: Char);
    procedure tbtnRefreshClick(Sender: TObject);
    procedure tbtnClearAllClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure tbtnProcessClick(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure popDeleteClick(Sender: TObject);
    procedure popGridDeleteAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbtnDeleteAllClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1FILEID1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1DESCR1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1FILEID1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1Enter(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    FFirstError: integer;
    function OKtoPost: Boolean;
    procedure SetFirstError(iValue: integer);
    procedure RefreshData;
  public
    { Public declarations }
    property FirstError: integer read FFirstError write SetFirstError;
    procedure PrintErrors;
  end;


implementation

uses
  AxiomData, MiscFunc, MSearch, Desktop, citfunc;

{$R *.DFM}

procedure TfrmSundryError.FormShow(Sender: TObject);
begin
  qrySundType.Open;
  qrySundryError.Open;

  Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;

{  with qrySundType do
  begin
    First;
    while not EOF do
    begin
      dbgrSundry.Columns[colTYPE].PickList.Add(FieldByName('CODE').AsString);
      Next;
    end;
    Close;
  end;  }
end;


procedure TfrmSundryError.SetFirstError(iValue: integer);
begin
  FFirstError := iValue;
  RefreshData;
  // AES 02/03/2006 changed from visible to enabled
  tbtnClearAll.Enabled := FFirstError <> 0;
end;


procedure TfrmSundryError.RefreshData;
begin
  with qrySundryError do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT S.ROWID, S.* FROM SUNDRYERROR S');
    if FFirstError <> 0 then
      SQL.Add('WHERE S.NSUNDRYERROR >= ' + IntToStr(FFirstError));
    Open;
  end;
end;


function TfrmSundryError.OKtoPost : Boolean;
var
  sTmp: String;
  bOKtoPost: boolean;
begin
  bOKtoPost := True;
  sTmp := '';
  if not MatterIsCurrent(qrySundryError.FieldByName('FILEID').AsString) then
    sTmp := sTmp + '    Matter ' + qrySundryError.FieldByName('FILEID').AsString + ' is not current' + #13;
  if qrySundryError.FieldByName('AMOUNT').AsCurrency <= 0 then
    sTmp := sTmp + '    Amount' + #13;

  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Sundry details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    bOKtoPost := False
  end;
  OKtoPost := bOKtoPost;
end;


procedure TfrmSundryError.dbgrSundryColExit(Sender: TObject);
begin
{  case dbgrSundry.SelectedIndex of
    colFILE:
    begin
      if not qrySundryError.Modified then
        qrySundryError.Edit;
      dbgrSundry.Columns.Items[colFILE].Field.Text := Trim(UpperCase(dbgrSundry.Columns.Items[colFILE].Field.Text));
      sbarMatlocate.Panels[0].Text := MatterString(dbgrSundry.Columns.Items[colFILE].Field.Text, 'MATLOCATE');
    end;
    colDESCR:
    begin
      if not qrySundryError.Modified then
        qrySundryError.Edit;
      QuickCode(dbgrSundry.Columns.Items[colDESCR].Field);
    end;
  end;    }
end;

procedure TfrmSundryError.dbgrSundryEditButtonClick(Sender: TObject);
begin
{   if dbgrSundry.SelectedIndex = colFILE then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
      if frmMatterSearch.ShowModal = mrOk then
      begin
         qrySundryError.Edit;
         qrySundryError.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      end;
   end;  }
end;

procedure TfrmSundryError.popUpdateClick(Sender: TObject);
begin
   if not qrySundryError.IsEmpty then
      tbtnProcess.Click;
end;


procedure TfrmSundryError.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if qrySundryError.UpdatesPending then
      qrySundryError.ApplyUpdates;
   qrySundryError.Close;
   qrySundType.Close;
   qrySundry.Close;
   RemoveFromDesktop(Self);
//   Self.Release;
end;

procedure TfrmSundryError.dbgrSundryColEnter(Sender: TObject);
begin
{  if dbgrSundry.SelectedIndex <> colFILE then
  begin
    if MatterString(dbgrSundry.Columns.Items[colFILE].Field.Text, 'FILEID') <> dbgrSundry.Columns.Items[colFILE].Field.Text then
    begin
      MsgErr('Invalid File Number: ' + dbgrSundry.Columns.Items[colFILE].Field.Text);
      dbgrSundry.SelectedIndex := colFILE;
    end;
  end;  }
end;


procedure TfrmSundryError.dbgrSundryEnter(Sender: TObject);
begin
  if not qrySundryError.IsEmpty then
    qrySundryError.Edit;
end;


procedure TfrmSundryError.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(Sender);
end;


procedure TfrmSundryError.tbDescExit(Sender: TObject);
begin
  Quickcode(Sender);
end;


procedure TfrmSundryError.qrySundryErrorAfterScroll(DataSet: TDataSet);
begin
  sbarMatlocate.Panels[0].Text := MatterString(qrySundryError.FieldByName('FILEID').AsString, 'MATLOCATE');
end;


procedure TfrmSundryError.dbgrSundryKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if (Key = ' ') and (dbgrSundry.SelectedIndex = colDESCR) then
//    QuickCode(dbgrSundry.Columns.Items[colDESCR].Field);
end;


procedure TfrmSundryError.tbtnRefreshClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TfrmSundryError.tbtnClearAllClick(Sender: TObject);
begin
  FFirstError := 0;
  RefreshData;
end;

procedure TfrmSundryError.tbtnDeleteClick(Sender: TObject);
var
  iCtr: integer;
begin
  if tvSundry.Controller.SelectedRowCount > 0 then
  begin
    with tvSundry.DataController.DataSource.DataSet do
      for iCtr := 0 to tvSundry.Controller.SelectedRowCount - 1 do
      begin
//        GotoBookmark(pointer(tvSundry.Controller.SelectedRows[iCtr]));
        qrySundryError.Delete;
      end;
    qrySundryError.ApplyUpdates;
    PlaySound('Delete');
    qrySundryError.Close;
    qrySundryError.Open;
  end;
end;

procedure TfrmSundryError.tbtnProcessClick(Sender: TObject);
var
  dAmount: double;
begin
  if OKtoPost then
  begin
    with qrySundryError do
    begin
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;
        qrySundry.ParamByName('CREATED').AsDateTime := FieldByName('CREATED').AsDateTime;
        qrySundry.ParamByName('DESCR').AsString := FieldByName('DESCR').AsString;
        qrySundry.ParamByName('UNITS').AsInteger := FieldByName('UNITS').AsInteger;
        qrySundry.ParamByName('TYPE').AsString := FieldByName('SUNDRYTYPE').AsString;
        qrySundry.ParamByName('PERUNIT').AsFloat := FieldByName('AMOUNT').AsCurrency / FieldByName('UNITS').AsFloat;
        qrySundry.ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('FILEID').AsString, 'NMATTER');
        qrySundry.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('FILEID').AsString, 'NCLIENT');
        qrySundry.ParamByName('FILEID').AsString := FieldByName('FILEID').AsString;
        qrySundry.ParamByName('ACCT').AsString := dmAxiom.Entity;
        dAmount := FieldByName('AMOUNT').AsCurrency;
        qrySundry.ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', TableString('SUNDRYTYPE', 'CODE', qrySundry.ParamByName('TYPE').AsString, 'TAXCODE'), FieldByName('CREATED').AsDateTime);
        qrySundry.ParamByName('AMOUNT').AsFloat := dAmount;
        qrySundry.ExecSQL;

        MatterUpdate(qrySundry.ParamByName('NMATTER').AsInteger, 'UNBILL_SUND', qrySundry.ParamByName('AMOUNT').AsFloat);

        if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
          PostLedgers(FieldByName('CREATED').AsDateTime
            , FieldByName('AMOUNT').AsCurrency
            , FieldByName('FILEID').AsString
            , 'SUNDRY'
            , qrySundry.ParamByName('NSUNDRY').AsInteger
            , qrySundry.ParamByName('DESCR').AsString
            , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR')
            , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR')
            , MatterString(FieldByName('FILEID').AsString, 'AUTHOR')
            , TableString('SUNDRYTYPE', 'CODE', qrySundry.ParamByName('TYPE').AsString, 'TAXCODE'));

        dmAxiom.uniInsight.Commit;
        Delete;
      except
        on E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          MsgErr('Sundry posting failed:' + chr(13) + chr(13) + E.Message);
        end;
      end;
    end;
  end;
end;

procedure TfrmSundryError.tbtnPrintClick(Sender: TObject);
var
  iSundryError: integer;
begin
  iSundryError := qrySundryError.FieldByName('NSUNDRYERROR').AsInteger;
//  qrErrors.PreviewModal;
  ppReport1.Print;
  qrySundryError.Locate('NSUNDRYERROR', iSundryError, []);
end;

procedure TfrmSundryError.popDeleteClick(Sender: TObject);
begin
  tbtnDelete.Click;
end;

procedure TfrmSundryError.popGridDeleteAllClick(Sender: TObject);
begin
  tbtnClearAll.Click;
end;

procedure TfrmSundryError.FormCreate(Sender: TObject);
begin
  FFirstError := 0;
end;

procedure TfrmSundryError.tbtnDeleteAllClick(Sender: TObject);
begin
   if MsgAsk('This will delete all sundry errors.' + #13 + #13 + 'Are you sure?') = mrYes then
   begin
      try
         with qrySundryError do
         begin
            Close;
            SQL.Text := 'DELETE FROM SUNDRYERROR';
            ExecSQL;
//            PlaySound('Delete All');
         end;
      finally
         RefreshData;
      end;
   end;
end;

procedure TfrmSundryError.PrintErrors;
begin
//  qrErrors.Print;
end;

procedure TfrmSundryError.ToolButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmSundryError.cxGrid1DBTableView1FILEID1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
    if MatterString(string(DisplayValue), 'FILEID') <> DisplayValue then
    begin
      MsgErr('Invalid File Number: ' + DisplayValue);
    end;
end;

procedure TfrmSundryError.cxGrid1DBTableView1DESCR1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if not qrySundryError.Modified then
      qrySundryError.Edit;
   QuickCode(Sender);
end;

procedure TfrmSundryError.cxGrid1DBTableView1FILEID1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
      if frmMatterSearch.ShowModal = mrOk then
      begin
         qrySundryError.Edit;
         qrySundryError.FieldByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      end;
end;

procedure TfrmSundryError.cxGrid1Enter(Sender: TObject);
begin
  if not qrySundryError.IsEmpty then
    qrySundryError.Edit;
end;

procedure TfrmSundryError.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
   Text := SystemString('COMPANY');
end;

end.

