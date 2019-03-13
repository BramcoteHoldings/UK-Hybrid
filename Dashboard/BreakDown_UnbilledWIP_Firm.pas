unit BreakDown_UnbilledWIP_Firm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, OracleUniProvider, Uni,
  MemDS, DBAccess, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, cxCalendar, cxCurrencyEdit,
  cxCheckBox, cxGridBandedTableView, cxGridDBBandedTableView,
  cxLookAndFeels, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxSchedulerLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  cxGridExportLink, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ExtCtrls;

type
  TfrmUnbilledWIPFirm = class(TForm)
    tvAgedWIP: TcxGridDBTableView;
    lvAged: TcxGridLevel;
    grdAged: TcxGrid;
    qryUnbilledFees: TUniQuery;
    dsUnbilledFees: TUniDataSource;
    tvAgedDebtors: TcxGridDBTableView;
    qryAgedDebtors: TUniQuery;
    dsAgedDebtors: TUniDataSource;
    tvAgedDebtorsBILL_TO: TcxGridDBColumn;
    tvAgedDebtorsDISPATCHED: TcxGridDBColumn;
    tvAgedDebtorsGENERATED: TcxGridDBColumn;
    tvAgedDebtorsNMEMO: TcxGridDBColumn;
    tvAgedDebtorsREFNO: TcxGridDBColumn;
    tvAgedDebtorsFEES: TcxGridDBColumn;
    tvAgedDebtorsDISB: TcxGridDBColumn;
    tvAgedDebtorsANTD: TcxGridDBColumn;
    tvAgedDebtorsSUND: TcxGridDBColumn;
    tvAgedDebtorsTAX: TcxGridDBColumn;
    tvAgedDebtorsTRUST: TcxGridDBColumn;
    tvAgedDebtorsFEES_PAID: TcxGridDBColumn;
    tvAgedDebtorsDISB_PAID: TcxGridDBColumn;
    tvAgedDebtorsANTD_PAID: TcxGridDBColumn;
    tvAgedDebtorsSUND_PAID: TcxGridDBColumn;
    tvAgedDebtorsTAX_PAID: TcxGridDBColumn;
    tvAgedDebtorsRV_NMEMO: TcxGridDBColumn;
    tvAgedDebtorsRV_TYPE: TcxGridDBColumn;
    tvAgedDebtorsTOTAL: TcxGridDBColumn;
    tvAgedDebtorsOWING: TcxGridDBColumn;
    tvAgedDebtorsUPCRED: TcxGridDBColumn;
    tvAgedDebtorsUPCRED_PAID: TcxGridDBColumn;
    tvAgedDebtorsSPLIT_BILL: TcxGridDBColumn;
    tvAgedDebtorsEXPPAYMENT: TcxGridDBColumn;
    tvAgedDebtorsINV_NOTE: TcxGridDBColumn;
    tvFeesBilled: TcxGridDBTableView;
    qryFeesBilled: TUniQuery;
    dsFeesBilled: TUniDataSource;
    tvAgedWIPNFEE: TcxGridDBColumn;
    tvAgedWIPCREATED: TcxGridDBColumn;
    tvAgedWIPAUTHOR: TcxGridDBColumn;
    tvAgedWIPFILEID: TcxGridDBColumn;
    tvAgedWIPDESCR: TcxGridDBColumn;
    tvAgedWIPAMOUNT: TcxGridDBColumn;
    tvAgedWIPUNITS: TcxGridDBColumn;
    tvAgedWIPMINS: TcxGridDBColumn;
    tvAgedWIPRATE: TcxGridDBColumn;
    tvAgedWIPTYPE: TcxGridDBColumn;
    tvAgedWIPTASK: TcxGridDBColumn;
    tvAgedWIPTITLE: TcxGridDBColumn;
    tvAgedWIPSHORTDESCR: TcxGridDBColumn;
    tvAgedWIPBRANCH: TcxGridDBColumn;
    tvAgedWIPFEETYPE: TcxGridDBColumn;
    tvAgedWIPPARTNERNAME: TcxGridDBColumn;
    tvAgedWIPAUTHORNAME: TcxGridDBColumn;
    tvAgedWIPDEPT: TcxGridDBColumn;
    tvAgedWIPPARTDEPT: TcxGridDBColumn;
    tvAgedWIPTIME_TYPE: TcxGridDBColumn;
    tvFeesBilledNFEE: TcxGridDBColumn;
    tvFeesBilledCREATED: TcxGridDBColumn;
    tvFeesBilledAUTHOR: TcxGridDBColumn;
    tvFeesBilledFILEID: TcxGridDBColumn;
    tvFeesBilledDESCR: TcxGridDBColumn;
    tvFeesBilledAMOUNT: TcxGridDBColumn;
    tvFeesBilledUNITS: TcxGridDBColumn;
    tvFeesBilledMINS: TcxGridDBColumn;
    tvFeesBilledRATE: TcxGridDBColumn;
    tvFeesBilledTYPE: TcxGridDBColumn;
    tvFeesBilledTASK: TcxGridDBColumn;
    tvFeesBilledTITLE: TcxGridDBColumn;
    tvFeesBilledSHORTDESCR: TcxGridDBColumn;
    tvFeesBilledBRANCH: TcxGridDBColumn;
    tvFeesBilledFEETYPE: TcxGridDBColumn;
    tvFeesBilledPARTNERNAME: TcxGridDBColumn;
    tvFeesBilledAUTHORNAME: TcxGridDBColumn;
    tvFeesBilledDEPT: TcxGridDBColumn;
    tvFeesBilledPARTDEPT: TcxGridDBColumn;
    tvFeesBilledTIME_TYPE: TcxGridDBColumn;
    tvFeesReceived: TcxGridDBTableView;
    qryFeesReceived: TUniQuery;
    dsFeesReceived: TUniDataSource;
    tvFeesReceivedAUTHOR: TcxGridDBColumn;
    tvFeesReceivedBILL_TO: TcxGridDBColumn;
    tvFeesReceivedDISPATCHED: TcxGridDBColumn;
    tvFeesReceivedGENERATED: TcxGridDBColumn;
    tvFeesReceivedREFNO: TcxGridDBColumn;
    tvFeesReceivedSPLIT_BILL: TcxGridDBColumn;
    tvFeesReceivedEXPPAYMENT: TcxGridDBColumn;
    tvFeesReceivedFE_RECEIPT: TcxGridDBColumn;
    qryWIPLockup: TUniQuery;
    dsWIPLockup: TUniDataSource;
    tvWIPLockup: TcxGridDBTableView;
    tvWIPLockupNFEE: TcxGridDBColumn;
    tvWIPLockupCREATED: TcxGridDBColumn;
    tvWIPLockupAUTHOR: TcxGridDBColumn;
    tvWIPLockupFILEID: TcxGridDBColumn;
    tvWIPLockupNMATTER: TcxGridDBColumn;
    tvWIPLockupDESCR: TcxGridDBColumn;
    tvWIPLockupAMOUNT: TcxGridDBColumn;
    tvWIPLockupUNITS: TcxGridDBColumn;
    tvWIPLockupMINS: TcxGridDBColumn;
    tvWIPLockupRATE: TcxGridDBColumn;
    tvWIPLockupTYPE: TcxGridDBColumn;
    tvWIPLockupTASK: TcxGridDBColumn;
    tvWIPLockupTASK_AMOUNT: TcxGridDBColumn;
    tvWIPLockupTITLE: TcxGridDBColumn;
    tvWIPLockupSHORTDESCR: TcxGridDBColumn;
    tvWIPLockupBRANCH: TcxGridDBColumn;
    tvWIPLockupPARTNERNAME: TcxGridDBColumn;
    tvWIPLockupAUTHORNAME: TcxGridDBColumn;
    tvWIPLockupDEPT: TcxGridDBColumn;
    tvWIPLockupPARTDEPT: TcxGridDBColumn;
    tvWIPLockupBILLTYPE: TcxGridDBColumn;
    tvWIPLockupTIME_TYPE: TcxGridDBColumn;
    qryUnbilledDisbsLockup: TUniQuery;
    dsUnbilledDisbsLockup: TUniDataSource;
    tvUnbilledDisbLockup: TcxGridDBTableView;
    tvUnbilledDisbLockupCREATED: TcxGridDBColumn;
    tvUnbilledDisbLockupREFNO: TcxGridDBColumn;
    tvUnbilledDisbLockupPAYER: TcxGridDBColumn;
    tvUnbilledDisbLockupAMOUNT: TcxGridDBColumn;
    tvUnbilledDisbLockupDESCR: TcxGridDBColumn;
    tvUnbilledDisbLockupSUNDRYTYPE: TcxGridDBColumn;
    tvUnbilledDisbLockupDEBIT: TcxGridDBColumn;
    tvUnbilledDisbLockupCREDIT: TcxGridDBColumn;
    qrySundriesLockup: TUniQuery;
    dsSundriesLockup: TUniDataSource;
    tvSundriesLockup: TcxGridDBTableView;
    tvSundriesLockupCREATED: TcxGridDBColumn;
    tvSundriesLockupDESCR: TcxGridDBColumn;
    tvSundriesLockupFILEID: TcxGridDBColumn;
    tvSundriesLockupAMOUNT: TcxGridDBColumn;
    tvSundriesLockupSEARCH: TcxGridDBColumn;
    qryCeditorsLockup: TUniQuery;
    dsCeditorsLockup: TUniDataSource;
    tvCreditorsLockup: TcxGridDBTableView;
    tvCreditorsLockupCREATED: TcxGridDBColumn;
    tvCreditorsLockupDESCR: TcxGridDBColumn;
    tvCreditorsLockupPAYER: TcxGridDBColumn;
    tvCreditorsLockupCLIENT_NAME: TcxGridDBColumn;
    tvCreditorsLockupMATTER_DESC: TcxGridDBColumn;
    tvCreditorsLockupAMOUNT: TcxGridDBColumn;
    tvCreditorsLockupFILEID: TcxGridDBColumn;
    qryDebtorLockup: TUniQuery;
    dsDebtorLockup: TUniDataSource;
    tvDebtorsLockup: TcxGridDBTableView;
    tvDebtorsLockupCREATED: TcxGridDBColumn;
    tvDebtorsLockupDESCR: TcxGridDBColumn;
    tvDebtorsLockupPAYER: TcxGridDBColumn;
    tvDebtorsLockupCLIENT_NAME: TcxGridDBColumn;
    tvDebtorsLockupMATTER_DESC: TcxGridDBColumn;
    tvDebtorsLockupAMOUNT: TcxGridDBColumn;
    tvDebtorsLockupFILEID: TcxGridDBColumn;
    qryAgedDebtorsFull: TUniQuery;
    dsAgedDebtorsFull: TUniDataSource;
    tvAgedDebtorsFull: TcxGridDBTableView;
    tvAgedDebtorsFullPERIOD: TcxGridDBColumn;
    tvAgedDebtorsFullBILL_TO: TcxGridDBColumn;
    tvAgedDebtorsFullDISPATCHED: TcxGridDBColumn;
    tvAgedDebtorsFullGENERATED: TcxGridDBColumn;
    tvAgedDebtorsFullREFNO: TcxGridDBColumn;
    tvAgedDebtorsFullFEES: TcxGridDBColumn;
    tvAgedDebtorsFullDISB: TcxGridDBColumn;
    tvAgedDebtorsFullANTD: TcxGridDBColumn;
    tvAgedDebtorsFullSUND: TcxGridDBColumn;
    tvAgedDebtorsFullTAX: TcxGridDBColumn;
    tvAgedDebtorsFullTRUST: TcxGridDBColumn;
    tvAgedDebtorsFullFEES_PAID: TcxGridDBColumn;
    tvAgedDebtorsFullDISB_PAID: TcxGridDBColumn;
    tvAgedDebtorsFullANTD_PAID: TcxGridDBColumn;
    tvAgedDebtorsFullSUND_PAID: TcxGridDBColumn;
    tvAgedDebtorsFullTAX_PAID: TcxGridDBColumn;
    tvAgedDebtorsFullTOTAL: TcxGridDBColumn;
    tvAgedDebtorsFullOWING: TcxGridDBColumn;
    tvAgedDebtorsFullUPCRED: TcxGridDBColumn;
    tvAgedDebtorsFullUPCRED_PAID: TcxGridDBColumn;
    tvAgedDebtorsFullSPLIT_BILL: TcxGridDBColumn;
    tvAgedDebtorsFullEXPPAYMENT: TcxGridDBColumn;
    tvAgedDebtorsFullINV_NOTE: TcxGridDBColumn;
    qryAgedWipFull: TUniQuery;
    dsAgedWipFull: TUniDataSource;
    tvAgedWipFull: TcxGridDBTableView;
    tvAgedWipFullPERIOD: TcxGridDBColumn;
    tvAgedWipFullCREATED: TcxGridDBColumn;
    tvAgedWipFullAUTHOR: TcxGridDBColumn;
    tvAgedWipFullFILEID: TcxGridDBColumn;
    tvAgedWipFullDESCR: TcxGridDBColumn;
    tvAgedWipFullAMOUNT: TcxGridDBColumn;
    tvAgedWipFullUNITS: TcxGridDBColumn;
    tvAgedWipFullMINS: TcxGridDBColumn;
    tvAgedWipFullRATE: TcxGridDBColumn;
    tvAgedWipFullTYPE: TcxGridDBColumn;
    tvAgedWipFullTASK: TcxGridDBColumn;
    tvAgedWipFullTITLE: TcxGridDBColumn;
    tvAgedWipFullSHORTDESCR: TcxGridDBColumn;
    tvAgedWipFullBRANCH: TcxGridDBColumn;
    tvAgedWipFullFEETYPE: TcxGridDBColumn;
    tvAgedWipFullPARTNERNAME: TcxGridDBColumn;
    tvAgedWipFullAUTHORNAME: TcxGridDBColumn;
    tvAgedWipFullDEPT: TcxGridDBColumn;
    tvAgedWipFullPARTDEPT: TcxGridDBColumn;
    tvAgedWipFullTIME_TYPE: TcxGridDBColumn;
    qryWIPGeneratedFull: TUniQuery;
    dsWIPGeneratedFull: TUniDataSource;
    tvWIPGenFull: TcxGridDBTableView;
    tvWIPGenFullPERIOD: TcxGridDBColumn;
    tvWIPGenFullNFEE: TcxGridDBColumn;
    tvWIPGenFullCREATED: TcxGridDBColumn;
    tvWIPGenFullAUTHOR: TcxGridDBColumn;
    tvWIPGenFullFILEID: TcxGridDBColumn;
    tvWIPGenFullDESCR: TcxGridDBColumn;
    tvWIPGenFullAMOUNT: TcxGridDBColumn;
    tvWIPGenFullUNITS: TcxGridDBColumn;
    tvWIPGenFullMINS: TcxGridDBColumn;
    tvWIPGenFullRATE: TcxGridDBColumn;
    tvWIPGenFullTYPE: TcxGridDBColumn;
    tvWIPGenFullTASK: TcxGridDBColumn;
    tvWIPGenFullTITLE: TcxGridDBColumn;
    tvWIPGenFullSHORTDESCR: TcxGridDBColumn;
    tvWIPGenFullBRANCH: TcxGridDBColumn;
    tvWIPGenFullPARTNERNAME: TcxGridDBColumn;
    tvWIPGenFullAUTHORNAME: TcxGridDBColumn;
    tvWIPGenFullDEPT: TcxGridDBColumn;
    tvWIPGenFullPARTDEPT: TcxGridDBColumn;
    tvWIPGenFullTIME_TYPE: TcxGridDBColumn;
    qryFeesBilledFull: TUniQuery;
    dsFeesBilledFull: TUniDataSource;
    tvFeesBilledFull: TcxGridDBTableView;
    tvFeesBilledFullCREATED: TcxGridDBColumn;
    tvFeesBilledFullDESCR: TcxGridDBColumn;
    tvFeesBilledFullMINS: TcxGridDBColumn;
    tvFeesBilledFullAUTHOR: TcxGridDBColumn;
    tvFeesBilledFullPATNER: TcxGridDBColumn;
    tvFeesBilledFullTASK: TcxGridDBColumn;
    tvFeesBilledFullUNITS: TcxGridDBColumn;
    tvFeesBilledFullINVOICEDATE: TcxGridDBColumn;
    tvFeesBilledFullTAX: TcxGridDBColumn;
    tvFeesBilledFullNOTIONAL_COST: TcxGridDBColumn;
    tvFeesBilledFullPERIOD: TcxGridDBColumn;
    tvFeesBilledFullSORT_ORDER: TcxGridDBColumn;
    tvAgedDebtorsFILEID: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    prnLink: TdxGridReportLink;
    OpenDialog: TOpenDialog;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    btnClose: TcxButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvFeesBilledFullSORT_ORDERGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    FSQL: string;
    FP30Days: integer;
    FP60Days: integer;
    FP90Days: integer;
    FP120Days: integer;
    FAuthor: string;
    FDateFrom, FDateTo: TDateTime;
    FFormTitle: string;
    function GetGroupDisplayText(APeriod: integer): string;
  public
    { Public declarations }
    property SQL: string read FSQL write FSQL;
    property P30Days: integer read FP30Days write FP30Days;
    property P60Days: integer read FP60Days write FP60Days;
    property P90Days: integer read FP90Days write FP90Days;
    property P120Days: integer read FP120Days write FP120Days;
    property Author: string read FAuthor write FAuthor;
    property DateFrom: TDateTime read FDateFrom write FDateFrom;
    property Dateto: TDateTime read FDateTo write FDateTo;
    property FormTitle: string read FFormTitle write FFormTitle;
  end;

