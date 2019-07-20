Unit BillNew;

{
  ================= Revision Status ======================================

  11 Nov 2017 DW set billed flag back to N when removing a cheque request


}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Vcl.Dialogs,cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxCheckBox, cxImageComboBox, cxCalendar, cxButtonEdit,
  cxSpinEdit, cxCurrencyEdit, cxDropDownEdit, cxRichEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxBarBuiltInMenu, DBAccess, Uni, Vcl.Menus, ppBands,
  ppClass, ppCtrls, ppMemo, cxGridCustomPopupMenu, cxGridPopupMenu, ppDB,
  ppDBPipe, ppParameter, ppStrtch, ppRegion, ppDesignLayer, raCodMod, ppModule,
  ppRichTx, ppVar, ppReport, ppSubRpt, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, dxBar, cxBarEditItem, cxClasses, Vcl.ExtCtrls, MemDS,
  System.ImageList, Vcl.ImgList, cxMaskEdit, cxTextEdit,
  Vcl.StdCtrls, cxGroupBox, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxLabel, cxRadioGroup,
  NumberEdit, Vcl.Buttons, Vcl.DBCtrls, Variants, ppIniStorage, cxGridExportLink,
  DateUtils, ppFileUtils;

const
  // The images for the lvItems
  IMG_FEES = 0;
  IMG_DISB = 1;
  IMG_ANTD = 2;
  IMG_SUND = 3;
  IMG_UPCRED = 4;

type
  TfrmInvoice = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lblFeesAvail: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lblDisbAvail: TLabel;
    Label7: TLabel;
    lblAntdAvail: TLabel;
    Label9: TLabel;
    lblSundAvail: TLabel;
    lblBillToCaption: TLabel;
    lblBillTo: TLabel;
    Label10: TLabel;
    ilstItems: TImageList;
    qryInvoice: TUniQuery;
    qryFees: TUniQuery;
    qryDisb: TUniQuery;
    qrySund: TUniQuery;
    qryNew: TUniQuery;
    ilstToolbar: TImageList;
    btnFeesRebuild: TBitBtn;
    btnDisbRebuild: TBitBtn;
    btnAntdRebuild: TBitBtn;
    btnSundRebuild: TBitBtn;
    lblDispatchMsg: TLabel;
    qryMatter: TUniQuery;
    Label11: TLabel;
    neDisb: TNumberEdit;
    neFees: TNumberEdit;
    neAntd: TNumberEdit;
    neSund: TNumberEdit;
    qryAntd: TUniQuery;
    btnBillTo: TBitBtn;
    neTrust: TNumberEdit;
    lblLessTrust: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    dtpInterim: TDateTimePicker;
    tmrInterim: TTimer;
    btnBillTemplate: TBitBtn;
    lblBillTemplate: TLabel;
    procBillAddFees: TUniStoredProc;
    procBillAddDisb: TUniStoredProc;
    procBillAddSund: TUniStoredProc;
    procBillAddAntd: TUniStoredProc;
    procBillReverse: TUniStoredProc;
    Label15: TLabel;
    Label16: TLabel;
    lblUnPaidAvail: TLabel;
    neUpCred: TNumberEdit;
    btnUpCredRebuild: TBitBtn;
    procBillAddUpCred: TUniStoredProc;
    qryUpCred: TUniQuery;
    nlTrustAvail: TLabel;
    btnAddTrust: TBitBtn;
    neFeesTax: TNumberEdit;
    neDisbTax: TNumberEdit;
    neAntdTax: TNumberEdit;
    neUpCredTax: TNumberEdit;
    lblGst: TLabel;
    DBText1: TDBText;
    dsMatter: TUniDataSource;
    qryCalcDebtors: TUniQuery;
    lblEntity: TLabel;
    qryFeeInsert: TUniQuery;
    BitBtn1: TBitBtn;
    neSundTaxFree: TNumberEdit;
    neUpCredTaxFree: TNumberEdit;
    neAntdTaxFree: TNumberEdit;
    neDisbTaxFree: TNumberEdit;
    neFeesTaxFree: TNumberEdit;
    Label18: TLabel;
    dxBarManager1: TdxBarManager;
    tbtnPost: TdxBarButton;
    tbtnReverse: TdxBarButton;
    tbtnWord: TdxBarButton;
    dxBarButton5: TdxBarButton;
    tbtnPrint: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    rptSummaryBill: TppReport;
    plPhonebook: TppDBPipeline;
    qryPhonebook: TUniQuery;
    dsPhonebook: TUniDataSource;
    ppMatterBill: TppDBPipeline;
    rgFilter: TcxRadioGroup;
    qryRptFees: TUniQuery;
    qryRptDisb: TUniQuery;
    tbtnDebtorTask: TdxBarButton;
    qryItems: TUniQuery;
    plItems: TppDBPipeline;
    dsItems: TUniDataSource;
    qryInvoiceDraftBill: TUniQuery;
    qryMatterDraftBill: TUniQuery;
    lblDispatched: TcxLabel;
    lblNMemo: TcxLabel;
    qrySubBills: TUniQuery;
    qryAllocSubBill: TUniQuery;
    qryAllocDescription: TUniQuery;
    tvBillItems: TcxGridDBTableView;
    lvBillItems: TcxGridLevel;
    grdBillItems: TcxGrid;
    qryBillItems: TUniQuery;
    dsBillItems: TUniDataSource;
    tvBillItemsCREATED: TcxGridDBColumn;
    tvBillItemsDESCR: TcxGridDBColumn;
    tvBillItemsAMOUNT: TcxGridDBColumn;
    tvBillItemsAUTHOR: TcxGridDBColumn;
    tvBillItemsTAXCODE: TcxGridDBColumn;
    tvBillItemsTAX: TcxGridDBColumn;
    tvBillItemsPRIVATE: TcxGridDBColumn;
    tvBillItemsUNIQUEID: TcxGridDBColumn;
    tvBillItemsPAYEE: TcxGridDBColumn;
    tvBillItemsTYPE: TcxGridDBColumn;
    pmGrid: TdxBarPopupMenu;
    tbtnEdit: TdxBarButton;
    tbtnAddGST: TdxBarButton;
    tbtnPrivate: TdxBarButton;
    tbtnRecalculate: TdxBarButton;
    tbtnNewFee: TdxBarButton;
    tbtnRemove: TdxBarSubItem;
    tbtnRebuildAll: TdxBarButton;
    tbtnRemoveFees: TdxBarButton;
    tbtnRemoveItems: TdxBarButton;
    cxGroupBox1: TcxGroupBox;
    lblTotalGST: TcxLabel;
    lblTotalExGST: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    lblTotalBill: TcxLabel;
    cxLabel1: TcxLabel;
    lblTrust: TcxLabel;
    cxLabel5: TcxLabel;
    tbtnCleargroup: TdxBarButton;
    tbtnRemoveDisbs: TdxBarButton;
    tbtnRemoveCheqReq: TdxBarButton;
    tbtnRemoveUpCred: TdxBarButton;
    tbtnRemoveSundries: TdxBarButton;
    tbtnRemoveAll: TdxBarButton;
    tbtnFilter: TdxBarSubItem;
    tbtnRemoveFilter: TdxBarButton;
    tbtnSelectedMonth: TdxBarButton;
    tbtnShowSummary: TdxBarButton;
    tbtnGroupSort: TdxBarButton;
    tvBillItemsUNITS: TcxGridDBColumn;
    tvBillItemsDEBTOR: TcxGridDBColumn;
    tvBillItemsSCALECOST: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    btnInterimDate: TBitBtn;
    rptDraftBill: TppReport;
    tbtnEditDescription: TdxBarButton;
    tbtnAssignToDebtor: TdxBarSubItem;
    tbtnUnassignDebtor: TdxBarButton;
    procBillAddFee: TUniStoredProc;
    Label8: TLabel;
    dtpExpectedPayment: TDateTimePicker;
    dxBarButton3: TdxBarButton;
    procBillAddFeesOnly: TUniStoredProc;
    plInvoiceDraftBill: TppDBPipeline;
    dsInvoiceDraftBill: TUniDataSource;
    pmForm: TPopupMenu;
    AuthoriseBill1: TMenuItem;
    bbtnExportToExcel: TdxBarButton;
    OpenDialog: TOpenDialog;
    btnUplift25: TdxBarButton;
    btnUplift10: TdxBarButton;
    lblMatter: TcxLabel;
    Label14: TLabel;
    btnAddSundry: TdxBarButton;
    btnAddChequeRequest: TdxBarButton;
    procBillAddSundry: TUniStoredProc;
    procBillAddSundryOnly: TUniStoredProc;
    procBillEditSundPercent: TUniStoredProc;
    btnShowGroupBox: TdxBarButton;
    btnExpand: TdxBarButton;
    procbill_add_disb_percent: TUniStoredProc;
    qryFeeAmount: TUniQuery;
    plSummaryBill: TppDBPipeline;
    dsSummaryBill: TUniDataSource;
    tbtnQuickEdit: TdxBarButton;
    btnMergePrint: TdxBarButton;
    grdBillItemsDBBandedTableView1: TcxGridDBBandedTableView;
    grdBillItemsDBBandedTableView1TYPE: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1CREATED: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1DESCR: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1AMOUNT: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1AUTHOR: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1UNIQUEID: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1TAXCODE: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1TAX: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1PRIVATE: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1PAYEE: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1UNITS: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1TASK: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1UNIQUEID_1: TcxGridDBBandedColumn;
    grdBillItemsDBBandedTableView1Column1: TcxGridDBBandedColumn;
    tvBillItemsInclude: TcxGridDBColumn;
    grpUnprocessed: TGroupBox;
    lblUnProcessedTime: TLabel;
    procUnprocessedTime: TUniStoredProc;
    lblDiscountCaption: TLabel;
    cxLabel2: TcxLabel;
    lblDiscount: TcxLabel;
    ppHeaderBand2: TppHeaderBand;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel19: TppLabel;
    ppDBText8: TppDBText;
    ppLabel20: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine3: TppLine;
    ppLabel31: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppRegion1: TppRegion;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLabel24: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel32: TppLabel;
    ppVariable1: TppVariable;
    ppLabel33: TppLabel;
    ppDBText17: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText11: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel28: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    raCodeModule3: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel11: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLabel13: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppDBText19: TppDBText;
    ppDBText18: TppDBText;
    ppVarTotal: TppVariable;
    rtFees: TppRichText;
    raCodeModule1: TraCodeModule;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppLabel12: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBText21: TppDBText;
    ppDBText20: TppDBText;
    ppVarTotalDisb: TppVariable;
    rtDisbs: TppRichText;
    raCodeModule4: TraCodeModule;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel3: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    raCodeModule2: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppParameter1: TppParameter;
    barbtnRemoveDiscount: TdxBarButton;
    procBillDiscReverse: TUniStoredProc;
    tvBillItems2: TcxGridTableView;
    tvBillItems2Include: TcxGridColumn;
    tvBillItems2CREATED: TcxGridColumn;
    tvBillItems2AUTHOR: TcxGridColumn;
    tvBillItems2PAYEE: TcxGridColumn;
    tvBillItems2DESCR: TcxGridColumn;
    tvBillItems2TAXCODE: TcxGridColumn;
    tvBillItems2UNITS: TcxGridColumn;
    tvBillItems2AMOUNT: TcxGridColumn;
    tvBillItems2TAX: TcxGridColumn;
    tvBillItems2SCALECOST: TcxGridColumn;
    tvBillItems2PRIVATE: TcxGridColumn;
    tvBillItems2DEBTOR: TcxGridColumn;
    tvBillItems2UNIQUEID: TcxGridColumn;
    tvBillItems2TYPE: TcxGridColumn;
    pbSpellCheck: TBitBtn;
    edtDiscountGST: TEdit;
    Label19: TLabel;
    barbtnReassignFees: TdxBarButton;
    qryUpdateFees: TUniQuery;
    qryGetBillTemplate: TUniQuery;
    lblUnitFeesAvail: TLabel;
    procBillAddItemFees: TUniStoredProc;
    qryFeeItems: TUniQuery;
    Label20: TLabel;
    qrySummaryBill: TUniQuery;
    ppRegion2: TppRegion;
    ppLine2: TppLine;
    ppDBText22: TppDBText;
    btnNotes: TBitBtn;
    cbAuthorise: TcxBarEditItem;
    cbPrivate: TcxBarEditItem;
    cbSplitBill: TcxBarEditItem;
    cbAssessed: TcxBarEditItem;
    cbProforma: TcxBarEditItem;
    cbMasterBill: TcxBarEditItem;
    procBillCreate: TUniStoredProc;
    ppDBMemo1: TppDBMemo;
    dxBbtnAddExpTemplate: TdxBarButton;
    bbtnShowSingleLine: TdxBarButton;
    bbtnAdjDisbTotal: TdxBarButton;
    procBillAddSingleDisb: TUniStoredProc;
    neSundTax: TcxCurrencyEdit;
    lblDraftBillCaption: TcxLabel;
    lblTotalFees: TcxLabel;
    lblDisbTotal: TcxLabel;
    lblAntdTotal: TcxLabel;
    lblCredTotal: TcxLabel;
    lblSundTotal: TcxLabel;
    chkUnbilledTransactions: TcxCheckBox;
    sqlUnbilledTransactions: TUniSQL;
    tvBillItemsUNBILLED: TcxGridDBColumn;
    grdBillItemsLevel1: TcxGridLevel;
    tvBillNotes: TcxGridDBTableView;
    qryBillNotes: TUniQuery;
    dsBillNotes: TUniDataSource;
    tvBillNotesCREATED: TcxGridDBColumn;
    tvBillNotesCREATEDBY: TcxGridDBColumn;
    tvBillNotesNOTE: TcxGridDBColumn;
    tvBillNotesROWID: TcxGridDBColumn;
    bbtnBillNotes: TdxBarButton;
    lblRecoveryPct: TcxLabel;
    dsInvoice: TUniDataSource;
    tbtnEditTax: TdxBarButton;
    dxBarBtnCashierNotes: TdxBarButton;
    edtDiscount: TcxTextEdit;
    Label6: TLabel;
    dtpBillDate: TcxDateEdit;
    lblAuthorisedBy: TLabel;
    qryCheqReqReverse: TUniQuery;
    lblCreatedBy: TLabel;
    lblPostedBy: TLabel;
    lblInvoice: TcxTextEdit;
    barbtnTaxcodeList: TdxBarSubItem;
    procedure qryInvoiceAfterScroll(DataSet: TDataSet);
    procedure btnBillToClick(Sender: TObject);
    procedure lvItemsDblClick(Sender: TObject);
    procedure btnFeesRebuildClick(Sender: TObject);
    procedure btnDisbRebuildClick(Sender: TObject);
    procedure btnSundRebuildClick(Sender: TObject);
    procedure btnUpCredRebuildClick(Sender: TObject);
    procedure btnAntdRebuildClick(Sender: TObject);
    procedure DisbRebuild();
    procedure SundRebuild();
    procedure UpCredRebuild();
    procedure tbtnPostClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnPrintClick(Sender: TObject);
    procedure tbtnWordClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure popGridRebuildAllClick(Sender: TObject);
    procedure popGridRemoveAllClick(Sender: TObject);
    procedure tbtnReverseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtpInterimChange(Sender: TObject);
    procedure tmrInterimTimer(Sender: TObject);
    procedure popItemWriteOffClick(Sender: TObject);
    procedure btnBillTemplateClick(Sender: TObject);
    procedure popGridRemoveFeesClick(Sender: TObject);
    procedure popGridRemoveDisbClick(Sender: TObject);
    procedure popGridRemoveAntdClick(Sender: TObject);
    procedure popGridRemoveSundClick(Sender: TObject);
    procedure neFeesExitChanged(Sender: TObject);
    procedure neDisbExitChanged(Sender: TObject);
    procedure neAntdExitChanged(Sender: TObject);
    procedure neSundExitChanged(Sender: TObject);
    procedure neTrustExitChanged(Sender: TObject);
    procedure popGridRemoveUPCredClick(Sender: TObject);
    procedure RebuildData(Sender: TObject);
    procedure neUpCredExitChanged(Sender: TObject);
    procedure btnAddTrustClick(Sender: TObject);
    procedure neFeesTaxChange(Sender: TObject);
    procedure neDisbTaxChange(Sender: TObject);
    procedure neAntdTaxChange(Sender: TObject);
    procedure neUpCredTaxChange(Sender: TObject);
    procedure neSundTax1Change(Sender: TObject);
    procedure nwnfuplift25Click(Sender: TObject);
    procedure popGridRecalculateClick(Sender: TObject);
    procedure rgFilterClick(Sender: TObject);
    procedure miRemoveClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure nwnfuplift10Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure rtFeesPrint(Sender: TObject);
    procedure rtDisbsPrint(Sender: TObject);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
    procedure tbtnDebtorTaskClick(Sender: TObject);
	procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure ppRichText1Print(Sender: TObject);
    procedure ppRichText2Print(Sender: TObject);
    procedure ppDBText11GetText(Sender: TObject; var Text: String);
    procedure ppLabel28GetText(Sender: TObject; var Text: String);
    procedure rptDraftBillPreviewFormCreate(Sender: TObject);
    procedure ppLabel25GetText(Sender: TObject; var Text: String);
    procedure assignToDebtor(Sender : TObject);
    procedure popAddFeeClick(Sender : TObject);
    procedure neFeesKeyUp(
      Sender  : TObject;
      var Key : Word;
      Shift   : TShiftState);
    procedure tbtnEditClick(Sender : TObject);
    procedure tbtnAddGSTClick(Sender : TObject);
    procedure tbtnPrivateClick(Sender : TObject);
    procedure tbtnRecalculateClick(Sender : TObject);
    procedure tbtnNewFeeClick(Sender : TObject);
    procedure tbtnRemoveItemsClick(Sender : TObject);
    procedure tbtnCleargroupClick(Sender : TObject);
    procedure tbtnRemoveDisbsClick(Sender : TObject);
    procedure tbtnRemoveCheqReqClick(Sender : TObject);
    procedure tbtnRemoveUpCredClick(Sender : TObject);
    procedure tbtnRemoveSundriesClick(Sender : TObject);
    procedure tbtnRemoveAllClick(Sender : TObject);
    procedure tbtnRebuildAllClick(Sender : TObject);
    procedure tbtnRemoveFilterClick(Sender : TObject);
    procedure tbtnSelectedMonthClick(Sender : TObject);
    procedure tbtnShowSummaryClick(Sender : TObject);
    procedure pmGridPopup(Sender : TObject);
    procedure tbtnGroupSortClick(Sender : TObject);
    procedure FormDestroy(Sender : TObject);
    procedure btnInterimDateClick(Sender : TObject);
    procedure tbtnUnassignDebtorClick(Sender : TObject);
    procedure tbtnAssignToDebtorPopup(Sender : TObject);
    procedure tbtnEditDescriptionClick(Sender : TObject);
    procedure cxPopupEdit1PropertiesCloseUp(Sender : TObject);
    procedure dxBarButton3Click(Sender : TObject);
    procedure memoNotesKeyUp(
      Sender  : TObject;
      var Key : Word;
      Shift   : TShiftState);
    procedure popNotesKeyUp(
      Sender  : TObject;
      var Key : Word;
      Shift   : TShiftState);
    procedure memoNotesKeyDown(
      Sender  : TObject;
      var Key : Word;
      Shift   : TShiftState);
    procedure popNotesPropertiesPopup(Sender : TObject);
    procedure btnSpellCheckClick(Sender : TObject);
    procedure FormKeyDown(
      Sender  : TObject;
      var Key : Word;
      Shift   : TShiftState);
    procedure AuthoriseBill1Click(Sender : TObject);
    procedure tvBillItemsFocusedRecordChanged(
      Sender                             : TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord : TcxCustomGridRecord;
      ANewItemRecordFocusingChanged      : Boolean);
    procedure lvBillItemsDESCRPropertiesCloseUp(Sender : TObject);
    procedure lvBillItemsDESCRPropertiesPopup(Sender : TObject);
    procedure tvBillItemsEditKeyDown(
      Sender  : TcxCustomGridTableView;
      AItem   : TcxCustomGridTableItem;
      AEdit   : TcxCustomEdit;
      var Key : Word;
      Shift   : TShiftState);
    procedure tvBillItemsMouseDown(
      Sender : TObject;
      Button : TMouseButton;
      Shift  : TShiftState;
      X, Y   : Integer);
    procedure bbtnExportToExcelClick(Sender : TObject);
    procedure btnAddSundryClick(Sender : TObject);
    procedure btnShowGroupBoxClick(Sender : TObject);
    procedure btnExpandClick(Sender : TObject);
    procedure tbtnRemovePopup(Sender : TObject);
    procedure tvBillItemsEditing(
      Sender     : TcxCustomGridTableView;
      AItem      : TcxCustomGridTableItem;
      var AAllow : Boolean);
    procedure tbtnQuickEditClick(Sender : TObject);
    procedure btnMergePrintClick(Sender : TObject);
    procedure edtDiscountKeyPress(
      Sender  : TObject;
      var Key : Char);
    procedure barbtnRemoveDiscountClick(Sender : TObject);
    procedure dtpInterimClick(Sender : TObject);
    procedure tvBillItems1DESCRPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
                                                  var ErrorText: TCaption; var Error: Boolean);
    procedure tvBillItems2InitEdit(Sender : TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure tvBillItemsDESCRPropertiesInitPopup(Sender : TObject);
    procedure tvBillItemsDESCRPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure pbSpellCheckClick(Sender : TObject);
    procedure barbtnReassignFeesClick(Sender : TObject);
    procedure cxRichEdit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNotesClick(Sender : TObject);
    procedure cbSplitBillPropertiesEditValueChanged(Sender : TObject);
    procedure cxBarEditItem1PropertiesEditValueChanged(Sender : TObject);
    procedure cbPrivatePropertiesEditValueChanged(Sender : TObject);
    procedure cbAssessedPropertiesEditValueChanged(Sender : TObject);
    procedure cbMasterBillPropertiesEditValueChanged(Sender : TObject);
    procedure dxBbtnAddExpTemplateClick(Sender : TObject);
    procedure bbtnShowSingleLineClick(Sender : TObject);
    procedure bbtnAdjDisbTotalClick(Sender : TObject);
    procedure chkUnbilledTransactionsClick(Sender : TObject);
    procedure tvBillItemsStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                               AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure bbtnBillNotesClick(Sender : TObject);
    procedure tbtnEditTaxClick(Sender : TObject);
    procedure dxBarBtnCashierNotesClick(Sender : TObject);
    procedure dxChequeRequestClick(Sender : TObject);
    procedure btnAddChequeRequestClick(Sender : TObject);
    procedure ReverseAnticipatedDisbursement(nOldCheqnum: integer);
    procedure edtDiscountPropertiesChange(Sender: TObject);
    procedure barbtnTaxcodeListPopup(Sender: TObject);
    // procedure tbtnRemoveClick(Sender: TObject);
    private
      { Private declarations }
      iTotal, TaxFees, TaxDisb, TaxAntD, TaxUpCred, TaxSund : currency;
      TaxDate : TDateTime;
      InterimDate : TDateTime;
      cTrustBal : currency;
      cProtectedBal : currency;
      cUnconCheqReq : currency;
      DefaultTax : String;
      bDateSort : Boolean;
      sMonth : string;
      bPosting : Boolean;
      FSelectedItems : array of Integer;
      FLastSortColumn : TListColumn;
      FNBill_To : Integer;
      FPopupForm : TCustomForm;
      FLastKey : Word;
      FRowIndex : Integer;
      FForm : TComponent;
      FReturnSelection : TBookmark;
      MatterDefaultTax : string;
      IsBillItem : string;

      FFeeRebuilt : Boolean;
      FDisbsRebuilt : Boolean;
      FCheqReqRebuilt : Boolean;
      FCredRebuilt : Boolean;
      FSundRebuilt : Boolean;
      FLastLiveEdit : TcxCustomEdit;
      dFeesAvail : double;
      bAlterGSTAmount : Boolean;

      function SaveInvoice : Boolean;
      procedure CalcTotal;
      // procedure ShowTax(neType: TNumberEdit; sType: string);

      function HasTrustCheques(inmemo : Integer) : Boolean;

      procedure DoUplift(Sender: TObject; APercentage: Single);
      procedure RestoreSelectedItems;
      procedure SaveSelectedItems;
      function FeeTotals(sSQL : string) : currency;
      procedure SaveColumnData;
      procedure LoadColumnData;
      procedure RemoveByInterimDate;
      procedure DoSpellCheck;
      procedure RemoveFees;
      procedure RemoveDisb;
      procedure RemoveSund;
      procedure RemoveUPCred;
      procedure RemoveAntd;
      procedure RemoveDisbSund;
      procedure ViewAttacheInvoice(AUnique : Integer);
      procedure CalcDiscount;
      procedure DisplayTaxValues;
      procedure ControlEditFields(AState : Boolean);
      procedure CalcDiscountEntry;
      procedure DoAuthorise;
      procedure btnTaxCodeClick(Sender: TObject);
    public
      { Public declarations }
      property OwnerForm : TComponent read FForm write FForm;
      procedure DisplayInvoice(iMemo: Integer; AForm: TComponent = nil; AFromBillGrid: Boolean = False);
      procedure DisplayItems;
  end;

  TItemType = (itFees, itDisb, itAntd, itUpCred, itSund);
  TptrItemData = ^TrecItemData;

  TrecItemData = record
    ItemType : TItemType;
    iUnique : Integer;
    Date : TDate;
  end;

implementation

uses
  GenericSearch,
  MiscFunc,
  NSearch,
  InvPost,
  AxiomData,
  Desktop,
  FeeNew,
  CheqReqNew,
  SundryNew,
  citfunc,
  Matters,
  DebtorTaskNew,
  subBill,
  Bills,
  bill_narration,
  FeeListDataModule,
  FeeEditQuick,
  ShellAPI,
  BillTemplatePrint,
  EditText,
  billfeelist,
  MSearch,
  GenEditor,
  ExpTemplateSelection,
  glComponentUtil,
  DebtorNotes,
  AlterBilledTaxAmount;

{$R *.DFM}

type
  TcxCustomRichEditAccess = class(TcxCustomRichEdit);
  TcxCustomDataProviderAccess = class(TcxCustomDataProvider);

const
  C_BILLITEMSGRID = 'BillItemsGrid';
  C_COLUMNNAME = 'ColumnName';
  C_COLUMNVISIBLE = 'ColumnVisible';
  C_COLUMNSORTORDER = 'ColumnSortOrder';
  C_COLUMNSORTDIRECTION = 'ColumnSortDirection';
  C_COLUMNGROUP = 'ColumnGroup';
  C_COLUMNGROUPORDER = 'ColumnGroupOrder';
  C_COLUMNTOTALTYPE = 'ColumnTotalType';
  C_COLUMNWIDTH = 'ColumnWidth';
  C_COLUMNPOSITION = 'ColumnPosition';

var
  bNoSave : Boolean;
  BillFeeTotal : double;

procedure TfrmInvoice.DisplayInvoice(iMemo: Integer; AForm: TComponent; AFromBillGrid: Boolean);
var
    ABILL_DUE_DAY : Integer;
    AYear, Amonth, ADay, AHour, AMinute, ASeconds, AMilliSeconds : Word;
    Unprocessed, dGstFree, liAmount, RecoveredPct : double;
    lsAuthorList : string;
begin
    if FForm = nil
    then
      FForm := AForm;

    lblDraftBillCaption.Visible := False;
    qryInvoice.AfterScroll := nil;
    qryInvoice.Close;
    qryInvoice.SQL.Text := 'SELECT M.*, M.ROWID FROM NMEMO M WHERE M.NMEMO = ' + IntToStr(iMemo);
    qryInvoice.Open;
    qryInvoice.AfterScroll := qryInvoiceAfterScroll;

    qryGetBillTemplate.Close;
    qryGetBillTemplate.ParamByName('nmatter').AsInteger := qryInvoice.FieldByName('NMATTER').AsInteger;
    qryGetBillTemplate.Open;

    // enable split bills button
    if ((SystemString('ALLOW_SPLIT_BILLS') = 'Y') and (qryInvoice.FieldByName('AUTHOR').AsString = dmAxiom.UserID))  or
       ((SystemString('ALLOW_SPLIT_BILLS') = 'Y') and (qryInvoice.FieldByName('CREATEDBY').AsString = dmAxiom.UserID)) {or
       (dmAxiom.Is_Cashier = 'Y') or (dmAxiom.Is_Credit_Controller = 'Y')} then
    begin
      cbSplitBill.Enabled := true;
    end
    else
    begin
      cbSplitBill.Enabled := False;
    end;

    IsBillItem := 'N';
    if (qryGetBillTemplate.FieldByName('BILLTEMPLATE').AsString <> '') then
    begin
      IsBillItem := qryGetBillTemplate.FieldByName('ITEM_BILL').AsString;
    end;

    if qryInvoice.IsEmpty then
    begin
      MsgErr('No such bill ' + IntToStr(iMemo));
      Self.Close;
      Exit;
    end;
    // Find the Matter for this invoice
    with qryMatter do
    begin
      Close;
      ParamByName('P_Matter').AsInteger := qryInvoice.FieldByName('NMATTER').AsInteger;
      Open;
    end;

    with qryBillNotes do
    begin
      Close;
      ParamByName('NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      Open;
    end;

    // AES 15/05/2013
    // change so that we can use the Tax Basis assigned to the matter at time of billing rather than default.
    MatterDefaultTax := qryMatter.FieldByName('FEE_TAX_BASIS').AsString;
    if (MatterDefaultTax <> '') and (MatterDefaultTax <> DefaultTax) then
      DefaultTax := MatterDefaultTax;

   lblInvoice.Text := qryInvoice.FieldByName('REFNO').AsString;
   lblNMemo.Caption := qryInvoice.FieldByName('NMEMO').AsString;

   // RDW - Added to dispalay Autorised By (if Applicable
   if qryInvoice.FieldByName('AUTHORISED').AsString = 'Y' then
   begin
      lblAuthorisedBy.Caption := 'Authorised By: ' + qryInvoice.FieldByName('AUTHORISED_BY').AsString;
      lblAuthorisedBy.Visible := True;
//      chkEmailCreator.Visible := True;
   end;

   // RDW - Added to display Posted By Information
   if qryInvoice.FieldByName('DISPATCHED_BY').AsString <> '' then
   begin
      lblPostedBy.Caption := 'Posted By: ' + qryInvoice.FieldByName('DISPATCHED_BY').AsString;
      lblPostedBy.Visible := True;
   end;

   lblCreatedBy.Caption := 'Created By: ' + qryInvoice.FieldByName('CREATEDBY').AsString;
//   tvBillItemsInclude.Visible := False;
   // 28/09/2004 TH - Pre-Assign Bill Number updates
   if qryInvoice.FieldByName('IS_DRAFT').AsString = 'Y' then
   begin
//     tvBillItemsInclude.Visible := True;
     lblDraftBillCaption.Visible := True;
     if PreassignBill() then
     begin
       if VarIsNull(qryInvoice.FieldByName('DRAFT_BILL_NO').AsVariant) = True then
       begin
         qryInvoice.Edit;
         qryInvoice.FieldByName('DRAFT_BILL_NO').AsString := NextRefno();
         if SystemInteger('BPAY_CODE_DEFAULT') = 0 then
            qryInvoice.FieldByName('BPAY_REFERENCE').AsString  := CreateBPayReference(qryInvoice.FieldByName('DRAFT_BILL_NO').AsString);
         qryInvoice.Post;
       end;
       lblInvoice.Text := qryInvoice.FieldByName('DRAFT_BILL_NO').AsString;
     end;

      with procUnprocessedTime do
      begin
        ParamByName('matterno').AsInteger := qryInvoice.FieldByName('NMATTER').AsInteger;
        Execute;
        Unprocessed := ParamByName('RESULT').AsCurrency;
        if (Unprocessed > 0) then
        begin
          with dmAxiom.qryTmp do
          begin
            Close;
            SQL.Text := 'SELECT NVL(SUM (amount), 0) as amount, author FROM feetmp ' +
              'WHERE nmatter = :matterno AND nfee IS NULL AND billtype = ''Billable'' GROUP BY author';
            ParamByName('matterno').AsInteger := qryInvoice.FieldByName('NMATTER').AsInteger;
            Open;
            while not Eof do
            begin
              if lsAuthorList <> '' then
                lsAuthorList := lsAuthorList + chr(13);
              lsAuthorList := lsAuthorList + FieldByName('author').AsString + ' - ' + CurrToStrF(FieldByName('amount').AsCurrency, ffCurrency, 2);
              Next;
            end;
            Close;
          end;

          grpUnprocessed.Visible := true;
          lblUnProcessedTime.Caption := 'There is a total of ' + CurrToStrF(Unprocessed, ffCurrency, 2) +
            ' of Time transactions that have not been processed and will not be billed this time. ' +
            'If you would like to bill these Time transactions, please go to the TimeSheet and ' + 'process the transactions.' + chr(13) + lsAuthorList;
        end;
      end;
    end;

    if (qryInvoice.FieldByName('INTERIM').AsDateTime = 0) then
    begin
      // chkInterim.Checked := False;
      // dtpInterim.Enabled := False;
      dtpInterim.Checked := False;
      btnInterimDate.Enabled := dtpInterim.Checked;
    end
    else
    begin
      dtpInterim.Checked := true;
      dtpInterim.Date := qryInvoice.FieldByName('INTERIM').AsDateTime;
      TaxDate := qryInvoice.FieldByName('INTERIM').AsDateTime;
      btnInterimDate.Enabled := dtpInterim.Checked;
    end;
    tmrInterim.Enabled := False;

    if ((qryInvoice.FieldByName('BILL_DATE').AsDateTime = NullDate) or (trunc(qryInvoice.FieldByName('BILL_DATE').AsDateTime) = StrToDate('30/12/1899'))) then
    begin
      if qryInvoice.FieldByName('DISPATCHED').IsNull then
        dtpBillDate.Date := Now
      else if qryInvoice.FieldByName('DISPATCHED').AsDateTime <> NullDate then
        dtpBillDate.Date := qryInvoice.FieldByName('DISPATCHED').AsDateTime;
    end
    ELSE
      dtpBillDate.Date := qryInvoice.FieldByName('BILL_DATE').AsDateTime;

    FNBill_To := qryInvoice.FieldByName('NBILL_TO').AsInteger;
    lblBillTo.Caption := qryInvoice.FieldByName('BILL_TO').AsString;
    lblBillTemplate.Caption := qryInvoice.FieldByName('BILLTEMPLATE').AsString;
    // tbNote.Text := qryInvoice.FieldByName('INV_NOTE').AsString;
    if qryInvoice.FieldByName('EXPPAYMENT').IsNull then
    begin
      ABILL_DUE_DAY := TableInteger('MATTER', 'NMATTER', qryInvoice.FieldByName('NMATTER').AsInteger, 'BILL_DUE_DAY');
      if (ABILL_DUE_DAY > 0) then
      begin
        DecodeDateTime(Now, AYear, Amonth, ADay, AHour, AMinute, ASeconds, AMilliSeconds);
        if (Amonth + 1) = 13 then
        begin
          Amonth := 1;
          AYear := AYear + 1;
        end
        else
          Amonth := Amonth + 1;
        try
          dtpExpectedPayment.DateTime := EncodeDateTime(AYear, Amonth, ABILL_DUE_DAY, AHour, AMinute, ASeconds, AMilliSeconds);
        except
          //
        end;
      end
      else
        dtpExpectedPayment.DateTime := Now + SystemInteger('DR_PAYMENT_DAYS');
    end
    else
      dtpExpectedPayment.Date := qryInvoice.FieldByName('EXPPAYMENT').AsDateTime;

    // memoNotes.Text := qryInvoice.FieldByName('INV_NOTE').AsString;
    // popNotes.Text := qryInvoice.FieldByName('INV_NOTE').AsString;
    neFees.AsCurrency := qryInvoice.FieldByName('FEES').AsCurrency;
    neFeesTax.AsCurrency := qryInvoice.FieldByName('FEESTAX').AsCurrency;
    neFeesTaxFree.AsCurrency := qryInvoice.FieldByName('FEESTAXFREE').AsCurrency;
    neDisb.AsCurrency := qryInvoice.FieldByName('DISB').AsCurrency;
    neDisbTax.AsCurrency := qryInvoice.FieldByName('DISBTax').AsCurrency;
    neDisbTaxFree.AsCurrency := qryInvoice.FieldByName('DISBTAXFREE').AsCurrency;
    neSund.AsCurrency := qryInvoice.FieldByName('SUND').AsCurrency;
    neSundTax.Value := qryInvoice.FieldByName('SUNDTAX').AsFloat;
    neSundTaxFree.AsCurrency := qryInvoice.FieldByName('SUNDTAXFREE').AsCurrency;
    neUpCred.AsCurrency := qryInvoice.FieldByName('UPCRED').AsCurrency;
    neUpCredTax.AsCurrency := qryInvoice.FieldByName('UPCREDTAX').AsCurrency;
    neUpCredTaxFree.AsCurrency := qryInvoice.FieldByName('UPCREDTAXFREE').AsCurrency;
    neTrust.AsCurrency := qryInvoice.FieldByName('TRUST').AsCurrency;
    neAntd.AsCurrency := qryInvoice.FieldByName('ANTD').AsCurrency;
    neAntdTaxFree.AsCurrency := qryInvoice.FieldByName('ANTDTAXFREE').AsCurrency;
    cbAuthorise.EditValue := (qryInvoice.FieldByName('AUTHORISED').AsString = 'Y');
    cbPrivate.EditValue := (qryInvoice.FieldByName('PRIVATE').AsString = 'Y');

    cbSplitBill.EditValue := (qryInvoice.FieldByName('SPLIT_BILL').AsString = 'Y');
    if Boolean(cbSplitBill.EditValue)
    then
      lblBillToCaption.Caption := 'Debtors'
    else
      lblBillToCaption.Caption := '&Bill to';

    cbAssessed.EditValue := (qryInvoice.FieldByName('ASSESSED_BILL').AsString = 'Y');
    lblMatter.Caption := qryInvoice.FieldByName('FILEID').AsString;
    cbProforma.EditValue := (qryInvoice.FieldByName('PROFORMA').AsString = 'Y');
    edtDiscount.Text := qryInvoice.FieldByName('discount').AsString;
    edtDiscountGST.Text := qryInvoice.FieldByName('discount_gst').AsString;
    cbMasterBill.Properties.OnEditValueChanged := nil;
    cbMasterBill.EditValue := (qryInvoice.FieldByName('MASTER_BILL').AsString = 'Y');
    cbMasterBill.Properties.OnEditValueChanged := cbMasterBillPropertiesEditValueChanged;

    if (qryInvoice.FieldByName('IS_DRAFT').AsString = 'N') and (Boolean(cbAssessed.EditValue) = False)
    then
      Self.PopupMenu := pmForm;

    if neTrust.AsCurrency > 0
    then
      btnAddTrust.Caption := 'Remove Trust';

    {
      The withholding tax has two tax amounts, that is, -48.5% and 10%.
      Both taxes must be taken into account when posting a bill.

      BJ  07/11/2002

    }
    if (HasWithholdingTaxForSelectedItem) then
    begin
      liAmount := qryInvoice.FieldByName('ANTD').AsCurrency;
      neAntdTax.AsCurrency := TaxCalc(liAmount, 'BILL', 'WHOLD', Now);
    end
    else
      neAntdTax.AsCurrency := qryInvoice.FieldByName('ANTDTAX').AsCurrency;

    barbtnRemoveDiscount.Enabled := dmAxiom.Security.Bill.Discount.Remove and (qryInvoice.FieldByName('IS_DRAFT').AsString = 'N') and
      (qryInvoice.FieldByName('DISCOUNT').AsCurrency <> 0);

    if qryInvoice.FieldByName('DISPATCHED').AsString <> '' then
    begin
      if ((qryInvoice.FieldByName('RV_TYPE').AsString = 'N') or (qryInvoice.FieldByName('RV_TYPE').AsString = 'D')) and
        (qryInvoice.FieldByName('TAKE_ON').AsString = 'N') then
      begin
        if ((qryInvoice.FieldByName('FEES_PAID').AsCurrency + qryInvoice.FieldByName('DISB_PAID').AsCurrency +
            qryInvoice.FieldByName('SUND_PAID').AsCurrency) = 0) { and
          not HasTrustCheques(qryInvoice.FieldByName('NMEMO').AsInteger) } then
        begin
          tbtnReverse.Enabled := dmAxiom.Security.Bill.Reverse;
          barbtnRemoveDiscount.Enabled := dmAxiom.Security.Bill.Discount.Remove and (qryInvoice.FieldByName('IS_DRAFT').AsString = 'N') and
            (qryInvoice.FieldByName('DISCOUNT').AsCurrency <> 0);
        end
        else
        begin
          tbtnReverse.Enabled := False;
          barbtnRemoveDiscount.Enabled := False;
        end
      end
      else
      begin
        tbtnReverse.Enabled := False;
        barbtnRemoveDiscount.Enabled := False;
      end;

      // tbtnReverse.Enabled := AllowBillReverse(qryInvoice.FieldByName('NMEMO').AsInteger);

      neFees.Enabled := False;
      neFeesTaxFree.Enabled := False;
      neDisb.Enabled := False;
      neDisbTaxFree.Enabled := False;
      neUpCred.Enabled := False;
      neUpCredTaxFree.Enabled := False;
      neAntd.Enabled := False;
      neAntdTaxFree.Enabled := False;
      neSund.Enabled := False;
      neSundTaxFree.Enabled := False;
      neFeesTax.Enabled := False;
      neDisbTax.Enabled := False;
      neUpCredTax.Enabled := False;
      neAntdTax.Enabled := False;
      neSundTax.Enabled := False;
      neTrust.Enabled := False;
      tbtnPost.Enabled := False;
      cbAssessed.Enabled := False;
      { popGridRemove.Enabled := False;
        popGridRemoveFees.Enabled := False;
        popGridRemoveDisb.Enabled := False;
        popGridRemoveAntd.Enabled := False;
        popGridRemoveUpCred.Enabled := False;
        popGridRemoveSund.Enabled := False;
        popGridRemoveAll.Enabled := False;
        popGridRebuildAll.Enabled := False; }
      btnFeesRebuild.Enabled := False;
      btnDisbRebuild.Enabled := False;
      btnAntdRebuild.Enabled := False;
      btnSundRebuild.Enabled := False;
      btnUpCredRebuild.Enabled := False;
      btnAddTrust.Enabled := False;
      // dtpInterim.Enabled := False;
      btnBillTo.Enabled := dmAxiom.Security.Bill.ChangeBillTo;
      lblDispatchMsg.Visible := true;
      lblDispatched.Caption := Formatdatetime('dd/mm/yyyy', qryInvoice.FieldByName('DISPATCHED').AsDateTime);
      lblDispatched.Visible := true;
      cbAuthorise.Enabled := False;
      cbSplitBill.Enabled := False;
      lblFeesAvail.Visible := False;
      lblDisbAvail.Visible := False;
      lblAntdAvail.Visible := False;
      lblUnPaidAvail.Visible := False;
      lblSundAvail.Visible := False;
      btnInterimDate.Enabled := False;
      dtpInterim.Enabled := False;
      edtDiscount.Enabled := False;
      edtDiscountGST.Enabled := False;
      cbMasterBill.Enabled := False;
      dtpInterim.Enabled := False;
      cbPrivate.Enabled := False;
      lblInvoice.Enabled := False;
      dtpExpectedPayment.Enabled := false;
    end
    else
    begin
      // pb- removed "not"

      // rb Look at latter
      neFees.Enabled := dmAxiom.Security.Bill.LockAmounts.ChangeFees;
      neFeesTaxFree.Enabled := False;
      neFeesTax.Enabled := dmAxiom.Security.Bill.LockTaxAmounts.ChangeFeesTax;

      neDisb.Enabled := dmAxiom.Security.Bill.LockAmounts.ChangeDisbursments;
      neDisbTaxFree.Enabled := False;
      neDisbTax.Enabled := dmAxiom.Security.Bill.LockTaxAmounts.ChangeDisbursmentsTax;

      neAntd.Enabled := dmAxiom.Security.Bill.LockAmounts.ChangeChequeReq;
      neAntdTaxFree.Enabled := False;
      neAntdTax.Enabled := dmAxiom.Security.Bill.LockTaxAmounts.ChangeChequeReqTax;

      neSund.Enabled := dmAxiom.Security.Bill.LockAmounts.ChangeSundrys;
      neSundTaxFree.Enabled := False;
      neSundTax.Enabled := dmAxiom.Security.Bill.LockTaxAmounts.ChangeSundrysTax;

      neUpCred.Enabled := dmAxiom.Security.Bill.LockAmounts.ChangeUnpaidCreditors;
      neUpCredTaxFree.Enabled := False;
      neUpCredTax.Enabled := dmAxiom.Security.Bill.LockTaxAmounts.ChangeUnpaidCreditorsTax;

      neTrust.Enabled := dmAxiom.Security.Bill.LockAmounts.ChangeTrust and dmAxiom.Security.Bill.Post and dmAxiom.Security.Bill.TrustTransfer;
      neTrust.Enabled := dmAxiom.Security.Bill.LockAmounts.ChangeTrust and dmAxiom.Security.Bill.TrustTransfer;

      tbtnReverse.Enabled := False;
      { popGridRemove.Enabled := True;
        popGridRemoveAll.Enabled := True;
        popGridRebuildAll.Enabled := True; }
      btnDisbRebuild.Enabled := true;
      btnAntdRebuild.Enabled := true;
      btnSundRebuild.Enabled := true;
      btnUpCredRebuild.Enabled := true;
      btnAddTrust.Enabled := dmAxiom.Security.Bill.TrustTransfer;
      btnBillTo.Enabled := true;
      lblDispatchMsg.Visible := False;
      lblDispatched.Visible := False;

      lblFeesAvail.Visible := true;
      lblDisbAvail.Visible := true;
      lblAntdAvail.Visible := true;
      lblUnPaidAvail.Visible := true;
      lblSundAvail.Visible := true;
      dtpInterim.Enabled := true;
      // btnInterimDate.Enabled := dtpInterim.Checked;
      cbAuthorise.Enabled := CanAuthoriseBills(dmAxiom.UserID, qryInvoice.FieldByName('NMATTER').AsInteger) and
        (qryInvoice.FieldByName('PRIVATE').AsString = 'N');
      cbPrivate.Enabled := ((dmAxiom.UserID = qryInvoice.FieldByName('AUTHOR').AsString) Or (dmAxiom.UserID = qryInvoice.FieldByName('CREATEDBY').AsString)) and
        (qryInvoice.FieldByName('AUTHORISED').AsString = 'N') and (qryInvoice.FieldByName('dispatched').IsNull);

      tbtnPost.Enabled := dmAxiom.Security.Bill.Post;

      lblInvoice.Enabled := True;
      dtpExpectedPayment.Enabled := True;

{      tbtnPost.Enabled := ((qryInvoice.FieldByName('PRIVATE').AsString = 'N') and (qryInvoice.FieldByName('AUTHORISED').AsString = 'Y') and
                          (dmAxiom.Security.Bill.Post) and (dmAxiom.Is_Cashier = 'Y'))
}
    end;

    if (IsBillItem = '') and (qryInvoice.FieldByName('billtemplate').IsNull)
    then
    begin
      with dmAxiom.qryTmp do
      begin
        Close;
        SQL.Text := 'SELECT code, NVL (item_bill, ''N'') as sitembill ' + 'FROM billtemplate ' + 'WHERE defaultbill = ''Y'' ';
        Open;
        IsBillItem := FieldByName('sitembill').AsString;
        Close;
      end;
    end
    else
      IsBillItem := TableString('BILLTEMPLATE', 'CODE', qryInvoice.FieldByName('billtemplate').AsString, 'ITEM_BILL');
    // AES 23/3/2018
    DisplayItems;

    // Fees Available
    qryNew.Close;
    if Boolean(cbMasterBill.EditValue)
    then
    begin
      { qryNew.SQL.Text := 'SELECT SUM(AMOUNT) AS TOT FROM FEE WHERE NMATTER = ' +
        IntToStr(qryInvoice.fieldByName('NMATTER').AsInteger) +
        ' AND ((NMEMO is null AND FEE.BILLED = ''N'' AND FEE.BILLTYPE = ''Billable'') '+
        ' OR (NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))'; }

      qryNew.SQL.Text := 'SELECT SUM (amount) AS TOT FROM (SELECT NVL (amount, 0) AS amount ' +
        ' FROM fee WHERE nmatter IN (SELECT nmatter FROM matterassoc, matter ' + ' WHERE mainmatter = ' + QuotedStr(qryInvoice.FieldByName('FILEID').AsString) +
        ' AND assocmatter = fileid) ' + ' AND ((nmemo IS NULL OR nmemo = 0) AND billed = ''N'' AND TYPE = ''N'' AND billtype = ''Billable'' ' + ' OR (NMEMO = '
        + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))' + ' UNION ALL ' + ' SELECT NVL (amount, 0) AS amount FROM fee WHERE nmatter = ' +
        qryInvoice.FieldByName('NMATTER').AsString + ' AND ((nmemo IS NULL OR nmemo = 0) AND billed = ''N'' AND TYPE = ''N'' AND billtype = ''Billable'' ' +
        ' OR (NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + ')))';
    end
    else
    begin
      if (IsBillItem = 'N')
      then
      begin
        qryNew.SQL.Text := 'SELECT SUM(AMOUNT) AS TOT, 0 as Unit_Total FROM FEE WHERE NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger) +
          ' AND ((NMEMO is null AND FEE.BILLED = ''N'' AND TYPE = ''N'' AND FEE.BILLTYPE = ''Billable'') ' + ' OR (NMEMO = ' +
          IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))';
      end
      else
      begin
        qryNew.SQL.Text := 'SELECT * FROM ' + '(SELECT SUM(amount) AS TOT FROM FEE WHERE NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger) +
          ' AND ((NMEMO is null AND FEE.BILLED = ''N'' AND TYPE = ''N'' AND FEE.BILLTYPE = ''Billable'') ' + ' OR (NMEMO = ' +
          IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))),' + '(SELECT SUM(task_AMOUNT) as Unit_Total FROM FEE WHERE NMATTER = ' +
          IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger) +
          ' AND ((NMEMO is null AND FEE.BILLED = ''N'' AND TYPE = ''N'' AND FEE.BILLTYPE = ''Billable'') ' + ' OR (NMEMO = ' +
          IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + ')))';
      end;
    end;
    qryNew.Open;
    lblUnitFeesAvail.Caption := '';
    lblUnitFeesAvail.Visible := False;
    if not qryNew.IsEmpty
    then
    begin
      lblFeesAvail.Caption := Format('%10.2f', [qryNew.FieldByName('TOT').AsCurrency]);
      dFeesAvail := qryNew.FieldByName('TOT').AsCurrency;
      if (IsBillItem = 'Y')
      then
      begin
        lblUnitFeesAvail.Caption := Format('%10.2f', [qryNew.FieldByName('UNIT_TOTAL').AsCurrency]);
        lblUnitFeesAvail.Visible := true;
      end;
    end
    else
    begin
      lblFeesAvail.Caption := '0.00';
      dFeesAvail := 0;
    end;
    if (dFeesAvail > 0) and (qryInvoice.FieldByName('IS_DRAFT').AsString = 'Y')
    then
    begin
      RecoveredPct := (neFees.AsDouble / dFeesAvail) * 100;
      lblRecoveryPct.Caption := 'Recovered %: ' + FloatToStrF(RecoveredPct, ffNumber, 5, 2);
    end;

    // Disbursements Available
    qryNew.Close;
    qryNew.SQL.Clear;
    {
      qryNew.SQL.Add('SELECT SUM(AMOUNT) AS TOT');
      qryNew.SQL.Add('FROM ALLOC');
      qryNew.SQL.Add('WHERE NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger));
      qryNew.SQL.Add('  AND ((NMEMO is null AND NINVOICE IS NULL AND BILLED = ''N'' AND TRUST <> ''T'' AND (NCHEQUE > 0 OR TYPE = ''J2'' OR TYPE = ''DR''))');
      qryNew.SQL.Add('  OR (NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + ' AND NRECEIPT = 0)' + ')');
    }
    qryNew.SQL.Add('SELECT SUM(AMOUNT) AS TOT');
    qryNew.SQL.Add('FROM ALLOC');
    qryNew.SQL.Add('WHERE NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger));
    // qryNew.SQL.Add('AND ((BILLED = ''N'' AND TRUST <> ''T'' AND (NCHEQUE > 0 OR TYPE = ''J2'' OR TYPE = ''DR'')) OR (NRECEIPT = 0 AND NMEMO =' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) +'))');
    qryNew.SQL.Add('AND ((BILLED = ''N'' AND TRUST <> ''T'' AND (NCHEQUE > 0 OR TYPE = ''J2'' OR TYPE = ''DR'')) OR (NMEMO =' +
      IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))');
    qryNew.SQL.Add('AND NINVOICE IS NULL');
    qryNew.Open;
    if not qryNew.IsEmpty
    then
      lblDisbAvail.Caption := Format('%10.2f', [0 - qryNew.FieldByName('TOT').AsCurrency])
    else
      lblDisbAvail.Caption := '0.00';

    // Unpaid Creditors Available
    qryNew.Close;
    qryNew.SQL.Clear;
    qryNew.SQL.Add('SELECT SUM(AMOUNT) AS TOT');
    qryNew.SQL.Add('FROM ALLOC');
    qryNew.SQL.Add('WHERE NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger));
    qryNew.SQL.Add('AND NINVOICE IS NOT NULL AND (((NMEMO is null OR NMEMO = 0) AND ');
    qryNew.SQL.Add('BILLED = ''N'' AND TRUST <> ''T'') OR (NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))');
    {
      qryNew.Close;
      qryNew.SQL.Clear;
      qryNew.SQL.Add('SELECT SUM(AMOUNT) AS TOT');
      qryNew.SQL.Add('FROM ALLOC');
      qryNew.SQL.Add('WHERE NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger));
      qryNew.SQL.Add('  AND ((NMEMO is null AND BILLED = ''N'' AND TRUST <> ''T'' AND NINVOICE IS NOT NULL)');
      qryNew.SQL.Add('  OR (NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) +'))');
    }
    qryNew.Open;
    if not qryNew.IsEmpty
    then
      lblUnPaidAvail.Caption := Format('%10.2f', [0 - qryNew.FieldByName('TOT').AsCurrency])
    else
      lblUnPaidAvail.Caption := '0.00';
    // Anticipated Disbursements (CheqReqs) Available
    qryNew.Close;
    qryNew.SQL.Text := 'SELECT SUM(AMOUNT) AS TOT FROM CHEQREQ WHERE NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString +
    // QuotedStr(TableString('MATTER', 'NMATTER', qryInvoice.FieldByName('NMATTER').AsInteger, 'FILEID')) +
      ' AND ((NMEMO is null AND BILLED = ''N'' AND TRUST <> ''T'') OR ' + ' (NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))' +
      ' AND REV_NCHEQREQ is null AND AMOUNT > 0 /*And ANTICIPATED = ''Y''*/ ';
    qryNew.Open;
    if not qryNew.IsEmpty
    then
      lblAntdAvail.Caption := Format('%10.2f', [qryNew.FieldByName('TOT').AsCurrency])
    else
      lblAntdAvail.Caption := '0.00';
    // Sundries Available
    qryNew.Close;
    qryNew.SQL.Text := 'SELECT SUM(AMOUNT) AS TOT FROM SUNDRY WHERE NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger) +
      ' AND ((NMEMO is null AND BILLED = ''N'') OR (NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))';
    qryNew.Open;
    if not qryNew.IsEmpty
    then
      lblSundAvail.Caption := Format('%10.2f', [qryNew.FieldByName('TOT').AsCurrency])
    else
      lblSundAvail.Caption := '0.00';
    // cTrustBal := TableCurrency('MATTER', 'FILEID', qryInvoice.FieldByName('FILEID').AsString, 'CL_TRUST_BAL');
    // commented by AES using
    // cTrustBal := ClearTrust(qryInvoice.FieldByName('FILEID').AsString);
    cTrustBal := ClearTrustFromStoredProc(qryInvoice.FieldByName('FILEID').AsString);
    cProtectedBal := ProtectedTrust(qryInvoice.FieldByName('FILEID').AsString);
    with dmAxiom.qryTmp do
    begin
      SQL.Clear;
      SQL.Text := 'select getTrustUnconCheqReqAmount(' + qryInvoice.FieldByName('NMATTER').AsString + ') as unconcheqreq from dual';
      ExecSQL;
      cUnconCheqReq := FieldByName('unconcheqreq').AsCurrency;
    end;
    // nlTrustAvail.Caption := Format('%10.2f', [cTrustBal - cProtectedBal - cUnconCheqReq]);
    nlTrustAvail.Caption := Format('%10.2f', [cTrustBal - cUnconCheqReq]);
    // AES 10/6/2005
    // trust should be clear less protected
    // if (cTrustBal - cProtectedBal) <= 0 then
    // neTrust.Enabled := False;

    if ((cTrustBal) <= 0) and (SystemString('EDIT_BILL_TRUST') = 'Y') AND (qryInvoice.FieldByName('IS_DRAFT').AsString = 'Y')
    then
      neTrust.Enabled := False;

    if qryInvoice.FieldByName('DISPATCHED').IsNull
    then
    begin
      if ((neFeesTax.AsCurrency = 0.0) or FFeeRebuilt)
      then
      begin
        neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, iMemo, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxFees := neFeesTax.AsCurrency;
        neFeesTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 0] := Format('%m', [neFeesTax.AsCurrency]);
        lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);
        FFeeRebuilt := False;
      end;
      if ((neDisbTax.AsCurrency = 0.0) or FDisbsRebuilt)
      then
      begin
        neDisbTax.AsCurrency := ShowTax(neDisb.AsCurrency, dGstFree, 'ALLOC', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, iMemo, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxDisb := neDisbTax.AsCurrency;
        neDisbTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 1] := Format('%m', [neDisbTax.AsCurrency]);
        lblDisbTotal.Caption := Format('%10.2f', [neDisbTax.AsCurrency]);
        FDisbsRebuilt := False;
      end;
      if ((neAntdTax.AsCurrency = 0.0) or FCheqReqRebuilt)
      then
      begin
        neAntdTax.AsCurrency := ShowTax(neAntd.AsCurrency, dGstFree, 'CHEQREQ', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, iMemo, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxAntD := neAntdTax.AsCurrency;
        neAntdTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 2] := Format('%m', [neAntdTax.AsCurrency]);
        lblAntdTotal.Caption := Format('%10.2f', [neAntdTax.AsCurrency]);
        FCheqReqRebuilt := False;
      end;
      if ((neUpCredTax.AsCurrency = 0.0) or FCredRebuilt)
      then
      begin
        neUpCredTax.AsCurrency := ShowTax(neUpCred.AsCurrency, dGstFree, 'UPCRED', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, iMemo, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxUpCred := neUpCredTax.AsCurrency;
        neUpCredTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 3] := Format('%m', [neUpCredTax.AsCurrency]);
        lblCredTotal.Caption := Format('%10.2f', [neUpCredTax.AsCurrency]);
        FCredRebuilt := False;
      end;
      if ((neSundTax.Value = 0.0) or FSundRebuilt)
      then
      begin
        neSundTax.Value := ShowTax(neSund.AsCurrency, dGstFree, 'SUNDRY', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, iMemo, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxSund := neSundTax.Value;
        neSundTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 4] := Format('%m', [neSundTax.Value]);
        lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);
        FSundRebuilt := False;
      end;
      CalcTotal;
    end;

    // pb- rebuild all items

    // enable the debtor task button
    tbtnDebtorTask.Enabled := (qryInvoice.FieldByName('IS_DRAFT').AsString = 'N') AND (SystemString('collections_mgr_reg') = C_COLLECTIONSPASSWORD);
    // If (dmAxiom.Is_Cashier = 'Y') and (qryInvoice.FieldByName('DISPATCHED').AsString = '')  then
    If (qryInvoice.FieldByName('DISPATCHED').AsString = '')
    then
      ControlEditFields(true)
    Else
      ControlEditFields(False);

    Self.Show;
