unit DataReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, OracleUniProvider, Uni, DBAccess, MemDS, ComCtrls, ImgList, ToolWin, ExtCtrls,
   cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridExportLink, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPSDBTCLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPgsDlg, dxPSCore,
  dxPScxCommon, dxPScxDBEditorLnks, dxPSTextLnk, dxPScxSchedulerLnk, cxNavigator;

const
  imgWORDPERFECT = 4;
  
type
  TfrmDataReport = class(TForm)
    qrySource: TUniQuery;
    dsSource: TUniDataSource;
    qryDataReport: TUniQuery;
    qryDetail: TUniQuery;
    tbarMain: TToolBar;
    ilstToolbar: TImageList;
    tbtnPrint: TToolButton;
    tbtnWord: TToolButton;
    tbtnHTML: TToolButton;
    tbtnExcel: TToolButton;
    tvData: TcxGridDBTableView;
    grdDataLevel1: TcxGridLevel;
    grdData: TcxGrid;
    OpenDialog: TOpenDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxPageSetupDialog1: TdxPageSetupDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure tbtnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadReport(sReportName : string);
  end;

implementation

{$R *.DFM}

uses
  AxiomData, MiscFunc;

procedure TfrmDataReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrySource.Close;
  qryDataReport.Close;
  qryDetail.Close;

  Self.Release;
end;


procedure TfrmDataReport.LoadReport(sReportName : string);
{
  Modified 25.10.2002 GG
  Removed compiler hint

var
  strSQL, strTables, strWhere : TStringList;
  sTmp, sComma, sAND, sFieldName : string;
  iCtr, iTblCtr : integer;
}
begin
{  strSQL := TStringList.Create;
  strTables := TStringList.Create;
  strWhere := TStringList.Create;
  sAND := ' WHERE ';
  sComma := 'SELECT ';
  iTblCtr := 1;
}
  with qryDataReport do
  begin
    Close;
    ParamByName('NAME').AsString := sReportName;
    Open;
  end;

{ ??? Previous set up of SQL

  if not qryDataReport.IsEmpty then
  begin
    Self.Caption := qryDataReport.FieldByName('DESCR').AsString;
    with qryDetail do
    begin
      Close;
      SQL.Text := 'SELECT FIELDNAME FROM DATAREPORTFIELD WHERE DATAREPORT = ' + QuotedStr(sReportName) + ' ORDER BY SEQ';
      Open;
      while not EOF do
      begin
       if IsDataFormField(FieldByName('FIELDNAME').AsString) then
        begin
          sTmp := DataFormFieldString(FieldByName('FIELDNAME').AsString, 'TYPE');
          if (sTmp = 'T') or (sTmp = 'P') then
            sFieldName := 'TEXTVALUE'
          else if (sTmp = 'C') or (sTmp = 'I') then
            sFieldName := 'NUMBERVALUE'
          else if (sTmp = 'D') or (Copy(sTmp, 1, 1) = 'K') then
            sFieldName := 'DATEVALUE';
          strSQL.Add(sComma + 'T' + IntToStr(iTblCtr) + '.' + sFieldName + ' as "' + FieldByName('FIELDNAME').AsString + '"');
          strTables.Add('FIELDTYPELINK T' + IntToStr(iTblCtr));
          strWhere.Add(sAND + '(T' + IntToStr(iTblCtr) + '.nunique = matter.nmatter and T' + IntToStr(iTblCtr) + '.linktable = ''MATTER'' and T' + IntToStr(iTblCtr) + '.fieldname = ' + QuotedStr(FieldByName('FIELDNAME').AsString) + ')');
          Inc(iTblCtr);
          sAND := ' AND ';
        end
        else
          strSQL.Add(sComma + FieldByName('FIELDNAME').AsString);
        sComma := ', ';

        Next;
      end;
    end;

    strSQL.Add('FROM MATTER');
    for iCtr := 0 to strTables.Count - 1 do
      strSQL.Add(', ' + strTables.Strings[iCtr]);

    for iCtr := 0 to strWhere.Count - 1 do
      strSQL.Add(strWhere.Strings[iCtr]);

    with qryDetail do
    begin
      Close;
      SQL.Text := 'SELECT FIELDNAME FROM DATAREPORTORDER WHERE DATAREPORT = ' + QuotedStr(sReportName) + ' ORDER BY SEQ';
      Open;
      sTmp := ' ORDER BY ';
      while not EOF do
      begin
        strSQL.Add(sTmp + FieldByName('FIELDNAME').AsString);
        sTmp := ', ';
        Next;
      end;
    end;
  end;

  qrySource.SQL.Text := strSQL.Text;

}

//  MsgInfo(strSQL.Text);

  qrySource.SQL.Text := qryDataReport.FieldByName('SQL').AsString;

  qrySource.Open;
    tvData.ClearItems;
  tvData.DataController.CreateAllItems(True);

{  strSQL.Free;
  strTables.Free;
  strWhere.Free;
}
end;


procedure TfrmDataReport.FormCreate(Sender: TObject);
begin
  if SystemString('WORDPROC') = 'WORDPERFECT8' then
    tbtnWord.ImageIndex := imgWORDPERFECT;
end;

procedure TfrmDataReport.tbtnPrintClick(Sender: TObject);
begin
   dxComponentPrinter1.Preview();
//  qrReport.Preview;
end;

procedure TfrmDataReport.tbtnExcelClick(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,grdData, True, True,True,'xls');
   end;
end;

end.