var
  frmUnbilledWIPFirm: TfrmUnbilledWIPFirm;

implementation

uses AxiomData, DashboardIndDataModule, MiscFunc;

{$R *.dfm}

procedure TfrmUnbilledWIPFirm.btnCloseClick(Sender: TObject);
begin
   Close;
end;


procedure TfrmUnbilledWIPFirm.FormShow(Sender: TObject);
begin
   if grdAged.ActiveView = tvAgedWIP then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvAgedWIP);
      qryUnbilledFees.Close;
      qryUnbilledFees.SQL.Text := FSQL;
      if FP30Days <> 0 then
         qryUnbilledFees.ParamByName('p1').AsInteger := FP30Days;
      if FP60Days <> 0 then
         qryUnbilledFees.ParamByName('p2').AsInteger := FP60Days;
      if FP90Days <> 0 then
         qryUnbilledFees.ParamByName('p3').AsInteger := FP90Days;
      if FP120Days <> 0 then
         qryUnbilledFees.ParamByName('p4').AsInteger := FP120Days;
//      qryUnbilledFees.ParamByName('author').AsString := FAuthor;
      qryUnbilledFees.Open;
   end
   else
   if grdAged.ActiveView = tvAgedDebtors then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvAgedDebtors);
      qryAgedDebtors.Close;
      qryAgedDebtors.SQL.Text := FSQL;
      if FP30Days <> 0 then
         qryAgedDebtors.ParamByName('p1').AsInteger := FP30Days;
      if FP60Days <> 0 then
         qryAgedDebtors.ParamByName('p2').AsInteger := FP60Days;
      if FP90Days <> 0 then
         qryAgedDebtors.ParamByName('p3').AsInteger := FP90Days;
      if FP120Days <> 0 then
         qryAgedDebtors.ParamByName('p4').AsInteger := FP120Days;
