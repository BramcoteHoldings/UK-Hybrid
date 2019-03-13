unit SundryList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ComCtrls, Grids, DBGrids, Menus, Buttons,
  ExtCtrls, DBCtrls, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxCurrencyEdit, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppStrtch, ppMemo, ppPrnabl, ppClass, ppVar,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, dxBar, ImgList, MemDS,
  DBAccess, OracleUniProvider, Uni, TeEngine, Series, TeeProcs, Chart, DbChart,
  DateChangeButton, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, cxGraphics,
  cxGridExportLink, cxPCdxBarPopupMenu, ppParameter, ppDesignLayer,
  dxCore, cxNavigator, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmSundryList = class(TForm)
    dsSundrys: TUniDataSource;
    qrySundrys: TUniQuery;
    ilstToolbar: TImageList;
    popFees: TPopupMenu;
    popFeesOpen: TMenuItem;
    popFeesNew: TMenuItem;
    popFeesDelete: TMenuItem;
    popFeesLine1: TMenuItem;
    popFeesPrint: TMenuItem;
    popFeesPieChart: TMenuItem;
    popFeesBarGraph: TMenuItem;
    qryDelete: TUniQuery;
    qryTypePie: TUniQuery;
    dxBarManager1: TdxBarManager;
    mnuFileNewSundry: TdxBarButton;
    mnuFileOpen: TdxBarButton;
    mnuFileDelete: TdxBarButton;
    mnuFilePrintList: TdxBarButton;
    mnuFileTypePie: TdxBarButton;
    mnuFileExit: TdxBarButton;
    mnuFile: TdxBarSubItem;
    mnuHelpHelp: TdxBarButton;
    mnuHelp: TdxBarSubItem;
    mnuFileOpenMatter: TdxBarButton;
    popSundries: TdxBarPopupMenu;
    pagSundryList: TcxPageControl;
    tabSundryList: TcxTabSheet;
    tabFilter: TcxTabSheet;
    lblAuthor: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbType: TComboBox;
    dtpDateFrom: TDateTimePicker;
    dtpDateTo: TDateTimePicker;
    tbMatter: TEdit;
    btnMatter: TBitBtn;
    DateChangeButton2: TDateChangeButton;
    dcToday: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton5: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    rgBilled: TRadioGroup;
    btnClearAll: TBitBtn;
    dbgrSundryList: TcxGrid;
    tvSundryList: TcxGridDBTableView;
    tvSundryListCREATED: TcxGridDBColumn;
    tvSundryListTYPE: TcxGridDBColumn;
    tvSundryListFILEID: TcxGridDBColumn;
    tvSundryListDESCR: TcxGridDBColumn;
    tvSundryListUNITS: TcxGridDBColumn;
    tvSundryListPERUNIT: TcxGridDBColumn;
    tvSundryListAMOUNT: TcxGridDBColumn;
    tvSundryListTAX: TcxGridDBColumn;
    tvSundryListBILLREFNO: TcxGridDBColumn;
    lvSundryList: TcxGridLevel;
    lblTypeDesc: TLabel;
    tvSundryListBILLED: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    OpenDialog: TOpenDialog;
    chkDateFrom: TCheckBox;
    chkDateTo: TCheckBox;
    rptSundry: TppReport;
    plSundries: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBMemo1: TppDBMemo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    qrySundriesRpt: TUniQuery;
    dsSundriesRpt: TUniDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure mnuFileNewSundryClick(Sender: TObject);
    procedure mnuFilePrintListClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuFileDeleteClick(Sender: TObject);
    procedure btnMatterClick(Sender: TObject);
    procedure cbTypeClick(Sender: TObject);
    procedure dbgrSundryListDblClick(Sender: TObject);
    procedure popFeesPopup(Sender: TObject);
    procedure qrySundrysDESCRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure mnuFileOpenClick(Sender: TObject);
    procedure mnuFileTypePieClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure mnuFileOpenMatterClick(Sender: TObject);
    procedure tvSundryListColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure pagSundryListChange(Sender: TObject);
  private
    { Private declarations }
    FOrderBy: string;
    procedure MakeSQL;
    function MakeTitle : string;
  public
    { Public declarations }
  end;