end;

procedure TfrmInvoice.CalcTotal;
  begin
    {
      sgrTotals.Cells[0, 5] := Format('%m', [TaxFees + TaxDisb + TaxSund]);
      sgrTotals.Cells[1, 0] := Format('%m', [neFees.AsCurrency + TaxFees]);
      sgrTotals.Cells[1, 1] := Format('%m', [neDisb.AsCurrency + TaxDisb]);
      sgrTotals.Cells[1, 2] := Format('%m', [neAntd.AsCurrency + TaxAntD]);
      sgrTotals.Cells[1, 3] := Format('%m', [neSund.AsCurrency + TaxSund]);
      sgrTotals.Cells[1, 4] := Format('%m', [0 - neTrust.AsCurrency]);
      sgrTotals.Cells[1, 5] := Format('%m', [neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency + neSund.AsCurrency - neTrust.AsCurrency]);
      sgrTotals.Cells[1, 6] := Format('%m', [neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency + neSund.AsCurrency - neTrust.AsCurrency + TaxFees + TaxDisb + TaxAntD + TaxSund]);
    }

    // sgrTotals.Cells[0, 6] := Format('%m', [TaxFees + TaxDisb + TaxSund + TaxAntD + TaxUpCred]);
    lblTotalGST.Caption := Format('%10.2f', [TaxFees + TaxDisb + TaxSund + TaxAntD + TaxUpCred]);

    // sgrTotals.Cells[0, 0] := Format('%m', [neFees.AsCurrency + TaxFees]);
    lblTotalFees.Caption := Format('%10.2f', [neFees.AsCurrency + TaxFees]);

    // sgrTotals.Cells[0, 1] := Format('%m', [neDisb.AsCurrency + TaxDisb]);
    lblDisbTotal.Caption := Format('%10.2f', [neDisb.AsCurrency + TaxDisb]);

    // sgrTotals.Cells[0, 2] := Format('%m', [neAntd.AsCurrency + TaxAntD]);
    lblAntdTotal.Caption := Format('%10.2f', [neAntd.AsCurrency + TaxAntD]);

    // sgrTotals.Cells[0, 3] := Format('%10.2f', [neUpCred.AsCurrency + TaxUpCred]);
    lblCredTotal.Caption := Format('%10.2f', [neUpCred.AsCurrency + TaxUpCred]);

    // sgrTotals.Cells[0, 4] := Format('%10.2f', [neSund.AsCurrency + TaxSund]);
    lblSundTotal.Caption := Format('%10.2f', [neSund.AsCurrency + TaxSund]);

    // sgrTotals.Cells[1, 0] := Format('%10.2f', [neFees.AsCurrency + neFeesTaxFree.AsCurrency + TaxFees]);
    // sgrTotals.Cells[1, 1] := Format('%10.2f', [neDisb.AsCurrency + neDisbTaxFree.AsCurrency + TaxDisb]);
    // sgrTotals.Cells[1, 2] := Format('%10.2f', [neAntd.AsCurrency + neAntdTaxFree.AsCurrency + TaxAntD]);
    // sgrTotals.Cells[1, 3] := Format('%10.2f', [neUpCred.AsCurrency + neUpCredTaxFree.AsCurrency + TaxUpCred]);
    // sgrTotals.Cells[1, 4] := Format('%10.2f', [neSund.AsCurrency + neSundTaxFree.AsCurrency + TaxSund]);

    // 10/05/2004 Tony
    // The respective fees, disb, etc already contains the tax free amount
    // so the total doesnt require the taxfree to be added to it
    { sgrTotals.Cells[0, 6] := Format('%10.2f', [neFees.AsCurrency +
      neDisb.AsCurrency +
      neAntd.AsCurrency +
      neUpCred.AsCurrency +
      neSund.AsCurrency]);
      {
      neFeesTaxFree.AsCurrency +
      neDisbTaxFree.AsCurrency +
      neAntdTaxFree.AsCurrency +
      neUpCredTaxFree.AsCurrency +
      neSundTaxFree.AsCurrency]);
    }
    lblTotalExGST.Caption := Format('%10.2f', [neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency + neUpCred.AsCurrency + neSund.AsCurrency]);

    lblTrust.Caption := Format('%10.2f', [neTrust.AsCurrency * - 1]);

    // sgrTotals.Cells[0, 7] := Format('%10.2f', [neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency + neUpCred.AsCurrency + neSund.AsCurrency - neTrust.AsCurrency + TaxFees + TaxDisb + TaxAntD + TaxUpCred + TaxSund]);

    if (neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency + neUpCred.AsCurrency + neSund.AsCurrency - neTrust.AsCurrency + TaxFees + TaxDisb + TaxAntD +
      TaxUpCred + TaxSund) > 0
    then
      lblTotalBill.Style.Font.Color := clBlue
    else
      lblTotalBill.Style.Font.Color := clRed;
    lblTotalBill.Caption := Format('%10.2f', [neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency + neUpCred.AsCurrency +
      neSund.AsCurrency { + neFeesTaxFree.AsCurrency + neDisbTaxFree.AsCurrency +
        neAntdTaxFree.AsCurrency + neUpCredTaxFree.AsCurrency +
        neSundTaxFree.AsCurrency } - neTrust.AsCurrency + TaxFees + TaxDisb + TaxAntD + TaxUpCred + TaxSund + qryInvoice.FieldByName('discount').AsCurrency]);
    iTotal := neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency + neUpCred.AsCurrency +
      neSund.AsCurrency { + neFeesTaxFree.AsCurrency + neDisbTaxFree.AsCurrency +
      neAntdTaxFree.AsCurrency + neUpCredTaxFree.AsCurrency + neSundTaxFree.AsCurrency } - neTrust.AsCurrency + TaxFees + TaxDisb + TaxAntD + TaxUpCred +
      TaxSund + qryInvoice.FieldByName('discount').AsCurrency;
    lblDiscount.Caption := Format('%10.2f', [qryInvoice.FieldByName('discount').AsCurrency]);
  end;

procedure TfrmInvoice.qryInvoiceAfterScroll(DataSet : TDataSet);
  begin
    DisplayItems;
  end;

procedure TfrmInvoice.DisplayItems;

    procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
      begin
        try
          tvBillItems.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
        except

        end;
      end;

var
    {
      Modified 25.10.2002 GG
      Removed compiler hint
    }
    newListItem { ,selitem } : TListItem;
    ptrData : TptrItemData;
    iSelected, icount, I, NumRecords : Integer;
