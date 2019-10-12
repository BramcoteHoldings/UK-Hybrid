unit Bulkbills;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxMaskEdit, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, DBAccess, Menus, cxCheckBox, DB,
  ExtCtrls, MemDS, OracleUniProvider, Uni, cxLabel, cxDropDownEdit, cxCalendar,
  cxPC, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  cxGroupBox, cxButtonEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  cxSpinEdit, ActnList, ActnMan, cxLookAndFeels, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPSContainerLnk, dxBar,
  dxPScxCommon, dxPScxGridLnk, ComCtrls, cxPCdxBarPopupMenu,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxSchedulerLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, Vcl.Buttons, dxCore,
  cxNavigator, dxBarBuiltInMenu, AxiomData,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

type
  TfrmBulkBills = class(TForm)
    tmrSearch: TTimer;
    qryMatters: TUniQuery;
    dsMatters: TUniDataSource;
    pagControl: TcxPageControl;
    tabGrid: TcxTabSheet;
    tabFilter: TcxTabSheet;
    dbgrMatters: TcxGrid;
    vMatters1: TcxGridDBTableView;
    vMatters1PARENT: TcxGridDBColumn;
    vMatters1TITLE: TcxGridDBColumn;
    vMatters1FILEID: TcxGridDBColumn;
    vMatters1SHORTDESCR: TcxGridDBColumn;
    vMatters1LONGDESCR: TcxGridDBColumn;
    vMatters1NMATTER: TcxGridDBColumn;
    vMatters1PARTNER: TcxGridDBColumn;
    vMatters1AUTHOR: TcxGridDBColumn;
    vMatters1TYPE: TcxGridDBColumn;
    vMatters1CLIENTID: TcxGridDBColumn;
    vMatters1SUBTYPE: TcxGridDBColumn;
    vMatters1JURISDICTION: TcxGridDBColumn;
    vMatters1MATTERSTATUS2: TcxGridDBColumn;
    lvMatters: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    vMatters1WIP: TcxGridDBColumn;
    qParaLegal: TUniQuery;
    dsParaLegal: TUniDataSource;
    qController: TUniQuery;
    qControllerCODE: TStringField;
    qControllerNAME: TStringField;
    dsController: TDataSource;
    qOperator: TUniQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    dsOperator: TDataSource;
    qAuthor: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    dsAuthor: TDataSource;
    qPartner: TUniQuery;
    qPartnerCODE: TStringField;
    qPartnerNAME: TStringField;
    dsPartner: TDataSource;
    cxGroupBox1: TcxGroupBox;
    lblPartner: TLabel;
    cbPartner: TcxLookupComboBox;
    lblController: TLabel;
    cbController: TcxLookupComboBox;
    lblAuthor: TLabel;
    cbAuthor: TcxLookupComboBox;
    cbOperator: TcxLookupComboBox;
    lblOperator: TLabel;
    cmbDepartment: TcxLookupComboBox;
    qryDepartment: TUniQuery;
    dsDepartment: TUniDataSource;
    lblDepartment: TLabel;
    lblClient: TLabel;
    btnClient: TcxButtonEdit;
    tvMatters: TcxGridDBBandedTableView;
    tvMattersFILEID: TcxGridDBBandedColumn;
    tvMattersWIP: TcxGridDBBandedColumn;
    tvMattersPARTNER: TcxGridDBBandedColumn;
    tvMattersAUTHOR: TcxGridDBBandedColumn;
    tvMattersTYPE: TcxGridDBBandedColumn;
    tvMattersCLIENTID: TcxGridDBBandedColumn;
    tvMattersLONGDESCR: TcxGridDBBandedColumn;
    tvMattersCLIENT: TcxGridDBBandedColumn;
    tvMattersNMATTER: TcxGridDBBandedColumn;
    tvMattersNMEMO: TcxGridDBBandedColumn;
    qryInvoice: TUniQuery;
    tvMattersTRUST: TcxGridDBBandedColumn;
    cxGroupBox2: TcxGroupBox;
    Label10: TLabel;
    neWIP: TcxCurrencyEdit;
    chkWIP: TcxCheckBox;
    chkDisb: TcxCheckBox;
    chkCreditors: TcxCheckBox;
    chkAntdDisb: TcxCheckBox;
    chkSundries: TcxCheckBox;
    tvMattersSELECTED: TcxGridDBBandedColumn;
    tvMattersAPPLYTRUST: TcxGridDBBandedColumn;
    dxComponentPrinter1: TdxComponentPrinter;