var
  frmSundryList: TfrmSundryList;

implementation

uses
  Matters, MiscFunc, AxiomData, MSearch, SundryNew, Desktop, citfunc;

{$R *.DFM}

var
  sSQLWhere : string;

procedure TfrmSundryList.FormShow(Sender: TObject);
begin
  StringPopulate(cbType.Items, 'SUNDRYTYPE', 'CODE');
  dtpDateFrom.Date :=  Int(Now);
  dtpDateTo.Date :=  Int(Now);
//  MakeSQL;
end;


procedure TfrmSundryList.MakeSQL;
var
  sAND : string;
begin
  // Build the SQL Filter query
  sSQLWhere := '';
  qrySundrys.Close;
  sAND := ' AND ';

  if cbType.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'S.TYPE = ' + QuotedStr(cbType.Text);
  if tbMatter.Text <> '' then
    sSQLWhere := sSQLWhere + sAND + 'S.FILEID = ' + QuotedStr(tbMatter.Text);
  case rgBilled.ItemIndex of
    1: // Unbilled
      sSQLWhere := sSQLWhere + sAND + 'S.BILLED = ''N''';
    2: // Billed
      sSQLWhere := sSQLWhere + sAND + 'S.BILLED = ''Y''';
    3: // Positive Only
      sSQLWhere := sSQLWhere + sAND + 'S.AMOUNT > 0';
    4: // Negative Only
      sSQLWhere := sSQLWhere + sAND + 'S.AMOUNT < 0';
  end;

  qrySundrys.SQL.Clear;
  qrySundrys.SQL.Add('SELECT S.CREATED, S.TYPE, S.FILEID, S.BILLED, S.NMATTER, S.DESCR, S.NSUNDRY, S.UNITS, S.PERUNIT, S.AMOUNT, B.REFNO AS BillRefno, S.TAX');
  qrySundrys.SQL.Add('FROM SUNDRY S, NMEMO B');
  sAND := ' WHERE ';
  if (chkDateFrom.Checked and chkDateTo.Checked) then
  begin
      qrySundrys.SQL.Add('WHERE S.CREATED >= :P_DateFrom AND S.CREATED < :P_DateTo ');
      sAND := ' AND ';
  end
  else
  if chkDateFrom.Checked then
  begin
      qrySundrys.SQL.Add('WHERE S.CREATED >= :P_DateFrom ');
      sAND := ' AND ';
  end
  else
  if chkDateTo.Checked then
  begin
      qrySundrys.SQL.Add('WHERE S.CREATED < :P_DateTo ');
      sAND := ' AND ';
  end;

  qrySundrys.SQL.Add(sAND + '  S.NMEMO = B.NMEMO(+)');
  qrySundrys.SQL.Add(sSQLWhere);
  qrySundrys.SQL.Add(FOrderBy);
  if (chkDateFrom.Checked and chkDateTo.Checked) then
  begin
     qrySundrys.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
     qrySundrys.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
  end
  else
  if chkDateFrom.Checked then
  begin
     qrySundrys.ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
  end
  else
  if chkDateTo.Checked then
  begin
     qrySundrys.ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
  end;

  qrySundrys.Open;
  if qrySundrys.IsEmpty then
  begin
    mnuFileOpen.Enabled := False;
    mnuFileOpenMatter.Enabled := False;
    mnuFileDelete.Enabled := False;
    mnuFilePrintList.Enabled := False;
  end
  else
  begin
    mnuFileOpen.Enabled := True;
    mnuFileOpenMatter.Enabled := True;
    mnuFileDelete.Enabled := True;
    mnuFilePrintList.Enabled := True;
  end;