begin
    // Defer drawing ListView until EndUpdate
    // lvItems.Items.BeginUpdate;
    iSelected := 0;
    // for icount := 0 to lvItems.items.count-1 do
    // begin
    // if lvItems.items[icount].Selected then
    // iSelected := icount;
    // end;

    // lvItems.Items.Clear;

    qryBillItems.Close;
    qryBillItems.SQL.Clear;
    if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 1))
    then
    begin
      if IsBillItem = 'N'
      then
      begin
        qryBillItems.SQL.Text := qryFees.SQL.Text;
        // if dtpInterim.Checked then
        // qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and trunc(created) <= :interimdate ';
        if sMonth <> ''
        then
        begin
          qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and to_date(created,''mm/yyyy'') = to_date(''' + sMonth + ''',''mm/yyyy'') ';
        end;
      end
      else
      begin
        qryBillItems.SQL.Text := qryFeeItems.SQL.Text;
        if sMonth <> ''
        then
        begin
          qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and to_date(created,''mm/yyyy'') = to_date(''' + sMonth + ''',''mm/yyyy'') ';
        end;
      end;
    end;

    if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 2))
    then
    //
    // All or disbursements
    //
    begin
      if qryBillItems.SQL.Text <> ''
      then
        qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' union all ';
      qryBillItems.SQL.Text := qryBillItems.SQL.Text + qryDisb.SQL.Text;
      // if dtpInterim.Checked then
      // qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and trunc(created) <= :interimdate ';
      if sMonth <> ''
      then
      begin
        qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and to_date(created,''mm/yyyy'') = to_date(''' + sMonth + ''',''mm/yyyy'') ';
      end;
    end;

    if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 4))
    then
    //
    // All or unpaid creditors.
    //
    begin
      if qryBillItems.SQL.Text <> ''
      then
        qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' union all ';
      qryBillItems.SQL.Text := qryBillItems.SQL.Text + qryUpCred.SQL.Text;
      // if dtpInterim.Checked then
      // qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and trunc(created) <= :interimdate ';
      if sMonth <> ''
      then
      begin
        qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and to_date(created,''mm/yyyy'') = to_date(''' + sMonth + ''',''mm/yyyy'') ';
      end;
    end;

    if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 3))
    then
    begin
      if qryBillItems.SQL.Text <> ''
      then
        qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' union all ';
      qryBillItems.SQL.Text := qryBillItems.SQL.Text + qryAntd.SQL.Text;
      // if dtpInterim.Checked then
      // qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and trunc(reqdate) <= :interimdate ';
      if sMonth <> ''
      then
      begin
        qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and to_date(reqdate,''mm/yyyy'') = to_date(''' + sMonth + ''',''mm/yyyy'') ';
      end;
    end;

    if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 5))
    then
    begin
      if qryBillItems.SQL.Text <> ''
      then
        qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' union all ';
      qryBillItems.SQL.Text := qryBillItems.SQL.Text + qrySund.SQL.Text;
      // if dtpInterim.Checked then
      // qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and trunc(created) <= :interimdate ';
      if sMonth <> ''
      then
      begin
        qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' and to_date(created,''mm/yyyy'') = to_date(''' + sMonth + ''',''mm/yyyy'') ';
      end;
    end;

    // Add the fees to the list
    // qryFees.Close;
    // qryFees.ParamByName('P_Matter').AsInteger := qryInvoice.FieldbyName('NMATTER').AsInteger;
    // qryFees.ParamByName('P_Invoice').AsInteger := qryInvoice.FieldbyName('NMEMO').AsInteger;
    // qryFees.Open;

    // Add all Fees to the Desktop
    { while not qryFees.EOF do
      begin
      if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 1)) and ((sMonth = '') or (sMonth = FormatDateTime('mm/yyyy', qryFees.FieldByName('CREATED').AsDateTime))) then
      begin
      newListItem := lvItems.Items.Add;
      newListItem.ImageIndex := IMG_FEES;
      //newListItem.Checked := (qryFees.FieldByName('PRIVATE').AsString = 'Y');
      newListItem.Caption := FormatDateTime('ddddd', qryFees.FieldByName('CREATED').AsDateTime);
      newListItem.SubItems.Add(qryFees.FieldByName('AUTHOR').AsString);
      newListItem.SubItems.Add('');
      newListItem.SubItems.Add(qryFees.FieldByName('DESCR').AsString);
      newListItem.SubItems.Add(qryFees.FieldByName('TAXCODE').AsString);
      newListItem.SubItems.Add(Format('%10.2f', [qryFees.FieldByName('AMOUNT').AsCurrency]));
      newListItem.SubItems.Add(Format('%10.2f', [qryFees.FieldByName('TAX').AsCurrency]));
      New(ptrData);
      ptrData.ItemType := itFees;
      ptrData.iUnique := qryFees.FieldByName('NFEE').AsInteger;
      ptrData.Date    := qryFees.FieldByName('CREATED').AsDateTime;
      newListItem.Data := ptrData;
      end;

      qryFees.Next;
      end; }

    // qryDisb.close;
    // qryDisb.ParamByName('P_Matter').AsInteger := qryInvoice.FieldbyName('NMATTER').AsInteger;
    // qryDisb.ParamByName('P_Invoice').AsInteger := qryInvoice.FieldbyName('NMEMO').AsInteger;
    // qryDisb.Open;

    // Add all Disbursements to the Desktop
    { while not qryDisb.EOF do
      begin
      if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 2)) and ((sMonth = '') or (sMonth = FormatDateTime('mm/yyyy', qryDisb.FieldByName('CREATED').AsDateTime))) then
      begin
      newListItem := lvItems.Items.Add;
      newListItem.ImageIndex := IMG_DISB;
      newListItem.Caption := FormatDateTime('ddddd', qryDisb.FieldByName('CREATED').AsDateTime);
      newListItem.SubItems.Add(qryDisb.FieldByName('REFNO').AsString);
      newListItem.SubItems.Add(qryDisb.FieldByName('PAYER').AsString);
      newListItem.SubItems.Add(qryDisb.FieldByName('DESCR').AsString);
      newListItem.SubItems.Add(qryDisb.FieldByName('TAXCODE').AsString);
      newListItem.SubItems.Add(Format('%10.2f', [0 - qryDisb.FieldByName('AMOUNT').AsCurrency]));
      newListItem.SubItems.Add(Format('%10.2f', [0 - qryDisb.FieldByName('TAX').AsCurrency]));
      newListItem.SubItems.Add(qryDisb.FieldByName('DEBTOR_NAME').AsString);
      New(ptrData);
      ptrData.ItemType := itDisb;
      ptrData.iUnique := qryDisb.FieldByName('NALLOC').AsInteger;
      ptrData.Date    := qryDisb.FieldByName('CREATED').AsDateTime;
      newListItem.Data := ptrData;
      end;
      qryDisb.Next;
      end; }

    // qryAntd.close;
    // qryAntD.ParamByName('P_Matter').AsInteger := qryInvoice.FieldbyName('NMATTER').AsInteger;
    // qryAntd.ParamByName('P_Invoice').AsInteger := qryInvoice.FieldbyName('NMEMO').AsInteger;
    // qryAntd.Open;
    // Add all Anticipated Disbursements (CheqReqs) to the Desktop
    { while not qryAntd.EOF do
      begin
      if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 4)) and ((sMonth = '') or (sMonth = FormatDateTime('mm/yyyy', qryAntd.FieldByName('REQDATE').AsDateTime))) then
      begin
      newListItem := lvItems.Items.Add;
      newListItem.ImageIndex := IMG_ANTD;
      newListItem.Caption := FormatDateTime('ddddd', qryAntd.FieldByName('REQDATE').AsDateTime);
      newListItem.SubItems.Add(qryAntd.FieldByName('AUTHOR').AsString);
      newListItem.SubItems.Add(qryAntd.FieldByName('PAYEE').AsString);
      newListItem.SubItems.Add(qryAntd.FieldByName('DESCR').AsString);
      //    newListItem.SubItems.Add('');
      newListItem.SubItems.Add(qryAntd.FieldByName('TAXCODE').AsString);
      newListItem.SubItems.Add(Format('%10.2f', [qryAntd.FieldByName('AMOUNT').AsCurrency]));
      newListItem.SubItems.Add(Format('%10.2f', [qryAntd.FieldByName('TAX').AsCurrency]));
      New(ptrData);
      ptrData.ItemType := itAntd;
      ptrData.iUnique := qryAntd.FieldByName('NCHEQREQ').AsInteger;
      ptrData.Date    := qryAntd.FieldByName('REQDATE').AsDateTime;
      newListItem.Data := ptrData;
      end;

      qryAntd.Next;
      end; }

    // qryUpCred.close;
    // qryUpCred.ParamByName('P_Matter').AsInteger := qryInvoice.FieldbyName('NMATTER').AsInteger;
    // qryUpCred.ParamByName('P_Invoice').AsInteger := qryInvoice.FieldbyName('NMEMO').AsInteger;
    // qryUpCred.Open;

    { // Add all UnPaid Creditors to the Desktop
      while not qryUpCred.EOF do
      begin
      if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 5)) and ((sMonth = '') or (sMonth = FormatDateTime('mm/yyyy', qryUpCred.FieldByName('CREATED').AsDateTime))) then
      begin
      newListItem := lvItems.Items.Add;
      newListItem.ImageIndex := IMG_UPCRED;
      newListItem.Caption := FormatDateTime('ddddd', qryUpCred.FieldByName('CREATED').AsDateTime);
      newListItem.SubItems.Add(qryUpCred.FieldByName('REFNO').AsString);
      newListItem.SubItems.Add(qryUpCred.FieldByName('PAYER').AsString);
      newListItem.SubItems.Add(qryUpCred.FieldByName('DESCR').AsString);
      newListItem.SubItems.Add(qryUpCred.FieldByName('TAXCODE').AsString);
      newListItem.SubItems.Add(Format('%10.2f', [0 - qryUpCred.FieldByName('AMOUNT').AsCurrency]));
      newListItem.SubItems.Add(Format('%10.2f', [0 - qryUpCred.FieldByName('TAX').AsCurrency]));
      New(ptrData);
      ptrData.ItemType := itUpCred;
      ptrData.iUnique := qryUpCred.FieldByName('NALLOC').AsInteger;
      ptrData.Date    := qryUpCred.FieldByName('CREATED').AsDateTime;
      newListItem.Data := ptrData;
      end;
      qryUpCred.Next;
      end; }

    // qrySund.close;
    // qrySund.ParamByName('P_Matter').AsInteger := qryInvoice.FieldbyName('NMATTER').AsInteger;
    // qrySund.ParamByName('P_Invoice').AsInteger := qryInvoice.FieldbyName('NMEMO').AsInteger;
    // qrySund.Open;

    { // Add all Sundries to the Desktop
      while not qrySund.EOF do
      begin
      if ((rgFilter.ItemIndex = 0) or (rgFilter.ItemIndex = 3)) and ((sMonth = '') or (sMonth = FormatDateTime('mm/yyyy', qrySund.FieldByName('CREATED').AsDateTime))) then
      begin
      newListItem := lvItems.Items.Add;
      newListItem.ImageIndex := IMG_SUND;
      newListItem.Caption := FormatDateTime('ddddd', qrySund.FieldByName('CREATED').AsDateTime);
      newListItem.SubItems.Add(qrySund.FieldByName('TYPE').AsString);
      newListItem.SubItems.Add('');
      newListItem.SubItems.Add(qrySund.FieldByName('DESCR').AsString);
      newListItem.SubItems.Add(qrySund.FieldByName('TAXCODE').AsString);
      newListItem.SubItems.Add(Format('%10.2f', [qrySund.FieldByName('AMOUNT').AsCurrency]));
      newListItem.SubItems.Add(Format('%10.2f', [qrySund.FieldByName('TAX').AsCurrency]));
      New(ptrData);
      ptrData.ItemType := itSund;
      ptrData.iUnique := qrySund.FieldByName('NSUNDRY').AsInteger;
      ptrData.Date    := qrySund.FieldByName('CREATED').AsDateTime;
      newListItem.Data := ptrData;
      end;

      qrySund.Next;
      end; }

    // try
    // qryBillItems.ParamByName('p_matter').AsInteger := qryInvoice.FieldbyName('NMATTER').AsInteger;
    // except
    // error
    // end;
    qryBillItems.ParamByName('P_Invoice').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    // if dtpInterim.Checked then
    // qryBillItems.ParamByName('interimdate').AsDate := InterimDate;

    if (chkUnbilledTransactions.Visible = true) and (chkUnbilledTransactions.Checked = true)
    then
    begin
      qryBillItems.SQL.Text := qryBillItems.SQL.Text + ' union ' + sqlUnbilledTransactions.SQL.Text + ' order by 15';
      qryBillItems.ParamByName('p_matter').AsInteger := qryInvoice.FieldByName('NMATTER').AsInteger;
    end;

    if dmAxiom.runningide
    then
      qryBillItems.SQL.SaveToFile('c:\tmp\billitems.sql');
    qryBillItems.Open;

    {
      I := 0;
      tvBillItems.BeginUpdate;
      if tvBillItems1.DataController.RecordCount > 0 then
      begin
      for NumRecords := tvBillItems1.DataController.RecordCount - 1 downto 0 do
      tvBillItems1.DataController.DeleteRecord(0);
      end;

      try
      while not qryBillItems.EOF do
      begin
      tvBillItems1.DataController.AppendRecord;
      begin
      SetRecordValue(I, tvBillItems1CREATED.Index, qryBillItems.FieldByName('CREATED').AsDateTime);
      SetRecordValue(I, tvBillItems1AUTHOR.Index, qryBillItems.FieldByName('AUTHOR').AsString);
      SetRecordValue(I, tvBillItems1PAYEE.Index, qryBillItems.FieldByName('PAYEE').AsString);
      SetRecordValue(I, tvBillItems1DESCR.Index, qryBillItems.FieldByName('DESCR').AsString);
      SetRecordValue(I, tvBillItems1TAXCODE.Index, qryBillItems.FieldByName('TAXCODE').AsString);
      SetRecordValue(I, tvBillItems1UNITS.Index, qryBillItems.FieldByName('UNITS').AsFloat);
      SetRecordValue(I, tvBillItems1AMOUNT.Index, qryBillItems.FieldByName('AMOUNT').AsCurrency);
      SetRecordValue(I, tvBillItems1TAX.Index, qryBillItems.FieldByName('TAX').AsCurrency);
      SetRecordValue(I, tvBillItems1SCALECOST.Index, qryBillItems.FieldByName('TASK').AsString);
      SetRecordValue(I, tvBillItems1PRIVATE.Index, qryBillItems.FieldByName('PRIVATE').AsString);
      SetRecordValue(I, tvBillItems1UNIQUEID.Index,qryBillItems.FieldByName('UNIQUEID').AsInteger);
      SetRecordValue(I, tvBillItemsTYPE.Index, qryBillItems.FieldByName('TYPE').AsInteger);
      end;
      Inc(I);
      qryBillItems.Next;
      end;

      finally
      tvBillItems1.EndUpdate;
      end;
    }
end;

procedure TfrmInvoice.btnBillToClick(Sender : TObject);
  var
    subBill : TfrmSubBill;
    iResult : Integer;
  begin
    if (Boolean(cbSplitBill.EditValue) = true)
    then
    begin
      try
        subBill := TfrmSubBill.create(Self);
        subBill.displaySubBill(qryInvoice.FieldByName('NMEMO').AsInteger, StrToCurr(lblTotalBill.Caption));

        iResult := subBill.ShowModal;

        if iResult = mrOK
        then
        begin
          if qryInvoice.state = dsBrowse
          then
            qryInvoice.Edit;
          qryInvoice.FieldByName('BILL_TO').AsString := 'Multiple Debtors for this bill';
          lblBillTo.Caption := qryInvoice.FieldByName('BILL_TO').AsString;

          if SystemString('ALLOW_SPLIT_BILLS') = 'Y'
          then
            dmAxiom.upDateSubBills(qryInvoice.FieldByName('NMEMO').AsInteger);
        end;
      finally
        subBill.Free;
      end;
      Exit;
    end;

    if not FormExists(frmPhoneBookSearch)
    then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
    if frmPhoneBookSearch.ShowModal = mrOK
    then
    begin
      if (qryInvoice.state <> dsEdit)
      then
        qryInvoice.Edit;
      lblBillTo.Caption := frmPhoneBookSearch.qryPhonebook.FieldByName('SEARCH').AsString;
      qryInvoice.FieldByName('BILL_TO').AsString := lblBillTo.Caption;
      FNBill_To := frmPhoneBookSearch.qryPhonebook.FieldByName('NNAME').AsInteger;
      qryInvoice.FieldByName('NBILL_TO').AsInteger := FNBill_To;
    end;
  end;

procedure TfrmInvoice.lvItemsDblClick(Sender : TObject);
  begin
    if qryInvoice.FieldByName('DISPATCHED').AsString = ''
    then
      tbtnEdit.Click;
  end;

procedure TfrmInvoice.btnFeesRebuildClick(Sender : TObject);
  begin
    procBillAddFees.ParamByName('p_CREATED').Clear;
    procBillAddItemFees.ParamByName('p_CREATED').Clear;
    popGridRemoveFeesClick(Sender);
    SaveInvoice;

    with dmAxiom.qryTmp do
    begin
      Close;
      SQL.Text := 'update nmemo set spell_chk_done = ''N'' where nmemo = ' + qryInvoice.FieldByName('NMEMO').AsString;
      Execute;
    end;

    if (IsBillItem = 'N')
    then
    begin
      procBillAddFees.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddFees.ParamByName('p_master').AsInteger := 0;
      if Boolean(cbMasterBill.EditValue)
      then
        procBillAddFees.ParamByName('p_master').AsInteger := 1;
      if dtpInterim.Checked
      then
        procBillAddFees.ParamByName('p_CREATED').AsDate := dtpInterim.Date;
      procBillAddFees.Execute;
    end
    else
    begin
      procBillAddItemFees.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddItemFees.ParamByName('p_master').AsInteger := 0;
      if Boolean(cbMasterBill.EditValue)
      then
        procBillAddItemFees.ParamByName('p_master').AsInteger := 1;
      if dtpInterim.Checked
      then
        procBillAddItemFees.ParamByName('p_CREATED').AsDate := dtpInterim.Date;
      procBillAddItemFees.Execute;
    end;
    FFeeRebuilt := true;
    DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);
  end;

procedure TfrmInvoice.btnDisbRebuildClick(Sender : TObject);
  begin
    // procedure definition called
    { CREATE OR REPLACE PROCEDURE BILL_ADD_DISB
      (P_NMEMO IN Number
      )
      IS
      -- Purpose: Adds any unbilled disbursements to the Bill.
      -- Updates the DISB field for the adjustment.
      --
      -- MODIFICATION HISTORY
      -- Person      Date    Comments
      -- ---------   ------  -------------------------------------------
      -- BJ         23/04/03 Modified variables from (8,2) to (10,2).
      nAddDisb           Number(10,2);
      iNMatter           Number(10,0);
      -- PL/SQL Block
      BEGIN
      -- Use the Matter number as we have an index on it
      SELECT NMATTER INTO iNMatter FROM NMEMO WHERE NMEMO = p_NMemo;
      SELECT SUM(0-AMOUNT) INTO nAddDisb FROM ALLOC WHERE NMATTER = iNMatter AND NINVOICE IS NULL AND NMEMO is null AND BILLED = 'N' AND TRUST <> 'T' AND TYPE <> 'RF' AND (NCHEQUE > 0 OR TYPE = 'J2' OR TYPE = 'DR');
      UPDATE ALLOC SET NMEMO = p_NMemo WHERE NMATTER = iNMatter AND NMEMO is null AND NINVOICE IS NULL AND BILLED = 'N' AND TRUST <> 'T' AND TYPE <> 'RF' AND (NCHEQUE > 0 OR TYPE = 'J2' OR TYPE = 'DR');
      UPDATE NMEMO SET DISB = DISB+nAddDisb WHERE NMEMO = p_NMemo;
      EXCEPTION
      WHEN OTHERS THEN
      RAISE;
      END; -- Procedure BILL_ADD_DISB }
      popGridRemoveDisbClick(Sender);
      DisbRebuild;
  end;

procedure TfrmInvoice.btnSundRebuildClick(Sender : TObject);
  begin
    popGridRemoveSundClick(Sender);
    SundRebuild();
  end;

procedure TfrmInvoice.tbtnPostClick(Sender : TObject);
  begin

    if (IsValidBillForMatter(qryInvoice.FieldByName('FILEID').AsString, qryInvoice.FieldByName('BANK_ACCT').AsString) = true)
    then
    begin
      qrySubBills.Close;
      qrySubBills.ParamByName('NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      qrySubBills.Open;

      if qrySubBills.Eof and (Boolean(cbSplitBill.EditValue) = true)
      then
      begin
        qrySubBills.Close;
        MsgErr('No debtors selected');
        Exit;
      end;

      if (not qrySubBills.Eof) and (Boolean(cbSplitBill.EditValue) = False)
      then
      begin
        qrySubBills.Close;
        MsgErr('This bill has subbills, but the subbills option is not selected');
        Exit;
      end;

      qrySubBills.Close;

      // try
      if SaveInvoice
      then
      begin
        try
          try
            // calc the debtors field here, used in word docs
            qryCalcDebtors.Close;
            qryCalcDebtors.ParamByName('NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
            qryCalcDebtors.ExecSQL;
            qryCalcDebtors.Close;

            // InvoiceMerge(qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('NMATTER').AsInteger, True);
          finally
            if FForm <> nil
            then
            begin
              with TfrmInvPost.create(FForm) do
              begin
                RefreshBillGrid := False;
                DisplayInvoice(Self.qryInvoice.FieldByName('NMEMO').AsInteger);
              end;
            end
            else
            begin
              with TfrmInvPost.create(Owner) do
              begin
                RefreshBillGrid := False;
                DisplayInvoice(Self.qryInvoice.FieldByName('NMEMO').AsInteger);
              end;
            end;
            qryInvoice.Close;
            qryMatter.Close;
            bPosting := true
          end;
        finally
          Self.Close;
        end;
      end;
    end
    else
    begin
      Screen.Cursor := crDefault;
      MsgErr('This BILL does not have the same entity as the matter.' + chr(13) + 'You will need to delete this bill and create it under the correct entity.' +
        chr(13) + 'The transaction cannot be applied');
    end;
  end;

function TfrmInvoice.SaveInvoice : Boolean;
var
    CalculatedFeesTax, nFee, dGstFree : currency;
    bFeeTaxCorrect : Boolean;
    sBillNoTest: integer;
begin
   bFeeTaxCorrect := true;
   if not bNoSave then
   begin
      try
         if not qryInvoice.Modified then
            qryInvoice.Edit;

         qryFeeAmount.Close;
         qryFeeAmount.ParamByName('nmatter').AsInteger := StrToInt(MatterString(qryInvoice.FieldByName('FILEID').AsString, 'NMATTER'));
         qryFeeAmount.ParamByName('nmemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
         qryFeeAmount.Open;

         nFee := qryFeeAmount.FieldByName('TAXABLE_AMOUNT').AsCurrency;
         dGstFree := qryFeeAmount.FieldByName('AMOUNT').AsCurrency - qryFeeAmount.FieldByName('TAXABLE_AMOUNT').AsCurrency;

         nFee := neFees.AsCurrency - neFeesTaxFree.AsCurrency;
        { if neFees.AsCurrency <> 0 then
          begin
          if (neFees.AsCurrency < nFee) then
          nFee := neFees.AsCurrency
          else
          if (nFee > neFees.AsCurrency) then
          nFee := neFees.AsCurrency - nFee;
          end; }
         if nFee <> 0 then
         begin
            if MatterString(qryInvoice.FieldByName('FILEID').AsString, 'FEE_TAX_BASIS') <> '' then
               CalculatedFeesTax := TaxCalc(nFee, 'BILL', MatterString(qryInvoice.FieldByName('FILEID').AsString, 'FEE_TAX_BASIS'), TaxDate)
            else
               CalculatedFeesTax := TaxCalc(nFee, 'BILL', 'GST', Now);

            if ((CalculatedFeesTax + 0.01) < neFeesTax.AsCurrency) and (qryInvoice.FieldByName('DISPATCHED').AsString = '') and (neFees.AsCurrency <> 0.00) then
            begin
               if MsgAsk('GST amount does not match the actual taxable amount.' + chr(13) + 'Would you like to continue?') = mrNO then
                  bFeeTaxCorrect := False;
            end;
         end;
         if bFeeTaxCorrect then
            if qryInvoice.FieldByName('DISPATCHED').IsNull then
            begin
            //
            // Bill not yet finalised.
            //
            // Save the accounting stuff
               qryInvoice.FieldByName('BANK_ACCT').AsString := dmAxiom.Entity;
               qryInvoice.FieldByName('FEES').AsCurrency := neFees.AsCurrency;
            // qryInvoice.FieldByName('FEESTAX').AsCurrency := neFeesTax.AsCurrency;
               qryInvoice.FieldByName('DISB').AsCurrency := neDisb.AsCurrency;
               qryInvoice.FieldByName('ANTD').AsCurrency := neAntd.AsCurrency;
               qryInvoice.FieldByName('UPCRED').AsCurrency := neUpCred.AsCurrency;
               qryInvoice.FieldByName('SUND').AsCurrency := neSund.AsCurrency;

               qryInvoice.FieldByName('FEESTAX').AsCurrency := TaxFees;
               qryInvoice.FieldByName('DISBTAX').AsCurrency := TaxDisb;
               qryInvoice.FieldByName('ANTDTAX').AsCurrency := TaxAntD;
               qryInvoice.FieldByName('UPCREDTAX').AsCurrency := TaxUpCred;
               qryInvoice.FieldByName('SUNDTAX').AsCurrency := TaxSund;

               qryInvoice.FieldByName('FEESTAXFREE').AsCurrency := neFeesTaxFree.AsCurrency;
               qryInvoice.FieldByName('DISBTAXFREE').AsCurrency := neDisbTaxFree.AsCurrency;
               qryInvoice.FieldByName('ANTDTAXFREE').AsCurrency := neAntdTaxFree.AsCurrency;
               qryInvoice.FieldByName('UPCREDTAXFREE').AsCurrency := neUpCredTaxFree.AsCurrency;
               qryInvoice.FieldByName('SUNDTAXFREE').AsCurrency := neSundTaxFree.AsCurrency;

               qryInvoice.FieldByName('TAX').AsCurrency := TaxFees + TaxSund + TaxDisb + TaxAntD + TaxUpCred;

               qryInvoice.FieldByName('TRUST').AsCurrency := neTrust.AsCurrency;
               qryInvoice.FieldByName('DEBTORS').AsCurrency := TableCurrency('MATTER', 'FILEID', qryInvoice.FieldByName('FILEID').AsString, 'DEBTORS');

               if not dtpInterim.Checked then
                  qryInvoice.FieldByName('INTERIM').Value := Null
               else
                  qryInvoice.FieldByName('INTERIM').AsDateTime := trunc(dtpInterim.DateTime);

               qryInvoice.FieldByName('NBILL_TO').AsInteger := FNBill_To;
               qryInvoice.FieldByName('BILL_TO').AsString := lblBillTo.Caption;
               qryInvoice.FieldByName('DISCOUNT_GST').AsCurrency := StrToCurr(edtDiscountGST.Text);
            end;

            qryInvoice.FieldByName('BILLTEMPLATE').AsString := lblBillTemplate.Caption;
        // qryInvoice.FieldByName('INV_NOTE').AsString := tbNote.Text;
        // qryInvoice.FieldByName('INV_NOTE').AsString := memoNotes.Text;
            qryInvoice.FieldByName('EXPPAYMENT').AsDateTime := trunc(dtpExpectedPayment.DateTime);

            qryInvoice.FieldByName('AUTHORISED').AsString := 'N';
            if qryInvoice.FieldByName('DISPATCHED').IsNull then
               qryInvoice.FieldByName('IS_DRAFT').AsString := 'Y';
            if Boolean(cbAuthorise.EditValue) then
            begin
               qryInvoice.FieldByName('AUTHORISED').AsString := 'Y';
               if qryInvoice.FieldByName('DISPATCHED').IsNull then
                  qryInvoice.FieldByName('REFNO').AsString := SystemString('AUTH_BILL_REF');
            end;

            qryInvoice.FieldByName('PRIVATE').AsString := 'N';
            if Boolean(cbPrivate.EditValue) then
               qryInvoice.FieldByName('PRIVATE').AsString := 'Y';

            qryInvoice.FieldByName('SPLIT_BILL').AsString := 'N';
            if Boolean(cbSplitBill.EditValue) then
               qryInvoice.FieldByName('SPLIT_BILL').AsString := 'Y';

            qryInvoice.FieldByName('ASSESSED_BILL').AsString := 'N';
            if Boolean(cbAssessed.EditValue) then
               qryInvoice.FieldByName('ASSESSED_BILL').AsString := 'Y';

            qryInvoice.FieldByName('PROFORMA').AsString := 'N';
            if Boolean(cbProforma.EditValue) then
               qryInvoice.FieldByName('PROFORMA').AsString := 'Y';

            qryInvoice.FieldByName('MASTER_BILL').AsString := 'N';
            if Boolean(cbMasterBill.EditValue) then
               qryInvoice.FieldByName('MASTER_BILL').AsString := 'Y';

            qryInvoice.FieldByName('BILL_DATE').AsDateTime := dtpBillDate.Date;

            qryInvoice.FieldByName('REFNO').AsString := lblInvoice.Text;
            if TryStrToInt(lblInvoice.Text, sBillNoTest) then
               qryInvoice.FieldByName('DRAFT_BILL_NO').AsString := lblInvoice.Text;

        { if edtDiscount.text <> '' then
          begin
          if (edtDiscount.Text = '0') then
          qryInvoice.FieldByName('DISCOUNT').AsCurrency := 0;

          if pos('%', edtDiscount.text) > 0 then
          begin
          qryInvoice.FieldByName('DISCOUNT').AsCurrency :=
          (neFees.AsCurrency - (neFees.AsCurrency * strtoint(copy(edtDiscount.Text,1,length(edtDiscount.Text)-1 ))/100))*-1;
          end
          else
          begin
          try
          if StrToFloat(edtDiscount.Text) > 0 then
          qryInvoice.FieldByName('DISCOUNT').AsCurrency := StrToFloat(edtDiscount.Text) * -1
          else
          qryInvoice.FieldByName('DISCOUNT').AsCurrency := StrToFloat(edtDiscount.Text);
          except
          //
          end;
          end;
          end; }

         qryInvoice.Post;

        // post the sub bills
         if (SystemString('ALLOW_SPLIT_BILLS') = 'Y') and (qryInvoice.FieldByName('SPLIT_BILL').AsString = 'Y') then
            dmAxiom.upDateSubBills(qryInvoice.FieldByName('NMEMO').AsInteger);

        // qryInvoice.ApplyUpdates;
      except
         bNoSave := true;
      end;
   end;
   Result := bFeeTaxCorrect;
end;

procedure TfrmInvoice.FormClose(Sender: TObject; var Action : TCloseAction);
var
   bClose : Boolean;
begin
   bClose := true;
   if qryInvoice.Active then
   begin
      if not SaveInvoice then
      begin
        Action := caNone;
        bPosting := False;
        bClose := False;
      end;
   end;

   if bClose then
   begin
      qryFees.Close;
      qryInvoice.Close;
      qryDisb.Close;
      qryAntd.Close;
      qryNew.Close;
      qrySund.Close;
      qryUpCred.Close;
      qryMatter.Close;
      if FReturnSelection <> nil then
        qryBillItems.FreeBookmark(FReturnSelection);
      // if dmAxiom.DictionaryInstalled then
      // dmAxiom.AddictLiveSpell.RemoveControl(memoNotes);

      SettingSaveStream(dmAxiom.UserID, 'tvBillItems Layout', tvBillItems);
      {
        Code Modified 22.11.02 GG

        Refresh the frmMatter details on exiting this form if the owner is an instance
        of TfrmMatter.
      }
      if bPosting then
        // don't refresh yet
        bPosting := False
      else if (FForm is TfrmMatters) then
        (FForm as TfrmMatters).DisplayMatter((FForm as TfrmMatters).qryMatter.FieldByName('FILEID').AsString);

      // if Owner is TfrmMatters then
      // (Owner as TfrmMatters).DisplayMatter((Owner as TfrmMatters).qryMatter.FieldByName('FILEID').AsString);
      if (Owner is TfrmBills) then
        (Owner as TfrmBills).MakeSQL();
      FreeAndNil(Self);
    end;
  end;

procedure TfrmInvoice.tbtnPrintClick(Sender : TObject);
begin
   SaveInvoice;
    // with TfrmInvoicePrint.Create(Self) do
    // PrintInvoice(Self.qryInvoice.FieldByName('NMEMO').AsInteger, True);
   if SystemString('draft_bill_default') = '' then
   begin
      qryPhonebook.Close;
      qryPhonebook.ParamByName('SEARCH').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
      qryPhonebook.Open;
      with qryInvoiceDraftBill do
      begin
        Close;
        ParamByName('NMEMO').AsInteger := Self.qryInvoice.FieldByName('NMEMO').AsInteger;
        Open;
      end;

      if (qryInvoiceDraftBill.IsEmpty = False) then
      begin
        with qryItems do
        begin
          Close;
          ParamByName('NMATTER').AsInteger := qryInvoiceDraftBill.FieldByName('NMATTER').AsInteger;
          ParamByName('FILEID').AsString := qryInvoice.FieldByName('FILEID').AsString;
          ParamByName('NMEMO').AsInteger := Self.qryInvoice.FieldByName('NMEMO').AsInteger;
          Open;
        end;

        with qryMatterDraftBill do
        begin
          Close;
          ParamByName('FILEID').AsString := qryInvoiceDraftBill.FieldByName('FILEID').AsString;
          Open;
        end;

        if not qryMatterDraftBill.IsEmpty then
          with qryPhonebook do
          begin
            Close;
            ParamByName('SEARCH').AsInteger := Self.qryInvoice.FieldByName('NBILL_TO').AsInteger; // qryMatterDraftBill.FieldByName('BILL_TO').AsString;
            Open;
          end;
      end;
      rptDraftBill.Print;
    end
    else
    begin
      if (not Assigned(dmBillTemplate)) then
        dmBillTemplate := TdmBillTemplate.create(Application);

      dmBillTemplate.InvoiceCreate.Clear;
      dmBillTemplate.InvoiceCreate.Add(IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger));
      dmBillTemplate.InvoiceCreate.Add(IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger));
      dmBillTemplate.InvoiceCreate.Add(IntToStr(qryInvoice.FieldByName('NCLIENT').AsInteger));

      dmBillTemplate.BillPrint.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
      dmBillTemplate.BillPrint.Template.DatabaseSettings.NameField := 'ITEM_Name';
      dmBillTemplate.BillPrint.Template.DatabaseSettings.TemplateField := 'Template';
      dmBillTemplate.BillPrint.Template.DatabaseSettings.Name := SystemString('draft_bill_default');
      dmBillTemplate.BillPrint.Template.LoadFromDatabase;

      with dmBillTemplate.BillPrint.Parameters do
      begin
        Items['NMATTER'].Value := qryInvoice.FieldByName('NMATTER').AsInteger;
        Items['NMEMO'].Value := qryInvoice.FieldByName('NMEMO').AsInteger;
        Items['NCLIENT'].Value := qryInvoice.FieldByName('NCLIENT').AsInteger;
        Items['ENTITY'].Value := dmAxiom.Entity;
      end;

      dmBillTemplate.BillPrint.Print;
    end;
end;

procedure TfrmInvoice.tbtnWordClick(Sender : TObject);
  begin
    SaveInvoice;
    // calc the debtors field here, used in word docs
    qryCalcDebtors.Close;
    qryCalcDebtors.ParamByName('NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    qryCalcDebtors.ExecSQL;
    qryCalcDebtors.Close;

    InvoiceMerge(qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('NMATTER').AsInteger, False, False, False, False, '', False);
  end;

procedure TfrmInvoice.FormShow(Sender : TObject);
  begin
    if neFees.Enabled
    then
      neFees.SetFocus
    else
      btnBillTemplate.SetFocus;

    lblEntity.Caption := dmAxiom.Entity;
  end;

procedure TfrmInvoice.RebuildData(Sender : TObject);
  var
    bAttachBillTemplate : Boolean;
    dGstFree : currency;
  begin
    RemoveFees;
    RemoveDisb;
    RemoveUPCred;
    RemoveSund;
    RemoveAntd;
    RemoveDisbSund;
    edtDiscount.Text := '0';
    edtDiscountGST.Text := '0';
    SaveInvoice;

    bAttachBillTemplate := true;
    if (SystemString('ENFORCE_TRUST_REMIT_CRED') = 'Y')
    then
    begin
      if (TableCurrency('nmemo', 'nmemo', qryInvoice.FieldByName('NMEMO').AsInteger, 'upcred') <> 0)
      then
      begin
        if (TableInteger('billtemplate', 'code', qryInvoice.FieldByName('BILLTEMPLATE').AsString, 'trust_use') = 0)
        then
        begin
          MsgErr('You have selected a format with a Office Remittance Section, however there are Creditors to bill on this format.  Please select a Client funds format and try again.');
          bAttachBillTemplate := False;
        end;
      end;
    end;
    if bAttachBillTemplate
    then
    begin
      if IsBillItem = 'N'
      then
      begin
        procBillAddFees.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
        procBillAddFees.ParamByName('p_master').AsInteger := 0;
        if Boolean(cbMasterBill.EditValue)
        then
          procBillAddFees.ParamByName('p_master').AsInteger := 1;
        if dtpInterim.Checked
        then
          procBillAddFees.ParamByName('p_CREATED').AsDate := dtpInterim.Date;
        procBillAddFees.Execute;
      end
      else
      begin
        procBillAddItemFees.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
        procBillAddItemFees.ParamByName('p_master').AsInteger := 0;
        if Boolean(cbMasterBill.EditValue)
        then
          procBillAddItemFees.ParamByName('p_master').AsInteger := 1;
        if dtpInterim.Checked
        then
          procBillAddItemFees.ParamByName('p_CREATED').AsDate := dtpInterim.Date;
        procBillAddItemFees.Execute;
      end;

      { procBillAddFees.ParamByName('p_Master').AsInteger := 0;
        procBillAddFees.ParamByName('p_NMemo').AsInteger :=  qryInvoice.FieldByName('NMEMO').AsInteger;
        if chkMasterBill.Checked then
        procBillAddFees.ParamByName('p_Master').AsInteger :=  1;
        procBillAddFees.Execute; }

      procBillAddDisb.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddDisb.Execute;

      procBillAddAntd.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddAntd.Execute;
      procBillAddSund.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddSund.Execute;
      procBillAddUpCred.ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddUpCred.Execute;
      if SystemString('DFLT_DISB_SUNDRY') <> ''
      then
      begin
        procbill_add_disb_percent.ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
        procbill_add_disb_percent.Execute;
      end;
      DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);

      DisplayTaxValues;

      CalcTotal();
    end;
  end;

procedure TfrmInvoice.popGridRebuildAllClick(Sender : TObject);
  begin
    SaveSelectedItems();
    try
      SaveInvoice;
      popGridRemoveAllClick(Sender);
      popGridRemoveFeesClick(Sender);
      RebuildData(Sender);
    finally
      RestoreSelectedItems();
    end;
  end;

procedure TfrmInvoice.btnAntdRebuildClick(Sender : TObject);
  begin

    { CREATE OR REPLACE PROCEDURE BILL_ADD_ANTD
      (P_NMEMO IN Number
      )
      IS
      -- PL/SQL Specification

      -- Purpose: Adds any unbilled anticipated disbursements to the Bill.
      -- Updates the ANTD field for the adjustment.
      --
      -- MODIFICATION HISTORY
      -- Person      Date    Comments
      -- ---------   ------  -------------------------------------------
      -- BJ         23/04/03 Modified variables from (8,2) to (10,2).
      nAddAntd           Number(10,2);
      sFileID            Varchar2(12);
      -- PL/SQL Block
      BEGIN
      -- Use the Matter number as we have an index on it
      SELECT FILEID INTO sFileID FROM NMEMO WHERE NMEMO = p_NMemo;
      SELECT SUM(AMOUNT) INTO nAddAntd FROM CHEQREQ WHERE FILEID = sFileID AND NMEMO is null AND BILLED = 'N' AND (CONVERTED <> 'R' OR TRUST <> 'T');
      UPDATE CHEQREQ SET NMEMO = p_NMemo WHERE FILEID = sFileID AND NMEMO is null AND BILLED = 'N' AND (CONVERTED <> 'R' OR TRUST <> 'T');
      UPDATE NMEMO SET ANTD = ANTD+nAddAntd WHERE NMEMO = p_NMemo;
      EXCEPTION
      WHEN OTHERS THEN
      RAISE;
      END; -- Procedure BILL_ADD_ANTD }

    // popGridRemoveAntDClick(sender);
    SaveInvoice;
    procBillAddAntd.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    procBillAddAntd.Execute;
    FCheqReqRebuilt := true;
    DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);
  end;

procedure TfrmInvoice.popGridRemoveAllClick(Sender : TObject);
  var
    iInvoice : Integer;
    sFileID, sMatter, sInvoice : string;
    DefaultTax : string;
  begin
    // works when non there
    iInvoice := qryInvoice.FieldByName('NMEMO').AsInteger;
    sInvoice := IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger);
    sMatter := IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger);
    sFileID := qryInvoice.FieldByName('FILEID').AsString;
    qryInvoice.Close;
    with qryNew do
    begin
      try
        Close;
        if dmAxiom.uniInsight.InTransaction
        then
          dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;
        SQL.Text := 'UPDATE FEE SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice;
        ExecSQL;
        Close;
        // works for disbs and upcred
        SQL.Text := 'UPDATE ALLOC SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice;
        ExecSQL;
        Close;
        SQL.Text := 'UPDATE CHEQREQ SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice;
        ExecSQL;
        Close;
        SQL.Text := 'UPDATE SUNDRY SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice;
        ExecSQL;
        Close;
        SQL.Text :=
          'UPDATE NMEMO SET FEES = null, DISB = 0, ANTD = 0, SUND = 0, UPCRED = 0, FEES_FLAG = ''0'', DISB_FLAG = ''0'', ANTD_FLAG = ''0'', UPCRED_FLAG = ''0'', SUND_FLAG = ''0'' WHERE NMEMO = '
          + sInvoice;
        ExecSQL;
        Close;
        dmAxiom.uniInsight.Commit;
      except
        on E : Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          MsgErr('Removal of invoice items failed:' + chr(13) + chr(13) + E.Message);
        end;
      end;

      DisplayInvoice(iInvoice);
    end;
    DisplayTaxValues;

    CalcTotal();
  end;

procedure TfrmInvoice.tbtnReverseClick(Sender : TObject);
  var
    bOKtoPost : Boolean;
    dReversalDate         : TDateTime;
  begin
    if not qryInvoice.IsEmpty
    then
    begin
      //if MsgAsk('Do you want to reverse invoice ' + qryInvoice.FieldByName('REFNO').AsString + '?') = mrYes
      // RDW - 02/04/2019 - Amended to prompt for a reversal date
      dReversalDate := Now;
      if (SystemString('DFLT_BILL_DISPATCHED_DATE') <> '') then
         dReversalDate := SystemDate('DFLT_BILL_DISPATCHED_DATE');
      if (SystemString('DFLT_BILL_DISPATCHED_DATE') <> '') then
      begin
         if (DateOf(qryInvoice.FieldByName('DISPATCHED').AsDateTime) > DateOf(dReversalDate)) then
            dReversalDate := Now;
      end;
      if (InputQueryDate('Bill Reversal', 'Do you want to reverse Bill ' + qryInvoice.FieldByName('REFNO').AsString + '?',  dReversalDate)) then
      begin
        bOKtoPost := (PostIntoLockedPeriod(Now) in [prNotLocked, prOKToProceed]);
        if bOKtoPost
        then
        begin
          try
            with procBillReverse do
            begin
              ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
              ParamByName('P_RVDATE').AsDateTime := dReversalDate;               // Reversal Date, amended RDW from NOW

              ParamByName('P_WHO').AsString := dmAxiom.UserID;
              Execute;
              bNoSave := true;
            end;
            MessageDlg('Bill Reversed', mtInformation, [mbOk], 0);
            Self.Close;
          except
            // on Error  do
            begin
              if Error = 20100
              then
                MessageDlg('Error Bill has been paid', mtError, [mbOk], 0)
              else if Error = 20101
              then
                MessageDlg('Error Bill has trust cheques', mtError, [mbOk], 0)
              else
                raise;
            end;
          end;
        end;
      end;
    end;
  end;

procedure TfrmInvoice.FormCreate(Sender : TObject);
  var
    sWordProc, lsStorageName : String;
    AEdit : TcxCustomEdit;
    iCtr : Integer;
  begin
    lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
    TppIniStoragePlugIn.SetStorageName(lsStorageName);

    SettingLoadStream(dmAxiom.UserID, 'tvBillItems Layout', tvBillItems);

    try
      if dmAxiom.uniInsight.InTransaction
      then
        dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      with dmAxiom.qrySettingLoad do
      begin
        ParamByName('Emp').AsString := dmAxiom.UserID;
        ParamByName('Owner').AsString := 'tvBillItems';
        ParamByName('Item').AsString := 'SingleLine';
        Open();
        if (Eof)
        then
        begin
          with dmAxiom.procSettingSave do
          begin
            ParamByName('P_Emp').AsString := dmAxiom.UserID;
            ParamByName('P_Owner').AsString := 'tvBillItems';
            ParamByName('P_Item').AsString := 'SingleLine';
            ParamByName('P_Value').Value := Null;
            ParamByName('P_IntValue').AsInteger := 1;
            Execute;
          end;
        end;
      end;
    finally
      dmAxiom.uniInsight.Commit;
      tvBillItems.OptionsView.CellAutoHeight := (SettingLoadBoolean('tvBillItems', 'SingleLine'));
    end;

    pbSpellCheck.Enabled := False;
    if dmAxiom.DictionaryInstalled
    then
    begin
      // AEdit := TcxRichEdit(tvBillItemsDESCR);
      // dmAxiom.AddictLiveSpell.AddControl(memoNotes);
      // dmAxiom.AddictLiveSpell.AddControl(AEdit);
      // AddictRichEdit1.AddictSpell := dmAxiom.Addict;
      pbSpellCheck.Enabled := true;
    end;

    FForm := nil;
    SetLength(FSelectedItems, 0);
    bPosting := False;
    bNoSave := False;
    TaxFees := 0;
    TaxDisb := 0;
    TaxAntD := 0;
    TaxSund := 0;
    TaxUpCred := 0;
    TaxDate := trunc(Date);

    sWordProc := SystemString('WORDPROC');
    // if sWordProc = 'WORDPERFECT8' then
    // tbtnWord.ImageIndex := 5;

    if grdBillItems.Font.Size <> dmAxiom.GridFont
    then
      grdBillItems.Font.Size := dmAxiom.GridFont;

    // dtpInterim.Date := Trunc(Date);

    tbtnReverse.Enabled := dmAxiom.Security.Bill.Reverse;
    edtDiscount.Enabled := dmAxiom.Security.Bill.Discount.Edit;
    edtDiscountGST.Enabled := dmAxiom.Security.Bill.Discount.Edit;

    // tbtnPost.Visible := dmAxiom.Security.Bill.Post;

    // btnAddTrust.Visible := dmAxiom.Security.Bill.Post;
    // ****** 18/09/2003 AES
    // *** user can only do Trust Transfer if they have authority.
    btnAddTrust.Enabled := dmAxiom.Security.Bill.TrustTransfer;
  //  dxBarButton4.Enabled := (dmAxiom.Is_Cashier = 'Y');

    {
      Modified 21.11.2002 GG

      Now hiding Trust Edit box
    }
    //neTrust.Visible := dmAxiom.Security.Bill.Post;
    neTrust.Visible := true;
    dtpExpectedPayment.Enabled := dmAxiom.Security.Bill.ChangePaymentDueDate;

    DefaultTax := get_default_gst('Bill');
    if DefaultTax = ''
    then
      DefaultTax := dmAxiom.DefaultTax;

    // FLastSortColumn := lvItems.Columns[0];
    bDateSort := true;

    SettingLoadStream(dmAxiom.UserID, 'BillItems Layout', tvBillItems);
    // LoadColumnData();
    FLastKey := VK_NONAME;

    FFeeRebuilt := False;
    FDisbsRebuilt := False;
    FCheqReqRebuilt := False;
    FCredRebuilt := False;
    FSundRebuilt := False;
    IsBillItem := 'N';
    if SystemString('LOCALE_NAME') <> ''
    then
    begin
      btnAddTrust.Caption := 'Apply Trust';
      lblLessTrust.Caption := 'Less Trust';
      lblDiscountCaption.Caption := 'Discount (% or ' + GetCurrencySymbol + ' amount. eg 5% or 200)';
      lblDiscountCaption.Hint := 'Discount (% or ' + GetCurrencySymbol + ' amount. eg 5% or 200)';
      chkUnbilledTransactions.Visible := true;
    end;
    // AES 18/10/2017  set formatting of bills footers
    for iCtr := 0 to tvBillItems.DataController.Summary.FooterSummaryItems.Count - 1 do
    begin
      if tvBillItems.DataController.Summary.FooterSummaryItems[iCtr].Tag <> 2
      then
        tvBillItems.DataController.Summary.FooterSummaryItems[iCtr].Format := GetCurrencySymbol + ',0.00';
    end;

    // 19 Oct 2018 DBW add flag to allow alter transactional billed tax amount
    // on cheque Creditor and sundry
    if dmaxiom.Is_Cashier = 'Y' then
      bAlterGSTAmount := True
    else
      bAlterGSTAmount := SystemVal('ALTER_BILL_DISB_TAX');

  end;

procedure TfrmInvoice.dtpInterimChange(Sender : TObject);
  begin
    // tmrInterim.Enabled := False;
    // tmrInterim.Enabled := True;
    if dtpInterim.Checked
    then
      InterimDate := dtpInterim.Date
    else
      InterimDate := trunc(Date);
    btnInterimDate.Enabled := dtpInterim.Checked;
  end;

procedure TfrmInvoice.dtpInterimClick(Sender : TObject);
  begin
    if dtpInterim.Checked
    then
      dtpInterim.Date := Now;
  end;

procedure TfrmInvoice.tmrInterimTimer(Sender : TObject);
  begin
    tmrInterim.Enabled := False;
    if dtpInterim.Checked
    then
      InterimDate := dtpInterim.Date
      // TaxDate := dtpInterim.Date
    else
      InterimDate := trunc(Date);
    // btnInterimDate.Enabled := dtpInterim.Checked;
    // TaxDate := Trunc(Date);

    // SaveInvoice;
    // Remove all items and reprocess
    // popGridRemoveAll.Click;
    // tbtnRebuildAll.Click;
    // popGridRebuildAll.Click;
  end;

procedure TfrmInvoice.RestoreSelectedItems();
  var
    rowIndex, newRowindex : Integer;
  begin
    if FReturnSelection <> Nil
    then
      try
        if tvBillItems.DataController.RecordCount > 0
        then
          qryBillItems.GotoBookmark(FReturnSelection);
      except
        ;
      end;
    { if (FRowIndex <= (lvBillItems.DataController.RecordCount - 1)) then
      begin
      rowindex := lvBillItems.DataController.GetRowIndexByRecordIndex(FRowIndex, False);
      if ( rowIndex >= 0 ) then
      begin
      try
      lvBillItems.DataController.ChangeRowSelection(rowIndex, True);
      //            lvBillItems.DataController.FocusedRowIndex := newRowindex;
      except
      //
      end;
      end;
      end; }
  end;

procedure TfrmInvoice.SaveSelectedItems();
  var
    rowIndex : Integer;
  begin
    try
      FReturnSelection := qryBillItems.GetBookmark;
      // FRowIndex := lvBillItems.Controller.SelectedRecords[0].Index;
      // FRowIndex := lvBillItems.DataController.GetRowInfo(rowIndex).RecordIndex;
    except
      ;
    end;
  end;

procedure TfrmInvoice.assignToDebtor(Sender : TObject);
  var
    nbill, iLoop, ImageIndex : Integer;
    ptrData : TptrItemData;
  begin
    nbill := (Sender as TdxBarButton).Tag;

    for iLoop := 0 to tvBillItems.DataController.GetSelectedCount - 1 do
    begin
      ImageIndex := tvBillItemsTYPE.EditValue;
      // if ImageIndex <> IMG_DISB then
      // 09/09/2009 changed test from one above to this one.  i think it should only do if it is a disb
      if ImageIndex = IMG_DISB
      then
      begin
        // now update the alloc
        qryAllocSubBill.Close;
        qryAllocSubBill.ParamByName('nalloc').AsInteger := tvBillItemsUNIQUEID.EditValue; // ptrData.iUnique;
        if Sender = tbtnUnassignDebtor
        then
          qryAllocSubBill.ParamByName('nsubbill').AsString := ''
        else
          qryAllocSubBill.ParamByName('nsubbill').AsInteger := nbill;
        qryAllocSubBill.ExecSQL;
      end;

    end;
    // DisplayItems;
  end;

procedure TfrmInvoice.popItemWriteOffClick(Sender : TObject);
  begin
    { }
  end;

procedure TfrmInvoice.btnBillTemplateClick(Sender : TObject);
  var
    bAttachBillTemplate : Boolean;
    sCurrIsBillItem : string;
  begin
    bAttachBillTemplate := true;
    with TfrmGenericSearch.create(Self) do
    begin
      tvLookupDEFAULTITEM.Visible := true;
      SQL := 'SELECT CODE, DESCR, DEFAULTBILL AS DEFAULTITEM, ITEM_BILL FROM BILLTEMPLATE ORDER BY CODE';
      if ShowModal = mrOK
      then
      begin
        if (SystemString('ENFORCE_TRUST_REMIT_CRED') = 'Y')
        then
        begin
          if (TableCurrency('nmemo', 'nmemo', qryInvoice.FieldByName('NMEMO').AsInteger, 'upcred') <> 0)
          then
          begin
            if (TableInteger('billtemplate', 'code', qrySource.FieldByName('CODE').AsString, 'trust_use') = 0)
            then
            begin
              MsgErr('You have selected a format with a Office Remittance Section, however there are Creditors to bill on this format.  Please select a Client funds format');
              bAttachBillTemplate := False;
              lblBillTemplate.Caption := '';
              try
                if (qryInvoice.state <> dsEdit)
                then
                  qryInvoice.Edit;
                qryInvoice.FieldByName('BILLTEMPLATE').Clear;
              except
                //
              end;
            end;
          end
          else if (TableCurrency('nmemo', 'nmemo', qryInvoice.FieldByName('NMEMO').AsInteger, 'upcred') = 0)
          then
          begin
            if (TableInteger('billtemplate', 'code', qrySource.FieldByName('CODE').AsString, 'trust_use') = 1)
            then
            begin
              MsgErr('You have selected a format with a Trust Remittance Section, however there are no Creditors to bill on this format.  Please select an Office format');
              bAttachBillTemplate := False;
              lblBillTemplate.Caption := '';
              try
                if (qryInvoice.state <> dsEdit)
                then
                  qryInvoice.Edit;
                qryInvoice.FieldByName('BILLTEMPLATE').Clear;
              except
                //
              end;
            end;
          end;
        end;

        if bAttachBillTemplate
        then
        begin
          sCurrIsBillItem := IsBillItem;
          if (qryInvoice.state <> dsEdit)
          then
            qryInvoice.Edit;
          lblBillTemplate.Caption := qrySource.FieldByName('CODE').AsString;
          qryInvoice.FieldByName('BILLTEMPLATE').AsString := lblBillTemplate.Caption;
          IsBillItem := qrySource.FieldByName('ITEM_BILL').AsString;
          if (IsBillItem <> sCurrIsBillItem) and (qryInvoice.FieldByName('DISPATCHED').IsNull)
          then
          begin
            RebuildData(Sender);
            DisplayItems;
          end;
        end;
      end;
      // Release;
    end;
  end;

procedure TfrmInvoice.popGridRemoveFeesClick(Sender : TObject);
  var
    bRemove : Boolean;
  begin
    bRemove := true;
    if Sender is TdxBarButton
    then
      if MsgAsk('Remove Fees?') = mrNO
      then
        bRemove := False;

    if bRemove
    then
    begin
      RemoveFees;
      CalcDiscount;
    end;
  end;

procedure TfrmInvoice.RemoveFees;
  var
    dGstFree : double;
  begin
    qryNew.SQL.Text := 'UPDATE FEE SET NMEMO = null WHERE ' +
    // ' NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString + ' AND '+
      'NMEMO = ' + qryInvoice.FieldByName('NMEMO').AsString;
    qryNew.ExecSQL;
    qryNew.Close;
    neFees.AsCurrency := 0;
    qryInvoice.Edit;
    qryInvoice.FieldByName('FEES').AsCurrency := 0;
    qryInvoice.FieldByName('DISCOUNT').AsCurrency := 0;
    qryInvoice.Post;
    DisplayItems;
    neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxFees := neFeesTax.AsCurrency;
    neFeesTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
    lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);;
  end;

procedure TfrmInvoice.popGridRemoveDisbClick(Sender : TObject);
  var
    bRemove : Boolean;
  begin
    bRemove := true;
    if Sender is TdxBarButton
    then
      if MsgAsk('Remove Disbursements?') = mrNO
      then
        bRemove := False;
    if bRemove
    then
    begin
      RemoveDisbSund;
      RemoveDisb;
    end;
  end;

procedure TfrmInvoice.RemoveDisb;
  var
    dGstFree : double;
  begin
    qryNew.SQL.Text := 'UPDATE ALLOC SET NMEMO = null WHERE NINVOICE IS NULL AND NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString + ' AND NMEMO = ' +
      qryInvoice.FieldByName('NMEMO').AsString;
    qryNew.ExecSQL;
    qryNew.Close;
    neDisb.AsCurrency := 0;
    qryInvoice.Edit;
    qryInvoice.FieldByName('DISB').AsCurrency := 0;
    qryInvoice.Post;
    DisplayItems;
    neDisbTax.AsCurrency := ShowTax(neDisb.AsCurrency, dGstFree, 'ALLOC', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxDisb := neDisbTax.AsCurrency;
    neDisbTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neDisbTax.AsCurrency]);
    lblDisbTotal.Caption := Format('%10.2f', [neDisbTax.AsCurrency]);
  end;

procedure TfrmInvoice.popGridRemoveAntdClick(Sender : TObject);
  var
    bRemove : Boolean;
  begin
    bRemove := true;
    if Sender is TdxBarButton
    then
      if MsgAsk('Remove Anticipateds?') = mrNO
      then
        bRemove := False;

    if bRemove
    then
    begin
      RemoveAntd;

    end;
    RemoveDisbSund;
  end;

procedure TfrmInvoice.RemoveAntd;
  var
    dGstFree : double;
  begin
    qryNew.SQL.Text := 'UPDATE CHEQREQ SET NMEMO = null WHERE NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString + ' AND NMEMO = ' +
      qryInvoice.FieldByName('NMEMO').AsString;
    qryNew.ExecSQL;
    qryNew.Close;
    neAntd.AsCurrency := 0;
    qryInvoice.Edit;
    qryInvoice.FieldByName('ANTD').AsCurrency := 0;
    qryInvoice.Post;
    DisplayItems;
    neAntdTax.AsCurrency := ShowTax(neAntd.AsCurrency, dGstFree, 'CHEQREQ', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxAntD := neAntdTax.AsCurrency;
    neAntdTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neAntdTax.AsCurrency]);
    lblAntdTotal.Caption := Format('%10.2f', [neAntdTax.AsCurrency]);
  end;

procedure TfrmInvoice.popGridRemoveSundClick(Sender : TObject);
  var
    bRemove : Boolean;
  begin
    bRemove := true;
    if Sender is TdxBarButton
    then
      if MsgAsk('Remove Sundry?') = mrNO
      then
        bRemove := False;

    if bRemove
    then
    begin
      qryNew.SQL.Text := 'DELETE FROM SUNDRY WHERE TYPE = ''ia'' AND NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString + ' AND NMEMO = ' +
        qryInvoice.FieldByName('NMEMO').AsString;
      qryNew.ExecSQL;
      qryNew.Close;
      RemoveSund;
    end;
  end;

procedure TfrmInvoice.RemoveSund;
  var
    dGstFree : double;
  begin
    qryNew.SQL.Text := 'UPDATE SUNDRY SET NMEMO = null WHERE NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString + ' AND NMEMO = ' +
      qryInvoice.FieldByName('NMEMO').AsString + ' AND created_from_disb = ''N'' ';
    qryNew.ExecSQL;
    qryNew.Close;
    neSund.AsCurrency := 0;
    qryInvoice.Edit;
    qryInvoice.FieldByName('SUND').AsCurrency := 0;
    qryInvoice.Post;
    DisplayItems;
    neSundTax.Value := ShowTax(neSund.AsCurrency, dGstFree, 'SUNDRY', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxSund := neSundTax.Value;
    neSundTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neSundTax.Value]);
    lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);
  end;

procedure TfrmInvoice.popGridRemoveUPCredClick(Sender : TObject);
  var
    bRemove : Boolean;
  begin
    bRemove := true;
    if Sender is TdxBarButton
    then
      if MsgAsk('Remove Unpaid Creditors?') = mrNO
      then
        bRemove := False;

    if bRemove
    then
      RemoveUPCred;
  end;

procedure TfrmInvoice.RemoveUPCred;
  var
    dGstFree : double;
  begin
    qryNew.SQL.Text := 'UPDATE ALLOC ' +
                       'SET NMEMO = null, Billed = ''N'' ' +
                       'WHERE NINVOICE IS NOT NULL ' +
                       'AND NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString +
                       ' AND NMEMO = ' + qryInvoice.FieldByName('NMEMO').AsString;
    qryNew.ExecSQL;
    qryNew.Close;
    neUpCred.AsCurrency := 0;
    qryInvoice.Edit;
    qryInvoice.FieldByName('UPCRED').AsCurrency := 0;
    qryInvoice.Post;
    DisplayItems;
    neUpCredTax.AsCurrency := ShowTax(neUpCred.AsCurrency, dGstFree, 'UPCRED', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxUpCred := neUpCredTax.AsCurrency;
    neUpCredTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neUpCredTax.AsCurrency]);
    lblCredTotal.Caption := Format('%10.2f', [neUpCredTax.AsCurrency]);
  end;

procedure TfrmInvoice.neFeesExitChanged(Sender : TObject);
  var
    dGstFree : double;
  begin
    if (neFees.AsCurrency = 0) and (qryInvoice.FieldByName('FEES').AsCurrency <> 0)
    then
      if MsgAsk('Do you want to remove all Fees from this bill?') = mrYes
      then
        tbtnRemoveFees.Click;

    neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxFees := neFeesTax.AsCurrency;
    neFeesTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
    lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);

    if SystemString('CREATE_SUNDRY_FEE') = 'Y'
    THEN
    begin
      SaveInvoice;

      procBillEditSundPercent.ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillEditSundPercent.Execute;

      DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);

      neSundTax.Value := ShowTax(neSund.AsCurrency, dGstFree, 'SUNDRY', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
        qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
      TaxSund := neSundTax.Value;
      neSundTaxFree.AsCurrency := dGstFree;
      // sgrTotals.Cells[0, 0] := Format('%10.2f', [neSundTax.Value]);
      lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);
    end;
    CalcTotal;
    CalcDiscount;
  end;

procedure TfrmInvoice.neDisbExitChanged(Sender : TObject);
  var
    dGstFree : double;
  begin
    if (neDisb.AsCurrency = 0) and (qryInvoice.FieldByName('DISB').AsCurrency <> 0)
    then
      if MsgAsk('Do you want to remove all Disbursements from this bill?') = mrYes
      then
        tbtnRemoveDisbs.Click;

    neDisbTax.AsCurrency := ShowTax(neDisb.AsCurrency, dGstFree, 'ALLOC', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxDisb := neDisbTax.AsCurrency;
    neDisbTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neDisbTax.AsCurrency]);
    lblDisbTotal.Caption := Format('%10.2f', [neDisbTax.AsCurrency]);
  end;

procedure TfrmInvoice.neAntdExitChanged(Sender : TObject);
  var
    dGstFree : double;
  begin
    if (neAntd.AsCurrency = 0) and (qryInvoice.FieldByName('ANTD').AsCurrency <> 0)
    then
      if MsgAsk('Do you want to remove all Anticipated Disbursement from this bill?') = mrYes
      then
        tbtnRemoveCheqReq.Click;

    neAntdTax.AsCurrency := ShowTax(neAntd.AsCurrency, dGstFree, 'CHEQREQ', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxAntD := neAntdTax.AsCurrency;
    neAntdTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neAntDTax.AsCurrency]);
    lblAntdTotal.Caption := Format('%10.2f', [neAntdTax.AsCurrency]);
  end;

procedure TfrmInvoice.neSundExitChanged(Sender : TObject);
  var
    dGstFree : double;
  begin
    if (neSund.AsCurrency = 0) and (qryInvoice.FieldByName('SUND').AsCurrency <> 0)
    then
      if MsgAsk('Do you want to remove all Sundries from this bill?') = mrYes
      then
        tbtnRemoveSundries.Click;

    neSundTax.Value := ShowTax(neSund.AsCurrency, dGstFree, 'SUNDRY', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxSund := neSundTax.Value;
    neSundTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neSundTax.Value]);
    lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);
  end;

procedure TfrmInvoice.neTrustExitChanged(Sender : TObject);
  begin
    { if neTrust.AsCurrency > nlTrustAvail.AsCurrency then
      neTrust.AsCurrency := nlTrustAvail.AsCurrency; }
    // This stuff commented out by AES cTrustBal does not include protected now
    { if neTrust.AsCurrency > (cTrustBal - cProtectedBal) then
      neTrust.AsCurrency := (cTrustBal - cProtectedBal); }
    if neTrust.AsCurrency > (cTrustBal)
    then
      neTrust.AsCurrency := (cTrustBal);
    CalcTotal;
  end;

procedure TfrmInvoice.btnUpCredRebuildClick(Sender : TObject);
  var
    bAttachBillTemplate : Boolean;
  begin
    bAttachBillTemplate := true;
    if (SystemString('ENFORCE_TRUST_REMIT_CRED') = 'Y')
    then
    begin
      if (TableCurrency('nmemo', 'nmemo', qryInvoice.FieldByName('NMEMO').AsInteger, 'upcred') <> 0)
      then
      begin
        if (TableInteger('billtemplate', 'code', qryInvoice.FieldByName('BILLTEMPLATE').AsString, 'trust_use') = 0)
        then
        begin
          MsgErr('You have selected a format with a Office Remittance Section, however there are Creditors to bill on this format.  Please select a Client funds format and try again.');
          bAttachBillTemplate := False;
        end;
      end;
    end;

    if bAttachBillTemplate
    then
      UpCredRebuild()

  end;

procedure TfrmInvoice.neUpCredExitChanged(Sender : TObject);
  var
    dGstFree : double;
  begin
    if (neUpCred.AsCurrency = 0) and (qryInvoice.FieldByName('UPCRED').AsCurrency <> 0)
    then
      if MsgAsk('Do you want to remove all unpaid Creditors from this bill?') = mrYes
      then
        tbtnRemoveUpCred.Click;

    neUpCredTax.AsCurrency := ShowTax(neUpCred.AsCurrency, dGstFree, 'UPCRED', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxUpCred := neUpCredTax.AsCurrency;
    neUpCredTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neUpCredTax.AsCurrency]);
    lblCredTotal.Caption := Format('%10.2f', [neUpCredTax.AsCurrency]);
  end;

procedure TfrmInvoice.btnAddTrustClick(Sender : TObject);
var
   TrustDiff: Currency;
   Billtotal: Currency;
   ApplyTrust: Boolean;
   vDiscount: variant;
begin
   if btnAddTrust.caption = 'Apply Trust' then
   begin
      ApplyTrust := False;
      if edtDiscount.Text <> '' then
         vDiscount := edtDiscount.Text;
      Billtotal := neFees.AsCurrency + neDisb.AsCurrency + neAntd.AsCurrency +
                   neUpCred.AsCurrency + neSund.AsCurrency + TaxFees + TaxDisb +
                   TaxAntD + TaxUpCred + TaxSund + vDiscount;
      TrustDiff := 0;
      if SystemString('show_net_trust') = 'Y' then
      begin
//         TrustDiff := (cTrustBal - cProtectedBal - cUnconCheqReq) - Billtotal;
         TrustDiff := (cTrustBal - cUnconCheqReq) - Billtotal;
         if (TrustDiff >= 0) then
         begin
            neTrust.AsCurrency := Billtotal;
            ApplyTrust := True;
         end
         else
         if (cTrustBal - cUnconCheqReq) < 0 then  {(cTrustBal - cProtectedBal - cUnconCheqReq)}
            neTrust.AsCurrency := 0
         else
         if Billtotal >=  (cTrustBal - cUnconCheqReq) then    {(cTrustBal - cProtectedBal - cUnconCheqReq)}
         begin
            ApplyTrust := True;
            neTrust.AsCurrency := (cTrustBal - cUnconCheqReq);  {(cTrustBal - cProtectedBal - cUnconCheqReq)}
         end
         else if Billtotal <= cTrustBal then
         begin
            neTrust.AsCurrency := Billtotal ;
            ApplyTrust := True;
         end;
      end
      else
      begin
         TrustDiff := (cTrustBal) - Billtotal;  {(cTrustBal - cProtectedBal)}
         if (TrustDiff >= 0) then
         begin
            neTrust.AsCurrency := Billtotal;
            ApplyTrust := True;
         end
         else
         if (cTrustBal) < 0 then  {(cTrustBal - cProtectedBal)}
            neTrust.AsCurrency := 0
         else
         if Billtotal >=  (cTrustBal) then   {(cTrustBal - cProtectedBal)}
         begin
            ApplyTrust := True;
            neTrust.AsCurrency := (cTrustBal);   {(cTrustBal - cProtectedBal)}
         end
         else if Billtotal <= cTrustBal then
         begin
            neTrust.AsCurrency := Billtotal ;
            ApplyTrust := True;
         end;
      end;
//      else
//         neTrust.AsCurrency := cTrustBal - cProtectedBal - cUnconCheqReq;

       if ApplyTrust then btnAddTrust.caption := 'Remove Trust';
   end
   else
   begin
//      btnAddTrust.caption := 'Remove Trust';
      btnAddTrust.caption := 'Apply Trust';
      neTrust.AsCurrency := 0
   end;
   neTrustExitChanged(sender);
end;

procedure TfrmInvoice.neFeesTaxChange(Sender : TObject);
begin
   TaxFees := neFeesTax.AsCurrency;
   // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
   lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);
   CalcTotal;
end;

procedure TfrmInvoice.neDisbTaxChange(Sender : TObject);
begin
   TaxDisb := neDisbTax.AsCurrency;
   // sgrTotals.Cells[0, 1] := Format('%10.2f', [neDisbTax.AsCurrency]);
   lblDisbTotal.Caption := Format('%10.2f', [neDisbTax.AsCurrency]);
   CalcTotal;
end;

procedure TfrmInvoice.neAntdTaxChange(Sender : TObject);
begin
   TaxAntD := neAntdTax.AsCurrency;
   // sgrTotals.Cells[0, 2] := Format('%10.2f', [neAntdTax.AsCurrency]);
   lblAntdTotal.Caption := Format('%10.2f', [neAntdTax.AsCurrency]);
   CalcTotal;
end;

procedure TfrmInvoice.neUpCredTaxChange(Sender : TObject);
  begin
    TaxUpCred := neUpCredTax.AsCurrency;
    // sgrTotals.Cells[0, 3] := Format('%10.2f', [neUpCredTax.AsCurrency]);
    lblCredTotal.Caption := Format('%10.2f', [neUpCredTax.AsCurrency]);
    CalcTotal;
  end;

procedure TfrmInvoice.neSundTax1Change(Sender : TObject);
  begin
    TaxSund := neSundTax.Value;
    // sgrTotals.Cells[0, 4] := Format('%10.2f', [neSundTax.Value]);
    lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);
    CalcTotal;
  end;

function TfrmInvoice.HasTrustCheques(inmemo : Integer) : Boolean;
  begin
    with dmAxiom.qryTmp do
    begin
      Close;
      SQL.Text := 'SELECT nvl(COUNT(*),0) as CNT FROM NMEMO N,CHEQREQ CR,CHEQUE C ' +
        'WHERE N.NMEMO = CR.NMEMO AND CR.NCHEQUE = C.NCHEQUE AND N.NMEMO = :NMEMO AND C.TRUST = ''T''';
      ParamByName('NMEMO').AsInteger := inmemo;
      Open;
      if FieldByName('CNT').AsInteger = 0
      then
      begin
        Close;
        HasTrustCheques := False;
        Exit;
      end
      else
      begin
        Close;
        HasTrustCheques := true;
        Exit;
      end;

    end;
  end;