//    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    btnPrint: TdxBarButton;
    dxComponentPrinter1Link2: TdxGridReportLink;
    cxStyleRepository1: TcxStyleRepository;
    stynMemoColour: TcxStyle;
    styDefault: TcxStyle;
    qryNew: TUniQuery;
    dtpInterim: TDateTimePicker;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dtpWIPFrom: TDateTimePicker;
    cxLabel3: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    Label1: TLabel;
    neVariance: TcxCurrencyEdit;
    tvMattersNCLIENT: TcxGridDBBandedColumn;
    Panel1: TPanel;
    btnPrev: TBitBtn;
    btnNext: TBitBtn;
    Panel2: TPanel;
    pbSelect: TBitBtn;
    btnCreate: TBitBtn;
    btnPrintBills: TBitBtn;
    cbPrintBills: TCheckBox;
    bnCancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vMatters1DblClick(Sender: TObject);
    procedure cbShowRecentlyAccessedClick(Sender: TObject);
    procedure vMatters1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure tbClientSearchPropertiesChange(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure EnableTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bnCancelClick(Sender: TObject);
    procedure pagControlChange(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure pbSelectClick(Sender: TObject);
    procedure btnPrintBillsClick(Sender: TObject);
    procedure chkCreditorsClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvMattersStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure FormDestroy(Sender: TObject);
 protected
   procedure CloseFrm(var Message: TMessage); message CM_CLOSEFORM;

  private
    { Private declarations }
    sOrderBy: string;
    FNClient: string;
    DefaultTax : String;
    TaxDate: TDateTime;
    procedure SetProcessFlag;
    procedure Merge();
    function NumberOfBills: Integer;
//    procedure ShowTax(var dTax: Currency; var dgstFree: Currency; sType: string);
  public
    { Public declarations }
    procedure MakeSql(bSearch: boolean = False);
  end;

var
  frmBulkBills: TfrmBulkBills;

implementation

{$R *.dfm}

uses
   miscfunc, CSearch, citfunc, cxDateUtils, Process, BillNew;

procedure TfrmBulkBills.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   dmSaveDoc.qryMatters.Active := False;
   qAuthor.Close;
   qPartner.Close;
   qController.Close;
   qOperator.Close;
   qryDepartment.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmBulkBills.vMatters1DblClick(Sender: TObject);
begin
   if ((tvMattersNMEMO.EditValue > 0) and not VarIsNull(tvMattersNMEMO.EditValue)) then
//      btnCreate.Click;
   begin
      with TfrmInvoice.Create(Self) do
      begin
         DisplayInvoice(integer(tvMattersNMEMO.EditValue));
      end;
   end;
end;

procedure TfrmBulkBills.MakeSql(bSearch: boolean);
var
   sSQL, sTables, sWhereClause, sAND, sHaving, sAdd: string;
   sWIPTotal: string;
begin
   try
      qryMatters.Close;
      qryMatters.SQL.Clear;
       sAND := ' AND ';
      sSQL := 'select tablevalue(''phonebook'',''nclient'',nclient,''search'') as client '+
              ',fileid,longdescr,max(partner) partner,max(author) author, type, clientid, nclient '+
              ',getbillablewipamount(MATTER.NMATTER, :dInterim) as wip '+
              ',getbillabledisbamount(MATTER.NMATTER, :dInterim) as disb '+
              ',getbillablecredamount(MATTER.NMATTER, :dInterim) as cred '+
              ',getbillableantdisbamount(MATTER.NMATTER, :dInterim) as antdisb '+
              ',getbillablesundriesamount(MATTER.NMATTER, :dInterim) as sund '+
              ',nmatter, 0 as nmemo ,getClearedTrustAmount(MATTER.NMATTER) as trust ';
      sTables := 'from matter ';
      sWhereClause := ' where closed = 0 AND entity = :P_Entity ';

      if cbPartner.Text <> '' then
      begin
         sWhereClause := sWhereClause + sAND + ' UPPER(MATTER.PARTNER) = ' + QuotedStr(Uppercase(cbPartner.EditValue));
         sAND := ' AND ';
      end;
      if cbController.Text <> '' then
      begin
         sWhereClause := sWhereClause + sAND + 'MATTER.Controller = ' + QuotedStr(cbController.Editvalue);
         sAND := ' AND ';
      end;
      if cbAuthor.Text <> '' then
      begin
         sWhereClause := sWhereClause + sAND + 'MATTER.AUTHOR = ' + QuotedStr(cbAuthor.Editvalue);
         sAND := ' AND ';
      end;
      if cbOperator.Text <> '' then
      begin
         sWhereClause := sWhereClause + sAND + 'MATTER.OPERATOR = ' + QuotedStr(cbOperator.Editvalue);
         sAND := ' AND ';
      end;

      if cmbDepartment.Text <> '' then
      begin
         sWhereClause := sWhereClause + sAND + ' MATTER.DEPT = ' + QuotedStr(cmbDepartment.Editvalue);
      end;
      if btnClient.Text <> '' then
      begin
         sWhereClause := sWhereClause + sAND + ' MATTER.NCLIENT = ' + FNClient;
      end;

      sWIPTotal := '';
      sHaving := '';
      sAdd := '';
      if neVariance.Value > 0 then
         sWhereClause := sWhereClause + ' having getbillablewipamountcredlimit(NMATTER, :dInterim, :p_variance) > 0 '
      else
      if neWIP.Value > 0 then
      begin
         if chkWIP.Checked then
         begin
            sHaving := sHaving + ' GetBillablewipamount(MATTER.NMATTER, :dInterim)  ';
            sAdd := ' + ';
         end;
         if chkDisb.Checked then
         begin
            sHaving := sHaving + sAdd + ' getbillabledisbamount(MATTER.NMATTER, :dInterim)  ';
            sAdd := ' + ';
         end;
         if chkCreditors.Checked then
         begin
            sHaving := sHaving + sAdd + ' getbillablecredamount(MATTER.NMATTER, :dInterim) ';
            sAdd := ' + ';
         end;
         if chkAntdDisb.Checked then
         begin
            sHaving := sHaving + sAdd + ' getbillableantdisbamount(MATTER.NMATTER, :dInterim)  ';
            sAdd := ' + ';
         end;
         if chkSundries.Checked then
         begin
            sHaving := sHaving + sAdd + ' getbillablesundriesamount(MATTER.NMATTER, :dInterim)  ';
         end;
         if sHaving <> '' then
            sWhereClause := sWhereClause + ' having (' + sHaving +') > ' + CurrToStr(neWIP.Value) ;
      end
      else
      begin
         sWhereClause := sWhereClause + ' having GetBillablewipamount(MATTER.NMATTER, : dInterim) > 0';
      end;

      qryMatters.SQL.Text := sSQL + sTables + sWhereClause + sOrderBy + ' group by nmatter, fileid, longdescr, type, clientid, nclient';
      qryMatters.Prepare;

      if dtpInterim.Date <> NullDate then
         qryMatters.ParamByName('dInterim').AsDateTime := dtpInterim.Date;
      qryMatters.ParamByName('P_Entity').AsString := dmAxiom.Entity;
      if neVariance.Value > 0 then
         qryMatters.ParamByName('p_variance').AsFloat := neVariance.Value;
      qryMatters.Open;
   except
    //
   end;
end;

procedure TfrmBulkBills.cbShowRecentlyAccessedClick(Sender: TObject);
begin
   MakeSQL();
end;

procedure TfrmBulkBills.vMatters1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
   sOrderBy := ' ORDER BY ';

   sOrderBy := sOrderBy + TcxGridDBColumn(AColumn).DataBinding.FieldName;

   if  AColumn.SortOrder = soNone then
   begin
      sOrderBy := sOrderBy + ' ASC';
      AColumn.SortOrder := soAscending;
   end
   else if AColumn.SortOrder = soAscending then
   begin
      sOrderBy := sOrderBy + ' ASC';
   end
   else
   begin
      sOrderBy := sOrderBy + ' DESC';
   end;

   MakeSql();
end;

procedure TfrmBulkBills.tbClientSearchPropertiesChange(Sender: TObject);
begin
   EnableTimer(Sender);
end;

procedure TfrmBulkBills.EnableTimer(Sender: TObject);
begin
   tmrSearch.Enabled := true;
end;

procedure TfrmBulkBills.tmrSearchTimer(Sender: TObject);
begin
   tmrSearch.Enabled := false;
//   if ((tbFileSearch.Text = '') and (tbClientSearch.Text = '')) then
      MakeSQL()
//   else
//      MakeSQL(True);
end;

procedure TfrmBulkBills.tvMattersStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
   if VarToStr(ARecord.Values[tvMattersNMEMO.Index]) <> '' then
   begin
      AStyle := stynMemoColour;
   end
   else
   begin
      AStyle := styDefault;
   end;
end;

procedure TfrmBulkBills.FormCreate(Sender: TObject);
var
   imaxLength: integer;
begin
   imaxLength := 0;
   qAuthor.Open;
   qPartner.Open;
   qController.Open;
   qOperator.Open;
   qryDepartment.Open;
   dtpInterim.Date := Now;
   GetLabel(lblPartner,'MATTER','PARTNER',imaxLength);
   GetLabel(lblOperator,'MATTER','OPERATOR',imaxLength);
   GetLabel(lblAuthor,'MATTER','AUTHOR',imaxLength);
   GetLabel(lblController,'MATTER','CONTROLLER',imaxLength);
   pagcontrol.ActivePageIndex := 0;
   if dbgrMatters.Font.Size <> dmAxiom.GridFont then
      dbgrMatters.Font.Size := dmAxiom.GridFont;
   DefaultTax :=  get_default_gst('Bill');
   if DefaultTax = ''  then
     DefaultTax := dmAxiom.DefaultTax;
    btnPrev.Enabled := False;
    btnPrev.Visible := False;
   dtpInterim.Checked := False;
end;

procedure TfrmBulkBills.FormDestroy(Sender: TObject);
begin
   try
      if tmrSearch.Enabled = True then
         tmrSearch.Enabled := False;
   finally
      tmrSearch.Free;
   end;
end;

procedure TfrmBulkBills.bnCancelClick(Sender: TObject);
begin
   PostMessage(Self.Handle, CM_CLOSEFORM, 0, 0);
//   Self.Close;
end;

procedure TfrmBulkBills.pagControlChange(Sender: TObject);
begin
   btnCreate.Enabled := (pagcontrol.ActivePageIndex = 1);
   pbSelect.Enabled := (pagcontrol.ActivePageIndex = 1);

   if pagcontrol.ActivePageIndex = 0 then
   begin
      btnPrintBills.Enabled := False;
      cbPrintBills.Enabled := False;
   end;

   if pagcontrol.ActivePageIndex = 1 then
      MakeSql;
end;

procedure TfrmBulkBills.btnCreateClick(Sender: TObject);
var
   nRowCount,
   ARowIndex,
   ANMemo, i,
   lNMatter: integer;
   TrustDiff,
   Billtotal, cTrustBal, cProtectedBal, cUnconCheqReq, ATrust,
   ldgstfree, procTax, totalTax: Currency;
   ApplyTrust: boolean;
   sDiscount,
   DefaultTax,
   lFileID: string;
   frmProcess: TfrmProcess;
begin
   TaxDate := dtpInterim.Date;
   if NumberOfBills > 0 then
   begin
      frmProcess := TfrmProcess.Create(Self);
      try
         with tvMatters do
         begin
            BeginUpdate;
            for nRowCount := 0 to DataController.GetRowCount - 1 do
            begin
               frmProcess.pbProcess.Max := DataController.GetRowCount;
               frmProcess.Show;
               ViewData.Records[nRowCount].Focused := True;
               if (tvMattersSELECTED.EditValue = True) and
                  ((tvMattersNMEMO.EditValue = 0) or VarIsNull(tvMattersNMEMO.EditValue)) then
               begin
                  frmProcess.lblProcess.Caption := 'Generating Bill for Matter #'+ tvMattersFILEID.EditValue;
                  Application.ProcessMessages;
                  ANMemo := CreateInvoice(tvMattersNMATTER.EditValue, tvMattersNCLIENT.EditValue, dtpInterim.Date, sDiscount, True);
                  DefaultTax :=  get_default_gst('Bill');
                  if DefaultTax = ''  then
                     DefaultTax := dmAxiom.DefaultTax;
                  with dmAxiom.qryTmp do
                  begin
                     Close;
                     SQL.Text := 'select FEES, DISB, ANTD, SUND, UPCRED, FILEID, NMATTER from nmemo where nmemo = :nmemo';
                     ParamByName('nmemo').AsInteger := ANMemo;
                     Open;
                     lFileID := FieldByName('FILEID').AsString;
                     lNmatter := FieldByName('NMATTER').AsInteger;
                     if FieldByName('fees').AsCurrency <> 0 then
                     begin
                        with dmAxiom.procShowtax do
                        begin
                           ParamByName('pdamount').AsCurrency := dmAxiom.qryTmp.FieldByName('fees').AsCurrency;
                           ParamByName('dgstfree').AsCurrency := ldgstfree;
                           ParamByName('stype').AsString := 'FEE';
                           ParamByName('sfileid').AsString := tvMattersFILEID.EditValue;
                           ParamByName('sdefaulttax').AsString := DefaultTax;
                           ParamByName('nnmatter').AsInteger := tvMattersNMATTER.EditValue;
                           ParamByName('nnmemo').AsInteger := ANMemo;
                           ParamByName('dtaxdate').AsDateTime := dtpInterim.Date;
                           //ParamByName('dtaxdate').AsDateTime := now;
                           Execute;

                           procTax := ParambyName('RESULT').AsCurrency;
                           Close;
                           with dmAxiom.qryTmp2 do
                           begin
                              Close;
                              SQL.Text := 'update nmemo set feestax = :feestax, tax = tax + :feestax where nmemo = :nmemo';
                              ParamByName('feestax').AsCurrency := procTax;
                              ParamByName('nmemo').AsInteger := ANMemo;
                              ExecSQL;
                           end;
                        end;
                     end;
                     if FieldByName('sund').AsCurrency <> 0 then
                     begin
                        with dmAxiom.procShowtax do
                        begin
                           ParamByName('pdamount').AsCurrency := dmAxiom.qryTmp.FieldByName('sund').AsCurrency;
                           ParamByName('dgstfree').AsCurrency := ldgstfree;
                           ParamByName('stype').AsString := 'SUNDRY';
                           ParamByName('sfileid').AsString := tvMattersFILEID.EditValue;
                           ParamByName('sdefaulttax').AsString := DefaultTax;
                           ParamByName('nnmatter').AsInteger := tvMattersNMATTER.EditValue;
                           ParamByName('nnmemo').AsInteger := ANMemo;
                           ParamByName('dtaxdate').AsDateTime := dtpInterim.Date;
                           //ParamByName('dtaxdate').AsDateTime := now;
                           Execute;

                           procTax := ParambyName('RESULT').AsCurrency;
                           Close;
                           with dmAxiom.qryTmp2 do
                           begin
                              Close;
                              SQL.Text := 'update nmemo set sundtax = :sundtax, tax = tax + :sundtax where nmemo = :nmemo';
                              ParamByName('sundtax').AsCurrency := procTax;
                              ParamByName('nmemo').AsInteger := ANMemo;
                              ExecSQL;
                           end;
                        end;
                     end;
                     if FieldByName('disb').AsCurrency <> 0 then
                     begin
                        with dmAxiom.procShowtax do
                        begin
                           ParamByName('pdamount').AsCurrency := dmAxiom.qryTmp.FieldByName('disb').AsCurrency;
                           ParamByName('dgstfree').AsCurrency := ldgstfree;
                           ParamByName('stype').AsString := 'ALLOC';
                           ParamByName('sfileid').AsString := tvMattersFILEID.EditValue;
                           ParamByName('sdefaulttax').AsString := DefaultTax;
                           ParamByName('nnmatter').AsInteger := tvMattersNMATTER.EditValue;
                           ParamByName('nnmemo').AsInteger := ANMemo;
                           ParamByName('dtaxdate').AsDateTime := dtpInterim.Date;
                           //ParamByName('dtaxdate').AsDateTime := now;
                           Execute;

                           procTax := ParambyName('RESULT').AsCurrency;
                           Close;
                           with dmAxiom.qryTmp2 do
                           begin
                              Close;
                              SQL.Text := 'update nmemo set disbtax = :disbtax, tax = tax + :disbtax where nmemo = :nmemo';
                              ParamByName('disbtax').AsCurrency := procTax;
                              ParamByName('nmemo').AsInteger := ANMemo;
                              ExecSQL;
                           end;
                        end;
                     end;
                     if FieldByName('ANTD').AsCurrency <> 0 then
                     begin
                        with dmAxiom.procShowtax do
                        begin
                           ParamByName('pdamount').AsCurrency := dmAxiom.qryTmp.FieldByName('ANTD').AsCurrency;
                           ParamByName('dgstfree').AsCurrency := ldgstfree;
                           ParamByName('stype').AsString := 'CHEQREQ';
                           ParamByName('sfileid').AsString := tvMattersFILEID.EditValue;
                           ParamByName('sdefaulttax').AsString := DefaultTax;
                           ParamByName('nnmatter').AsInteger := tvMattersNMATTER.EditValue;
                           ParamByName('nnmemo').AsInteger := ANMemo;
                           ParamByName('dtaxdate').AsDateTime := dtpInterim.Date;
                           //ParamByName('dtaxdate').AsDateTime := now;
                           Execute;

                           procTax := ParambyName('RESULT').AsCurrency;
                           Close;
                           with dmAxiom.qryTmp2 do
                           begin
                              Close;
                              SQL.Text := 'update nmemo set ANTDtax = :ANTDtax, tax = tax + :ANTDtax where nmemo = :nmemo';
                              ParamByName('ANTDtax').AsCurrency := procTax;
                              ParamByName('nmemo').AsInteger := ANMemo;
                              ExecSQL;
                           end;
                        end;
                     end;

                     if FieldByName('upcred').AsCurrency <> 0 then
                     begin
                        with dmAxiom.procShowtax do
                        begin
                           ParamByName('pdamount').AsCurrency := dmAxiom.qryTmp.FieldByName('upcred').AsCurrency;
                           ParamByName('dgstfree').AsCurrency := ldgstfree;
                           ParamByName('stype').AsString := 'UPCRED';
                           ParamByName('sfileid').AsString := tvMattersFILEID.EditValue;
                           ParamByName('sdefaulttax').AsString := DefaultTax;
                           ParamByName('nnmatter').AsInteger := tvMattersNMATTER.EditValue;
                           ParamByName('nnmemo').AsInteger := ANMemo;
                           ParamByName('dtaxdate').AsDateTime := dtpInterim.Date;
                           //ParamByName('dtaxdate').AsDateTime := now;
                           Execute;

                           procTax := ParambyName('RESULT').AsCurrency;
                           Close;
                           with dmAxiom.qryTmp2 do
                           begin
                              Close;
                              SQL.Text := 'update nmemo set UPCREDtax = :UPCREDtax, tax = tax + :UPCREDtax where nmemo = :nmemo';
                              ParamByName('UPCREDtax').AsCurrency := procTax;
                              ParamByName('nmemo').AsInteger := ANMemo;
                              ExecSQL;
                           end;
                        end;
                     end;
                  end;
                  // if we need to apply trust
                  if (tvMattersAPPLYTRUST.EditValue = True) then
                  begin
                     ApplyTrust := False;
                     Billtotal := TableCurrency('NMEMO','NMEMO',ANMemo,'TOTAL');   //  vMattersWIP.EditValue;
                     cTrustBal := ClearTrustFromStoredProc(lFileID);
                     cProtectedBal := ProtectedTrust(lFileID);
                     with dmAxiom.qryTmp do
                     begin
                        SQL.Clear;
                        SQL.Text := 'select getTrustUnconCheqReqAmount('+ IntToStr(lNMatter) +') as unconcheqreq from dual';
                        ExecSQL;
                        cUnconCheqReq := FieldByName('unconcheqreq').AsCurrency;
                     end;
                     TrustDiff := 0;
                     if SystemString('show_net_trust') = 'Y' then
                     begin
                        TrustDiff := (cTrustBal - cUnconCheqReq) - Billtotal;
                        if (TrustDiff >= 0) then
                        begin
                           ATrust := Billtotal;
                           ApplyTrust := True;
                        end
                        else
                        if (cTrustBal - cUnconCheqReq) < 0 then
                           ATrust := 0
                        else
                        if Billtotal >=  (cTrustBal - cUnconCheqReq) then
                        begin
                           ApplyTrust := True;
                           ATrust := (cTrustBal - cUnconCheqReq);
                        end
                        else if Billtotal <= cTrustBal then
                        begin
                           ATrust := Billtotal ;
                           ApplyTrust := True;
                        end;
                     end
                     else
                     begin
                        TrustDiff := (cTrustBal) - Billtotal;
                        if (TrustDiff >= 0) then
                        begin
                           ATrust := Billtotal;
                           ApplyTrust := True;
                        end
                        else
                        if (cTrustBal) < 0 then
                           ATrust := 0
                        else
                        if Billtotal >=  (cTrustBal) then
                        begin
                           ApplyTrust := True;
                           ATrust := (cTrustBal);
                        end
                        else if Billtotal <= cTrustBal then
                        begin
                           ATrust := Billtotal ;
                           ApplyTrust := True;
                        end;
                     end;
                     if ApplyTrust then
                     begin
                        with dmAxiom.qryTmp do
                        begin
                           SQL.Clear;
                           SQL.Text := 'update nmemo set trust = :trust where nmemo = :nmemo';
                           ParamByName('trust').AsCurrency := ATrust;
                           ParamByName('nmemo').AsInteger := ANMemo;
                           ExecSQL;
                        end;
                     end;
                  end;
                  inc(i);
                  tvMattersNMEMO.EditValue := ANMemo;
                  dbgrMatters.Invalidate;
                  frmProcess.pbProcess.Position := i;
               end;
            end;
            EndUpdate;
            btnPrintBills.Enabled := (pagcontrol.ActivePageIndex = 1);
            cbPrintBills.Enabled := (pagcontrol.ActivePageIndex = 1);

//            qryMatters.Close;
//            qryMatters.Open;
//            MakeSql;
            pbSelect.Caption := 'Select All';

            if (i > 0) then
               MsgInfo(IntToStr(i) + ' Bill(s) created');
         end;
      finally
          frmProcess.Release;
      end;
   end
   else
      MsgInfo('No records selected to create a Bill');
//   qryMatters.Refresh;
   try
      tvMatters.ViewData.Records[0].Focused := True;
   except
   //
   end;
end;

procedure TfrmBulkBills.btnNextClick(Sender: TObject);
var
  i: Integer;
begin
   btnPrev.Enabled := True;
   btnPrev.Visible := True;

   i := pagControl.ActivePageIndex + 1;
   while (i < pagControl.PageCount) and (not pagControl.Pages[i].TabVisible) do
      Inc(i);
   if(i < pagControl.PageCount) then
      pagControl.ActivePageIndex := i;
   pagControl.OnChange(Sender);
   if (i = pagControl.PageCount - 1) then
   begin
      btnNext.Enabled := False;
      btnNext.Visible := False;
   end;
end;

procedure TfrmBulkBills.btnPrevClick(Sender: TObject);
var
  i: Integer;
begin
   btnNext.Enabled := True;
   btnNext.Visible := True;
   i := pagControl.ActivePageIndex - 1;
   while(not pagControl.Pages[i].TabVisible) and (i >= 0) do
      Dec(i);
   pagControl.ActivePageIndex := i;
   pagControl.OnChange(Sender);
   if (i = 0) then
   begin
      btnPrev.Enabled := False;
      btnPrev.Visible := False;
   end;
end;

procedure TfrmBulkBills.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmClientSearch) then
      Application.CreateForm(TfrmClientSearch, frmClientSearch);

   if frmClientSearch.ShowModal = mrOk then
   begin
      FNClient       := frmClientSearch.qryClientList.FieldByName('nclient').AsString;
      btnClient.Text := frmClientSearch.qryClientList.FieldByName('search').AsString;
   end;
end;

procedure TfrmBulkBills.pbSelectClick(Sender: TObject);
begin
   SetProcessFlag;
end;

procedure TfrmBulkBills.SetProcessFlag;
var
  Idx, I: Integer;
  ABookmark: TBookmark;
  DC: TcxDBDataController;
  GV: TcxGridDBBandedTableView;
  bitmap: TBitmap;
begin
   GV := tvMatters;
   DC := GV.DataController;
   DC.BeginUpdate;
   Idx := DC.FocusedRowIndex;

   SetCurrentDir(ExtractFilePath(Application.EXEName));
   try
      Bitmap:= TBitmap.Create;
      if pbSelect.Caption = 'Select All' then
      begin
         pbSelect.Caption := 'DeSelect All';
//         bbSelectAll.Caption := 'DeSelect All';
         Bitmap.LoadFromFile(ExtractFilePath(Application.EXEName)+'\images\CHECKBOXUNTICK.bmp');
//         Bitmap.LoadFromResourceName(HInstance,'CHECKBOXUNTICK');
         pbselect.Glyph.Assign(Bitmap);

         GV.ViewData.Records[0].Focused := True;
         for I := 0 to GV.ViewData.RowCount - 1 do
         begin
            GV.ViewData.Records[I].Focused := True;
            tvMattersSELECTED.EditValue := true;
         end;
      end
      else
      begin
         pbSelect.Caption := 'Select All';
//         bbSelectAll.Caption := 'Select All';
         Bitmap.LoadFromFile(ExtractFilePath(Application.EXEName)+'\images\CHECKBOXTICK.bmp');
//         Bitmap.LoadFromResourceName(HInstance,'CHECKBOXTICK');
         pbselect.Glyph.Assign(Bitmap);

         GV.ViewData.Records[0].Focused := True;
         for I := 0 to GV.ViewData.RowCount - 1 do
         begin
            GV.ViewData.Records[I].Focused := True;
            tvMattersSELECTED.EditValue := false;
         end;
      end;
   finally
      Bitmap.Free;
      DC.FocusedRowIndex := Idx;
      DC.EndUpdate;
      SetCurrentDir(ExtractFilePath(Application.EXEName));
   end;
end;

procedure TfrmBulkBills.Merge();
var
  iNMemo: Integer;
  iNumBills: Integer;
  frmProgress: TfrmProcess;
   I, iCtr, RecIdx, ColIdx, nRowCount: Integer;
   NMatterVal, NMemoVal: Variant;
begin
   frmProgress := nil;
   iCtr := 1;
   // Merge all items
   iNumBills := NumberOfBills;
   if iNumBills = 0 then
      exit;
   try
      frmProgress := TfrmProcess.Create(Self, True);
      frmProgress.Show;
      frmProgress.SetProgress(0, 'Merging and printing bills...');
      tvMatters.BeginUpdate;
      try
         for nRowCount := 0 to tvMatters.DataController.GetRowCount - 1 do //  GetSelectedCount - 1 do
         begin
            tvMatters.ViewData.Records[nRowCount].Focused := True;
            if (tvMattersSELECTED.EditValue = True) then
            begin
//               iCtr := 1;
               if (iNumBills = 0) then iNumBills := 1;
               if frmProgress.SetProgress((iCtr/iNumBills), 'Merging and printing bills... Bill '+IntToStr(iCtr)+' of '+IntToStr(iNumBills)) then
               begin
                  try
                     InvoiceMerge(integer(tvMattersNMEMO.EditValue), integer(tvMattersNMATTER.EditValue), False, cbPrintBills.Checked);
                     Sleep(6000);
                  except
                    // nothing
                  end;
                  Inc(iCtr);
               end
               else
               begin
//                  frmProgress.Close;
                  Break;
               end;
            end;
         end;
      finally
         frmProgress.Close;
         tvMatters.EndUpdate;
      end;
   except
      frmProgress.Close;
      tvMatters.EndUpdate;
   end;
end;

function TfrmBulkBills.NumberOfBills: Integer;
var
   BILLCOUNT,
   nRowCount: integer;
begin
   BILLCOUNT := 0;
//   with tvMatters do
//   begin
      tvMatters.BeginUpdate;
      for nRowCount := 0 to tvMatters.DataController.GetRowCount - 1 do
      begin
         tvMatters.DataController.FocusedRowIndex := nRowCount;
         if (tvMatters.DataController.GetValue(nRowCount, tvMattersSELECTED.Index) = True) then
            inc(BILLCOUNT);
      end;
      tvMatters.EndUpdate;
//   end;
   Result := BILLCOUNT;
end;

procedure TfrmBulkBills.btnPrintBillsClick(Sender: TObject);
begin
   if DefaultBillTemplate then
      Merge()
   else
      MsgInfo('There is no Default Bill Template defined. chr(13) Please go to Launch->Maintenance->BillTemplates and select a default template.'); 
end;

procedure TfrmBulkBills.chkCreditorsClick(Sender: TObject);
begin
   neWip.Enabled := (chkWIP.Checked or chkDisb.Checked or chkCreditors.Checked or
                     chkAntdDisb.Checked or chkSundries.Checked);
end;

procedure TfrmBulkBills.btnPrintClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview();
end;

procedure TfrmBulkBills.FormShow(Sender: TObject);
begin
   dtpInterim.Checked := False;
end;

procedure TfrmBulkBills.CloseFrm(var Message: TMessage);
begin
   RemoveFromDesktop(Self);
end;
end.