//      qryAgedDebtors.ParamByName('author').AsString := FAuthor;
      qryAgedDebtors.Open;
   end
   else
   if grdAged.ActiveView = tvFeesBilled then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvFeesBilled);
      Self.Caption := FFormTitle;
      qryFeesBilled.Close;
//      qryFeesBilled.SQL.Text := FSQL;
      qryFeesBilled.ParamByName('year_start_date').AsDateTime := FDateFrom;
      qryFeesBilled.ParamByName('year_end_date').AsDateTime := FDateTo;
//      qryFeesBilled.ParamByName('author').AsString := FAuthor;
      qryFeesBilled.Open;
   end
   else
   if grdAged.ActiveView = tvFeesReceived then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvFeesReceived);
      Self.Caption := FFormTitle;
      qryFeesReceived.Close;
      qryFeesReceived.ParamByName('month_start_date').AsDateTime := FDateFrom;
      qryFeesReceived.ParamByName('month_end_date').AsDateTime := FDateTo;
//      qryFeesReceived.ParamByName('author').AsString := FAuthor;
      qryFeesReceived.Open;
   end
   else
   if grdAged.ActiveView = tvWIPLockup then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvWIPLockup);
      Self.Caption := FFormTitle;
      qryWIPLockup.Close;
//      qryWIPLockup.ParamByName('author').AsString := FAuthor;
      qryWIPLockup.Open;
   end
   else
   if grdAged.ActiveView = tvUnbilledDisbLockup then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvUnbilledDisbLockup);
      Self.Caption := FFormTitle;
      qryUnbilledDisbsLockup.Close;