procedure TfrmInvoice.nwnfuplift25Click(Sender : TObject);
  begin
    SaveSelectedItems();
    try
      DoUplift(Sender, 0.25)
    finally
      RestoreSelectedItems();
    end;
  end;

procedure TfrmInvoice.nwnfuplift10Click(Sender : TObject);
  begin
    SaveSelectedItems();
    try
      DoUplift(Sender, 0.10);
    finally
      RestoreSelectedItems();
    end;
  end;

procedure TfrmInvoice.DoUplift(
  Sender      : TObject;
  APercentage : Single);
  var
    sDesc : String;
    cFees, cFeesTax, { cDisb,cDisbTax, } cTotal : double;
  begin
    // create a new fee for this matter
    cFees := neFees.AsCurrency * APercentage;
    cFeesTax := neFeesTax.AsCurrency * APercentage;
    {
      Modified 8.01.2003 GG

      It now transpires that as at 8.01.2003, NWNF Uplift is drawn on Fees only.

      cDisb := (neDisb.AsCurrency + neAntd.AsCurrency + neUpCred.AsCurrency + neSund.AsCurrency) * APercentage;
      cDisbTax := (neDisbTax.AsCurrency + neAntdTax.AsCurrency + neUpCredTax.AsCurrency + neSundTax.AsCurrency) * APercentage;
      sDesc := 'Plus Additional loading on total costs of ' + FormatCurr('$##0.00',cFees + cFeesTax)
      + ' and disbursements of ' + FormatCurr('$##0.00',cDisb + cDisbTax)
      + ' totalling ' + FormatCurr('$##0.00', + cDisb + cDisbTax + cFees + cFeesTax);
      cTotal := cDisb + cDisbTax + cFees + cFeesTax;
    }
    sDesc := 'Plus Additional loading on total fees of ' + FormatCurr('$##0.00', cFees + cFeesTax);
    cTotal := cFees + cFeesTax;

    // VALUES(:NFEE,SYSDATE,:DESCR,:MINS,:AUTHOR,
    // :PARTNER,:NMATTER,'N',:NMEMO,:DEPT,:EMP_TYPE,
    // :UNITS,:NCLIENT,'ia',:TAXCODE,1,:AMOUNT,:TAX)
    with qryFeeInsert do
    begin
      Close;
      // ParamByName('NFEE').AsInteger := GetSeqnum('NFEE');
      ParamByName('DESCR').AsString := sDesc;
      ParamByName('AUTHOR').AsString := qryMatter.FieldByName('AUTHOR').AsString;
      ParamByName('PARTNER').AsString := qryMatter.FieldByName('PARTNER').AsString;
      ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
      ParamByName('NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      ParamByName('DEPT').AsString := '';
      ParamByName('EMP_TYPE').AsString := '';
      ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
      ParamByName('TAXCODE').AsString := 'GST';
      ParamByName('TAX').AsCurrency := TaxCalc(cTotal, '', 'GST', Now);
      ParamByName('AMOUNT').AsCurrency := cTotal;
      ExecSQL;
      Close;
    end;
    // rebuild
    SaveInvoice;
    popGridRemoveAllClick(Sender);
    popGridRemoveFeesClick(Sender);
    RebuildData(Sender);
  end;

procedure TfrmInvoice.popGridRecalculateClick(Sender : TObject);
  var
    dGstFree : double;
  begin
    SaveSelectedItems();
    try
      CalcTotal;
      // neFees.Text := lblFeesAvail.Caption;
      qryNew.SQL.Clear;
      qryNew.Close;
      qryNew.SQL.Text := 'SELECT SUM(AMOUNT) AS TOT FROM FEE WHERE ' +
      // ' NMATTER = ' + IntToStr(qryInvoice.fieldByName('NMATTER').AsInteger) + ' AND ' +
      // ' ((NMEMO is null AND FEE.BILLED = ''N'') OR
        ' (NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + ')';
      qryNew.Open;
      if not qryNew.IsEmpty
      then
        neFees.AsCurrency := qryNew.FieldByName('TOT').AsCurrency
      else
        neFees.AsCurrency := 0.00;

      qryNew.Close;
      qryNew.SQL.Clear;

      neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
        qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
      TaxFees := neFeesTax.AsCurrency;
      neFeesTaxFree.AsCurrency := dGstFree;
      // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
      lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);

      SaveInvoice;
      // DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);
    finally
      RestoreSelectedItems();
    end;
  end;