end;


function TfrmSundryList.MakeTitle : string;
var
  sTitle : string;
begin
  if dtpDateFrom.Date = dtpDateTo.Date then
    sTitle := 'For ' + FormatDateTime('dddddd', dtpDateFrom.Date)
  else
    sTitle := 'For the period ' + FormatDateTime('ddddd', dtpDateFrom.Date) + ' to ' + FormatDateTime('ddddd', dtpDateTo.Date);
  if tbMatter.Text <> '' then
    sTitle := sTitle + ', for Matter ' + tbMatter.Text;
  case rgBilled.ItemIndex of
    1: // unbilled
      sTitle := sTitle + ', for unbilled entries only';
    2: // Billed
      sTitle := sTitle + ', for billed entries only';
    3: // Positive Only
      sTitle := sTitle + ', for positive entries only';
    4: // Negative Only
      sTitle := sTitle + ', for negative entries only';
  end;
  MakeTitle := sTitle;
end;

procedure TfrmSundryList.btnClearAllClick(Sender: TObject);
begin
  cbType.ItemIndex := -1;
  lblTypeDesc.Caption := '';
  dcToday.Click;
  tbMatter.Text := '';
  rgBilled.ItemIndex := 0;
end;

procedure TfrmSundryList.mnuFileNewSundryClick(Sender: TObject);
begin
   with TfrmSundryNew.Create(Self) do
      ShowModal;
   qrySundrys.Close;
   qrySundrys.Open;
end;

procedure TfrmSundryList.mnuFilePrintListClick(Sender: TObject);
begin
//   qrSundryList.PreviewModal;
   with qrySundriesRpt do
   begin
      Close;
      SQL.Clear;
      SQL.Text := qrySundrys.Sql.Text;
      if chkDateFrom.Checked and chkDateTo.Checked then
      begin
         ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
         ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
      end
      else
      if chkDateFrom.Checked then
      begin
         ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
      end
      else
      if chkDateTo.Checked then
      begin
         ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
      end;
      Open;
   end;
   rptSundry.Print;
end;

procedure TfrmSundryList.mnuFileExitClick(Sender: TObject);
begin
  Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmSundryList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrySundrys.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;

procedure TfrmSundryList.mnuFileDeleteClick(Sender: TObject);
var
  ARowIndex, iCtr: integer;
  bPostingFailed: boolean;