//      qryUnbilledDisbsLockup.ParamByName('author').AsString := FAuthor;
      qryUnbilledDisbsLockup.Open;
   end
   else
   if grdAged.ActiveView = tvSundriesLockup then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvSundriesLockup);
      Self.Caption := FFormTitle;
      qrySundriesLockup.Close;
//      qrySundriesLockup.ParamByName('author').AsString := FAuthor;
      qrySundriesLockup.Open;
   end
   else
   if grdAged.ActiveView = tvCreditorsLockup then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvCreditorsLockup);
      Self.Caption := FFormTitle;
      qryCeditorsLockup.Close;
//      qryCeditorsLockup.ParamByName('author').AsString := FAuthor;
      qryCeditorsLockup.Open;
   end
   else
   if grdAged.ActiveView = tvDebtorsLockup then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvDebtorsLockup);
      Self.Caption := FFormTitle;
      qryDebtorLockup.Close;
//      qryDebtorLockup.ParamByName('author').AsString := FAuthor;
      qryDebtorLockup.Open;
   end
   else
   if grdAged.ActiveView = tvAgedDebtorsFull then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',tvAgedDebtorsFull);
      with qryAgedDebtorsFull do
      begin
         Close;
         if FP30Days <> 0 then
            ParamByName('p1').AsInteger := FP30Days;
         if FP60Days <> 0 then
            ParamByName('p2').AsInteger := FP60Days;
         if FP90Days <> 0 then
            ParamByName('p3').AsInteger := FP90Days;
         if FP120Days <> 0 then
            ParamByName('p4').AsInteger := FP120Days;