procedure TfrmInvoice.rgFilterClick(Sender : TObject);
  {
    Modified 25.10.2002 GG
    Removed compiler hint
    var
    ictl : integer;
  }
  begin
    DisplayItems;
  end;

procedure TfrmInvoice.miRemoveClick(Sender : TObject);
  begin
    { popGridFilter.Checked := False;
      miMonth.Checked := False;
      sMonth := '';
      DisplayItems; }
  end;

procedure TfrmInvoice.BitBtn1Click(Sender : TObject);
  begin
    neTrust.AsCurrency := iTotal;
    neTrustExitChanged(Sender);
  end;

procedure TfrmInvoice.dxBarBtnCashierNotesClick(Sender : TObject);
  var
    LfrmNotesMatter : TfrmGenEditor; { TfrmNotesMatter; }
begin
{    LfrmNotesMatter := TfrmGenEditor.create(Self);
    try
      LfrmNotesMatter.DisplayCashierNotes(qryInvoice.FieldByName('NMEMO').AsInteger);
      LfrmNotesMatter.ShowModal;
    finally
      LfrmNotesMatter.Free;
    end;}
end;

procedure TfrmInvoice.dxBarButton1Click(Sender : TObject);
  begin
    if (SystemString('memo_bill_default') = '')
    then
    begin
      qryPhonebook.Close;
      qryPhonebook.ParamByName('SEARCH').AsInteger := Self.qryInvoice.FieldByName('NBILL_TO').AsInteger; // qryMatter.FieldByName('NCLIENT').AsInteger;
      qryPhonebook.Open;
      qrySummaryBill.Close;
      qrySummaryBill.ParamByName('NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      qrySummaryBill.Open;
      rptSummaryBill.Print;
    end
    else
    begin
      if (not Assigned(dmBillTemplate))
      then
        dmBillTemplate := TdmBillTemplate.create(Application);

      dmBillTemplate.InvoiceCreate.Clear;
      dmBillTemplate.InvoiceCreate.Add(IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger));
      dmBillTemplate.InvoiceCreate.Add(IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger));
      dmBillTemplate.InvoiceCreate.Add(IntToStr(qryInvoice.FieldByName('NCLIENT').AsInteger));

      dmBillTemplate.BillPrint.Template.DatabaseSettings.DataPipeline := dmAxiom.plReports;
      dmBillTemplate.BillPrint.Template.DatabaseSettings.NameField := 'ITEM_Name';
      dmBillTemplate.BillPrint.Template.DatabaseSettings.TemplateField := 'Template';
      dmBillTemplate.BillPrint.Template.DatabaseSettings.Name := SystemString('memo_bill_default');
      // dmBillTemplate.BillPrint.Template.FileName := LTemplate;
      dmBillTemplate.BillPrint.Template.LoadFromDatabase;
      // dmBillTemplate.BillPrint.BeforePrint := dmBillTemplate.BillPrintBeforePrint;
      // dmBillTemplate.BillPrint.OnPreviewFormCreate := dmBillTemplate.BillPrintPreviewFormCreate;

      with dmBillTemplate.BillPrint.Parameters do
      begin
        Items['NMATTER'].Value := qryInvoice.FieldByName('NMATTER').AsInteger;
        Items['NMEMO'].Value := qryInvoice.FieldByName('NMEMO').AsInteger;
        Items['NCLIENT'].Value := qryInvoice.FieldByName('NCLIENT').AsInteger;
        Items['ENTITY'].Value := dmAxiom.Entity;
      end;

      dmBillTemplate.BillPrint.Print;
      // InvoiceMerge(qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('NMATTER').AsInteger);
    end;
  end;

procedure TfrmInvoice.ppLabel7GetText(
  Sender   : TObject;
  var Text : String);
  begin
    Text := qryInvoice.FieldByName('REFNO').AsString;
  end;

procedure TfrmInvoice.ppLabel11GetText(
  Sender   : TObject;
  var Text : String);
  begin
    Text := qryMatter.FieldByName('Author').AsString + ':' + qryMatter.FieldByName('FILEID').AsString;
  end;

procedure TfrmInvoice.ppLabel4GetText(
  Sender   : TObject;
  var Text : String);
  begin
    Text := 'ABN ' + dmAxiom.ABN;
  end;

procedure TfrmInvoice.rtFeesPrint(Sender : TObject);
  var
    FeeList : String;
    FirstTime : Boolean;
    TotalFees, TotalFeesTax : double;
  begin
    with qryRptFees do
    begin
      FirstTime := true;
      Close;
      ParamByName('P_Matter').AsInteger := qryInvoice.FieldByName('NMATTER').AsInteger;
      ParamByName('P_Invoice').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      Open;
      // FeeList := 'TO: ';
      While not Eof do
      begin
        if (FeeList <> '') AND (not FirstTime)
        then
          FeeList := FeeList + '; ';
        FeeList := FeeList + FieldByName('DESCR').AsString;
        TotalFees := TotalFees + FieldByName('AMOUNT').AsCurrency;
        TotalFeesTax := TotalFeesTax + FieldByName('TAX').AsCurrency;
        FirstTime := False;
        Next;
      end;
    end;
    rtFees.Text := FeeList; // + ' .................';
    // ppVarFee.SetText(FormatCurr('$##0.00',TotalFees));
    // ppVarFeeTax.SetText(FormatCurr('$##0.00',TotalFeesTax));
    BillFeeTotal := TotalFees + TotalFeesTax;
    // ppVarTotal.Value := TotalFees + TotalFeesTax;
  end;

procedure TfrmInvoice.rtDisbsPrint(Sender : TObject);
  var
    DisbList : String;
    FirstTime : Boolean;
    TotalFees, TotalFeesTax : double;
  begin
    with qryRptDisb do
    begin
      FirstTime := true;
      Close;
      ParamByName('fileid').AsInteger := qryInvoice.FieldByName('fileid').AsInteger;
      ParamByName('nmemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      Open;
      // DisbList := 'TO: ';
      While not Eof do
      begin
        if (DisbList <> '') AND (not FirstTime)
        then
          DisbList := DisbList + '; ';
        DisbList := DisbList + FieldByName('DESCR').AsString;
        TotalFees := TotalFees + FieldByName('AMOUNT').AsCurrency;
        TotalFeesTax := TotalFeesTax + FieldByName('TAX').AsCurrency;
        FirstTime := False;
        Next;
      end;
    end;
    rtDisbs.Text := DisbList; // + ' .................';
    // ppVarDisb.SetText(FormatCurr('$##0.00',TotalFees));
    // ppVarDisbTax.SetText(FormatCurr('$##0.00',TotalFeesTax));
    BillFeeTotal := BillFeeTotal + TotalFees + TotalFeesTax;
    // ppVarTotalDisb.Value := TotalFees + TotalFeesTax;
  end;

procedure TfrmInvoice.ppLabel15GetText(
  Sender   : TObject;
  var Text : String);
  begin
    Text := StrUpper(PChar(SystemString('COMPANY')));
  end;

procedure TfrmInvoice.tbtnDebtorTaskClick(Sender : TObject);
  var
    debtorTask : TfrmDebtorTasknew;
  begin
    debtorTask := TfrmDebtorTasknew.create(Self);
    debtorTask.init(qryInvoice.FieldByName('NMEMO').AsInteger);
    debtorTask.ShowModal;
    debtorTask.Close;
  end;

procedure TfrmInvoice.ppRichText1Print(Sender : TObject);
  var
    FeeList : String;
    FirstTime : Boolean;
    TotalFees, TotalFeesTax : double;
  begin
    with qryRptFees do
    begin
      FirstTime := true;
      Close;
      ParamByName('P_Matter').AsInteger := qryInvoice.FieldByName('NMATTER').AsInteger;
      ParamByName('P_Invoice').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      Open;
      // FeeList := 'TO: ';
      While not Eof do
      begin
        if (FeeList <> '') AND (not FirstTime)
        then
          FeeList := FeeList + '; ';
        FeeList := FeeList + FieldByName('DESCR').AsString;
        TotalFees := TotalFees + FieldByName('AMOUNT').AsCurrency;
        TotalFeesTax := TotalFeesTax + FieldByName('TAX').AsCurrency;
        FirstTime := False;
        Next;
      end;
    end;
    rtFees.RichText := FeeList; // + ' .................';
    rtFees.Font.Name := 'ArialNarrow';
    rtFees.Font.Size := 12;
    // ppVarFee.SetText(FormatCurr('$##0.00',TotalFees));
    // ppVarFeeTax.SetText(FormatCurr('$##0.00',TotalFeesTax));
    BillFeeTotal := TotalFees + TotalFeesTax;
    // ppVarTotal.Value := TotalFees + TotalFeesTax;

  end;

procedure TfrmInvoice.ppRichText2Print(Sender : TObject);
  var
    DisbList : String;
    FirstTime : Boolean;
    TotalFees, TotalFeesTax : double;
  begin
    with qryRptDisb do
    begin
      FirstTime := true;
      Close;
      ParamByName('fileid').AsInteger := qryInvoice.FieldByName('fileid').AsInteger;
      ParamByName('nmemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      Open;
      // DisbList := 'TO: ';
      While not Eof do
      begin
        if (DisbList <> '') AND (not FirstTime)
        then
          DisbList := DisbList + '; ';
        DisbList := DisbList + FieldByName('DESCR').AsString;
        TotalFees := TotalFees + FieldByName('AMOUNT').AsCurrency;
        TotalFeesTax := TotalFeesTax + FieldByName('TAX').AsCurrency;
        FirstTime := False;
        Next;
      end;
    end;
    rtDisbs.RichText := DisbList; // + ' .................';
    rtDisbs.Font.Name := 'ArialNarrow';
    rtDisbs.Font.Size := 12;
    // ppVarDisb.SetText(FormatCurr('$##0.00',TotalFees));
    // ppVarDisbTax.SetText(FormatCurr('$##0.00',TotalFeesTax));
    BillFeeTotal := BillFeeTotal + TotalFees + TotalFeesTax;
    // ppVarTotalDisb.Value := TotalFees + TotalFeesTax;

  end;

procedure TfrmInvoice.ppDBText11GetText(
  Sender   : TObject;
  var Text : String);
  begin
    case StrToInt(Text) of
      1 :
        Text := 'Professional Fees';
      2 :
        Text := 'Disbursements';
      3 :
        Text := 'Anticipated Disbursements';
      4 :
        Text := 'Sundry Expenses';
      5 :
        Text := 'Creditors';
    end;
  end;

procedure TfrmInvoice.ppLabel28GetText(
  Sender   : TObject;
  var Text : String);
  begin
    Text := 'Total ' + ppDBText11.Text;
  end;

procedure TfrmInvoice.rptDraftBillPreviewFormCreate(Sender : TObject);
  begin
    rptDraftBill.PreviewForm.WindowState := wsMaximized;
    // TppViewer(rptDraftBill.PreviewForm.Viewer).ZoomSetting := zs100Percent;
  end;

procedure TfrmInvoice.ppLabel25GetText(
  Sender   : TObject;
  var Text : String);
  begin
    if (qryInvoice.FieldByName('dispatched').IsNull)
    then
      Text := Formatdatetime('ddddd', Date)
    else
      Text := Formatdatetime('ddddd', qryInvoice.FieldByName('dispatched').AsDateTime);
  end;

procedure TfrmInvoice.ppDBText1GetText(
  Sender   : TObject;
  var Text : String);
  begin
    Text := 'RE: ' + Text;
  end;

procedure TfrmInvoice.cbSplitBillPropertiesEditValueChanged(Sender : TObject);
  begin
    if (qryInvoice.state <> dsEdit)
    then
      qryInvoice.Edit;

    if Boolean(cbSplitBill.EditValue)
    then
    begin
      qryInvoice.FieldByName('SPLIT_BILL').AsString := 'Y';
      lblBillToCaption.Caption := 'Debtors';
    end
    else
    begin
      qryInvoice.FieldByName('SPLIT_BILL').AsString := 'N';
      lblBillToCaption.Caption := '&Bill to';
    end;
  end;

procedure TfrmInvoice.chkUnbilledTransactionsClick(Sender : TObject);
  begin
    DisplayItems
  end;

procedure TfrmInvoice.popAddFeeClick(Sender : TObject);
  var
    LfrmFeeNew : TfrmFeeNew;
  begin
    LfrmFeeNew := TfrmFeeNew.create(Self, False);
    LfrmFeeNew.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
    LfrmFeeNew.ShowModal;

    popGridRemoveFeesClick(Sender);
    SaveInvoice;
    if IsBillItem = 'N'
    then
    begin
      procBillAddFees.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddFees.ParamByName('p_master').AsInteger := 0;
      if Boolean(cbMasterBill.EditValue)
      then
        procBillAddFees.ParamByName('p_master').AsInteger := 1;
      if dtpInterim.Checked
      then
        procBillAddFees.ParamByName('p_CREATED').AsDate := dtpInterim.Date;
      procBillAddFees.Execute;
    end
    else
    begin
      procBillAddItemFees.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddItemFees.ParamByName('p_master').AsInteger := 0;
      if Boolean(cbMasterBill.EditValue)
      then
        procBillAddItemFees.ParamByName('p_master').AsInteger := 1;
      if dtpInterim.Checked
      then
        procBillAddItemFees.ParamByName('p_CREATED').AsDate := dtpInterim.Date;
      procBillAddItemFees.Execute;
    end;

    { procBillAddFees.ParamByName('p_Master').AsInteger := 0;
      procBillAddFees.ParamByName('p_NMemo').AsInteger :=  qryInvoice.FieldByName('NMEMO').AsInteger;
      if chkMasterBill.Checked then
      procBillAddFees.ParamByName('p_Master').AsInteger :=  1;
      procBillAddFees.Execute; }

    DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);
  end;

procedure TfrmInvoice.neFeesKeyUp(
  Sender  : TObject;
  var Key : Word;
  Shift   : TShiftState);
  var
    dGstFree : double;
  begin
    neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxFees := neFeesTax.AsCurrency;
    neFeesTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
    lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);
    CalcTotal;
  end;

function TfrmInvoice.FeeTotals(sSQL : string) : currency;
  var
    qryFeeTotals : TUniQuery;
  begin
    qryFeeTotals := TUniQuery.create(nil);
    with qryFeeTotals do
    begin
      Connection := dmAxiom.uniInsight;
      Close;
      SQL.Text := sSQL;
      Open;
      if not IsEmpty
      then
        Result := FieldByName('Amount').AsCurrency
      else
        Result := 0;
    end;
    qryFeeTotals.Free;
  end;

procedure TfrmInvoice.cbAssessedPropertiesEditValueChanged(Sender : TObject);
begin
   tbtnPost.Enabled := ((Boolean(cbAssessed.EditValue) = False) and (dmAxiom.Security.Bill.Post));
end;

procedure TfrmInvoice.cbMasterBillPropertiesEditValueChanged(Sender : TObject);
begin
   try
      RebuildData(Sender);
   finally
      RestoreSelectedItems();
   end;
end;

procedure TfrmInvoice.cbPrivatePropertiesEditValueChanged(Sender : TObject);
begin
   if (qryInvoice.state <> dsEdit) then
      qryInvoice.Edit;
    if Boolean(cbPrivate.EditValue) then
      qryInvoice.FieldByName('PRIVATE').AsString := 'Y'
    else
      qryInvoice.FieldByName('PRIVATE').AsString := 'N';
end;

procedure TfrmInvoice.tbtnEditClick(Sender : TObject);
var
   LFeeNew : TfrmFeeNew;
   LCheqReqNew : TfrmCheqReqNew;
   LSundryNew : TfrmSundryNew;
   LUnique, LReturn : Integer;
   dGstFree : double;
begin
   SaveSelectedItems();
   try
      LUnique := tvBillItemsUNIQUEID.EditValue;
      case tvBillItemsTYPE.EditValue of
        IMG_FEES :
          begin
            if dmAxiom.Security.Fee.Edit
            then
            begin
              LFeeNew := TfrmFeeNew.create(Self, true);
              LFeeNew.DisplayFee(LUnique);
              LReturn := LFeeNew.ShowModal();
              if LReturn <> mrCancel
              then
              begin
                procBillAddFeesOnly.ParamByName('P_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
                procBillAddFeesOnly.Execute;
              end;
            end;
          end;
        IMG_ANTD :
          begin
            LCheqReqNew:= TfrmCheqReqNew.Create(Self);
            LCheqReqNew.DisplayCheqReq(LUnique);
            LReturn := LCheqReqNew.ShowModal();
          end;
        IMG_SUND :
          begin
            LSundryNew := TfrmSundryNew.create(Self);
            LSundryNew.DisplaySundry(LUnique);
            LReturn := LSundryNew.ShowModal();
            // AES 26/11/09  added this to refresh sundry total when editing/adding sundry
            if LReturn <> mrCancel
            then
            begin
              procBillAddSundryOnly.ParamByName('P_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
              procBillAddSundryOnly.Execute;
            end;
          end;
        IMG_UPCRED :
          begin
            ViewAttacheInvoice(LUnique);
          end;
      end;
      if LReturn <> mrCancel
      then
      begin
        SaveInvoice;
        DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);
        if tvBillItemsTYPE.EditValue = IMG_FEES
        then
        begin
          neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
            qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
          TaxFees := neFeesTax.AsCurrency;
          neFeesTaxFree.AsCurrency := dGstFree;
          // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
          lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);
        end;
        // AES 26/11/09  added this to re calculate sundry gst when editing/adding sundry
        if tvBillItemsTYPE.EditValue = IMG_SUND
        then
        begin
          neSundTax.Value := ShowTax(neSund.AsCurrency, dGstFree, 'SUNDRY', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
            qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
          TaxSund := neSundTax.Value;
          neSundTaxFree.AsCurrency := dGstFree;
          // sgrTotals.Cells[0, 0] := Format('%10.2f', [neSundTax.Value]);
          lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);
        end;


      end;
    finally

      if tvBillItemsTYPE.EditValue = IMG_ANTD then      // RDW
        begin
         qryNew.SQL.Text := 'SELECT SUM(AMOUNT) AS TOT, SUM(TAX) AS TAX FROM CHEQREQ WHERE NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString +
            ' AND ((NMEMO is null AND BILLED = ''N'' AND TRUST <> ''T'') OR ' + ' (NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))' +
        ' AND REV_NCHEQREQ is null AND AMOUNT > 0';

        qryNew.Open;

        neAntd.Text :=  qryNew.FieldByName('TOT').AsString;
        neAntdTax.Text := qryNew.FieldByName('TAX').Asstring;
            qryNew.Close;
            procBillAddAntd.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
            procBillAddAntd.Execute;
            FCheqReqRebuilt := true;
               SaveInvoice;
             DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);
        end;

      SaveInvoice;
      CalcTotal;
      CalcDiscount;

      RestoreSelectedItems();
   end;
end;

procedure TfrmInvoice.tbtnAddGSTClick(Sender : TObject);
var
   dtTax : TDateTime;
   iCtr : Integer;
   cTax : currency;
   AView : TcxGridTableView;
   sTaxCode : string;