begin
    if MsgAsk('This will DELETE all unbilled sundries selected.' + #13#13 + 'Are you sure you want to do this?') = mrYes then
    begin
      bPostingFailed := False;
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;
        // Automatically delete the selected items
        with tvSundryList.DataController.DataSource.DataSet do
          for iCtr := 0 to tvSundryList.Controller.SelectedRowCount - 1 do
          begin
//            GotoBookmark(Pointer(tvSundryList.DataController.GetSelectedBookmark(iCtr)));
            ARowIndex := tvSundryList.DataController.GetSelectedRowIndex(iCtr);
            tvSundryList.ViewData.Records[ARowIndex].Focused  := True;
            if qrySundrys.FieldByName('BILLED').AsString <> 'Y' then
            begin
              MatterUpdate(qrySundrys.FieldByName('NMATTER').AsInteger, 'UNBILL_SUND', 0 - qrySundrys.FieldByName('AMOUNT').AsCurrency);
              qryDelete.SQL.Text := 'DELETE FROM SUNDRY WHERE NSUNDRY = ' + IntToStr(qrySundrys.FieldByName('NSUNDRY').AsInteger);
              qryDelete.ExecSQL;
//             tvSundryList.DataController.DeleteSelection;
              PlaySound('Delete');
            end
            else
              MessageDlg('Error sundry has been billed',mtError,[mbOk],0);
          end;
      except
        on E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          bPostingFailed := True;
          MsgErr('Sundry deletion failed:' + #13#13 + E.Message);
        end;
      end;
      if not bPostingFailed then
      begin
        dmAxiom.uniInsight.Commit;
        MakeSQL;
      end;
    end;
end;

procedure TfrmSundryList.btnMatterClick(Sender: TObject);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

   if frmMatterSearch.ShowModal = mrOk then
      tbMatter.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
end;

procedure TfrmSundryList.cbTypeClick(Sender: TObject);
begin
  lblTypeDesc.Caption := TableString('SUNDRYTYPE', 'CODE', cbType.Text, 'DESCR');
end;

procedure TfrmSundryList.dbgrSundryListDblClick(Sender: TObject);
begin
   mnuFileOpen.Click;
end;

procedure TfrmSundryList.popFeesPopup(Sender: TObject);
begin
{  popFeesOpen.Enabled := tbtnOpen.Enabled;
  popFeesNew.Enabled := tbtnNew.Enabled;
  popFeesDelete.Enabled := tbtnDelete.Enabled;
  popFeesPrint.Enabled := tbtnPrint.Enabled;  }
end;

procedure TfrmSundryList.qrySundrysDESCRGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := qrySundrys.FieldByName('DESCR').AsString;
end;

procedure TfrmSundryList.mnuFileOpenClick(Sender: TObject);
begin
   // Open the sundry
   with TfrmSundryNew.Create(Self) do
   begin
      DisplaySundry(Self.qrySundrys.FieldByName('NSUNDRY').AsInteger);
      ShowModal;
   end;
   qrySundrys.Close;
   qrySundrys.Open;
end;

procedure TfrmSundryList.mnuFileTypePieClick(Sender: TObject);
begin
//  qrPieType.Preview;
end;
{
procedure TfrmSundryList.qrPieTypeBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlblPieTypeTitle.Caption := MakeTitle;
  with qryTypePie do
  begin
    Close;
    ParamByName('P_DateFrom').AsDate := Trunc(dtpDateFrom.Date);
    ParamByName('P_DateTo').AsDate := Trunc(dtpDateTo.Date) + 1;
    Open;
  end;
end;

procedure TfrmSundryList.qrPieTypeAfterPrint(Sender: TObject);
begin
  qryTypePie.Close;
end;

procedure TfrmSundryList.qrSundryListBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlblsundryListTitle.Caption := MakeTitle;
end;      }

procedure TfrmSundryList.ToolButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmSundryList.mnuFileOpenMatterClick(Sender: TObject);
begin
   if not qrySundrys.EOF then
   begin
      Application.CreateForm(TfrmMatters, frmMatters);
      frmMatters.DisplayMatter(qrySundrys.FieldByName('FILEID').AsString);
      if frmDesktop.pagMainControl.ActivePageIndex = 0 then
         frmDesktop.AddFormToTab(frmMatters, 1);
      if (not frmMatters.Visible) then
         frmMatters.Show;
   end;
end;

procedure TfrmSundryList.tvSundryListColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   qrySundrys.Close;
   FOrderBy := ' ORDER BY ';

   FOrderBy := FOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      FOrderBy := FOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      FOrderBy := FOrderBy + ' ASC';
   end
   else
   begin
      FOrderBy := FOrderBy + ' DESC';
   end;

   MakeSQL();
end;

procedure TfrmSundryList.FormCreate(Sender: TObject);
begin
   FOrderBy := 'ORDER BY S.CREATED';
end;

procedure TfrmSundryList.dxBarButton1Click(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,dbgrSundryList, True, True,True,'xls');
   end;
end;

procedure TfrmSundryList.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
   Text := MakeTitle;
end;

procedure TfrmSundryList.pagSundryListChange(Sender: TObject);
begin
   if pagSundryList.ActivePage = tabFilter then
   begin
      mnuFileOpen.Enabled := False;
      mnuFileOpenMatter.Enabled := False;
      mnuFileDelete.Enabled := False;
      mnuFilePrintList.Enabled := False;
   end
  else
      MakeSQL;
end;

end.