//         ParamByName('author').AsString := FAuthor;
         Open;
      end;
   end
   else
   if grdAged.ActiveView = tvAgedWipFull then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_AGEDWIP',tvAgedWipFull);
      with qryAgedWipFull do
      begin
         Close;
         if FP30Days <> 0 then
            ParamByName('p1').AsInteger := FP30Days;
         if FP60Days <> 0 then
            ParamByName('p2').AsInteger := FP60Days;
         if FP90Days <> 0 then
            ParamByName('p3').AsInteger := FP90Days;
         if FP120Days <> 0 then
            ParamByName('p4').AsInteger := FP120Days;
//         ParamByName('author').AsString := FAuthor;
         Open;
      end;
   end
   else
   if grdAged.ActiveView = tvWIPGenFull then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_WIP_FULL',tvWIPGenFull);
      with qryWIPGeneratedFull do
      begin
         Close;
         ParamByName('year_start_date').AsDateTime := FDateFrom;
         ParamByName('year_end_date').AsDateTime := FDateTo;
//         ParamByName('author').AsString := FAuthor;
         Open;
      end;
   end
   else
   if grdAged.ActiveView = tvFeesBilledFull then
   begin
      SettingLoadStream(dmAxiom.UserID,'BREAKDOWN_WIP_FULL',tvFeesBilledFull);
      with qryFeesBilledFull do
      begin
         Close;
         ParamByName('year_start_date').AsDateTime := FDateFrom;
         ParamByName('year_end_date').AsDateTime := FDateTo;