begin
   if MsgWarn('This action will update the original transaction. This action cannot be undone. Are you sure?') = mrYes then
   begin
      AView := tvBillItems;
      if AView.DataController.GetSelectedCount > 0 then
      begin
         try
           // 25-08-2018 DW added to accomodate Singapore tax codes
           sTaxCode := TableString('TAXDEFAULT', 'TYPE', 'Bill', 'CODE');
           if sTaxCode = ''
           then
             sTaxCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'FEE_TAX_BASIS');
           if sTaxCode = ''
           then
             sTaxCode := dmAxiom.DefaultTax;
           // -----------------
           for iCtr := AView.DataController.RecordCount - 1 downto 0 do
           begin
             if AView.DataController.IsRowSelected(iCtr)
             then
             begin
               with qryNew do
               begin
                 dtTax := Now;
                 cTax := 1;
                 SQL.Clear;
                 case tvBillItemsTYPE.EditValue of
                   IMG_FEES :
                     begin
                       SQL.Text := 'SELECT CREATED, TAX FROM FEE WHERE NFEE = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'SELECT CREATED, TAX FROM FEE WHERE NFEE = ' + IntToStr(tvBillItemsTYPE.EditValue);
                       Open;
                       if not IsEmpty then
                       begin
                         dtTax := FieldByName('CREATED').AsDateTime;
                         cTax := FieldByName('TAX').AsCurrency;
                       end;
                       Close;
                       SQL.Text := 'UPDATE FEE SET TAXCODE = ''' + sTaxCode + ''', TAX = AMOUNT * :TaxRate WHERE NFEE = ' +
                         IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'UPDATE FEE SET TAXCODE = ''GST'', TAX = AMOUNT * :TaxRate WHERE NFEE = ' + IntToStr(tvBillItemsTYPE.EditValue);
                     end;
                   IMG_DISB :
                     begin
                       SQL.Text := 'SELECT CREATED, TAX FROM ALLOC WHERE NALLOC = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'SELECT CREATED, TAX FROM ALLOC WHERE NALLOC = ' + IntToStr(tvBillItemsTYPE.EditValue);
                       Open;
                       if not IsEmpty then
                       begin
                         dtTax := FieldByName('CREATED').AsDateTime;
                         cTax := FieldByName('TAX').AsCurrency;
                       end;
                       Close;
                       SQL.Text := 'UPDATE ALLOC SET TAXCODE = ''' + sTaxCode +
                         ''', TAX = AMOUNT * :TaxRate, BILLED_TAX_AMOUNT = AMOUNT * :TaxRate  WHERE NALLOC = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'UPDATE ALLOC SET TAXCODE = ''GST'', TAX = AMOUNT * :TaxRate WHERE NALLOC = ' + IntToStr(tvBillItemsTYPE.EditValue);
                     end;
                   IMG_ANTD :
                     begin
                       SQL.Text := 'SELECT REQDATE, TAX FROM CHEQREQ WHERE NCHEQREQ = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'SELECT REQDATE, TAX FROM CHEQREQ WHERE NCHEQREQ = ' + IntToStr(tvBillItemsTYPE.EditValue);
                       Open;
                       if not IsEmpty then
                       begin
                         dtTax := FieldByName('REQDATE').AsDateTime;
                         cTax := FieldByName('TAX').AsCurrency;
                       end;
                       Close;
                       SQL.Text := 'UPDATE CHEQREQ SET TAXCODE = ''' + sTaxCode + ''', TAX = AMOUNT * :TaxRate WHERE NCHEQREQ = ' +
                         IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'UPDATE CHEQREQ SET TAXCODE = ''GST'', TAX = AMOUNT * :TaxRate WHERE NCHEQREQ = ' + IntToStr(tvBillItemsTYPE.EditValue);
                     end;
                   IMG_SUND :
                     begin
                       SQL.Text := 'SELECT CREATED, TAX FROM SUNDRY WHERE NSUNDRY = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'SELECT CREATED, TAX FROM SUNDRY WHERE NSUNDRY = ' + IntToStr(tvBillItemsTYPE.EditValue);
                       Open;
                       if not IsEmpty then
                       begin
                         dtTax := FieldByName('CREATED').AsDateTime;
                         cTax := FieldByName('TAX').AsCurrency;
                       end;
                       Close;
                       SQL.Text := 'UPDATE SUNDRY SET TAXCODE = ''' + sTaxCode + ''', TAX = AMOUNT * :TaxRate WHERE NSUNDRY = ' +
                         IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'UPDATE SUNDRY SET TAXCODE = ''GST'', TAX = AMOUNT * :TaxRate WHERE NSUNDRY = ' + IntToStr(tvBillItemsTYPE.EditValue);
                     end;
                   IMG_UPCRED :
                     begin
                       SQL.Text := 'SELECT CREATED, TAX FROM ALLOC WHERE NALLOC = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'SELECT CREATED, TAX FROM ALLOC WHERE NALLOC = ' + IntToStr(tvBillItemsTYPE.EditValue);
                       Open;
                       if not IsEmpty then
                       begin
                         dtTax := FieldByName('CREATED').AsDateTime;
                         cTax := FieldByName('TAX').AsCurrency;
                       end;
                       Close;
                       SQL.Text := 'UPDATE ALLOC SET TAXCODE = ''' + sTaxCode +
                         ''', TAX = AMOUNT * :TaxRate, BILLED_TAX_AMOUNT = AMOUNT * :TaxRate  WHERE NALLOC = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'UPDATE ALLOC SET TAXCODE = ''GST'', TAX = AMOUNT * :TaxRate WHERE NALLOC = ' + IntToStr(tvBillItemsTYPE.EditValue);
                     end;
                 end;
                 if cTax = 0
                 then
                 begin
                   ParamByName('TaxRate').AsFloat := TaxRate('', '' + sTaxCode + '', dtTax);
                   // ParamByName('TaxRate').AsFloat := TaxRate('', 'GST', dtTax);
                   ExecSQL;
                   Close;
                 end;
               end;
             end;
           end;
           DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);
         finally
           RestoreSelectedItems();
         end;
      end;
   end;
end;

procedure TfrmInvoice.tbtnPrivateClick(Sender : TObject);
var
   iCtr : Integer;
   ptrData : TptrItemData;

   sPrivate : string;
   AView : TcxGridTableView;
begin
   AView := tvBillItems;
   if AView.DataController.GetSelectedCount > 0 then
   begin
      SaveSelectedItems();
      try
         qryNew.Close;

         for iCtr := AView.DataController.RecordCount - 1 downto 0 do
         begin
            if AView.DataController.IsRowSelected(iCtr) then
            begin
               if tvBillItemsTYPE.EditValue = IMG_FEES then
               begin
                  // if its not private, make it private, else make it not private
                  qryNew.SQL.Text := 'SELECT PRIVATE FROM FEE WHERE NFEE = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                  qryNew.Open;
                  if qryNew.RecordCount > 0 then
                  begin
                     sPrivate := qryNew.FieldByName('PRIVATE').AsString;
                  end;
                  qryNew.Close;
                  if (sPrivate = 'N') or (sPrivate = '') then
                     qryNew.SQL.Text := 'UPDATE FEE SET PRIVATE = ''Y'' WHERE NFEE = ' + IntToStr(tvBillItemsUNIQUEID.EditValue)
                  else
                     qryNew.SQL.Text := 'UPDATE FEE SET PRIVATE = ''N'' WHERE NFEE = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                  qryNew.ExecSQL;
                  qryNew.Close;
               end;
            end;
         end; // for
         // refresh the grid
         DisplayItems;
      finally
         RestoreSelectedItems();
      end;
   end;
end;

procedure TfrmInvoice.tbtnRecalculateClick(Sender : TObject);
var
   dGstFree : double;
begin
   try
      CalcTotal;
      qryNew.SQL.Clear;
      qryNew.Close;
      qryNew.SQL.Text := 'SELECT SUM(AMOUNT) AS TOT FROM FEE WHERE ' +
      // ' NMATTER = ' + IntToStr(qryInvoice.fieldByName('NMATTER').AsInteger) +' AND '
        ' NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger);

      { qryNew.SQL.Text := 'SELECT SUM(AMOUNT) AS TOT FROM FEE WHERE NMATTER = ' +
        IntToStr(qryInvoice.fieldByName('NMATTER').AsInteger) +
        ' AND ((NMEMO is null AND FEE.BILLED = ''N'') OR (NMEMO = ' +
        IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + '))'; }
      qryNew.Open;
      if not qryNew.IsEmpty
      then
        neFees.AsCurrency := qryNew.FieldByName('TOT').AsCurrency
      else
        neFees.AsCurrency := 0.00;

      qryNew.Close;
      qryNew.SQL.Clear;
      neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
        qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
      TaxFees := neFeesTax.AsCurrency;
      neFeesTaxFree.AsCurrency := dGstFree;
      // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
      lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);
      SaveInvoice;
   finally
      RestoreSelectedItems();
   end;
end;

procedure TfrmInvoice.tbtnNewFeeClick(Sender : TObject);
  var
    LfrmFeeNew : TfrmFeeNew;
    LNFee : Integer;
    dGstFree : double;
  begin
    LfrmFeeNew := TfrmFeeNew.create(Self, False);
    LfrmFeeNew.DisplayMatter(qryMatter.FieldByName('FILEID').AsString);
    LNFee := LfrmFeeNew.ShowModal;
    if LNFee <> mrCancel
    then
    begin
      // popGridRemoveFeesClick(sender);
      SaveInvoice;
      procBillAddFee.ParamByName('P_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddFee.ParamByName('P_NFEE').AsInteger := LNFee;
      procBillAddFee.Execute;
      DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);
      neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
        qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
      TaxFees := neFeesTax.AsCurrency;
      neFeesTaxFree.AsCurrency := dGstFree;
      // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
      lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);
    end;
  end;
{
  procedure TfrmInvoice.tbtnRemoveItemsClick(Sender: TObject);
  var
  iCtr, ImageIndex : integer;
  sTable : string;
  cFees, cDisb, cAntd, cSund, cUpCred : currency;
  bGrouped: boolean;
  begin
  if tvBillItems.DataController.GetSelectedCount > 0 then
  begin
  SaveSelectedItems;
  cFees := 0;
  cDisb := 0;
  cAntd := 0;
  cSund := 0;
  cUpCred := 0;
  qryNew.Close;

  bGrouped := False;
  if tvBillItems.ViewData.GridView.GroupedItemCount > 0 then
  begin
  grdBillItems.FocusedView.DataController.Groups.FullExpand;
  bGrouped := True;
  end;
  tvBillItems.DataController.FocusedRowIndex := 0;
  for iCtr := 0 to tvBillItems.DataController.RecordCount - 1 do
  begin
  if (tvBillItems.ViewData.Records[iCtr].Level <> 0) or
  (not bGrouped ) then
  begin
  if tvBillItems.DataController.IsRowselected(iCtr) then
  begin
  tvBillItems.ViewData.Records[iCtr].Focused := True;
  ImageIndex := tvBillItemsTYPE.EditValue;
  case ImageIndex of
  IMG_FEES :
  begin
  sTable := 'FEE';
  end;
  IMG_DISB :
  begin
  sTable := 'ALLOC';
  end;
  IMG_ANTD :
  begin
  sTable := 'CHEQREQ';
  end;
  IMG_SUND :
  begin
  sTable := 'SUNDRY';
  end;
  IMG_UPCRED :
  begin
  sTable := 'ALLOC';
  end;
  end;

  //          lvBillItems.DataController.SetFocus;
  if ImageIndex = IMG_UPCRED then
  qryNew.SQL.Text := 'UPDATE ALLOC SET NMEMO = null WHERE NALLOC = ' + IntToStr(tvBillItemsUNIQUEID.EditValue)
  else
  qryNew.SQL.Text := 'UPDATE ' + sTable + ' SET NMEMO = null WHERE N' + sTable + ' = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);

  qryNew.ExecSQL;
  qryNew.Close;

  // Take this amount off the invoice

  if ImageIndex = IMG_UPCRED then
  qryNew.SQL.Text := 'SELECT AMOUNT FROM ALLOC WHERE NALLOC = ' + IntToStr(tvBillItemsUNIQUEID.EditValue)
  else
  qryNew.SQL.Text := 'SELECT AMOUNT FROM ' + sTable + ' WHERE N' + sTable + ' = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);

  qryNew.Open;
  case ImageIndex of
  IMG_FEES : cFees := cFees + qryNew.FieldByName('AMOUNT').AsCurrency;
  IMG_DISB : cDisb := cDisb + qryNew.FieldByName('AMOUNT').AsCurrency;
  IMG_ANTD : cAntd := cAntd + qryNew.FieldByName('AMOUNT').AsCurrency;
  IMG_SUND : cSund := cSund + qryNew.FieldByName('AMOUNT').AsCurrency;
  IMG_UPCRED : cUpCred := cUpCred + qryNew.FieldByName('AMOUNT').AsCurrency;
  end;
  qryNew.Close;
  // And remove the Item
  //           Delete;
  end;
  end;
  end; // for
  //    dmAxiom.uniInsight.Commit;
  // Update the invoice
  qryInvoice.Edit;
  qryInvoice.FieldByName('FEES').AsCurrency := qryInvoice.FieldByName('FEES').AsCurrency - cFees;
  qryInvoice.FieldByName('DISB').AsCurrency := qryInvoice.FieldByName('DISB').AsCurrency + cDisb;
  qryInvoice.FieldByName('ANTD').AsCurrency := qryInvoice.FieldByName('ANTD').AsCurrency - cAntd;
  qryInvoice.FieldByName('SUND').AsCurrency := qryInvoice.FieldByName('SUND').AsCurrency - cSund;
  qryInvoice.FieldByName('UPCRED').AsCurrency := qryInvoice.FieldByName('UPCRED').AsCurrency + cUpCred;
  qryInvoice.FieldByName('INV_NOTE').AsString := memoNotes.Text;
  qryInvoice.FieldByName('EXPPAYMENT').AsDateTime := trunc(dtpExpectedPayment.DateTime);
  qryInvoice.Post;
  DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);
  end;
  ShowTax(neFees, 'FEE');
  ShowTax(neDisb, 'ALLOC');
  ShowTax(neAntD, 'CHEQREQ');
  ShowTax(neUpCred, 'UPCRED');
  ShowTax(neSund, 'SUNDRY');
  CalcTotal();
  try
  RestoreSelectedItems;
  except
  ;
  end;
  end; }

procedure TfrmInvoice.tbtnRemoveItemsClick(Sender : TObject);
  var
    iCtr, ImageIndex, RecIdx, grpItemCount : Integer;
    sTable : string;
    cFees, cDisb, cAntd, cSund, cUpCred : currency;
    bGrouped, bNext : Boolean;
    GroupRow : TcxCustomGridRow;
    AView : TcxGridTableView;
    // AView: TcxGridDBTableView;
  begin
    AView := tvBillItems;
    AView.BeginUpdate;
    if (AView.DataController.GetSelectedCount > 0)
    then
    begin
      SaveSelectedItems;
      cFees := 0;
      cDisb := 0;
      cAntd := 0;
      cSund := 0;
      cUpCred := 0;
      grpItemCount := 0;
      qryNew.Close;

      bGrouped := False;
      if (AView.ViewData.GridView.GroupedItemCount > 0)
      then
      begin
        grdBillItems.FocusedView.DataController.Groups.FullExpand;
        AView.DataController.FocusedRowIndex := 0;
        bNext := true;
        try
          while bNext do
          begin
            with AView, Controller do
            begin
              GroupRow := ViewData.Rows[FocusedRowIndex];
              if not GroupRow.IsData
              then // Group or master row
                inc(grpItemCount);
              try
                GoToNext(true);
              except
                bNext := False;
              end;
            end;
          end;
        except
          //
        end;
        bGrouped := true;
      end;

      AView.DataController.FocusedRowIndex := 0;
      for iCtr := 0 to (AView.DataController.RecordCount + grpItemCount) - 1 do
      begin
        if (AView.ViewData.Records[iCtr].Level <> 0) or (not bGrouped)
        then
        begin
          AView.ViewData.Records[iCtr].Focused := true;
          if AView.ViewData.GetRecordByIndex(iCtr).Values[0] = true
          then
          // if tvBillItems.ViewData.DataController.Values[iCtr, tvBillItemsInclude.Index] = True then
          // if TcxCheckBox(tvBillItemsInclude).Checked then // EditValue = 'Y' then  // lvBillItems.DataController.GetValue(ARowIndex, lvBillItemsInclude.Index) = True then  //(lvBillItems.DataController.IsRowselected(iCtr))  then
          begin
            ImageIndex := tvBillItemsTYPE.EditValue;
            // ImageIndex := tvBillItemsTYPE.EditValue;
            case ImageIndex of
              IMG_FEES :
                begin
                  sTable := 'FEE';
                end;
              IMG_DISB :
                begin
                  sTable := 'ALLOC';
                end;
              IMG_ANTD :
                begin
                  sTable := 'CHEQREQ';
                end;
              IMG_SUND :
                begin
                  sTable := 'SUNDRY';
                end;
              IMG_UPCRED :
                begin
                  sTable := 'ALLOC';
                end;
            end;

            // lvBillItems.DataController.SetFocus;
            if (ImageIndex = IMG_UPCRED)
            then
              qryNew.SQL.Text := 'UPDATE ALLOC SET NMEMO = null WHERE NALLOC = ' + string(AView.ViewData.GetRecordByIndex(iCtr).Values[13])
              // string(tvBillItems.DataController.Values[iCtr, tvBillItemsUNIQUEID.Index])  // IntToStr(tvBillItemsUNIQUEID.EditValue)
            else if (ImageIndex = IMG_ANTD)
            then
            begin
              qryNew.SQL.Text := '';
              //qryNew.SQL.Text := 'UPDATE CHEQREQ SET NMEMO = null, BILLED = ''N'' WHERE NCHEQREQ = ' + string(AView.ViewData.GetRecordByIndex(iCtr).Values[13]);
              // RDW - Reverse it
              ReverseAnticipatedDisbursement(AView.ViewData.GetRecordByIndex(iCtr).Values[13]);
            end
            else
              qryNew.SQL.Text := 'UPDATE ' + sTable + ' SET NMEMO = null WHERE N' + sTable + ' = ' + string(AView.ViewData.GetRecordByIndex(iCtr).Values[13]);
            // IntToStr(tvBillItemsUNIQUEID.EditValue);

            if qryNew.SQL.Text <> '' then
            begin
              qryNew.ExecSQL;
              qryNew.Close;
            end;

            // Take this amount off the invoice

            if ImageIndex = IMG_UPCRED
            then
              qryNew.SQL.Text := 'SELECT AMOUNT FROM ALLOC WHERE NALLOC = ' + string(AView.ViewData.GetRecordByIndex(iCtr).Values[13])
              // IntToStr(tvBillItemsUNIQUEID.EditValue)
            else
            begin
              if sTable = 'FEE'
              then
              begin
                if IsBillItem = 'N'
                then
                  qryNew.SQL.Text := 'SELECT AMOUNT FROM ' + sTable + ' WHERE N' + sTable + ' = ' + string(AView.ViewData.GetRecordByIndex(iCtr).Values[13])
                else
                  qryNew.SQL.Text := 'SELECT TASK_AMOUNT as AMOUNT FROM ' + sTable + ' WHERE N' + sTable + ' = ' +
                    string(AView.ViewData.GetRecordByIndex(iCtr).Values[13]); // IntToStr(tvBillItemsUNIQUEID.EditValue);
              end
              else
                qryNew.SQL.Text := 'SELECT AMOUNT FROM ' + sTable + ' WHERE N' + sTable + ' = ' + string(AView.ViewData.GetRecordByIndex(iCtr).Values[13]);

{
                We are getting the value of the ones we are removing, so must not exclude the recersed things.

                if sTable = 'CHEQREQ' then     // Need to ignore Reversed (deleted) Ant Disbs
                begin
                  qryNew.sql.Add(' AND REV_NCHEQREQ is null');
                end;
}

              // IntToStr(tvBillItemsUNIQUEID.EditValue);
            end;

            qryNew.Open;
            case ImageIndex of
              IMG_FEES :
                cFees := cFees + qryNew.FieldByName('AMOUNT').AsCurrency;
              IMG_DISB :
                cDisb := cDisb + qryNew.FieldByName('AMOUNT').AsCurrency;
              IMG_ANTD :
                cAntd := cAntd + qryNew.FieldByName('AMOUNT').AsCurrency;
              IMG_SUND :
                cSund := cSund + qryNew.FieldByName('AMOUNT').AsCurrency;
              IMG_UPCRED :
                cUpCred := cUpCred + qryNew.FieldByName('AMOUNT').AsCurrency;
            end;
            qryNew.Close;
            // And remove the Item
            // Delete;
          end;
        end;
      end; // for
      // dmAxiom.uniInsight.Commit;
      // Update the invoice
      qryInvoice.Edit;
      qryInvoice.FieldByName('FEES').AsCurrency := qryInvoice.FieldByName('FEES').AsCurrency - cFees;
      qryInvoice.FieldByName('DISB').AsCurrency := qryInvoice.FieldByName('DISB').AsCurrency + cDisb;
      qryInvoice.FieldByName('ANTD').AsCurrency := qryInvoice.FieldByName('ANTD').AsCurrency - cAntd;
      qryInvoice.FieldByName('SUND').AsCurrency := qryInvoice.FieldByName('SUND').AsCurrency - cSund;
      qryInvoice.FieldByName('UPCRED').AsCurrency := qryInvoice.FieldByName('UPCRED').AsCurrency + cUpCred;
      // qryInvoice.FieldByName('INV_NOTE').AsString := memoNotes.Text;
      qryInvoice.FieldByName('EXPPAYMENT').AsDateTime := trunc(dtpExpectedPayment.DateTime);
      qryInvoice.Post;
      DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);
    end;
    DisplayTaxValues;
    AView.EndUpdate;
    try
      RestoreSelectedItems;
    finally
      CalcDiscount;
    end;
  end;
// RDW
procedure TfrmInvoice.ReverseAnticipatedDisbursement(nOldCheqnum: integer);
var
//  liInvoiceNum : Integer;
  nRVCheqReq: string;
  bOKtoPost    : Boolean;
  sReason: string;
  nCheqReq: Integer;
begin
   // RDW Reverse Anticipated Disbursement
   try

      Screen.Cursor := crSQLWait;
      dmAxiom.uniInsight.StartTransaction;

     // Create a new record
      nCheqReq := GetSequenceNumber('sqnc_ncheqreq');

      sReason:= '';
      sReason := 'Deleted - Removed from BillNew by ' + dmAxiom.UserID;

      qryCheqReqReverse.SQL.Clear;
      qryCheqReqReverse.SQL.Text := 'INSERT INTO CHEQREQ ' +
                                    '(REV_NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, DESCR, AMOUNT, '+
                                    'AUTHOR, REQDATE, BANK, HELD, GROUPABLE, ANTICIPATED, BILLED, '+
                                    'NOTE, NMEMO, NCHEQREQ, INVOICEDATE, CONVERTED, TRUST, PRIVATE,'+
                                    ' TAXCODE, TAX, SUNDRYTYPE) '+
                                    'SELECT NCHEQREQ,FILEID,NMATTER, LEDGER, PAYEE, '+
                                    QuotedStr(sReason) +
                                    ', 0-AMOUNT, AUTHOR, SysDate, BANK, HELD, GROUPABLE, ANTICIPATED,'+
                                    ' ''N'', NOTE, null, :NCHEQREQ, INVOICEDATE, CONVERTED, TRUST,'+
                                    ' PRIVATE, TAXCODE, 0-TAX, SUNDRYTYPE '+
                                    'FROM CHEQREQ  '+
                                    'WHERE NCHEQREQ = ' + nOldCheqnum.ToString;

      qryCheqReqReverse.ParamByName('NCHEQREQ').AsInteger := nCheqReq;
      qryCheqReqReverse.ExecSQL;
      qryCheqReqReverse.Close;

      nRVCheqReq := qryCheqReqReverse.ParamByName('NCHEQREQ').AsString;
      qryCheqReqReverse.SQL.Clear;
      qryCheqReqReverse.SQL.Text := 'UPDATE CHEQREQ SET REV_NCHEQREQ = ' + nRVCheqReq + ', BILLED =''N'', NMEMO = null WHERE NCHEQREQ = ' + nOldCheqnum.ToString;
      //qryNew.SQL.Text := 'UPDATE CHEQREQ SET NMEMO = null, BILLED = ''N'' WHERE NCHEQREQ = ' + string(AView.ViewData.GetRecordByIndex(iCtr).Values[13]);

      qryCheqReqReverse.ExecSQL;
      qryCheqReqReverse.Close;

      dmAxiom.uniInsight.Commit;
      Screen.Cursor := crDefault;
   except
      On E: Exception do
      begin
        dmAxiom.uniInsight.Rollback;
        Screen.Cursor := crDefault;
        MsgErr('Error removing anticipated disbursement:' + #13 + #13 + E.Message);
      end;
   end;
end;


procedure TfrmInvoice.tbtnCleargroupClick(Sender : TObject);
  var
    iCtr : Integer;
  begin
    for iCtr := 0 to tvBillItems.ColumnCount - 1 do
      tvBillItems.Columns[iCtr].GroupIndex := - 1;
  end;

procedure TfrmInvoice.tbtnRemoveDisbsClick(Sender : TObject);
  var
    dGstFree : double;
  begin
    qryNew.SQL.Text := 'UPDATE ALLOC SET NMEMO = null WHERE NINVOICE IS NULL AND NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger) +
      ' AND NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger);
    qryNew.ExecSQL;
    qryNew.Close;
    neDisb.AsCurrency := 0;
    qryInvoice.Edit;
    qryInvoice.FieldByName('DISB').AsCurrency := 0;
    qryInvoice.Post;
    DisplayItems;
    neDisbTax.AsCurrency := ShowTax(neDisb.AsCurrency, dGstFree, 'ALLOC', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
      qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
    TaxDisb := neDisbTax.AsCurrency;
    neDisbTaxFree.AsCurrency := dGstFree;
    // sgrTotals.Cells[0, 0] := Format('%10.2f', [neDisbTax.AsCurrency]);
    lblDisbTotal.Caption := Format('%10.2f', [neDisbTax.AsCurrency]);
  end;

procedure TfrmInvoice.tbtnRemoveCheqReqClick(Sender : TObject);
  var
    bRemove : Boolean;
    dGstFree : double;
  begin
    bRemove := true;
    if Sender is TdxBarButton
    then
      if MsgAsk('Remove Anticipated Disbursements?') = mrNO
      then
        bRemove := False;
    // 11 Nov 2017 - set removed cheq req back to not billed
    if bRemove
    then
    begin
      qryNew.SQL.Text := 'UPDATE CHEQREQ SET NMEMO = null, BILLED = ''N'' WHERE NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString + ' AND NMEMO = ' +
        IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger);
      qryNew.ExecSQL;
      qryNew.Close;
      neAntd.AsCurrency := 0;
      qryInvoice.Edit;
      qryInvoice.FieldByName('ANTD').AsCurrency := 0;
      qryInvoice.Post;
      DisplayItems;
      neAntdTax.AsCurrency := ShowTax(neAntd.AsCurrency, dGstFree, 'CHEQREQ', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
        qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);

      TaxFees := neAntdTax.AsCurrency;
      neAntdTaxFree.AsCurrency := dGstFree;
      lblAntdTotal.Caption := Format('%10.2f', [neAntdTax.AsCurrency]);
    end;
  end;

procedure TfrmInvoice.tbtnRemoveUpCredClick(Sender : TObject);
  var
    bRemove : Boolean;
    dGstFree : double;
  begin
    bRemove := true;
    if Sender is TdxBarButton
    then
      if MsgAsk('Remove Unpaid Creditors?') = mrNO
      then
        bRemove := False;

    if bRemove
    then
    begin
      qryNew.SQL.Text := 'UPDATE ALLOC SET NMEMO = null WHERE NINVOICE IS NOT NULL AND NMATTER = ' + qryInvoice.FieldByName('NMATTER').AsString +
        ' AND NMEMO = ' + IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger);
      qryNew.ExecSQL;
      qryNew.Close;
      neUpCred.AsCurrency := 0;
      qryInvoice.Edit;
      qryInvoice.FieldByName('UPCRED').AsCurrency := 0;
      qryInvoice.Post;
      DisplayItems;
      neUpCredTax.AsCurrency := ShowTax(neUpCred.AsCurrency, dGstFree, 'UPCRED', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
        qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
      TaxUpCred := neUpCredTax.AsCurrency;
      neUpCredTaxFree.AsCurrency := dGstFree;
      // sgrTotals.Cells[0, 0] := Format('%10.2f', [neUpCredTax.AsCurrency]);
      lblCredTotal.Caption := Format('%10.2f', [neUpCredTax.AsCurrency]);
    end;
  end;

procedure TfrmInvoice.tbtnRemoveSundriesClick(Sender : TObject);
  var
    bRemove : Boolean;
    dGstFree : double;
  begin
    bRemove := true;
    if Sender is TdxBarButton
    then
      if MsgAsk('Remove Sundries?') = mrNO
      then
        bRemove := False;

    if bRemove
    then
    begin
      // 25/11/2009
      // delete any ia sundry transactions prior to rebuild
      qryNew.SQL.Text := 'DELETE FROM SUNDRY WHERE TYPE = ''ia'' AND NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger) + ' AND NMEMO = ' +
        IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger);
      qryNew.ExecSQL;
      qryNew.Close;

      qryNew.SQL.Text := 'UPDATE SUNDRY SET NMEMO = null WHERE NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger) + ' AND NMEMO = ' +
        IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger);
      qryNew.ExecSQL;
      qryNew.Close;
      RemoveDisbSund;

      neSund.AsCurrency := 0;
      qryInvoice.Edit;
      qryInvoice.FieldByName('SUND').AsCurrency := 0;
      qryInvoice.Post;
      DisplayItems;
      neSundTax.Value := ShowTax(neSund.AsCurrency, dGstFree, 'SUNDRY', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
        qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
      TaxSund := neSundTax.Value;
      neSundTaxFree.AsCurrency := dGstFree;
      // sgrTotals.Cells[0, 0] := Format('%10.2f', [neSundTax.Value]);
      lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);
    end;
  end;

procedure TfrmInvoice.tbtnRemoveAllClick(Sender : TObject);
  var
    iInvoice : Integer;
    sFileID, sMatter, sInvoice : string;
    bRemove : Boolean;
    dGstFree : currency;
  begin
    bRemove := true;
    if Sender is TdxBarButton
    then
      if MsgAsk('Remove All Transactions?') = mrNO
      then
        bRemove := False;

    if bRemove
    then
    begin
      // works when non there
      iInvoice := qryInvoice.FieldByName('NMEMO').AsInteger;
      sInvoice := IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger);
      sMatter := IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger);
      sFileID := qryInvoice.FieldByName('FILEID').AsString;
      qryInvoice.Close;
      with qryNew do
      begin
        try
          Close;
          if dmAxiom.uniInsight.InTransaction
          then
            dmAxiom.uniInsight.Commit;
          dmAxiom.uniInsight.StartTransaction;
          SQL.Text := 'UPDATE FEE SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice;
          ExecSQL;
          Close;
          // works for disbs and upcred
          SQL.Text := 'UPDATE ALLOC SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice;
          ExecSQL;
          Close;
          SQL.Text := 'UPDATE CHEQREQ SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice;
          ExecSQL;
          Close;
          SQL.Text := 'UPDATE SUNDRY SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice;
          ExecSQL;
          Close;
          SQL.Text :=
            'UPDATE NMEMO SET FEES = null, DISB = 0, ANTD = 0, SUND = 0, UPCRED = 0, FEES_FLAG = ''0'', DISB_FLAG = ''0'', ANTD_FLAG = ''0'', UPCRED_FLAG = ''0'', SUND_FLAG = ''0'' WHERE NMEMO = '
            + sInvoice;
          ExecSQL;
          Close;
          dmAxiom.uniInsight.Commit;
        except
          on E : Exception do
          begin
            dmAxiom.uniInsight.Rollback;
            MsgErr('Removal of invoice items failed:' + chr(13) + chr(13) + E.Message);
          end;
        end;

        DisplayInvoice(iInvoice);
      end;
      DisplayTaxValues;

      CalcTotal();
    end;
  end;

procedure TfrmInvoice.tbtnRebuildAllClick(Sender : TObject);
  begin
    try
      // SaveInvoice;
      // popGridRemoveAllClick(sender);
      // popGridRemoveFeesClick(sender);
      RebuildData(Sender);
    finally
      RestoreSelectedItems();
    end;
  end;

procedure TfrmInvoice.tbtnRemoveFilterClick(Sender : TObject);
  begin
    // popGridFilter.Checked := False;
    tbtnSelectedMonth.Down := False;
    sMonth := '';
    DisplayItems;
  end;

procedure TfrmInvoice.tbtnSelectedMonthClick(Sender : TObject);
  begin
    // popGridFilter.Checked := True;
    tbtnSelectedMonth.Down := true;
    try
      sMonth := DateToStr(tvBillItemsCREATED.EditValue);
      // sMonth := DateToStr(tvBillItemsCREATED.DataBinding.Field.AsDateTime);
      if sMonth <> ''
      then
        sMonth := Formatdatetime('MM/YYYY', StrToDate(sMonth));
      DisplayItems;
    except
      // swallow
    end;
  end;

procedure TfrmInvoice.tbtnShowSummaryClick(Sender : TObject);
  begin
    if tvBillItems.Preview.Active
    then
    begin
      // lvBillItems.Preview.Active := False;
      tvBillItems.Preview.Column := tvBillItemsUNIQUEID;
      tvBillItems.Preview.Visible := False;
    end
    else
    begin
      // lvBillItems.Preview.Active := True;
      tvBillItems.Preview.Column := tvBillItemsDESCR;
      tvBillItems.Preview.Visible := true;
    end;
  end;

procedure TfrmInvoice.pmGridPopup(Sender : TObject);
var
    iLoop, ImageIndex : Integer;
    miNew : TMenuItem;
    iCtr : Integer;
    TotalItems : Integer;
    menuReopen : TdxBarButton;
    NewItemLink : TdxBarItemLink;
begin
//   if ((Boolean(cbAuthorise.EditValue) = true) and (dmAxiom.Is_Cashier = 'Y')) then
//   begin
      tbtnShowSummary.Caption := 'View Description in Preview';
      tbtnGroupSort.Caption := 'Group when Sorting';
      if tvBillItems.Preview.Active then
         tbtnShowSummary.Caption := 'Hide Preview';
      if tvBillItems.OptionsCustomize.GroupBySorting then
         tbtnGroupSort.Caption := 'Remove Grouping when sorting';

      tbtnUnassignDebtor.Visible := ivNever;
      tbtnAssignToDebtor.Visible := ivNever;
      tbtnEditDescription.Visible := ivNever;

      bbtnShowSingleLine.Down := (not SettingLoadBoolean('tvBillItems', 'SingleLine'));

      if qryInvoice.FieldByName('DISPATCHED').AsString <> '' then
      begin
         tbtnAddGST.Enabled := False;
         tbtnRemove.Enabled := False;
         tbtnRemoveAll.Enabled := False;
         tbtnRebuildAll.Enabled := False;
         tbtnEdit.Enabled := False;
     { popItemWriteOff.Enabled := False;
       popGridFilter.Enabled := False; }
         tbtnRecalculate.Enabled := False;
         tbtnPrivate.Enabled := False;
         tbtnNewFee.Enabled := False;
         btnAddSundry.Enabled := False;
         btnAddChequeRequest.Enabled := False;
         tbtnQuickEdit.Enabled := False;
         btnUplift10.Enabled := False;
         btnUplift25.Enabled := False;
         tbtnFilter.Enabled := False;
         bbtnAdjDisbTotal.Enabled := False;
         barbtnTaxcodeList.Enabled := False;
         barbtnReassignFees.Enabled := False;
      end
      else
      begin
         tbtnAddGST.Enabled := true;
         tbtnRemove.Enabled := true;
         tbtnRemoveAll.Enabled := true;
         tbtnRebuildAll.Enabled := true;
     // popGridFilter.Enabled := True;
         tbtnRecalculate.Enabled := true;
         tbtnPrivate.Enabled := true;
         tbtnNewFee.Enabled := true;
         btnAddSundry.Enabled := true;
         btnAddChequeRequest.Enabled := True;
         btnUplift10.Enabled := true;
         btnUplift25.Enabled := true;
         tbtnFilter.Enabled := true;
         barbtnReassignFees.Enabled := True;

         tbtnQuickEdit.Enabled := (dmAxiom.Security.Fee.QuickEdit) and (tvBillItemsTYPE.EditValue = IMG_FEES);

         if (tvBillItems.DataController.GetSelectedCount > 1) or (tvBillItems.DataController.GetSelectedCount < 1) then
         begin
            tbtnEdit.Enabled := False;
       // popItemWriteOff.Enabled := False;
         end
         else
         begin
            ImageIndex := tvBillItemsTYPE.EditValue;
            if ((ImageIndex <> IMG_DISB) AND (ImageIndex <> IMG_UPCRED)) then
               tbtnEdit.Enabled := true
            else
               tbtnEdit.Enabled := False;
       // popItemWriteOff.Enabled := True;
         end;
         if (ImageIndex = IMG_DISB) or (ImageIndex = IMG_UPCRED) then
            tbtnEditDescription.Visible := ivAlways;

         bbtnAdjDisbTotal.Enabled := (ImageIndex = IMG_DISB) and (SystemString('ALLOW_DISB_ADJUSTMENT') = 'Y');
         barbtnTaxcodeList.Enabled := ((tvBillItemsTYPE.EditValue = IMG_DISB) or (tvBillItemsTYPE.EditValue = IMG_ANTD));
      end;

   // can we assign to debtors ?
   // are any of the selected items a disb?
   // uncommented on 09/09/2009 by AES
      ImageIndex := tvBillItemsTYPE.EditValue;
      if ImageIndex = IMG_DISB then
      begin
         qrySubBills.Close;
         qrySubBills.ParamByName('NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
         qrySubBills.Open;

         if not qrySubBills.Eof then
         begin
            tbtnUnassignDebtor.Visible := ivAlways;
            tbtnAssignToDebtor.Visible := ivAlways;
         end;

         if tvBillItems.Controller.GridView.GroupedColumnCount > 0 then
            btnExpand.Visible := ivAlways
         else
            btnExpand.Visible := ivNever;
      end;
      if ((bAlterGSTAmount) and (rgFilter.ItemIndex in [2, 4, 5]) and (qryBillItems.RecordCount > 0) and (qryInvoice.FieldByName('DISPATCHED').IsNull)) then
      begin
         tbtnEditTax.Enabled := true;
         tbtnEditTax.Visible := ivAlways;
      end
      else
      begin
         tbtnEditTax.Enabled := False;
         tbtnEditTax.Visible := ivNever;
      end;

   { if tbtnAssignToDebtor.Visible = ivAlways then
     begin
     qrySubBills.Close;
     qrySubBills.ParamByName('NMEMO').AsInteger := qryInvoice.fieldByName('NMEMO').AsInteger;
     qrySubBills.open;

     if qrySubBills.eof then
     begin
     tbtnUnassignDebtor.Visible := ivNever;
     tbtnAssignToDebtor.Visible := ivNever;
     end;

     TotalItems := tbtnAssignToDebtor.ItemLinks.Count;
     for iCtr := TotalItems - 1 downto 1 do
     tbtnAssignToDebtor.ItemLinks.Delete(iCtr);

     NewItemLink := tbtnAssignToDebtor.ItemLinks.Add;
     while not qrySubBills.eof do
     begin
     menuReopen := TdxBarButton.Create(nil);
     menuReopen.Caption := qrySubBills.fieldByName('debtor_name').AsString;
     menuReopen.ImageIndex := qrySubBills.fieldByName('nsubbill').AsInteger;
     menuReopen.OnClick := assignToDebtor;
     tbtnAssignToDebtor.ItemLinks.Add.Item := menuReopen;
     next;
     end;
     qrySubBills.Close;
     end; }
//   end;
end;

procedure TfrmInvoice.tbtnGroupSortClick(Sender : TObject);
begin
   if tvBillItems.OptionsCustomize.GroupBySorting then
      tvBillItems.OptionsCustomize.GroupBySorting := False
   else
      tvBillItems.OptionsCustomize.GroupBySorting := true;
end;

procedure TfrmInvoice.FormDestroy(Sender : TObject);
begin
    // SaveColumnData;
    // SettingSaveStream(dmAxiom.UserID,'BillItem Layout',tvBillItems);
end;

procedure TfrmInvoice.SaveColumnData;
var
    LNumFields : Integer;
    GroupIndex : Integer;
begin
   for LNumFields := 0 to tvBillItems.ColumnCount - 3 do
   begin
      SettingSave(C_BILLITEMSGRID, C_COLUMNNAME + IntToStr(LNumFields), tvBillItems.Columns[LNumFields].Name);
      SettingSaveBoolean(C_BILLITEMSGRID, C_COLUMNVISIBLE + IntToStr(LNumFields), tvBillItems.Columns[LNumFields].Visible);
      SettingSave(C_BILLITEMSGRID, C_COLUMNSORTORDER + IntToStr(LNumFields), tvBillItems.Columns[LNumFields].SortOrder);
      SettingSave(C_BILLITEMSGRID, C_COLUMNGROUPORDER + IntToStr(LNumFields), tvBillItems.Columns[LNumFields].GroupIndex);
      SettingSave(C_BILLITEMSGRID, C_COLUMNWIDTH + IntToStr(LNumFields), Integer(tvBillItems.Columns[LNumFields].Width));
      SettingSave(C_BILLITEMSGRID, C_COLUMNPOSITION + IntToStr(LNumFields), Integer(tvBillItems.Columns[LNumFields].Index));
   end;
   SettingSave(C_BILLITEMSGRID, 'ColumnCount', LNumFields);
end;

procedure TfrmInvoice.LoadColumnData;
var
    LNumFields : Integer;
    I : Integer;
    LVisibleIndex : Integer;
begin
    for LNumFields := 0 to tvBillItems.ColumnCount - 3 do
    begin
      tvBillItems.Columns[LNumFields].Visible := SettingLoadGridBoolean(C_BILLITEMSGRID, C_COLUMNVISIBLE + IntToStr(LNumFields));
      tvBillItems.Columns[LNumFields].SortOrder := SettingLoadSort(C_BILLITEMSGRID, C_COLUMNSORTORDER + IntToStr(LNumFields));
      if SettingLoadInteger(C_BILLITEMSGRID, C_COLUMNWIDTH + IntToStr(LNumFields)) > 0
      then
        tvBillItems.Columns[LNumFields].Width := SettingLoadInteger(C_BILLITEMSGRID, C_COLUMNWIDTH + IntToStr(LNumFields));

      if tvBillItems.Columns[LNumFields].Visible then
        for I := 0 to tvBillItems.ColumnCount - 3 do
        begin
          if SettingLoadString(C_BILLITEMSGRID, C_COLUMNNAME + IntToStr(I)) = tvBillItems.Columns[LNumFields].Name
          then
            if SettingLoadInteger(C_BILLITEMSGRID, C_COLUMNPOSITION + IntToStr(I)) = 0
            then
            begin
              tvBillItems.Columns[LNumFields].Index := LVisibleIndex;
              inc(LVisibleIndex);
              break;
            end
            else
            begin
              tvBillItems.Columns[LNumFields].Index := SettingLoadInteger(C_BILLITEMSGRID, C_COLUMNPOSITION + IntToStr(I));
              break;
            end;
        end;
    end;
end;

procedure TfrmInvoice.RemoveByInterimDate;
  var
    iInvoice : Integer;
    sFileID, sMatter, sInvoice : string;
    cFees, cDisb, cAntd, cSund, cUpCred : currency;
  begin
    // 09/09/2009 AES did this because it should rebuild everything when using interim date.
    RemoveFees;
    RemoveDisb;
    RemoveUPCred;
    RemoveSund;
    RemoveAntd;
    RemoveDisbSund;
    SaveInvoice;

    if IsBillItem = 'N'
    then
    begin
      procBillAddFees.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddFees.ParamByName('p_master').AsInteger := 0;
      if Boolean(cbMasterBill.EditValue)
      then
        procBillAddFees.ParamByName('p_master').AsInteger := 1;
      if dtpInterim.Checked
      then
        procBillAddFees.ParamByName('p_CREATED').AsDate := dtpInterim.Date;
      procBillAddFees.Execute;
    end
    else
    begin
      procBillAddItemFees.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddItemFees.ParamByName('p_master').AsInteger := 0;
      if Boolean(cbMasterBill.EditValue)
      then
        procBillAddItemFees.ParamByName('p_master').AsInteger := 1;
      if dtpInterim.Checked
      then
        procBillAddItemFees.ParamByName('p_CREATED').AsDate := dtpInterim.Date;
      procBillAddItemFees.Execute;
    end;

    { procBillAddFees.ParamByName('p_Master').AsInteger := 0;
      procBillAddFees.ParamByName('p_NMemo').AsInteger :=  qryInvoice.FieldByName('NMEMO').AsInteger;
      if chkMasterBill.Checked then
      procBillAddFees.ParamByName('p_Master').AsInteger :=  1;
      procBillAddFees.ParamByName('P_CREATED').AsDate :=  dtpInterim.date;
      procBillAddFees.Execute; }

    procBillAddDisb.ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    procBillAddDisb.ParamByName('P_CREATED').AsDate := dtpInterim.Date;
    procBillAddDisb.Execute;

    procBillAddAntd.ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    procBillAddAntd.ParamByName('P_CREATED').AsDate := dtpInterim.Date;
    procBillAddAntd.Execute;

    procBillAddSund.ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    procBillAddSund.ParamByName('P_CREATED').AsDate := dtpInterim.Date;
    procBillAddSund.Execute;

    procBillAddUpCred.ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    procBillAddUpCred.ParamByName('P_CREATED').AsDate := dtpInterim.Date;
    procBillAddUpCred.Execute;
    if SystemString('DFLT_DISB_SUNDRY') <> ''
    then
    begin
      procbill_add_disb_percent.ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procbill_add_disb_percent.ParamByName('P_CREATED').AsDate := dtpInterim.Date;
      procbill_add_disb_percent.Execute;
    end;
    DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);
    DisplayTaxValues;
    // ShowTax(neFees, 'FEE');
    // ShowTax(neDisb, 'ALLOC');
    // ShowTax(neAntD, 'CHEQREQ');
    // ShowTax(neUpCred, 'UPCRED');
    // ShowTax(neSund, 'SUNDRY');
    CalcTotal();

    { cFees := 0;
      cDisb := 0;
      cAntd := 0;
      cSund := 0;
      cUpCred := 0;
      //works when non there
      iInvoice := StrToInt(lblNMemo.Caption);
      sInvoice := IntToStr(iInvoice);
      sMatter := IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger);
      sFileID :=  qryInvoice.FieldByName('FILEID').AsString;

      // Take this amount off the invoice
      with qryNew do
      begin
      Close;
      qryNew.SQL.Text := 'SELECT sum(AMOUNT) as total FROM FEE WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice +
      ' and trunc(created) > to_date('+Quotedstr(DateToStr(InterimDate))+',''dd/mm/yyyy'') '+
      ' AND BILLTYPE = ''Billable'' ';
      Open;
      cFees := qryNew.FieldByName('TOTAL').AsCurrency;

      Close;
      qryNew.SQL.Text := 'SELECT sum(AMOUNT) as total FROM ALLOC WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice +
      ' and trunc(created) > to_date('+Quotedstr(DateToStr(InterimDate))+',''dd/mm/yyyy'') '+
      ' and TRUST <> ''T'' AND TYPE <> ''RF'' AND (NCHEQUE > 0 OR TYPE = ''J2'' OR TYPE = ''DR'') ';
      Open;
      cDisb := qryNew.FieldByName('TOTAL').AsCurrency;

      Close;
      qryNew.SQL.Text := 'SELECT sum(AMOUNT) as total FROM CHEQREQ WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice +
      ' and trunc(reqdate) > to_date('+Quotedstr(DateToStr(InterimDate))+',''dd/mm/yyyy'') '+
      ' and (converted <> ''R'' OR trust <> ''T'')';
      Open;
      cAntd := qryNew.FieldByName('TOTAL').AsCurrency;

      Close;
      qryNew.SQL.Text := 'SELECT sum(AMOUNT) as total FROM SUNDRY WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice +
      ' and trunc(created) > to_date('+Quotedstr(DateToStr(InterimDate))+',''dd/mm/yyyy'') ';
      Open;
      cSund := qryNew.FieldByName('TOTAL').AsCurrency;

      Close;
      qryNew.SQL.Text := 'SELECT sum(AMOUNT) as total FROM ALLOC WHERE ninvoice is not null AND NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice +
      ' and trunc(created) > to_date('+Quotedstr(DateToStr(InterimDate))+',''dd/mm/yyyy'') '+
      ' AND trust <> ''T'' AND TYPE <> ''RF'' ';
      Open;
      cUpCred := FieldByName('Total').AsCurrency;
      end;
      qryNew.Close;

      qryInvoice.Close;
      with qryNew do
      begin
      try
      Close;
      dmAxiom.uniInsight.StartTransaction;
      SQL.Text := 'UPDATE FEE SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice + ' and trunc(created) > to_date('+Quotedstr(DateToStr(InterimDate))+',''dd/mm/yyyy'') ';
      Execute;
      Close;
      //works for disbs and upcred
      SQL.Text := 'UPDATE ALLOC SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice + ' and trunc(created) > to_date('+Quotedstr(DateToStr(InterimDate))+',''dd/mm/yyyy'') ';
      Execute;
      Close;
      SQL.Text := 'UPDATE CHEQREQ SET NMEMO = null WHERE FILEID = ' + QuotedStr(sFileID) + ' AND NMEMO = ' + sInvoice + ' and trunc(reqdate) > to_date('+Quotedstr(DateToStr(InterimDate))+',''dd/mm/yyyy'') ';
      Execute;
      Close;
      SQL.Text := 'UPDATE SUNDRY SET NMEMO = null WHERE NMATTER = ' + sMatter + ' AND NMEMO = ' + sInvoice + ' and trunc(created) > to_date('+Quotedstr(DateToStr(InterimDate))+',''dd/mm/yyyy'') ';
      Execute;
      Close;
      dmAxiom.uniInsight.Commit;
      except
      on E: Exception do
      begin
      dmAxiom.uniInsight.Rollback;
      MsgErr('Removal of invoice items failed:' + chr(13) + chr(13) + E.Message);
      end;
      end;

      //    RebuildData;
      // Update the invoice
      qryInvoice.Open;
      qryInvoice.Edit;
      qryInvoice.FieldByName('INTERIM').AsDateTime := dtpInterim.Date;
      qryInvoice.FieldByName('FEES').AsCurrency := qryInvoice.FieldByName('FEES').AsCurrency - cFees;
      qryInvoice.FieldByName('DISB').AsCurrency := qryInvoice.FieldByName('DISB').AsCurrency + cDisb;
      qryInvoice.FieldByName('ANTD').AsCurrency := qryInvoice.FieldByName('ANTD').AsCurrency - cAntd;
      qryInvoice.FieldByName('SUND').AsCurrency := qryInvoice.FieldByName('SUND').AsCurrency - cSund;
      qryInvoice.FieldByName('UPCRED').AsCurrency := qryInvoice.FieldByName('UPCRED').AsCurrency + cUpCred;
      qryInvoice.Post;
      DisplayInvoice(iInvoice);
      DisplayItems;
      end;
      ShowTax(neFees, 'FEE');
      ShowTax(neDisb, 'ALLOC');
      ShowTax(neAntD, 'CHEQREQ');
      ShowTax(neUpCred, 'UPCRED');
      ShowTax(neSund, 'SUNDRY');
      CalcTotal(); }
  end;

procedure TfrmInvoice.btnInterimDateClick(Sender : TObject);
  begin
    RemoveByInterimDate;
  end;

procedure TfrmInvoice.tbtnUnassignDebtorClick(Sender : TObject);
  var
    nbill, iLoop, ImageIndex : Integer;
    ptrData : TptrItemData;
  begin
    nbill := (Sender as TMenuItem).Tag;

    for iLoop := 0 to tvBillItems.DataController.GetSelectedCount - 1 do
    begin
      tvBillItems.DataController.FocusedRowIndex := tvBillItems.DataController.GetSelectedRowIndex(iLoop);
      ImageIndex := tvBillItemsTYPE.EditValue;
      if ImageIndex <> IMG_DISB
      then
        continue;

      // now update the alloc
      qryAllocSubBill.Close;
      qryAllocSubBill.ParamByName('nalloc').AsInteger := tvBillItemsUNIQUEID.EditValue;
      if Sender = tbtnUnassignDebtor
      then
        qryAllocSubBill.ParamByName('nsubbill').AsString := ''
      else
        qryAllocSubBill.ParamByName('nsubbill').AsInteger := nbill;
      qryAllocSubBill.ExecSQL;

    end;
    // DisplayItems;
  end;

procedure TfrmInvoice.tbtnAssignToDebtorPopup(Sender : TObject);
  var
    iCtr : Integer;
    TotalItems : Integer;
    menuReopen : TdxBarButton;
    NewItemLink : TdxBarItemLink;
  begin
    if tbtnAssignToDebtor.Visible = ivAlways
    then
    begin
      qrySubBills.Close;
      qrySubBills.ParamByName('NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      qrySubBills.Open;

      TotalItems := tbtnAssignToDebtor.ItemLinks.Count;
      for iCtr := TotalItems - 1 downto 1 do
        tbtnAssignToDebtor.ItemLinks.Delete(iCtr);

      NewItemLink := tbtnAssignToDebtor.ItemLinks.Add;
      while not qrySubBills.Eof do
      begin
        menuReopen := TdxBarButton.create(nil);
        menuReopen.Caption := qrySubBills.FieldByName('debtor_name').AsString;
        menuReopen.Tag := qrySubBills.FieldByName('nsubbill').AsInteger;
        menuReopen.OnClick := assignToDebtor;
        tbtnAssignToDebtor.ItemLinks.Add.Item := menuReopen;
        qrySubBills.Next;
      end;
      qrySubBills.Close;
    end;
  end;

procedure TfrmInvoice.tbtnEditDescriptionClick(Sender : TObject);
  var
    iLoop, iResult, ImageIndex, lnInvoice, lnCheque, lnJournal : Integer;
    ptrData : TptrItemData;
    sDescr, lsAcct : String;
    bFound : Boolean;
  begin
    sDescr := '';

    // lvBillItems.DataController.FocusedRowIndex := lvBillItems.DataController.GetSelectedRowIndex(iLoop);
    ImageIndex := tvBillItemsTYPE.EditValue;
    if (ImageIndex = IMG_DISB) OR (ImageIndex = IMG_UPCRED)
    then
    begin
      with TfrmEditText.create(Self) do
      begin
        Caption := 'Edit Description';
        try
          Text := string(tvBillItemsDESCR.EditValue);
        except
          Text := '';
        end;
        iResult := ShowModal;
        sDescr := Text;
        Free;
      end;

      with dmAxiom.qryTmp do
      begin
        Close;
        SQL.Text := 'select ncheque, ninvoice, njournal, acct from alloc where nalloc = :nalloc';
        ParamByName('NALLOC').AsInteger := tvBillItemsUNIQUEID.EditValue;
        Open;
        lnInvoice := FieldByName('NINVOICE').AsInteger;
        lnCheque := FieldByName('NCHEQUE').AsInteger;
        lnJournal := FieldByName('NJOURNAL').AsInteger;
        lsAcct := FieldByName('ACCT').AsString;
        Close;
      end;

      // it's an invoice
      if lnInvoice <> 0
      then
      begin
        with dmAxiom.qryTmp do
        begin
          Close;
          SQL.Text := 'update invoice set descr = :descr where ninvoice = :ninvoice and acct = :entity';
          ParamByName('descr').AsString := sDescr;
          ParamByName('ninvoice').AsInteger := lnInvoice;
          ParamByName('entity').AsString := lsAcct;
          ExecSQL;
          // now transitem
          Close;
          SQL.Text := 'update transitem set descr = :descr where nowner = :ninvoice and acct = :entity and owner_code = ''INVOICE'' ';
          ParamByName('descr').AsString := sDescr;
          ParamByName('ninvoice').AsInteger := lnInvoice;
          ParamByName('entity').AsString := lsAcct;
          ExecSQL;
        end;
      end;

      // it's a cheque
      if lnCheque <> 0
      then
      begin
        with dmAxiom.qryTmp do
        begin
          Close;
          SQL.Text := 'update cheque set descr = :descr where ncheque = :ncheque and acct = :entity';
          ParamByName('descr').AsString := sDescr;
          ParamByName('ncheque').AsInteger := lnCheque;
          ParamByName('entity').AsString := lsAcct;
          ExecSQL;
          // now transitem
          Close;
          SQL.Text := 'update transitem set descr = :descr where nowner = :ncheque and acct = :entity and owner_code = ''CHEQUE'' ';
          ParamByName('descr').AsString := sDescr;
          ParamByName('ncheque').AsInteger := lnCheque;
          ParamByName('entity').AsString := lsAcct;
          ExecSQL;
        end;
      end;

      // it's a journal
      if lnJournal <> 0
      then
      begin
        with dmAxiom.qryTmp do
        begin
          Close;
          SQL.Text := 'update journal set reason = :descr where njournal = :njournal and acct = :entity';
          ParamByName('descr').AsString := sDescr;
          ParamByName('njournal').AsInteger := lnJournal;
          ParamByName('entity').AsString := lsAcct;
          ExecSQL;
          // now transitem
          Close;
          SQL.Text := 'update transitem set descr = :descr where nowner = :njournal and acct = :entity and owner_code = ''JOURNAL'' ';
          ParamByName('descr').AsString := sDescr;
          ParamByName('njournal').AsInteger := lnJournal;
          ParamByName('entity').AsString := lsAcct;
          ExecSQL;
        end;
      end;

      if iResult = mrOK
      then
      begin
        qryAllocDescription.Close;
        qryAllocDescription.ParamByName('DESCR').AsString := sDescr;
        qryAllocDescription.ParamByName('NALLOC').AsInteger := tvBillItemsUNIQUEID.EditValue;
        qryAllocDescription.ExecSQL;
      end;
    end;
    qryBillItems.Close;
    qryBillItems.Open;
    // DisplayItems;
  end;

procedure TfrmInvoice.tbtnEditTaxClick(Sender : TObject);
  begin
    if (bAlterGSTAmount)
    then
    begin
      //
      // UNIQUEID contains the primary key from the relevant table, ALLOC/SUNDRY/FEE.
      //
      if (rgFilter.ItemIndex = 2)
      then
      Begin
        if TfrmAdjustBilledTax.AlterBilledTaxAmount(qryBillItems.FieldByName('UNIQUEID').AsInteger, 'DISB', qryBillItems)
        then
        Begin
          qryBillItems.Close;
          qryBillItems.Open;
          DisbRebuild();
        End;
      End
      else if (rgFilter.ItemIndex = 4)
      then
      begin
        if TfrmAdjustBilledTax.AlterBilledTaxAmount(qryBillItems.FieldByName('UNIQUEID').AsInteger, 'UPCRED', qryBillItems)
        then
        Begin
          qryBillItems.Close;
          qryBillItems.Open;
          UpCredRebuild();
        End;
      End
      else if (rgFilter.ItemIndex = 5)
      then
      begin
        if TfrmAdjustBilledTax.AlterBilledTaxAmount(qryBillItems.FieldByName('UNIQUEID').AsInteger, 'SUND', qryBillItems)
        then
        Begin
          qryBillItems.Close;
          qryBillItems.Open;
          SundRebuild();
        End;
      end;
    end;
  end;

procedure TfrmInvoice.pbSpellCheckClick(Sender : TObject);
  var
    LFeeNew : TfrmBillFeeList;
    LUnique, LReturn : Integer;
    dGstFree : double;
  begin
    tvBillItems.BeginUpdate();
    try
      SaveInvoice;
      LUnique := qryInvoice.FieldByName('NMEMO').AsInteger;
      LFeeNew := TfrmBillFeeList.create(Self);

      LFeeNew.DisplayFees(LUnique);

      LReturn := LFeeNew.ShowModal();
      if LReturn <> mrCancel
      then
      begin
        DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);
        { neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE',
          qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger,
          qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
          TaxFees := neFeesTax.AsCurrency;
          neFeesTaxFree.AsCurrency := dGstFree;
          sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
          CalcTotal; }
      end;
    finally
      tvBillItems.EndUpdate;
      LFeeNew.Free;
    end;
  end;

procedure TfrmInvoice.cxBarEditItem1PropertiesEditValueChanged(Sender : TObject);
var
    LEntered : string;
begin
   if (qryInvoice.state <> dsEdit) then
      qryInvoice.Edit;

   if SystemString('NO_AUTHORISE_PASSWORD') = 'N' then
   begin
      if (InputQueryPassword(CN_PROGRAM_NAME, 'Please enter you authorisation password', LEntered)) then
      begin
         if (LEntered = dmAxiom.Auth_Password) then
            DoAuthorise
         else
         begin
            cbAuthorise.EditValue := (not Boolean(cbAuthorise.EditValue));
            MsgErr('Invalid Password');
         end;
      end
      else
         cbAuthorise.EditValue := (not Boolean(cbAuthorise.EditValue));
   end
   else
      DoAuthorise;
end;

procedure TfrmInvoice.DoAuthorise;
begin
   if boolean(cbAuthorise.EditValue) then
   BEGIN
      qryInvoice.FieldByName('AUTHORISED').AsString := 'Y';
      // RDW - Update Authorised by and Authorised Date
      qryInvoice.FieldByname('AUTHORISED_BY').AsString := dmAxiom.UserID;
      qryInvoice.FieldByName('AUTHORISED_DATE').AsDateTime := now;

      // Show the Authorise Email
      lblAuthorisedBy.Caption := 'Authorised By: ' + dmAxiom.UserID;
      lblAuthorisedBy.Visible := True;
//      chkEmailCreator.Visible := True;

      tbtnPost.Enabled := (dmAxiom.Security.Bill.Post = True);  // (dmAxiom.Is_Cashier = 'Y'); // RDW 21/03/2019 - Removed and (dmAxiom.Security.Bill.Post = True);
      //If (dmAxiom.Is_Cashier = 'Y') and (qryInvoice.FieldByName('DISPATCHED').AsString = '') then
      If (qryInvoice.FieldByName('DISPATCHED').AsString = '') then
        ControlEditFields(true)
      Else
        ControlEditFields(false);
   END
   else
   begin
      qryInvoice.FieldByName('AUTHORISED').AsString := 'N';
      qryInvoice.FieldByname('AUTHORISED_BY').Clear;
      qryInvoice.FieldByName('AUTHORISED_DATE').Clear;
      tbtnPost.Enabled := false;
   end;
end;

procedure TfrmInvoice.cxPopupEdit1PropertiesCloseUp(Sender : TObject);
begin
    // popNotes.EditValue := Trim(memoNotes.Text);
end;

procedure TfrmInvoice.cxRichEdit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    If Key = VK_SPACE then
      QuickCode(Sender);
end;

procedure TfrmInvoice.dxBarButton3Click(Sender : TObject);
  var
    frmBillNarrations : TfrmBillNarrations;
  begin
    frmBillNarrations := TfrmBillNarrations.create(Self);
    with frmBillNarrations do
    begin
      BNMemo := qryInvoice.FieldByName('NMEMO').AsInteger;
      ShowModal;
      frmBillNarrations.Free;
    end;
  end;

procedure TfrmInvoice.barbtnReassignFeesClick(Sender : TObject);
  var
    iCtr, ARowIndex, ImageIndex : Integer;
    ARowInfo : TcxRowInfo;
    AView : TcxGridTableView;
    dGstFree : double;
  begin
    if not FormExists(frmMatterSearch)
    then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

    if (frmMatterSearch.ShowModal = mrOK)
    then
    begin
      try
        AView := tvBillItems;
        with AView.DataController do
        begin
          BeginUpdate;
          try
            for iCtr := 0 to (GetRowCount { GetSelectedCount } - 1) do
            begin
              AView.ViewData.Records[iCtr].Focused := true;
              ARowInfo := GetRowInfo(iCtr);
              if (ARowInfo.Level < Groups.GroupingItemCount)
              then
                continue
              else
              begin
                if (AView.ViewData.GetRecordByIndex(iCtr).Values[0] = true)
                then
                begin
                  ImageIndex := tvBillItemsTYPE.EditValue;
                  if (ImageIndex = IMG_FEES)
                  then
                  begin
                    with qryUpdateFees do
                    begin
                      ParamByName('NMATTER').AsInteger := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;
                      ParamByName('FILEID').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
                      ParamByName('NCLIENT').AsInteger := dmAxiom.qryMSearch.FieldByName('NCLIENT').AsInteger;

                      ParamByName('NFEE').AsInteger := Integer(Values[ARowInfo.RecordIndex, tvBillItemsUNIQUEID.Index]);
                      // dmFeeList.qFees.FieldByName('NFEE').AsInteger;
                      //
                      ExecSQL();
                      Close;
                    end;
                  end;
                end;
              end;
            end;
          finally
            EndUpdate;
          end;
        end;
      finally
        AView := nil;
        tvBillItems.Controller.ClearSelection;
        DisplayItems;
        neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxFees := neFeesTax.AsCurrency;
        neFeesTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
        lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);
      end;
    end;
  end;

procedure TfrmInvoice.barbtnTaxcodeListPopup(Sender: TObject);
var
   btnTaxCode: TdxBarButton;
   i: integer;
begin
   dmAxiom.qryTaxList.Close;
   dmAxiom.qryTaxList.ParamByName('use_for_billing').AsString := 'Y';
   dmAxiom.qryTaxList.Open;

   for i := (barbtnTaxcodeList.ItemLinks.Count - 1) downto 0 do
      barbtnTaxcodeList.ItemLinks.Delete(i);

   while dmAxiom.qryTaxList.eof = False do
   begin
      btnTaxCode := TdxBarButton.Create(Self);
      with btnTaxCode do
      begin
         Caption := dmAxiom.qryTaxList.FieldByName('code').AsString;
         Hint := 'Click to select Tax Type';
         PaintStyle := psCaption;
         OnClick := btnTaxCodeClick;
      end;

  // Adds an item to a submenu
      barbtnTaxcodeList.ItemLinks.Add.Item := btnTaxCode;

      dmAxiom.qryTaxList.Next;
   end;
end;

procedure TfrmInvoice.btnTaxCodeClick(Sender: TObject);
var
   cbTaxType: TdxBarButton;
   dtTax : TDateTime;
   iCtr : Integer;
   cTax : currency;
   AView : TcxGridTableView;
   sTaxCode : string;
begin
   sTaxCode := TdxBarButton(Sender).Caption;
//   staxTypeSelected := cbTaxtype.Caption;
   AView := tvBillItems;
   if AView.DataController.GetSelectedCount > 0 then
   begin
      try
         if (sTaxCode = '') then
            sTaxCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'FEE_TAX_BASIS');
         if (sTaxCode = '') then
            sTaxCode := dmAxiom.DefaultTax;
        // -----------------
         for iCtr := 0 to AView.DataController.GetSelectedCount - 1   do
         begin
            AView.DataController.FocusedRowIndex := AView.DataController.GetSelectedRowIndex(iCtr);
            with qryNew do
            begin
               dtTax := Now;
               cTax := 1;
               SQL.Clear;
               case tvBillItemsTYPE.EditValue of
                  IMG_DISB :
                     begin
                       SQL.Text := 'SELECT CREATED, TAX FROM ALLOC WHERE NALLOC = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'SELECT CREATED, TAX FROM ALLOC WHERE NALLOC = ' + IntToStr(tvBillItemsTYPE.EditValue);
                       Open;
                       if not IsEmpty then
                       begin
                           dtTax := FieldByName('CREATED').AsDateTime;
                           cTax := FieldByName('TAX').AsCurrency;
                       end;
                       Close;
                       if (StrToInt(TableString('TAXRATE','TAXCODE', sTaxCode, 'BILL_RATE')) = 0)  then
                          SQL.Text := 'UPDATE ALLOC SET BILLING_TAXCODE = ''' + sTaxCode +
                              ''', BILLED_TAX_AMOUNT = AMOUNT * :TaxRate  WHERE NALLOC = ' + IntToStr(tvBillItemsUNIQUEID.EditValue)
                       else
                          SQL.Text := 'UPDATE ALLOC SET TAXCODE = ''' + sTaxCode +
                              '''TAX = AMOUNT * :TaxRate, BILLED_TAX_AMOUNT = AMOUNT * :TaxRate  WHERE NALLOC = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'UPDATE ALLOC SET TAXCODE = ''GST'', TAX = AMOUNT * :TaxRate WHERE NALLOC = ' + IntToStr(tvBillItemsTYPE.EditValue);

                     end;
                  IMG_ANTD :
                     begin
                        SQL.Text := 'SELECT REQDATE, TAX FROM CHEQREQ WHERE NCHEQREQ = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                       // SQL.Text := 'SELECT REQDATE, TAX FROM CHEQREQ WHERE NCHEQREQ = ' + IntToStr(tvBillItemsTYPE.EditValue);
                        Open;
                        if not IsEmpty then
                        begin
                           dtTax := FieldByName('REQDATE').AsDateTime;
                           cTax := FieldByName('TAX').AsCurrency;
                        end;
                        Close;
                        SQL.Text := 'UPDATE CHEQREQ SET BILLING_TAXCODE = ''' + sTaxCode + ''' WHERE NCHEQREQ = ' +
                                    IntToStr(tvBillItemsUNIQUEID.EditValue);

                       // SQL.Text := 'UPDATE CHEQREQ SET TAXCODE = ''GST'', TAX = AMOUNT * :TaxRate WHERE NCHEQREQ = ' + IntToStr(tvBillItemsTYPE.EditValue);
                     end;
               end;
               if cTax = 0 then
               begin
                  ParamByName('TaxRate').AsFloat := TaxRate('', '' + sTaxCode + '', dtTax);
                  // ParamByName('TaxRate').AsFloat := TaxRate('', 'GST', dtTax);
                  ExecSQL;
                  Close;
               end;
            end;
         end;
         case tvBillItemsTYPE.EditValue of
            IMG_DISB : btnDisbRebuild.Click;
            IMG_ANTD:  btnAntdRebuild.Click;
         end;
      finally
         RestoreSelectedItems();
      end;
   end;
end;


procedure TfrmInvoice.dxBbtnAddExpTemplateClick(Sender : TObject);
  var
    frmExpenseTemplateSelection : TfrmExpenseTemplateSelection;
    LRet : Integer;
    dGstFree : double;
    sExpTemplate : string;
  begin
    frmExpenseTemplateSelection := TfrmExpenseTemplateSelection.create(Self);

    frmExpenseTemplateSelection.NMatter := qryInvoice.FieldByName('NMATTER').AsInteger;
    LRet := frmExpenseTemplateSelection.ShowModal;
    if LRet <> mrCancel
    then
    begin
      sExpTemplate := frmExpenseTemplateSelection.ExpTemplate;
      with dmAxiom.qryTmp do
      begin
        Close;
        SQL.Text := 'select code, descr, rate from sundrytype, EXPENSE_TEMPLATE_LINK ' + 'where expense_code = code and exp_template_code = ' +
          QuotedStr(sExpTemplate);
        Open;
        while (Eof = False) do
        begin
          SundryInsert(qryInvoice.FieldByName('NMATTER').AsInteger, dmAxiom.qryTmp.FieldByName('code').AsString, dmAxiom.qryTmp.FieldByName('descr').AsString,
            dmAxiom.qryTmp.FieldByName('rate').AsCurrency, 1, qryInvoice.FieldByName('NMEMO').AsInteger);
          Next;
        end;
      end;
      SaveInvoice;

      procBillAddSundryOnly.ParamByName('P_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddSundryOnly.Execute;

      DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);

      neSundTax.Value := ShowTax(neSund.AsCurrency, dGstFree, 'SUNDRY', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
        qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
      TaxSund := neSundTax.Value;
      neSundTaxFree.AsCurrency := dGstFree;
      // sgrTotals.Cells[0, 0] := Format('%10.2f', [neSundTax.Value]);
      lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);
    end;
  end;

// RDW - Added Button for Cheque Request screen
procedure TfrmInvoice.dxChequeRequestClick(Sender : TObject);
  var
    LfrmCheqReqNew : TfrmCheqReqNew;
  begin
    LfrmCheqReqNew := TfrmCheqReqNew.create(Self);
    LfrmCheqReqNew.FromMatter := true;
    LfrmCheqReqNew.Show;
  end;

procedure TfrmInvoice.CalcDiscountEntry;
begin
   if edtDiscount.Text = '0' then
      lblDiscount.Caption := '0.00';

   if edtDiscount.Text = '' then
      edtDiscount.Text := '0';

   if (neFees.AsDouble > 0) then
   begin
      if qryInvoice.state = dsBrowse then
         qryInvoice.Edit;

      if pos('%', edtDiscount.Text) > 0 then
      begin
         qryInvoice.FieldByName('DISCOUNT').AsCurrency :=
                        ((neFees.AsCurrency + neFeesTax.AsCurrency) * (strtofloat(copy(edtDiscount.Text, 1, length(edtDiscount.Text) - 1)) / 100)) * - 1;
         edtDiscount.Text := FloatToStr(((neFees.AsCurrency + neFeesTax.AsCurrency) * (strtofloat(copy(edtDiscount.Text, 1, length(edtDiscount.Text) - 1)) /
                        100)) * - 1);
         edtDiscountGST.Text := FloatToStrF(qryInvoice.FieldByName('DISCOUNT').AsCurrency * 1 / 11, ffGeneral, 8,2);
      end
      else
      begin
         try
            if strtofloat(edtDiscount.Text) > 0 then
            begin
               qryInvoice.FieldByName('DISCOUNT').AsCurrency := strtofloat(edtDiscount.Text) * - 1;
               qryInvoice.FieldByName('DISCOUNT_GST').AsCurrency := (strtofloat(edtDiscount.Text) * 1 / 11) * - 1;
            end
            else
            begin
               qryInvoice.FieldByName('DISCOUNT').AsCurrency := strtofloat(edtDiscount.Text);
               qryInvoice.FieldByName('DISCOUNT_GST').AsCurrency := strtofloat(edtDiscount.Text) * 1 / 11;
            end;
            lblDiscount.Caption := edtDiscount.Text;
            edtDiscountGST.Text := FloatToStrF(qryInvoice.FieldByName('DISCOUNT').AsCurrency * 1 / 11, ffGeneral, 8,2);
         finally
            qryInvoice.Refresh;
         end;
      end;
    end
   else if (neFees.AsDouble = 0) then
   begin
      if qryInvoice.Active then
      begin
         if qryInvoice.state = dsBrowse then
            qryInvoice.Edit;
         try
            qryInvoice.FieldByName('DISCOUNT').AsCurrency := 0;
            qryInvoice.FieldByName('DISCOUNT_GST').AsCurrency := 0;
            edtDiscount.Text := '0';
            edtDiscountGST.Text := '0';
            lblDiscount.Caption := '0.00';
         finally
            qryInvoice.Refresh;
         end;
      end;
   end;
   CalcTotal;
end;

procedure TfrmInvoice.edtDiscountKeyPress(Sender: TObject; var Key: Char);
begin
   if (not (Key in ['0' .. '9']) and not (Key = '%') and not (Key = '.')) then
      Key := #0;
end;

procedure TfrmInvoice.edtDiscountPropertiesChange(Sender: TObject);
begin
   CalcDiscountEntry;
end;

procedure TfrmInvoice.memoNotesKeyUp(
  Sender  : TObject;
  var Key : Word;
  Shift   : TShiftState);
  begin
    If Key = VK_SPACE
    then
      QuickCode(Sender);
  end;

procedure TfrmInvoice.popNotesKeyUp(
  Sender  : TObject;
  var Key : Word;
  Shift   : TShiftState);
  begin
    If Key = VK_SPACE
    then
      QuickCode(Sender);
  end;

procedure TfrmInvoice.memoNotesKeyDown(
  Sender  : TObject;
  var Key : Word;
  Shift   : TShiftState);
  begin
    { if Key = VK_Tab then
      begin
      if FPopupForm is TcxCustomEditPopupWindow then
      (FPopupForm as TcxCustomEditPopupWindow).CloseUp;
      end; }
  end;

procedure TfrmInvoice.popNotesPropertiesPopup(Sender : TObject);
  begin
    // FPopupForm := GetParentForm(TControl(Sender));
  end;

procedure TfrmInvoice.btnSpellCheckClick(Sender : TObject);
  begin
    DoSpellCheck
  end;

procedure TfrmInvoice.FormKeyDown(
  Sender  : TObject;
  var Key : Word;
  Shift   : TShiftState);
  begin
    // if Key = VK_F7 then
    // DoSpellCheck;
    if Key = VK_Escape
    then
      Self.Close;
  end;

procedure TfrmInvoice.DoSpellCheck;
  var
    I : Integer;
  begin
    { if dmAxiom.DictionaryInstalled then
      begin
      dmAxiom.Addict.StartSequenceCheck;

      for I := 0 to tvBillItems.ViewData.RecordCount - 1 do
      begin
      // First we give the grid focus, as it will not bring up the editor unless
      // it actually has focus.  Next we give the appropriate field in the
      // grid focus and then bring up the in-place editor.

      grdBillItems.SetFocus;
      tvBillItems.ViewData.GridView.Focused := True;
      tvBillItems.Controller.EditingController.ShowEdit(tvBillItemsDESCR);

      if (not Assigned(tvBillItems.Controller.EditingController.Edit)) then
      begin
      break;
      end;

      // If there are errors in our current control, then we'll bring up the
      // spelling dialog to check them...

      if (dmAxiom.Addict.ErrorsPresentInWinControl(tvBillItems.Controller.EditingController.Edit, ctAll)) then
      begin
      // If we've already displayed our spelling check dialog as part of
      // this "sequence check" then we ensure it has focus so the user can
      // interact with it.

      if (Assigned(dmAxiom.Addict.DialogForm)) then
      begin
      dmAxiom.Addict.DialogForm.SetFocus;
      end;

      // Tell the DX control not to hide the selection when the control doesn't
      // actually have focus.  (That way we can see the selected word when the
      // spell check dialog is up).

      if (tvBillItems.Controller.EditingController.Edit is TcxMemo) then
      begin
      (tvBillItems.Controller.EditingController.Edit as TcxMemo).Properties.HideSelection := False;
      end
      else if (tvBillItems.Controller.EditingController.Edit is TcxRichEdit) then
      begin
      (tvBillItems.Controller.EditingController.Edit as TcxRichEdit).Properties.HideSelection         := False;
      TcxCustomRichEditAccess(tvBillItems.Controller.EditingController.Edit).InnerRich.HideSelection  := False;
      end;

      // Tell Addict to perform the actual spelling check...

      dmAxiom.Addict.CheckWinControl(tvBillItems.Controller.EditingController.Edit, ctAll );

      // Ensure that the user hasn't stopped editing while in the middle
      // of the Check call.  If they have, then we'll just stop the
      // spelling check and bail.  Other implementations may wish to watch
      // editing events and automatically dismiss the spelling dialog, or
      // perhaps reassign the edit control and resume...

      if (not(Assigned(tvBillItems.Controller.EditingController.Edit))) then
      begin
      dmAxiom.Addict.StopCheck(True);
      dmAxiom.Addict.EndMessage := emNever;
      break;
      end;

      // When completing a spelling check, we need to ensure that the value
      // the spelling dialog has udpate is committed to the database (if
      // needed):

      TcxCustomDataProviderAccess(tvBillItems.DataController.Provider).SetChanging;
      tvBillItems.Controller.EditingController.Edit.ModifiedAfterEnter := True;
      end;

      // Now we hide the edit to move on the next record.

      tvBillItems.Controller.EditingController.HideEdit(True);

      // If the user canceled the spelling check, then we'll break out of the
      // enumeration of the remaining items...

      if (dmAxiom.Addict.CheckCanceled) then
      begin
      break;
      end;
      end;

      dmAxiom.Addict.StopSequenceCheck;
      end; }
  end;

procedure TfrmInvoice.AuthoriseBill1Click(Sender : TObject);
  begin
    with dmAxiom.qryTmp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update nmemo set authorised = ''Y'' where nmemo = :nmemo');
      ParamByName('nmemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      ExecSQL;
      dmAxiom.uniInsight.Commit;
      cbAuthorise.EditValue := true;
    end;
  end;

function IsGroupedRecord(ARecord : TcxCustomGridRecord) : Boolean;
  begin
    Result := not (ARecord.Level = ARecord.GridView.DataController.Groups.GroupingItemCount);
  end;

procedure TfrmInvoice.tvBillItemsFocusedRecordChanged(
  Sender                             : TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord : TcxCustomGridRecord;
  ANewItemRecordFocusingChanged      : Boolean);
var
    GroupItemCount : Integer;
    Data : TcxCustomDataController; // TcxGridDataController;
    I : Integer;
begin
    if (AFocusedRecord = nil) or (APrevFocusedRecord = nil)
    then
      Exit;

    if IsGroupedRecord(AFocusedRecord)
    then
    begin
      Data := Sender.DataController;
      GroupItemCount := Data.Groups.GroupingItemCount;

      if (FLastKey = VK_NONAME) or // record is clicked by mouse
        (APrevFocusedRecord.Index < AFocusedRecord.Index)
      then // move down
      begin
        Data.FocusedRowIndex := AFocusedRecord.Index + (GroupItemCount - AFocusedRecord.Level);
      end
      else // move up
      begin
        if AFocusedRecord.Index < GroupItemCount
        then
          Data.FocusedRowIndex := AFocusedRecord.Index + (GroupItemCount - AFocusedRecord.Level)
        else
        begin
          for I := AFocusedRecord.Index - 1 downto 0 do
            if not IsGroupedRecord(Sender.ViewData.Records[I])
            then
            begin
              Sender.ViewData.Records[I].Focused := true;
              break;
            end;
          if I = 0
          then
            APrevFocusedRecord.Focused := true;
        end;
      end;
    end
    else
    begin
      if (tvBillItemsTYPE.EditValue = IMG_FEES) and (qryInvoice.FieldByName('DISPATCHED').IsNull)
      then
      begin
        tvBillItemsDESCR.Options.Editing := true;
        tvBillItemsDESCR.Options.Focusing := true;
      end
      else
      begin
        tvBillItemsDESCR.Options.Editing := False;
        tvBillItemsDESCR.Options.Focusing := False;
      end
    end;

end;

procedure TfrmInvoice.lvBillItemsDESCRPropertiesCloseUp(Sender : TObject);
begin
    { if (tvBillItemsTYPE.EditValue = IMG_FEES) and (AddictRichEdit1.Modified = True) then
      begin
      try
      tvBillItems.BeginUpdate();
      with dmAxiom.qryTmp do
      begin
      Close;
      SQL.Clear;
      SQL.Add('update fee set descr = ' + quotedstr(AddictRichEdit1.Text) + ' where nfee = :nfee');
      ParamByName('nfee').AsInteger := tvBillItemsUNIQUEID.EditValue;
      ExecSQL;
      //            dmAxiom.uniInsight.Commit;
      //            lvBillItemsDESCR.EditValue := AddictRichEdit1.Text;
      end;
      finally
      qryBillItems.Close;
      qryBillItems.Open;
      tvBillItems.EndUpdate;
      end;
      end; }
end;

procedure TfrmInvoice.lvBillItemsDESCRPropertiesPopup(Sender : TObject);
begin
    // FPopupForm := GetParentForm(TControl(Sender));

end;

procedure TfrmInvoice.tvBillItemsEditKeyDown(
  Sender  : TcxCustomGridTableView;
  AItem   : TcxCustomGridTableItem;
  AEdit   : TcxCustomEdit;
  var Key : Word;
  Shift   : TShiftState);
  begin
    FLastKey := Key;
  end;

procedure TfrmInvoice.tvBillItemsMouseDown(
  Sender : TObject;
  Button : TMouseButton;
  Shift  : TShiftState;
  X, Y   : Integer);
  var
    LRecCount : Integer;
    ARowIndex, iCtr : Integer;
    tv : TcxGridDBTableView;
    Data : TcxCustomDataController;
    DC : TcxGridTableController;
    HitTest : TcxCustomGridHitTest;
  begin
    // Note that the Sender parameter is a Site
    HitTest := (Sender as TcxGridSite).GridView.ViewInfo.GetHitTest(X, Y);
    // The point belongs to a record
    if (HitTest is TcxGridRecordHitTest) and IsGroupedRecord(TcxGridRecordHitTest(HitTest).GridRecord)
    then
    begin
      FLastKey := VK_NONAME;
    end;

    if ssShift in Shift
    then
    begin
      tv := grdBillItems.FocusedView as TcxGridDBTableView;
      tv.BeginUpdate;
      Data := tv.DataController;
      DC := tv.Controller;
      if (DC.SelectedRowCount > 0)
      then
      begin
        for iCtr := 0 to DC.SelectedRecordCount - 1 do
        begin
          ARowIndex := Data.GetSelectedRowIndex(iCtr);
          tv.ViewData.Records[ARowIndex].Focused := true;
          Data.Values[iCtr, 0] := true;
        end;
      end;
      tv.EndUpdate;
    end;
    // pressed the Ctrl
    if ssCtrl in Shift
    then
    begin
      tv := grdBillItems.FocusedView as TcxGridDBTableView;
      tv.BeginUpdate;
      Data := tv.DataController;
      DC := tv.Controller;

      ARowIndex := Data.GetFocusedRowIndex;
      tv.ViewData.Records[ARowIndex].Focused := true;
      Data.Values[ARowIndex, 0] := true;

      tv.EndUpdate;
    end;
  end;

procedure TfrmInvoice.tvBillItemsStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
{   if (ARecord.Values[14] = 99999) then
      AStyle := dmAxiom.cxStyle10
   else
      AStyle := dmAxiom.cxStyle1; }
end;

procedure TfrmInvoice.barbtnRemoveDiscountClick(Sender : TObject);
  var
    bOKtoPost : Boolean;
  begin
    if not qryInvoice.IsEmpty
    then
    begin
      if MsgAsk('Do you want to remove the discount from invoice ' + qryInvoice.FieldByName('REFNO').AsString + '?') = mrYes
      then
      begin
        bOKtoPost := (PostIntoLockedPeriod(Now) in [prNotLocked, prOKToProceed]);
        if bOKtoPost
        then
        begin
          try
            with procBillDiscReverse do
            begin
              ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
              ParamByName('P_RVDATE').AsDateTime := Now;

              ParamByName('P_WHO').AsString := dmAxiom.UserID;
              Execute;
              bNoSave := true;
            end;
            edtDiscount.Text := '0';
            edtDiscountGST.Text := '0';
            lblDiscount.Caption := '$0.00';
            qryInvoice.Refresh;
            barbtnRemoveDiscount.Enabled := False;
            MessageDlg('Bill Discount Reversed', mtInformation, [mbOk], 0);
            DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);
          except
            // on Error  do
            begin
              if Error = 20100
              then
                MessageDlg('Error Bill has been paid', mtError, [mbOk], 0)
              else if Error = 20101
              then
                MessageDlg('Error Bill has Client funds cheques', mtError, [mbOk], 0)
              else
                raise;
            end;
          end;
        end;
      end;
    end;
    // need to reverse original discount entry
  end;

procedure TfrmInvoice.bbtnAdjDisbTotalClick(Sender : TObject);
  var
    lAmount, lOrigAmount, cAllocDisbAmountDiff, cAllocDisbTaxDiff, dGstFree : double;
  begin
    lAmount := tvBillItemsAMOUNT.EditValue;
    lOrigAmount := lAmount;
    if InputQueryAmount('Adjust Disbursement Amount', 'Enter New Amount:', lAmount) = true
    then
    begin
      with dmAxiom.qryTmp do
      begin
        Close;
        SQL.Text := 'update alloc set billed_amount = :amount, BILLED_TAX_AMOUNT = :tax where nalloc = :nalloc';
        ParamByName('amount').AsFloat := lAmount * - 1;
        ParamByName('tax').AsFloat := TaxCalc(lAmount, '', 'GST', Now) * - 1;
        ParamByName('nalloc').AsInteger := tvBillItemsUNIQUEID.EditValue;
        ExecSQL;
      end;
    end;
    procBillAddSingleDisb.ParamByName('P_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    procBillAddSingleDisb.ParamByName('p_created').AsDateTime := qryInvoice.FieldByName('GENERATED').AsDateTime;
    procBillAddSingleDisb.Execute;
    DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);
  end;

procedure TfrmInvoice.bbtnBillNotesClick(Sender : TObject);
  var
    LDate : TDateTime;
    lsUserName : String;
  begin
    frmDebtorNotes := TfrmDebtorNotes.create(Self);

    lsUserName := dmAxiom.GetUserName;

    try
      LDate := Now();
      with frmDebtorNotes do
      begin
        FromDraftBill := true;
        EntryDate := LDate;
        By := lsUserName;
        Note := '';
        Billtotal := qryInvoice.FieldByName('OWING').AsFloat;
        Refno := qryInvoice.FieldByName('DRAFT_BILL_NO').AsString;
        NMemo := qryInvoice.FieldByName('NMEMO').AsInteger;
        NMatter := qryMatter.FieldByName('NMATTER').AsInteger;
        Editing := False;

        qryNMemo.Close;
        qryNMemo.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
        qryNMemo.Open;

        if (ShowModal <> mrOK)
        then
          Exit;

        qryBillNotes.Refresh;
      end;
    finally
      FreeAndNil(frmDebtorNotes);
    end;
  end;

procedure TfrmInvoice.bbtnExportToExcelClick(Sender : TObject);
  var
    filename : string;
  begin
    if OpenDialog.Execute
    then
    begin
      filename := OpenDialog.filename;
      ExportGridToExcel(filename, grdBillItems, true, true, true, 'xls');
    end;
  end;

procedure TfrmInvoice.bbtnShowSingleLineClick(Sender : TObject);
  begin
    tvBillItems.OptionsView.CellAutoHeight := (not bbtnShowSingleLine.Down);
    SettingSaveBoolean('tvBillItems', 'SingleLine', (not bbtnShowSingleLine.Down));
  end;

procedure TfrmInvoice.btnAddChequeRequestClick(Sender : TObject);
var
    LfrmCheqReqNew : TfrmCheqReqNew;
begin
{  // RDW - Now Anticipated Disbursement
    LfrmCheqReqNew := TfrmCheqReqNew.create(Self);
    LfrmCheqReqNew.FromMatter := true;
    LfrmCheqReqNew.DisplayFile(qryInvoice.FieldByName('FILEID').AsString);
    LfrmCheqReqNew.SetForDisbRequestOnly();

    // Hide and resize for new reuqirements
    LfrmCheqReqNew.Caption := 'Anticipated Disbursement';
    LfrmCheqReqNew.gbBankDetails.Visible := False;
    LfrmCheqReqNew.chkFunds.Visible := False;
    LfrmCheqReqNew.chkInvoiceSupplied.Visible := False;
    LfrmCheqReqNew.chkPrint.Visible := False;
    LfrmCheqReqNew.chkNoExit.Visible := False;
    LfrmCheqReqNew.cbAuthorise.Visible := False;
    LfrmCheqReqNew.lblAutorised.Visible := False;
    LfrmCheqReqNew.chkHeld.Visible := False;
    LfrmCheqReqNew.chkBill.Visible := False;
    LfrmCheqReqNew.chkUrgent.Visible := False;
    LfrmCheqReqNew.tbMinor.Width := 280;
    LfrmCheqReqNew.tbMajor.Enabled := False;
    LfrmCheqReqNew.ClientHeight := 522;
    LfrmCheqReqNew.ClientWidth := 501;
    LfrmCheqReqNew.cmbExpenseType.Width := 200;
    LfrmCheqReqNew.Label2.Visible := False;
    LfrmCheqReqNew.Label3.Visible := False;
    LfrmCheqReqNew.cmbBank.Visible := False;
    LfrmCheqReqNew.rgChequeType.Visible := False;
    LfrmCheqReqNew.gbMajorMinor.Top := 8;
    LfrmCheqReqNew.gbDetails.top := 103;
    LfrmCheqReqNew.cmbBank.EditValue := 'G.31';
    LfrmCheqReqNew.chkBill.Checked := True;
    LfrmCheqReqNew.cbAuthorise.Checked := True;
    LfrmCheqReqNew.chkHeld.Checked := False;



    LfrmCheqReqNew.ShowModal;

    SaveInvoice;
    procBillAddAntd.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    procBillAddAntd.Execute;
    FCheqReqRebuilt := true;
    DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);}

end;

procedure TfrmInvoice.btnAddSundryClick(Sender : TObject);
  var
    frmNewSundryNew : TfrmSundryNew;
    LNSundry : Integer;
    dGstFree : double;
  begin
    frmNewSundryNew := TfrmSundryNew.create(Self);

    frmNewSundryNew.DisplayMatter(qryInvoice.FieldByName('NMATTER').AsInteger);
    LNSundry := frmNewSundryNew.ShowModal;
    if LNSundry <> mrCancel
    then
    begin
      SaveInvoice;
      procBillAddSundry.ParamByName('P_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddSundry.ParamByName('P_NSUNDRY').AsInteger := LNSundry;
      procBillAddSundry.Execute;
      DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger);

      neSundTax.Value := ShowTax(neSund.AsCurrency, dGstFree, 'SUNDRY', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
        qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
      TaxSund := neSundTax.Value;
      neSundTaxFree.AsCurrency := dGstFree;
      // sgrTotals.Cells[0, 4] := Format('%10.2f', [neSundTax.Value]);
      lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);
    end;
  end;

procedure TfrmInvoice.btnShowGroupBoxClick(Sender : TObject);
  begin
    TdxBarButton(Sender).Lowered := (not TdxBarButton(Sender).Lowered);
    tvBillItems.OptionsView.GroupByBox := (TdxBarButton(Sender).Lowered);
  end;

procedure TfrmInvoice.btnExpandClick(Sender : TObject);
  begin
    TdxBarButton(Sender).Lowered := (not TdxBarButton(Sender).Lowered);
    if (TdxBarButton(Sender).Lowered)
    then
      grdBillItems.FocusedView.DataController.Groups.FullExpand
    else
      grdBillItems.FocusedView.DataController.Groups.FullCollapse;
  end;

procedure TfrmInvoice.tbtnRemovePopup(Sender : TObject);
  var
    bEnable : Boolean;
    bGrouped : Boolean;
    iCtr : Integer;
  begin
    bEnable := False;
    bGrouped := False;
    iCtr := 0;
    if (tvBillItems.ViewData.GridView.GroupedItemCount > 0)
    then
    begin
      grdBillItems.FocusedView.DataController.Groups.FullExpand;
      bGrouped := true;
    end;

    tvBillItems.DataController.FocusedRowIndex := 0;
    { for iCtr := 0 to tvBillItems.DataController.RecordCount - 1 do
      begin
      if (tvBillItems.ViewData.Records[iCtr].Level <> 0) or (not bGrouped ) then
      begin
      tvBillItems.ViewData.Records[iCtr].Focused := True;
      if (tvBillItemsInclude.EditValue = 'Y') then
      begin
      bEnable := True;
      break;
      end;
      end;
      end; }
    tbtnRemoveItems.Enabled := tvBillItems.Controller.SelectedRecordCount > 0; // bEnable;
    // tbtnRemoveItems.Enabled := tvBillItems1.Controller.SelectedRecordCount > 0;
  end;

procedure TfrmInvoice.tvBillItems1DESCRPropertiesValidate(
  Sender           : TObject;
  var DisplayValue : Variant;
  var ErrorText    : TCaption;
  var Error        : Boolean);
  begin
    if tvBillItemsTYPE.EditValue = IMG_FEES
    then
    begin
      with dmAxiom.qryTmp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update fee set descr = ' + QuotedStr(DisplayValue) + ' where nfee = :nfee');
        ParamByName('nfee').AsInteger := tvBillItemsUNIQUEID.EditValue;
        ExecSQL;
        // dmAxiom.uniInsight.Commit;
        // lvBillItemsDESCR.EditValue := AddictRichEdit1.Text;
        qryBillItems.Refresh;
      end;
    end;
  end;

procedure TfrmInvoice.tvBillItems2InitEdit(
  Sender : TcxCustomGridTableView;
  AItem  : TcxCustomGridTableItem;
  AEdit  : TcxCustomEdit);
  begin
    // In this example, we'll do LiveSpelling in any in-place editing control
    // that comes up as a RichEdit.

    if (AEdit is TcxRichEdit) and dmAxiom.DictionaryInstalled
    then
    begin
      // Tell Addict to do LiveSpelling for this control... simply remove the
      // last control and Add the new control.
      // if FLastLiveEdit <> nil then
      // dmAxiom.AddictLiveSpell.RemoveControl( FLastLiveEdit );
      // dmAxiom.AddictLiveSpell.AddControl(AEdit);
      FLastLiveEdit := AEdit;
    end;
  end;

procedure TfrmInvoice.tvBillItemsDESCRPropertiesButtonClick(
  Sender       : TObject;
  AButtonIndex : Integer);
  var
    LFeeNew : TfrmFeeEditQuick;
    LUnique, LReturn : Integer;
    dGstFree : double;
  begin
    tvBillItems.BeginUpdate();
    try
      LUnique := tvBillItemsUNIQUEID.EditValue;
      case tvBillItemsTYPE.EditValue of
        IMG_FEES :
          begin
            if dmAxiom.Security.Fee.QuickEdit
            then
            begin
              LFeeNew := TfrmFeeEditQuick.create(Self);

              LFeeNew.DisplayFee(Integer(LUnique), true);

              LReturn := LFeeNew.ShowModal();
              if LReturn <> mrCancel
              then
              begin
                if LFeeNew.cmbMatterFind.Text <> qryInvoice.FieldByName('FILEID').AsString
                then
                begin
                  // qryNew.SQL.Text := 'UPDATE FEE SET NMEMO = null WHERE NFEE = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                  // qryNew.ExecSQL;
                  // qryNew.Close;

                  // procBillAddFeesOnly.ParamByName('P_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
                  // procBillAddFeesOnly.Execute;
                  DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);

                  neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
                    qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
                  TaxFees := neFeesTax.AsCurrency;
                  neFeesTaxFree.AsCurrency := dGstFree;
                  // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
                  lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);
                end;
              end;
            end;
          end;
      end;
    finally
      // tvBillItems.DataController.updat
      tvBillItems.EndUpdate;
      LFeeNew.Free;
    end;
  end;

procedure TfrmInvoice.tvBillItemsDESCRPropertiesInitPopup(Sender : TObject);
  begin
    // AddictRichEdit1.Text := tvBillItemsDESCR.EditValue;
  end;

procedure TfrmInvoice.tvBillItemsEditing(
  Sender     : TcxCustomGridTableView;
  AItem      : TcxCustomGridTableItem;
  var AAllow : Boolean);
  begin
    if (qryInvoice.FieldByName('DISPATCHED').IsNull)
    then
      AAllow := true
    else
      AAllow := False;
  end;

procedure TfrmInvoice.RemoveDisbSund;
  begin
    qryNew.SQL.Text := 'DELETE FROM SUNDRY WHERE NMATTER = ' + IntToStr(qryInvoice.FieldByName('NMATTER').AsInteger) + ' AND NMEMO = ' +
      IntToStr(qryInvoice.FieldByName('NMEMO').AsInteger) + ' AND created_from_disb = ''Y'' ';
    qryNew.ExecSQL;
    qryNew.Close;
  end;

procedure TfrmInvoice.tbtnQuickEditClick(Sender : TObject);
  var
    LFeeNew : TfrmFeeEditQuick;
    LUnique, LReturn : Integer;
    dGstFree : double;
  begin
    SaveSelectedItems();
    try
      LUnique := tvBillItemsUNIQUEID.EditValue;
      case tvBillItemsTYPE.EditValue of
        IMG_FEES :
          begin
            if dmAxiom.Security.Fee.QuickEdit
            then
            begin
              LFeeNew := TfrmFeeEditQuick.create(Self);

              LFeeNew.DisplayFee(Integer(LUnique), true);

              LReturn := LFeeNew.ShowModal();
              if LReturn <> mrCancel
              then
              begin
                if LFeeNew.cmbMatterFind.Text <> qryInvoice.FieldByName('FILEID').AsString
                then
                begin
                  qryNew.SQL.Text := 'UPDATE FEE SET NMEMO = null WHERE NFEE = ' + IntToStr(tvBillItemsUNIQUEID.EditValue);
                  qryNew.ExecSQL;
                  qryNew.Close;

                  procBillAddFeesOnly.ParamByName('P_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
                  procBillAddFeesOnly.Execute;
                  DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);

                  neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
                    qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
                  TaxFees := neFeesTax.AsCurrency;
                  neFeesTaxFree.AsCurrency := dGstFree;
                  // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
                  lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);
                end;
              end;
            end;
          end;
      end;
    finally
      RestoreSelectedItems();
    end;
  end;

procedure TfrmInvoice.btnMergePrintClick(Sender : TObject);
  begin
    SaveInvoice;
    // calc the debtors field here, used in word docs
    qryCalcDebtors.Close;
    qryCalcDebtors.ParamByName('NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    qryCalcDebtors.ExecSQL;
    qryCalcDebtors.Close;

    InvoiceMerge(qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('NMATTER').AsInteger, true);
  end;

procedure TfrmInvoice.btnNotesClick(Sender : TObject);
  var
    LfrmNotesMatter : TfrmGenEditor; { TfrmNotesMatter; }
  begin
    try
      LfrmNotesMatter := TfrmGenEditor.create(Self);
      LfrmNotesMatter.DisplayBillNotes(qryInvoice.FieldByName('NMEMO').AsInteger);
      if LfrmNotesMatter.ShowModal = mrOK
      then
        // dxbtnRefresh.Click;
      finally
        LfrmNotesMatter.Free;
      end;
    end;

    procedure TfrmInvoice.ViewAttacheInvoice(AUnique : Integer);
      var
        sFileName : string;
        bStream, fStream : TStream;
        OpenFileErr : Integer;
      begin
        try
          with dmAxiom.qryTmp do
          begin
            Close;
            SQL.Text := 'select invoice_copy, INVOICE_COPY_EXT, ninvoice from invoice where ninvoice = :invoice';
            ParamByName('invoice').AsInteger := AUnique;
            Open;

            if FieldByName('INVOICE_COPY').IsNull
            then
              Exit;

            try
              // load the image in external application
              try
                bStream := CreateBlobStream(FieldByName('INVOICE_COPY'), bmRead);

                sFileName := dmAxiom.GetEnvVar('TMP') + '\';
                sFileName := sFileName + FieldByName('ninvoice').AsString + '_safe.' + FieldByName('INVOICE_COPY_EXT').AsString;
                try
                  fStream := TFileStream.create(sFileName, fmCreate);
                  fStream.CopyFrom(bStream, bStream.Size);
                finally
                  FreeAndNil(fStream);
                end;
              finally
                FreeAndNil(bStream);
              end;

              OpenFileErr := ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
              if OpenFileErr = SE_ERR_NOASSOC
              then
                MsgInfo('There is no application associated with the given filename extension.');
            except
              Raise;
            end;
          end
        finally
          dmAxiom.qryTmp.Close;
        end;
      end;

    procedure TfrmInvoice.CalcDiscount;
      begin
        if SystemFloat('BILL_DISCOUNT') > 0
        then
        begin
          try
            if qryInvoice.state = dsBrowse
            then
              qryInvoice.Edit;
            if (neFees.AsCurrency > 0)
            then
            begin
              qryInvoice.FieldByName('discount').AsFloat := ((neFees.AsCurrency + neFeesTax.AsCurrency) * (SystemFloat('BILL_DISCOUNT')) / 100) * - 1;
            end;
          finally
            edtDiscount.Text := FloatToStr(((neFees.AsCurrency + neFeesTax.AsCurrency) * (SystemFloat('BILL_DISCOUNT')) / 100) * - 1);
            lblDiscount.Caption := edtDiscount.Text;
            qryInvoice.Refresh;
          end;
        end;
      end;

    procedure TfrmInvoice.DisplayTaxValues;
      var
        dGstFree : double;
      begin
        neFeesTax.AsCurrency := ShowTax(neFees.AsCurrency, dGstFree, 'FEE', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxFees := neFeesTax.AsCurrency;
        neFeesTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 0] := Format('%10.2f', [neFeesTax.AsCurrency]);
        lblTotalFees.Caption := Format('%10.2f', [neFeesTax.AsCurrency]);

        neDisbTax.AsCurrency := ShowTax(neDisb.AsCurrency, dGstFree, 'ALLOC', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxDisb := neDisbTax.AsCurrency;
        neDisbTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 1] := Format('%10.2f', [neDisbTax.AsCurrency]);
        lblDisbTotal.Caption := Format('%10.2f', [neDisbTax.AsCurrency]);

        neAntdTax.AsCurrency := ShowTax(neAntd.AsCurrency, dGstFree, 'CHEQREQ', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxAntD := neAntdTax.AsCurrency;
        neAntdTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 2] := Format('%10.2f', [neAntdTax.AsCurrency]);
        lblAntdTotal.Caption := Format('%10.2f', [neAntdTax.AsCurrency]);

        neUpCredTax.AsCurrency := ShowTax(neUpCred.AsCurrency, dGstFree, 'UPCRED', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxUpCred := neUpCredTax.AsCurrency;
        neUpCredTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 3] := Format('%10.2f', [neUpCredTax.AsCurrency]);
        lblCredTotal.Caption := Format('%10.2f', [neUpCredTax.AsCurrency]);

        neSundTax.Value := ShowTax(neSund.AsCurrency, dGstFree, 'SUNDRY', qryInvoice.FieldByName('FILEID').AsString, DefaultTax,
          qryInvoice.FieldByName('NMATTER').AsInteger, qryInvoice.FieldByName('NMEMO').AsInteger, qryInvoice.FieldByName('GENERATED').AsDateTime);
        TaxSund := neSundTax.Value;
        neSundTaxFree.AsCurrency := dGstFree;
        // sgrTotals.Cells[0, 4] := Format('%10.2f', [neSundTax.Value]);
        lblSundTotal.Caption := Format('%10.2f', [neSundTax.Value]);

        CalcTotal();
      end;

    procedure TfrmInvoice.ControlEditFields(AState : Boolean);
      begin
        if AState
        Then
        begin
          neDisb.Enabled := dmAxiom.Security.Bill.LockAmounts.ChangeDisbursments;
          neDisbTax.Enabled := dmAxiom.Security.Bill.LockTaxAmounts.ChangeDisbursmentsTax;
        end
        else
        begin
          neDisb.Enabled := False;
          neDisbTax.Enabled := False;
        end;

        neFees.Enabled := AState;
        neAntd.Enabled := AState;
        neSund.Enabled := AState;
        neTrust.Enabled := AState;
        neUpCred.Enabled := AState;
        neFeesTax.Enabled := AState;
        neAntdTax.Enabled := AState;
        neUpCredTax.Enabled := AState;
        neSundTaxFree.Enabled := AState;
        neUpCredTaxFree.Enabled := AState;
        neAntdTaxFree.Enabled := AState;
        neDisbTaxFree.Enabled := AState;
        neFeesTaxFree.Enabled := AState;
        neSundTax.Enabled := AState;
        neDisbTaxFree.Enabled := AState;
        edtDiscount.Enabled := AState;
        edtDiscountGST.Enabled := AState;
        btnFeesRebuild.Enabled := AState;
        btnDisbRebuild.Enabled := AState;
        btnAntdRebuild.Enabled := AState;
        btnSundRebuild.Enabled := AState;
        btnUpCredRebuild.Enabled := AState;
        btnAddTrust.Enabled := AState;
        dtpBillDate.Enabled := AState;

      end;

    procedure TfrmInvoice.DisbRebuild();
    Begin
      SaveInvoice;
      procBillAddDisb.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddDisb.Execute;
      procbill_add_disb_percent.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procbill_add_disb_percent.Execute;
      FDisbsRebuilt := true;
      DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);

    End;

    procedure TfrmInvoice.SundRebuild();
    Begin

      SaveInvoice;
      procBillAddSund.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procBillAddSund.Execute;
      { RemoveDisbSund;
      procbill_add_disb_percent.ParamByName('p_NMemo').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
      procbill_add_disb_percent.Execute; }
      FSundRebuilt := true;
      DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);

    End;

  procedure TfrmInvoice.UpCredRebuild();
  begin
    RemoveUPCred;
    SaveInvoice;
    procBillAddUpCred.ParamByName('P_NMEMO').AsInteger := qryInvoice.FieldByName('NMEMO').AsInteger;
    procBillAddUpCred.Execute;
    FCredRebuilt := true;
    DisplayInvoice(qryInvoice.FieldByName('NMEMO').AsInteger, FForm);
  End;

end.
