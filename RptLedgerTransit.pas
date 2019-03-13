unit RptLedgerTransit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ComCtrls, Buttons, StdCtrls, DateChangeButton, NumberEdit, MemDS,
  OracleUniProvider, Uni, DBAccess, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppParameter, ppDesignLayer, ppModule, raCodMod, ppCtrls, ppBands, ppStrtch,
  ppMemo, ppPrnabl, ppVar, ppCache;

type
  TfrmRptTransitRegister = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblFile: TLabel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    DateChangeButton1: TDateChangeButton;
    DateChangeButton2: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    DateChangeButton4: TDateChangeButton;
    dcThisMonth: TDateChangeButton;
    DateChangeButton6: TDateChangeButton;
    DateChangeButton7: TDateChangeButton;
    DateChangeButton8: TDateChangeButton;
    btnPrint: TBitBtn;
    lblClient: TLabel;
    lblDesc: TLabel;
    qryMatter: TUniQuery;
    btnMatter: TBitBtn;
    qryTransitRegister: TUniQuery;
    chkFrom: TCheckBox;
    chkTo: TCheckBox;
    plTransitRegister: TppDBPipeline;
    plMatter: TppDBPipeline;
    dsMatter: TUniDataSource;
    dsTransitRegister: TUniDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLine1: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppLabel20: TppLabel;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMatterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GetMatter(sFile : string);
  public
    { Public declarations }
    procedure DisplayMatter(sFile : string);
    procedure DisplayArchive(sFile : string);
  end;

var
  hdlActive: HWND;
  sTable : string;

implementation

uses
  AxiomData, MiscFunc, MSearch, citfunc;

{$R *.DFM}


procedure TfrmRptTransitRegister.DisplayMatter(sFile : string);
begin
  sTable := 'MATTER M, PHONEBOOK P';
  GetMatter(sFile);
  if not Self.Visible then
    ShowModal;
end;


procedure TfrmRptTransitRegister.DisplayArchive(sFile : string);
begin
  sTable := 'ARCHIVE';
  GetMatter(sFile);
  if not Self.Visible then
    ShowModal;
end;


procedure TfrmRptTransitRegister.GetMatter(sFile : string);
begin
  with qryMatter do
  begin
    Close;
    SQL.Text := 'SELECT OPENED, FILEID, SEARCH, LONGDESCR, SHORTDESCR, NMATTER FROM ' + sTable + ' WHERE FILEID = ' + QuotedStr(sFile);
    SQL.Text := SQL.Text + ' AND M.NCLIENT = P.NCLIENT';
    Prepare;
    Open;

    if not IsEmpty then
    begin
      lblFile.Caption := FieldByName('FILEID').AsString;
      lblClient.Caption := FieldByName('SEARCH').AsString;
      lblDesc.Caption := FieldByName('SHORTDESCR').AsString;
      dtpFrom.Date := FieldByName('OPENED').AsDateTime;
    end
    else
    begin
      lblFile.Caption := '';
      lblClient.Caption := '';
      lblDesc.Caption := '';
    end;
  end;
end;

procedure TfrmRptTransitRegister.FormShow(Sender: TObject);
begin
  dcThisMonth.Click;
  if not qryMatter.Active then
    DisplayMatter(ReopenListLast('MATTER'));
  if qryMatter.Active then
    dtpFrom.Date := qryMatter.FieldByName('OPENED').AsDateTime;
  chkFrom.Checked := False;
  chkTo.Checked := False;
end;

procedure TfrmRptTransitRegister.btnPrintClick(Sender: TObject);
begin
  with qryTransitRegister do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *');
    SQL.Add('FROM TRANSIT');
    SQL.Add('WHERE NMATTER =:P_Matter');
    ParambyName('P_Matter').AsInteger := qryMatter.FieldbyName('NMATTER').AsInteger;
    if chkFrom.Checked then
    begin
      SQL.Add('AND CREATED >= :P_DateFrom ');
      ParamByName('P_DateFrom').AsDate := Trunc(dtpFrom.Date);
    end;
    if chkTo.Checked then
    begin
      SQL.Add('AND CREATED < :P_DateTo ');
      ParamByName('P_DateTo').AsDate := Trunc(dtpTo.Date) + 1;
    end;
    SQL.Add('ORDER BY CREATED');
    Open;
  end;
  //run composite report
//  qrTransitRegister.Preview;
  ppReport1.Print;
  //hdlActive:=GetActiveWindow;
  Self.Close;
//  tmrSuicide.Enabled := True; // Kills this window when the report closes
end;

procedure TfrmRptTransitRegister.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMatter.Close;
  qryTransitRegister.Close;
  DestroyWindow(hdlActive);
  Self.Release;
end;

procedure TfrmRptTransitRegister.btnMatterClick(Sender: TObject);
begin
   if sTable = 'MATTER M, PHONEBOOK P' then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

      if frmMatterSearch.ShowModal = mrOK then
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
{  if sTable = 'ARCHIVE' then
  if not FormExists(frmArchiveSearch) then
    Application.CreateForm(TfrmArchiveSearch, frmArchiveSearch);
    if frmArchiveSearch.ShowModal = mrOK then
      DisplayArchive(frmArchiveSearch.qryArchives.FieldByName('FILEID').AsString); }
end;

procedure TfrmRptTransitRegister.FormCreate(Sender: TObject);
begin
  sTable := 'MATTER M, PHONEBOOK P';
end;

end.