//         ParamByName('author').AsString := FAuthor;
         Open;
      end;
   end
end;

procedure TfrmUnbilledWIPFirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
   AView: TcxCustomGridView;
begin
   AView := grdAged.ActiveView;
   SettingSaveStream(dmAxiom.UserID,'BREAKDOWN_UNBILLWIP',AView);
end;

function TfrmUnbilledWIPFirm.GetGroupDisplayText(APeriod: integer): string;
var
   LPeriod, adj: integer;
   LYear: word;
begin
   LPeriod := StrToInt(SystemString('finyear_start_month'));
   LYear := CurrentYear;
   case LPeriod of
      1: adj := 0;
      2..12: adj := 1;
   end;

   case APeriod of
      1: Result := 'Period: Jul-' + inttostr(LYear - adj);
      2: Result := 'Period: Aug-' + inttostr(LYear - adj);
      3: Result := 'Period: Sep-' + inttostr(LYear - adj);
      4: Result := 'Period: Oct-' + inttostr(LYear - adj);
      5: Result := 'Period: Nov-' + inttostr(LYear - adj);
      6: Result := 'Period: Dec-' + inttostr(LYear - adj);
      7: Result := 'Period: Jan-' + inttostr(LYear);
      8: Result := 'Period: Feb-' + inttostr(LYear);
      9: Result := 'Period: Mar-' + inttostr(LYear);
      10: Result := 'Period: Apr-' + inttostr(LYear);
      11: Result := 'Period: May-' + inttostr(LYear);
      12: Result := 'Period: Jun-' + inttostr(LYear);
   end;
end;

procedure TfrmUnbilledWIPFirm.tvFeesBilledFullSORT_ORDERGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
   if ARecord is TcxGridGroupRow then
      AText :=  GetGroupDisplayText(ARecord.Values[Sender.Index]);
end;

procedure TfrmUnbilledWIPFirm.cxButton2Click(Sender: TObject);
var
   filename: string;
begin
   if OpenDialog.Execute then
   begin
      filename := OpenDialog.FileName;
      ExportGridToExcel(filename,grdAged, True, True,True,'xls');
   end;
end;

procedure TfrmUnbilledWIPFirm.cxButton1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview();
end;

end.
