unit DebtorTaskDue;

interface

uses Forms, Windows, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCalendar, cxMemo, cxCurrencyEdit, cxTextEdit, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxGridCustomPopupMenu, cxGridPopupMenu, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.Controls, dxPSCore, dxPScxCommon, DBAccess, Uni, dxBar,
  dxBarExtItems, cxClasses, MemDS, Vcl.StdCtrls, cxRadioGroup, cxLabel,
  cxDropDownEdit, cxButtonEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxPC,
  System.Classes, SysUtils, DebtorTaskNew;


const
  cnCOLDUE = 0;

const
  cnCOLACTION = 1;

const
  cnCOLBILL = 2;

const
  cnCOLASSIGNTO = 3;

const
  cnCOLALERTNTO = 4;

const
  cnCOLALERTNTO2 = 5;

const
  cnCOLMATTER = 6;

const
  cnCOLBILLTO = 7;

const
  cnCOLCLIENTNAME = 8;

const
  cnCOLMATTERSHORTDESCR = 9;

const
  cnCOLDEBTORPHONE = 10;

const
  cnCOLMATTERAUTHOR = 11;

const
  cnCOLNOTES = 12;

const
  cnCOLTEMPLATE = 13;

const
  cnCOLBALANCE = 14;

const
  RPTFIELDS : array [0 .. 14] of string = ('DESCR', 'ACTION_DATE', 'REFNO', 'ASSIGNED_TO', 'ALERT_TO', 'ALERT_TO_ADD', 'FILEID', 'BILL_TO', 'NAME',
    'SHORTDESCR', 'DEBTOR_PHONE', 'AUTHOR', 'NOTES', 'template_descr', 'BALANCE');

const
  RPTDESCR : array [0 .. 14] of string = ('Action', 'Action Date', 'Bill No', 'Assign To', 'Alert To', 'Add Alert To', 'File ID', 'Bill To', 'Client',
    'Matter Descr', 'Debtor Phone#', 'Author', 'Notes', 'Template', 'Balance');

type
  TcolumnDetails = record
    sCaption : string;
    iSize : integer;
    iTag : integer;
  end;

  TfrmDebtorTaskDue = class(TForm)
    tabMain : TcxPageControl;
    tabDue : TcxTabSheet;
    tabFilter : TcxTabSheet;
    qryDueItems : TUniQuery;
    dxBarManager1 : TdxBarManager;
    btnClose : TdxBarButton;
    dxBarSubItem1 : TdxBarSubItem;
    dxBarButton2 : TdxBarButton;
    dxBarContainerItem1 : TdxBarContainerItem;
    dxbtnLoadInvoice : TdxBarButton;
    dxbtnWordMerge : TdxBarButton;
    dxbtnEmailMerge : TdxBarButton;
    dxBtnLoadMatter : TdxBarButton;
    qryUpdate : TUniQuery;
    dxBtnProcess : TdxBarButton;
    cxRgDate : TcxRadioGroup;
    dxMergeProgress : TdxBarProgressItem;
    dxBarSubItem2 : TdxBarSubItem;
    dxBarStatic1 : TdxBarStatic;
    dxBarStatic2 : TdxBarStatic;
    dxBarButton4 : TdxBarButton;
    dxBarButton5 : TdxBarButton;
    dxBarSubItem3 : TdxBarSubItem;
    dxBarSubItem4 : TdxBarSubItem;
    dxBarSubItem5 : TdxBarSubItem;
    dxAutoWord : TdxBarButton;
    dxAutoEmail : TdxBarButton;
    dxPrint : TdxBarButton;
    qryEmployee : TUniQuery;
    dsEmployee : TUniDataSource;
    cxGroupBox2 : TcxGroupBox;
    cxGroupBox3 : TcxGroupBox;
    cxlcAssignTo : TcxLookupComboBox;
    cxlcAlertTo : TcxLookupComboBox;
    tabColumns : TcxTabSheet;
    lvColumns : TListView;
    dxBtnPrint : TdxBarButton;
    dxShow : TdxBarButton;
    dxNote : TdxBarEdit;
    dxBtnNote : TdxBarButton;
    dxBtnNotes : TdxBarButton;
    qryDebtorTaskItem : TUniQuery;
    dsDebtorTaskItem : TUniDataSource;
    dxBarSubItem6 : TdxBarSubItem;
    dxDebtorNotes : TdxBarButton;
    qryDebtorNotesInsert : TUniQuery;
    grpMatter : TcxGroupBox;
    grpBill : TcxGroupBox;
    tbMatter : TcxButtonEdit;
    tbBill : TcxButtonEdit;
    cxdeFrom : TcxDateEdit;
    cxdeTo : TcxDateEdit;
    cxLabel1 : TcxLabel;
    cxLabel2 : TcxLabel;
    cxGroupBox5 : TcxGroupBox;
    cxCeFrom : TcxCurrencyEdit;
    cxCeTo : TcxCurrencyEdit;
    cxLabel3 : TcxLabel;
    cxLabel4 : TcxLabel;
    dxComponentPrinter1 : TdxComponentPrinter;
    dxBtnDebtorStatement : TdxBarButton;
    ilListImages : TImageList;
    tvDueItems : TcxGridDBTableView;
    lvDueItems : TcxGridLevel;
    grdDueItems : TcxGrid;
    dsDueItems : TUniDataSource;
    tvDueItemsNDEBTORTASK : TcxGridDBColumn;
    tvDueItemsNACTION : TcxGridDBColumn;
    tvDueItemsDESCR : TcxGridDBColumn;
    tvDueItemsNMEMO : TcxGridDBColumn;
    tvDueItemsASSIGNED_TO : TcxGridDBColumn;
    tvDueItemsALERT_TO : TcxGridDBColumn;
    tvDueItemsNOTES : TcxGridDBColumn;
    tvDueItemsALERT_TO_ADD : TcxGridDBColumn;
    tvDueItemsBILL_TO : TcxGridDBColumn;
    tvDueItemsFILEID : TcxGridDBColumn;
    tvDueItemsREFNO : TcxGridDBColumn;
    tvDueItemsSHORTDESCR : TcxGridDBColumn;
    tvDueItemsBALANCE : TcxGridDBColumn;
    tvDueItemsACTION_DATE : TcxGridDBColumn;
    tvDueItemsNAME : TcxGridDBColumn;
    tvDueItemsDEBTOR_PHONE : TcxGridDBColumn;
    tvDueItemsAUTHOR : TcxGridDBColumn;
    tvDueItemsTEMPLATE_DESCR : TcxGridDBColumn;
    tvDueItemsTYPE : TcxGridDBColumn;
    dxComponentPrinter1Link1 : TdxGridReportLink;
    PopupMenu : TPopupMenu;
    ReAssignTask1 : TMenuItem;
    cxGridPopupMenu1 : TcxGridPopupMenu;
    ChangeDueDate1 : TMenuItem;
    CreateNote1 : TMenuItem;
    CompleteTask1 : TMenuItem;
    CreateDebtorNote1 : TMenuItem;
    lblDebtorCaption : TLabel;
    qryPhonebook : TUniQuery;
    dsPhonebook : TUniDataSource;
    grpClient : TcxGroupBox;
    tbClient : TcxButtonEdit;
    radBillLevel : TcxRadioButton;
    radMatterLevel : TcxRadioButton;
    radClientLevel : TcxRadioButton;
    radDebtorLevel : TcxRadioButton;
    tbDebtor : TcxButtonEdit;
    tvDueItemsDISPATCHED : TcxGridDBColumn;
    tvDueItemsCODE : TcxGridDBColumn;
    tvDueItemsDAYSOVERDUE : TcxGridDBColumn;
    tvDueItemsNTEMPLATE : TcxGridDBColumn;
    qryDueItemsByClient: TUniQuery;
    dsDueItemsByClient: TUniDataSource;
    tabClientBalance: TcxTabSheet;
    grdClientBalance: TcxGrid;
    vwBalanceByClient: TcxGridDBTableView;
    grdBalanceByClient: TcxGridLevel;
    vwBalanceByClientCLIENT_BALANCE: TcxGridDBColumn;
    vwBalanceByClientCLIENT_NAME: TcxGridDBColumn;
    vwBalanceByClientCLIENT_CODE: TcxGridDBColumn;
    grdClientDetails: TcxGridLevel;
    qryDetailClientRecords: TUniQuery;
    dsDetailClientRecords: TUniDataSource;
    vwClientDetails: TcxGridDBTableView;
    vwClientDetailsBALANCE: TcxGridDBColumn;
    vwClientDetailsTEMPLATE_DESCR: TcxGridDBColumn;
    vwClientDetailsAUTHOR: TcxGridDBColumn;
    vwClientDetailsAssignedTo: TcxGridDBColumn;
    vwBalanceByClientNOTES: TcxGridDBColumn;
    vwClientDetailsOVERDUE: TcxGridDBColumn;
    vwBalanceByClientOVERDUE: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    vwBalanceByClientASSIGNED_TO: TcxGridDBColumn;
    vwClientDetailsACTION: TcxGridDBColumn;
    vwClientDetailsACTIONDATE: TcxGridDBColumn;
    vwClientDetailsREFNO: TcxGridDBColumn;
    vwClientDetailsFILEID: TcxGridDBColumn;
    vwClientDetailsALERT_TO: TcxGridDBColumn;
    vwClientDetailsBILL_TO: TcxGridDBColumn;
    vwClientDetailsSHORTDESCR: TcxGridDBColumn;
    vwClientDetailsDISPATCHED: TcxGridDBColumn;
    popUpClient: TPopupMenu;
    MenuItem9: TMenuItem;
    vwClientDetailsNDEBTORTASK: TcxGridDBColumn;
    vwClientDetailsNACTION: TcxGridDBColumn;
    vwClientDetailsALERT_TO_ADD: TcxGridDBColumn;
    vwBalanceByClientACTiON_DATE: TcxGridDBColumn;
    vwBalanceByClientDEBTOR_PHONE: TcxGridDBColumn;
    ChangeDueDateAllBills1: TMenuItem;
    ReAssignClient1: TMenuItem;
    CompleteTaskAllBills1: TMenuItem;
    procedure enableButtons;
    procedure refreshList;
    procedure makeSQL;
    procedure FormShow(Sender : TObject);
    procedure lvDueCompare(
      Sender       : TObject;
      Item1, Item2 : TListItem;
      Data         : integer;
      var Compare  : integer);
    procedure dxBarButton3Click(Sender : TObject);
    procedure lvDueSelectItem(
      Sender   : TObject;
      Item     : TListItem;
      Selected : Boolean);
    procedure lvDueExit(Sender : TObject);
    procedure dxbtnLoadInvoiceClick(Sender : TObject);
    procedure dxBtnLoadMatterClick(Sender : TObject);
    procedure dxbtnWordMergeClick(Sender : TObject);
    procedure dxBtnProcessClick(Sender : TObject);
    procedure tabMainChange(Sender : TObject);
    procedure dxbtnEmailMergeClick(Sender : TObject);
    procedure lvColumnsClick(Sender : TObject);
    procedure lvColumnsChange(
      Sender : TObject;
      Item   : TListItem;
      Change : TItemChange);
    procedure FormClose(
      Sender     : TObject;
      var Action : TCloseAction);
    procedure dxBtnPrintClick(Sender : TObject);
    procedure dxBtnNotesClick(Sender : TObject);
    procedure cxRgDatePropertiesChange(Sender : TObject);
    procedure FormKeyDown(
      Sender  : TObject;
      var Key : Word;
      Shift   : TShiftState);
    procedure tabFilterShow(Sender : TObject);
    procedure FormCreate(Sender : TObject);
    procedure dxBtnDebtorStatementClick(Sender : TObject);
    procedure qryDueItemsAfterScroll(DataSet : TDataSet);
    procedure ReAssignTask1Click(Sender : TObject);
    procedure PopupCustomButtonClick(Sender : TObject);
    procedure ChangeDueDate1Click(Sender : TObject);
    procedure CreateDebtorNote1Click(Sender : TObject);
    procedure tbClientPropertiesButtonClick(
      Sender       : TObject;
      AButtonIndex : integer);
    procedure tbMatterPropertiesButtonClick(
      Sender       : TObject;
      AButtonIndex : integer);
    procedure tbBillPropertiesButtonClick(
      Sender       : TObject;
      AButtonIndex : integer);
    procedure cxButtonEdit1PropertiesButtonClick(
      Sender       : TObject;
      AButtonIndex : integer);
    procedure PopupMenuPopup(Sender : TObject);
    procedure dxRefreshGridClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure ChangeDueDateAllBills1Click(Sender: TObject);
    procedure ReAssignClient1Click(Sender: TObject);
    procedure CompleteTaskAllBills1Click(Sender: TObject);
    private
      { Private declarations }
      aReportControls : array of TControl;
      NDebtor : integer;
      procedure addColumn(
        lList       : TListView;
        var lNode   : TListItem;
        sCaption    : string;
        iImageIndex : integer);
      procedure saveGrid;
      procedure loadGrid;
       procedure filterClientBalance;           // RDW - New Tab added
       procedure makeSQLforSubGridByClient;     // RDW - Sub Grid of Client Details
    public
      { Public declarations }
  end;

var
  frmDebtorTaskDue : TfrmDebtorTaskDue;

implementation

uses
  dateUtils,
  Matters,
  BillNew,
  debtorDocumentMerge,
  miscFunc,
  axiomData,
  TextEdit,
  MSearch,
  citfunc,
  InvoiceSearch,
  EmployeeFindDialog,
  DateEditDialog,
  NSearch,
  CSearch;

{$R *.dfm}
{ procedure TfrmDebtorTaskDue.enableButtons;
  var iSelCount, iloop: Integer;
  dData: ^TListData;
  lItem: TlistItem;
  bHideProcess: boolean;
  begin
  dxbtnLoadInvoice.Enabled := false;
  dxBtnLoadMatter.Enabled := false;
  dxbtnWordMerge.Enabled := false;
  dxbtnEmailMerge.Enabled := false;
  dxBtnProcess.Enabled := false;
  bHideProcess := false;
  dxBtnNotes.Enabled := false;
  dxBtnDebtorStatement.Enabled := False;

  iSelCount := lvDue.SelCount;
  if iSelCount = 1 then
  begin
  dxbtnLoadInvoice.Enabled := true;
  dxBtnLoadMatter.Enabled := true;
  dxBtnNotes.Enabled := true;
  end;

  for iLoop := 0 to lvDue.items.Count - 1 do
  begin
  lItem := lvDue.items[iLoop];
  if not lItem.Selected then
  continue;

  dData := lItem.data;
  if dData = nil then
  continue;

  qryDueItems.GotoBookmark(dData^.bookMark);

  if dData^.sType = 'Document' then
  dxbtnWordMerge.Enabled := dmAxiom.Security.CollectionsManagement.MergeTask
  else if dData^.sType = 'Email' then
  dxbtnEmailMerge.Enabled := dmAxiom.Security.CollectionsManagement.MergeTask
  else if dData^.sType = 'Statement' then
  dxBtnDebtorStatement.Enabled := dmAxiom.Security.CollectionsManagement.MergeTask;


  if (not qryDueItems.fieldByName('processed_date').isNull) and (qryDueItems.fieldByName('confirmed_Date').isNull) then
  dxBtnProcess.Enabled := dmAxiom.Security.CollectionsManagement.ProcessTask;

  if qryDueItems.fieldByName('processed_date').isNull then
  bHideProcess := true;
  end;

  if bHideProcess then
  dxBtnProcess.Enabled := false;
  end;
}

procedure TfrmDebtorTaskDue.enableButtons;
  var
    iSelCount, iloop : integer;
    bHideProcess : Boolean;
  begin
    dxbtnLoadInvoice.Enabled := false;
    dxBtnLoadMatter.Enabled := false;
    dxbtnWordMerge.Enabled := false;
    dxbtnEmailMerge.Enabled := false;
    dxBtnProcess.Enabled := false;
    bHideProcess := false;
    dxBtnNotes.Enabled := false;
    dxBtnDebtorStatement.Enabled := false;

    iSelCount := tvDueItems.Controller.SelectedRowCount;
    if iSelCount = 1
    then
    begin
      dxbtnLoadInvoice.Enabled := true;
      dxBtnLoadMatter.Enabled := true;
      dxBtnNotes.Enabled := true;
    end;

    for iloop := 0 to tvDueItems.Controller.SelectedRowCount - 1 do
    begin
      // qryDueItems.GotoBookmark(dData^.bookMark);

      if tvDueItemsTYPE.EditValue = 'Document'
      then
        dxbtnWordMerge.Enabled := dmAxiom.Security.CollectionsManagement.MergeTask
      else if tvDueItemsTYPE.EditValue = 'Email'
      then
        dxbtnEmailMerge.Enabled := dmAxiom.Security.CollectionsManagement.MergeTask
      else if tvDueItemsTYPE.EditValue = 'Statement'
      then
        dxBtnDebtorStatement.Enabled := dmAxiom.Security.CollectionsManagement.MergeTask;

      if (not qryDueItems.fieldByName('processed_date').isNull) and (qryDueItems.fieldByName('confirmed_Date').isNull)
      then
        dxBtnProcess.Enabled := dmAxiom.Security.CollectionsManagement.ProcessTask;

      if qryDueItems.fieldByName('processed_date').isNull
      then
        bHideProcess := true;
    end;

    if bHideProcess
    then
      dxBtnProcess.Enabled := false;
    dxBtnPrint.Enabled := tvDueItems.ViewData.RowCount > 0;
  end;

procedure TfrmDebtorTaskDue.addColumn(
  lList       : TListView;
  var lNode   : TListItem;
  sCaption    : string;
  iImageIndex : integer);
  var
    iSubItem : integer;
  begin
    if lNode = nil
    then
    begin
      lNode := lList.Items.add;
      lNode.Caption := sCaption;
      lNode.ImageIndex := iImageIndex;
    end
    else
    begin
      iSubItem := lNode.SubItems.Count;
      lNode.SubItems.add(sCaption);
      lNode.SubItemImages[iSubItem] := iImageIndex;

    end;
  end;

procedure TfrmDebtorTaskDue.refreshList;
  var
//    dData : ^TListData;
    lNode : TListItem;
    dAction : TDateTime;
    lCol : TlistColumn;
    iImageIndex : integer;
    iCurrentSelection : integer;
  begin
    try
      qryDueItems.AfterScroll := nil;
      iCurrentSelection := - 1;

      //qryDetailClientRecords.DataSource.Enabled := True;
      dsDetailClientRecords.Enabled := True;
      qryDueItems.close;
      makeSQL;
      qryDueItems.open;
      qryDueItems.first;
      qryDueItemsByClient.Close;
      filterClientBalance;        // RDW Make the SQL for CLient Balances
      qryDueItemsByClient.open;
      qryDueItemsByClient.first;
      makeSQLforSubGridByClient;
      qryDetailClientRecords.open;
      qryDetailClientRecords.first;
    finally
      qryDueItems.AfterScroll := qryDueItemsAfterScroll;
    end;

  end;

  procedure TfrmDebtorTaskDue.filterClientBalance;
  begin
    // RDW - Added To display Total Balances by Client
    qryDueItemsByClient.SQL.Clear;
    qryDueItemsByClient.SQL.add('SELECT SUM(x.balance) as CLIENT_BALANCE  ,x.CLIENT_NAME,x.CLIENT_CODE, ROUND(AVG(x.DaysOverdue)) as AvgDaysOverDue,');
    qryDueItemsByClient.SQL.add('x.notes, max(x.assigned_to), min(x.action_date), x.debtor_phone   FROM (select memo.owing balance, dtt.descr as template_descr,dcn.debtormemo as notes,ma.author,nvl(dcn.workphone,dc.workphone) as debtor_phone,');
    qryDueItemsByClient.SQL.add('ta.generated_document_name,cl.name AS CLIENT_NAME, cl.code as CLIENT_CODE,');
    qryDueItemsByClient.SQL.add
      ('dcn.SEARCH As bill_to, ta.document,ta.document_name,ta.debtor_note,ta.email,ta.email_subject,dt.ndebtortask,dt.CONFIRMATION_REQUIRED,ta.type,');
    qryDueItemsByClient.SQL.add('dt.descr,ma.nmatter,ma.fileid,memo.nmemo,assigned_to,');
    qryDueItemsByClient.SQL.add
      ('alert_to,trunc(action_date) as action_date,ta.document_path,dt.confirmed_Date,dt.processed_date,memo.refno,ma.shortdescr, alert_to_add, ' +
      'memo.dispatched, cl.CODE, Trunc(SYSDATE) - Trunc(MEMO.DISPATCHED) As DaysOverdue, DT.NTEMPLATE ');
    qryDueItemsByClient.SQL.add('from debtorworkflowaction ta,debtorworkflowtask dt,debtorworkflowtemplate dtt,');
    qryDueItemsByClient.SQL.add('(select m.* ');
    qryDueItemsByClient.SQL.add('from nmemo m) memo, matter ma, client cl, phonebook dc, phonebook dcn,');
    qryDueItemsByClient.SQL.add('vw_owingbymatter mato, vw_owingbydebtor debo, vw_owingbyclient clio');
    qryDueItemsByClient.SQL.add('where dt.nmemo = memo.nmemo');
    qryDueItemsByClient.SQL.add('and memo.nmatter = ma.nmatter');
    qryDueItemsByClient.SQL.add('and ma.nname = clio.nname');
    qryDueItemsByClient.SQL.add('and memo.nbill_to = debo.nname (+)');
    qryDueItemsByClient.SQL.add('and memo.nmatter = mato.nmatter');
    qryDueItemsByClient.SQL.add('and ta.naction = dt.naction');
    qryDueItemsByClient.SQL.add('and ma.nclient = cl.nclient');
    qryDueItemsByClient.SQL.add('AND dt.ntemplate = dtt.ntemplate (+)');
    qryDueItemsByClient.SQL.add('AND dc.NNAME (+)  = ma.NBILL_TO');
    qryDueItemsByClient.SQL.add('AND dcn.NNAME (+) = memo.NBILL_TO');
    qryDueItemsByClient.SQL.add('and memo.rv_type = ''N''');
    qryDueItemsByClient.SQL.add('and memo.owing >= dt.MIN_BALANCE');
    if (SystemString('LOCALE_NAME') <> '')
    then
    begin
      qryDueItemsByClient.SQL.add('and ma.entity = :entity');
      qryDueItemsByClient.ParamByName('entity').AsString := dmAxiom.Entity;
    end;

    if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 5
    then
    begin
      if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate)
      then
      begin
        qryDueItemsByClient.SQL.add('and dt.confirmed_date between  trunc(:dtFrom-1) and trunc(:dtTo+1)');
        qryDueItemsByClient.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        qryDueItemsByClient.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end
      else if cxdeFrom.Date <> nullDate
      then
      begin
        qryDueItemsByClient.SQL.add('and dt.confirmed_date >= trunc(:dtFrom-1)');
        qryDueItemsByClient.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
      end
      else if cxdeTo.Date <> nullDate
      then
      begin
        qryDueItemsByClient.SQL.add('and trunc(dt.confirmed_date) <= trunc(:dtTo+1)');
        qryDueItemsByClient.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end;
    end
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag <> 6
    then
      qryDueItemsByClient.SQL.add('and dt.confirmed_date is null');

    if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 0
    then
      qryDueItemsByClient.SQL.add('and trunc(dt.action_date) < trunc(sysdate)')
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 2
    then
    begin
      if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate)
      then
      begin
        qryDueItemsByClient.SQL.add('and trunc(dt.action_date) between  trunc(:dtFrom) and trunc(:dtTo)');
        qryDueItemsByClient.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        qryDueItemsByClient.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end
      else if cxdeFrom.Date <> nullDate
      then
      begin
        qryDueItemsByClient.SQL.add('and trunc(dt.action_date) > trunc(:dtFrom)');
        qryDueItemsByClient.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
      end
      else if cxdeTo.Date <> nullDate
      then
      begin
        qryDueItemsByClient.SQL.add('and trunc(dt.action_date) < trunc(:dtTo)');
        qryDueItemsByClient.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end;
    end
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 4
    then
    begin
      if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate)
      then
      begin
        qryDueItemsByClient.SQL.add('and trunc(memo.exppayment) between  trunc(:dtFrom) and trunc(:dtTo)');
        qryDueItemsByClient.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        qryDueItemsByClient.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end
      else if cxdeFrom.Date <> nullDate
      then
      begin
        qryDueItemsByClient.SQL.add('and trunc(memo.exppayment) > trunc(:dtFrom)');
        qryDueItemsByClient.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
      end
      else if cxdeTo.Date <> nullDate
      then
      begin
        qryDueItemsByClient.SQL.add('and trunc(memo.exppayment) < trunc(:dtTo)');
        qryDueItemsByClient.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end;
    end
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 3
    then
      qryDueItemsByClient.SQL.add('and trunc(dt.action_date) < trunc(next_day(sysdate,''MON''))');

    if cxlcAssignTo.EditValue <> '**ALL**'
    then
      qryDueItemsByClient.SQL.add('and dt.assigned_to = ''' + cxlcAssignTo.EditValue + '''');
    if cxlcAlertTo.EditValue <> '**ALL**'
    then
      qryDueItemsByClient.SQL.add('and dt.alert_to = ''' + cxlcAlertTo.EditValue + '''');

    if tbClient.Text <> ''
    then
      qryDueItemsByClient.SQL.add('and dc.clientid = ''' + tbClient.Text + '''');
    if tbMatter.Text <> ''
    then
      qryDueItemsByClient.SQL.add('and ma.fileid = ''' + tbMatter.Text + '''');
    if tbBill.Text <> ''
    then
      qryDueItemsByClient.SQL.add('and memo.refno = ''' + tbBill.Text + '''');

    if (cxCeFrom.Value <> 0) and (cxCeTo.Value <> 0)
    then
    begin
      if radBillLevel.Checked
      then
      begin
        qryDueItemsByClient.SQL.add('and owing between :owFrom and :owTo');
      end
      else if radMatterLevel.Checked
      then
      begin
        qryDueItemsByClient.SQL.add('and matterowing between :owFrom and :owTo');
      end
      else if radClientLevel.Checked
      then
      begin
        qryDueItemsByClient.SQL.add('and clientowing between :owFrom and :owTo');
      end
      else
      begin
        qryDueItemsByClient.SQL.add('and debtorowing between :owFrom and :owTo');
      end;
      qryDueItemsByClient.ParamByName('owFrom').AsCurrency := cxCeFrom.Value;
      qryDueItemsByClient.ParamByName('owTo').AsCurrency := cxCeTo.Value;
    end
    else if (cxCeFrom.Value <> 0) and (cxCeTo.Value = 0)
    then
    begin
      if radBillLevel.Checked
      then
      begin
        qryDueItemsByClient.SQL.add('and owing >= :owFrom');
      end
      else if radMatterLevel.Checked
      then
      begin
        qryDueItemsByClient.SQL.add('and matterowing >= :owFrom');
      end
      else if radClientLevel.Checked
      then
      begin
        qryDueItemsByClient.SQL.add('And clientowing >= :owFrom');
      end
      else
      begin
        qryDueItemsByClient.SQL.add('and debtorowing >= :owFrom');
      end;
      qryDueItemsByClient.ParamByName('owFrom').AsCurrency := cxCeFrom.Value;
    end
    else if (cxCeFrom.Value = 0) and (cxCeTo.Value <> 0)
    then
    begin
      if radBillLevel.Checked
      then
      begin
        qryDueItemsByClient.SQL.add('and owing between :owFrom and :owTo');
      end
      else if radMatterLevel.Checked
      then
      begin
        qryDueItemsByClient.SQL.add('and matterowing between :owFrom and :owTo');
      end
      else if radClientLevel.Checked
      then
      begin
        qryDueItemsByClient.SQL.add('and clientowing between :owFrom and :owTo');
      end
      else
      begin
        qryDueItemsByClient.SQL.add('and debtorowing between :owFrom and :owTo');
      end;
      qryDueItemsByClient.ParamByName('owFrom').AsCurrency := 0;
      qryDueItemsByClient.ParamByName('owTo').AsCurrency := cxCeTo.Value;
    end;
    if tbDebtor.Text <> ''
    then
    begin
      qryDueItemsByClient.SQL.add('and memo.nbill_to = ' +   NDebtor.ToString + '');
    end;

    qryDueItemsByClient.SQL.add(') x  group by x.CLIENT_NAME, x.CLIENT_CODE, x.notes, x.debtor_phone   having SUM(x.balance)> 0 ORDER BY SUM(x.balance) DESC;');

    if dmAxiom.runningide = true
    then
      qryDueItemsByClient.SQL.SaveToFile('c:\tmp\debtorduetasksClientBalance.sql');

  end;

// Added RDW - Sub grid to populate the sub grid
procedure TfrmDebtorTaskDue.makeSQLforSubGridByClient;
begin

    qryDetailClientRecords.SQL.Clear;
    qryDetailClientRecords.SQL.add
      ('select memo.owing balance, cl.CODE as CLIENT_CODE, dtt.descr as template_descr,dcn.debtormemo as notes,ma.author,nvl(dcn.workphone,dc.workphone) as debtor_phone,');
    qryDetailClientRecords.SQL.add('ta.generated_document_name,cl.name,');
    qryDetailClientRecords.SQL.add
      ('dcn.SEARCH As bill_to, ta.document,ta.document_name,ta.debtor_note,ta.email,ta.email_subject,dt.ndebtortask,dt.CONFIRMATION_REQUIRED,ta.type,');
    qryDetailClientRecords.SQL.add('dt.descr,ma.nmatter,ma.fileid,memo.nmemo,assigned_to,');
    qryDetailClientRecords.SQL.add
      ('alert_to,trunc(action_date) as action_date,ta.document_path,dt.confirmed_Date,dt.processed_date,memo.refno,ma.shortdescr, alert_to_add, ' +
      'memo.dispatched, cl.CODE, Trunc(SYSDATE) - Trunc(MEMO.DISPATCHED) As DaysOverdue, DT.NTEMPLATE, TA.NACTION ');
    qryDetailClientRecords.SQL.add('from debtorworkflowaction ta,debtorworkflowtask dt,debtorworkflowtemplate dtt,');
    qryDetailClientRecords.SQL.add('(select m.* ');
    qryDetailClientRecords.SQL.add('from nmemo m) memo, matter ma, client cl, phonebook dc, phonebook dcn,');
    qryDetailClientRecords.SQL.add('vw_owingbymatter mato, vw_owingbydebtor debo, vw_owingbyclient clio');

    // WHERE Clause
    qryDetailClientRecords.SQL.add('where dt.nmemo = memo.nmemo');
    qryDetailClientRecords.SQL.add('and memo.nmatter = ma.nmatter');
    qryDetailClientRecords.SQL.add('and ma.nname = clio.nname');
    qryDetailClientRecords.SQL.add('and memo.nbill_to = debo.nname (+)');
    qryDetailClientRecords.SQL.add('and memo.nmatter = mato.nmatter');
    qryDetailClientRecords.SQL.add('and ta.naction = dt.naction');
    qryDetailClientRecords.SQL.add('and ma.nclient = cl.nclient');
    qryDetailClientRecords.SQL.add('AND dt.ntemplate = dtt.ntemplate (+)');
    qryDetailClientRecords.SQL.add('AND dc.NNAME (+)  = ma.NBILL_TO');
    qryDetailClientRecords.SQL.add('AND dcn.NNAME (+) = memo.NBILL_TO');
    qryDetailClientRecords.SQL.add('and memo.rv_type = ''N''');
    qryDetailClientRecords.SQL.add('and memo.owing >= dt.MIN_BALANCE');
    if (SystemString('LOCALE_NAME') <> '')
    then
    begin
      qryDetailClientRecords.SQL.add('and ma.entity = :entity');
      qryDetailClientRecords.ParamByName('entity').AsString := dmAxiom.Entity;
    end;


    if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 5
    then
    begin
      if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate)
      then
      begin
        qryDetailClientRecords.SQL.add('and dt.confirmed_date between  trunc(:dtFrom-1) and trunc(:dtTo+1)');
        qryDetailClientRecords.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        qryDetailClientRecords.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end
      else if cxdeFrom.Date <> nullDate
      then
      begin
        qryDetailClientRecords.SQL.add('and dt.confirmed_date >= trunc(:dtFrom-1)');
        qryDetailClientRecords.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
      end
      else if cxdeTo.Date <> nullDate
      then
      begin
        qryDetailClientRecords.SQL.add('and trunc(dt.confirmed_date) <= trunc(:dtTo+1)');
        qryDetailClientRecords.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end;
    end
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag <> 6
    then
      qryDetailClientRecords.SQL.add('and dt.confirmed_date is null');

    if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 0
    then
      qryDetailClientRecords.SQL.add('and trunc(dt.action_date) < trunc(sysdate)')
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 2
    then
    begin
      if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate)
      then
      begin
        qryDetailClientRecords.SQL.add('and trunc(dt.action_date) between  trunc(:dtFrom) and trunc(:dtTo)');
        qryDetailClientRecords.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        qryDetailClientRecords.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end
      else if cxdeFrom.Date <> nullDate
      then
      begin
        qryDetailClientRecords.SQL.add('and trunc(dt.action_date) > trunc(:dtFrom)');
        qryDetailClientRecords.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
      end
      else if cxdeTo.Date <> nullDate
      then
      begin
        qryDetailClientRecords.SQL.add('and trunc(dt.action_date) < trunc(:dtTo)');
        qryDetailClientRecords.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end;
    end
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 4
    then
    begin
      if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate)
      then
      begin
        qryDetailClientRecords.SQL.add('and trunc(memo.exppayment) between  trunc(:dtFrom) and trunc(:dtTo)');
        qryDetailClientRecords.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        qryDetailClientRecords.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end
      else if cxdeFrom.Date <> nullDate
      then
      begin
        qryDetailClientRecords.SQL.add('and trunc(memo.exppayment) > trunc(:dtFrom)');
        qryDetailClientRecords.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
      end
      else if cxdeTo.Date <> nullDate
      then
      begin
        qryDetailClientRecords.SQL.add('and trunc(memo.exppayment) < trunc(:dtTo)');
        qryDetailClientRecords.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end;
    end
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 3
    then
      qryDetailClientRecords.SQL.add('and trunc(dt.action_date) < trunc(next_day(sysdate,''MON''))');



    if cxlcAssignTo.EditValue <> '**ALL**'
    then
      qryDetailClientRecords.SQL.add('and dt.assigned_to = ''' + cxlcAssignTo.EditValue + '''');
    if cxlcAlertTo.EditValue <> '**ALL**'
    then
      qryDetailClientRecords.SQL.add('and dt.alert_to = ''' + cxlcAlertTo.EditValue + '''');


    if tbClient.Text <> ''
    then
      qryDetailClientRecords.SQL.add('and dc.clientid = ''' + tbClient.Text + '''');
    if tbMatter.Text <> ''
    then
      qryDetailClientRecords.SQL.add('and ma.fileid = ''' + tbMatter.Text + '''');
    if tbBill.Text <> ''
    then
      qryDetailClientRecords.SQL.add('and memo.refno = ''' + tbBill.Text + '''');

    if (cxCeFrom.Value <> 0) and (cxCeTo.Value <> 0)
    then
    begin
      if radBillLevel.Checked
      then
      begin
        qryDetailClientRecords.SQL.add('and owing between :owFrom and :owTo');
      end
      else if radMatterLevel.Checked
      then
      begin
        qryDetailClientRecords.SQL.add('and matterowing between :owFrom and :owTo');
      end
      else if radClientLevel.Checked
      then
      begin
        qryDetailClientRecords.SQL.add('and clientowing between :owFrom and :owTo');
      end
      else
      begin
        qryDetailClientRecords.SQL.add('and debtorowing between :owFrom and :owTo');
      end;
      qryDetailClientRecords.ParamByName('owFrom').AsCurrency := cxCeFrom.Value;
      qryDetailClientRecords.ParamByName('owTo').AsCurrency := cxCeTo.Value;
    end
    else if (cxCeFrom.Value <> 0) and (cxCeTo.Value = 0)
    then
    begin
      if radBillLevel.Checked
      then
      begin
        qryDetailClientRecords.SQL.add('and owing >= :owFrom');
      end
      else if radMatterLevel.Checked
      then
      begin
        qryDetailClientRecords.SQL.add('and matterowing >= :owFrom');
      end
      else if radClientLevel.Checked
      then
      begin
        qryDetailClientRecords.SQL.add('And clientowing >= :owFrom');
      end
      else
      begin
        qryDetailClientRecords.SQL.add('and debtorowing >= :owFrom');
      end;
      qryDetailClientRecords.ParamByName('owFrom').AsCurrency := cxCeFrom.Value;
    end
    else if (cxCeFrom.Value = 0) and (cxCeTo.Value <> 0)
    then
    begin
      if radBillLevel.Checked
      then
      begin
        qryDetailClientRecords.SQL.add('and owing between :owFrom and :owTo');
      end
      else if radMatterLevel.Checked
      then
      begin
        qryDetailClientRecords.SQL.add('and matterowing between :owFrom and :owTo');
      end
      else if radClientLevel.Checked
      then
      begin
        qryDetailClientRecords.SQL.add('and clientowing between :owFrom and :owTo');
      end
      else
      begin
        qryDetailClientRecords.SQL.add('and debtorowing between :owFrom and :owTo');
      end;
      qryDetailClientRecords.ParamByName('owFrom').AsCurrency := 0;
      qryDetailClientRecords.ParamByName('owTo').AsCurrency := cxCeTo.Value;
    end;
    if tbDebtor.Text <> ''
    then
    begin
      qryDetailClientRecords.SQL.add('and memo.nbill_to = ' + NDebtor.ToString + '');
    end;


    qryDetailClientRecords.SQL.add(' order by dt.action_date');

    if dmAxiom.runningide = true
    then
      qryDetailClientRecords.SQL.SaveToFile('c:\tmp\detailClientRecords.sql');

end;
procedure TfrmDebtorTaskDue.MenuItem3Click(Sender: TObject);
  var
    frmTextEdit : TfrmTextEdit;
  begin
    try
      qryDebtorTaskItem.close;
      qryDebtorTaskItem.ParamByName('ndebtortask').AsInteger := tvDueItemsNDEBTORTASK.EditValue;
      qryDebtorTaskItem.open;

      frmTextEdit := TfrmTextEdit.Create(Self);
      frmTextEdit.Caption := 'Edit Notes';

      frmTextEdit.cxText.DataBinding.DataSource := dsDebtorTaskItem;
      frmTextEdit.cxText.DataBinding.DataField := 'notes';

      frmTextEdit.ShowModal;

      frmTextEdit.free;
    finally
      qryDebtorTaskItem.close;
      refreshList;
    end;
end;

procedure TfrmDebtorTaskDue.MenuItem6Click(Sender: TObject);
 var
    // fmEmployeeFindDialog: TfmEmployeeFindDialog;
    selectCode : string;
    Loop : integer;
    RecIdx : integer;
    ColIdx : integer;
  begin
    try
      // tvDueItems.OptionsSelection.MultiSelect := false;
      fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(Self);
      if (SystemString('LOCALE_NAME') <> '')
      then
        fmEmployeeFindDialog.LimitToEntity := dmAxiom.Entity;

      if fmEmployeeFindDialog.ShowModal = mrOK
      then
      begin
        selectCode := fmEmployeeFindDialog.lbEmployees.EditValue;

        // RDW  -- Added nw tab and sub view
        if tabMain.ActivePage = tabClientBalance then
        begin

            TcxGridDBTableView(grdClientBalance.FocusedView).Controller.SelectAll;
           for Loop := 0 to  TcxGridDBTableView(grdClientBalance.FocusedView).Controller.SelectedRowCount - 1 do
          begin
            qryUpdate.close;
            qryUpdate.SQL.Clear;
            qryUpdate.SQL.add('update debtorworkflowtask set assigned_to = :assigned_to');
            qryUpdate.SQL.add('where ndebtortask = :ndebtortask');

            qryUpdate.ParamByName('assigned_to').AsString := selectCode;
            qryUpdate.ParamByName('ndebtortask').AsInteger := qryDetailClientRecords.FieldByName('ndebtortask').AsInteger;
            qryUpdate.ExecSQL;
            qryUpdate.close;
          end;
          qryDueItemsByClient.Refresh;
          qryDetailClientRecords.Refresh;
        end


      end;
    finally
      // tvDueItems.OptionsSelection.MultiSelect := false;
    end;
end;

procedure TfrmDebtorTaskDue.makeSQL;
  begin
    // qryDueItems.AfterScroll := nil;
    qryDueItems.SQL.Clear;
    qryDueItems.SQL.add
      ('select memo.owing balance, dtt.descr as template_descr,dcn.debtormemo as notes,ma.author,nvl(dcn.workphone,dc.workphone) as debtor_phone,');
    qryDueItems.SQL.add('ta.generated_document_name,cl.name,');
    qryDueItems.SQL.add
      ('dcn.SEARCH As bill_to, ta.document,ta.document_name,ta.debtor_note,ta.email,ta.email_subject,dt.ndebtortask,dt.CONFIRMATION_REQUIRED,ta.type,');
    qryDueItems.SQL.add('dt.descr,ma.nmatter,ma.fileid,memo.nmemo,assigned_to,');
    qryDueItems.SQL.add
      ('alert_to,trunc(action_date) as action_date,ta.document_path,dt.confirmed_Date,dt.processed_date,memo.refno,ma.shortdescr, alert_to_add, ' +
      'memo.dispatched, cl.CODE, Trunc(SYSDATE) - Trunc(MEMO.DISPATCHED) As DaysOverdue, DT.NTEMPLATE ');
    qryDueItems.SQL.add('from debtorworkflowaction ta,debtorworkflowtask dt,debtorworkflowtemplate dtt,');
    qryDueItems.SQL.add('(select m.* ');
    qryDueItems.SQL.add('from nmemo m) memo, matter ma, client cl, phonebook dc, phonebook dcn,');
    qryDueItems.SQL.add('vw_owingbymatter mato, vw_owingbydebtor debo, vw_owingbyclient clio');
    qryDueItems.SQL.add('where dt.nmemo = memo.nmemo');
    qryDueItems.SQL.add('and memo.nmatter = ma.nmatter');
    qryDueItems.SQL.add('and ma.nname = clio.nname');
    qryDueItems.SQL.add('and memo.nbill_to = debo.nname (+)');
    qryDueItems.SQL.add('and memo.nmatter = mato.nmatter');
    qryDueItems.SQL.add('and ta.naction = dt.naction');
    qryDueItems.SQL.add('and ma.nclient = cl.nclient');
    qryDueItems.SQL.add('AND dt.ntemplate = dtt.ntemplate (+)');
    qryDueItems.SQL.add('AND dc.NNAME (+)  = ma.NBILL_TO');
    qryDueItems.SQL.add('AND dcn.NNAME (+) = memo.NBILL_TO');
    qryDueItems.SQL.add('and memo.rv_type = ''N''');
    qryDueItems.SQL.add('and memo.owing >= dt.MIN_BALANCE');
    if (SystemString('LOCALE_NAME') <> '')
    then
    begin
      qryDueItems.SQL.add('and ma.entity = :entity');
      qryDueItems.ParamByName('entity').AsString := dmAxiom.Entity;
    end;

    if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 5
    then
    begin
      if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate)
      then
      begin
        qryDueItems.SQL.add('and dt.confirmed_date between  trunc(:dtFrom-1) and trunc(:dtTo+1)');
        qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end
      else if cxdeFrom.Date <> nullDate
      then
      begin
        qryDueItems.SQL.add('and dt.confirmed_date >= trunc(:dtFrom-1)');
        qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
      end
      else if cxdeTo.Date <> nullDate
      then
      begin
        qryDueItems.SQL.add('and trunc(dt.confirmed_date) <= trunc(:dtTo+1)');
        qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end;
    end
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag <> 6
    then
      qryDueItems.SQL.add('and dt.confirmed_date is null');

    if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 0
    then
      qryDueItems.SQL.add('and trunc(dt.action_date) < trunc(sysdate)')
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 2
    then
    begin
      if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate)
      then
      begin
        qryDueItems.SQL.add('and trunc(dt.action_date) between  trunc(:dtFrom) and trunc(:dtTo)');
        qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end
      else if cxdeFrom.Date <> nullDate
      then
      begin
        qryDueItems.SQL.add('and trunc(dt.action_date) > trunc(:dtFrom)');
        qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
      end
      else if cxdeTo.Date <> nullDate
      then
      begin
        qryDueItems.SQL.add('and trunc(dt.action_date) < trunc(:dtTo)');
        qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end;
    end
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 4
    then
    begin
      if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate)
      then
      begin
        qryDueItems.SQL.add('and trunc(memo.exppayment) between  trunc(:dtFrom) and trunc(:dtTo)');
        qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end
      else if cxdeFrom.Date <> nullDate
      then
      begin
        qryDueItems.SQL.add('and trunc(memo.exppayment) > trunc(:dtFrom)');
        qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
      end
      else if cxdeTo.Date <> nullDate
      then
      begin
        qryDueItems.SQL.add('and trunc(memo.exppayment) < trunc(:dtTo)');
        qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
      end;
    end
    else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 3
    then
      qryDueItems.SQL.add('and trunc(dt.action_date) < trunc(next_day(sysdate,''MON''))');

    if cxlcAssignTo.EditValue <> '**ALL**'
    then
      qryDueItems.SQL.add('and dt.assigned_to = ''' + cxlcAssignTo.EditValue + '''');
    if cxlcAlertTo.EditValue <> '**ALL**'
    then
      qryDueItems.SQL.add('and dt.alert_to = ''' + cxlcAlertTo.EditValue + '''');

    if tbClient.Text <> ''
    then
      qryDueItems.SQL.add('and dc.clientid = ''' + tbClient.Text + '''');
    if tbMatter.Text <> ''
    then
      qryDueItems.SQL.add('and ma.fileid = ''' + tbMatter.Text + '''');
    if tbBill.Text <> ''
    then
      qryDueItems.SQL.add('and memo.refno = ''' + tbBill.Text + '''');

    if (cxCeFrom.Value <> 0) and (cxCeTo.Value <> 0)
    then
    begin
      if radBillLevel.Checked
      then
      begin
        qryDueItems.SQL.add('and owing between :owFrom and :owTo');
      end
      else if radMatterLevel.Checked
      then
      begin
        qryDueItems.SQL.add('and matterowing between :owFrom and :owTo');
      end
      else if radClientLevel.Checked
      then
      begin
        qryDueItems.SQL.add('and clientowing between :owFrom and :owTo');
      end
      else
      begin
        qryDueItems.SQL.add('and debtorowing between :owFrom and :owTo');
      end;
      qryDueItems.ParamByName('owFrom').AsCurrency := cxCeFrom.Value;
      qryDueItems.ParamByName('owTo').AsCurrency := cxCeTo.Value;
    end
    else if (cxCeFrom.Value <> 0) and (cxCeTo.Value = 0)
    then
    begin
      if radBillLevel.Checked
      then
      begin
        qryDueItems.SQL.add('and owing >= :owFrom');
      end
      else if radMatterLevel.Checked
      then
      begin
        qryDueItems.SQL.add('and matterowing >= :owFrom');
      end
      else if radClientLevel.Checked
      then
      begin
        qryDueItems.SQL.add('And clientowing >= :owFrom');
      end
      else
      begin
        qryDueItems.SQL.add('and debtorowing >= :owFrom');
      end;
      qryDueItems.ParamByName('owFrom').AsCurrency := cxCeFrom.Value;
    end
    else if (cxCeFrom.Value = 0) and (cxCeTo.Value <> 0)
    then
    begin
      if radBillLevel.Checked
      then
      begin
        qryDueItems.SQL.add('and owing between :owFrom and :owTo');
      end
      else if radMatterLevel.Checked
      then
      begin
        qryDueItems.SQL.add('and matterowing between :owFrom and :owTo');
      end
      else if radClientLevel.Checked
      then
      begin
        qryDueItems.SQL.add('and clientowing between :owFrom and :owTo');
      end
      else
      begin
        qryDueItems.SQL.add('and debtorowing between :owFrom and :owTo');
      end;
      qryDueItems.ParamByName('owFrom').AsCurrency := 0;
      qryDueItems.ParamByName('owTo').AsCurrency := cxCeTo.Value;
    end;
    if tbDebtor.Text <> ''
    then
    begin
      qryDueItems.SQL.add('and memo.nbill_to = ' + NDebtor.ToString + '');
    end;

    qryDueItems.SQL.add(' order by dt.action_date');

    if dmAxiom.runningide = true
    then
      qryDueItems.SQL.SaveToFile('c:\tmp\debtorduetasks.sql');

  end;

procedure TfrmDebtorTaskDue.PopupMenu1Popup(Sender: TObject);
  var
    NewItem : TMenuItem;
    Loop : integer;
begin
        Loop := PopupMenu1.Items.Count - 1;
    While Loop >= 0 Do
    begin
      NewItem := PopupMenu1.Items[Loop];
      If NewItem.Tag > 0
      then
        PopupMenu1.Items.Delete(Loop);
      Loop := Loop - 1;
    end;

    PopupMenu1.Items[0].Enabled := false;
      PopupMenu1.Items[1].Enabled := false;
      PopupMenu1.Items[2].Enabled := true;
      PopupMenu1.Items[3].Enabled := false;
      PopupMenu1.Items[4].Enabled := false;
end;

procedure TfrmDebtorTaskDue.PopupMenuPopup(Sender : TObject);
  var
    NewItem : TMenuItem;
    Loop : integer;
  begin

    //
    // Delete the previously created items.
    //
    Loop := PopupMenu.Items.Count - 1;
    While Loop >= 0 Do
    begin
      NewItem := PopupMenu.Items[Loop];
      If NewItem.Tag > 0
      then
        PopupMenu.Items.Delete(Loop);
      Loop := Loop - 1;
    end;

    //
    // Now create the new actions based on the workflow but only if we have not multiselected items.
    // Currently only works for Statement items.
    //



    if (tvDueItems.Controller.SelectedRowCount = 1) or (TcxGridDBTableView(grdClientBalance.FocusedView).Controller.SelectedRowCount = 1)
    then
    begin
      PopupMenu.Items[0].Enabled := true;
      PopupMenu.Items[1].Enabled := true;
      PopupMenu.Items[2].Enabled := true;
      PopupMenu.Items[3].Enabled := true;
      PopupMenu.Items[4].Enabled := true;
      dmAxiom.qryTmp.close;
      try

        dmAxiom.qryTmp.SQL.Clear;
        dmAxiom.qryTmp.SQL.add('Select * From debtorworkflowaction Where Type = ''Statement'' Order By DESCR');
        dmAxiom.qryTmp.open;
        if dmAxiom.qryTmp.RecordCount > 0
        then
        begin
          dmAxiom.qryTmp.first;
          while not dmAxiom.qryTmp.Eof Do
          begin

            NewItem := TMenuItem.Create(Self);
            NewItem.Caption := dmAxiom.qryTmp.fieldByName('DEBTOR_NOTE').AsString;
            NewItem.OnClick := PopupCustomButtonClick;
            NewItem.Tag := dmAxiom.qryTmp.fieldByName('NACTION').AsInteger;

            PopupMenu.Items.add(NewItem);

            dmAxiom.qryTmp.Next;

          end;
        end;

      finally
        dmAxiom.qryTmp.close;
      end
    end
    else
    begin
      PopupMenu.Items[0].Enabled := true;
      PopupMenu.Items[1].Enabled := true;
      PopupMenu.Items[2].Enabled := false;
      PopupMenu.Items[3].Enabled := false;
      PopupMenu.Items[4].Enabled := false;

    end;

  end;

procedure TfrmDebtorTaskDue.qryDueItemsAfterScroll(DataSet : TDataSet);
  begin
    enableButtons;
  end;

procedure TfrmDebtorTaskDue.ReAssignClient1Click(Sender: TObject);
    // RDW Re-assign all bills for the selected client
    var
    robtest: string;
    iloop: integer;
    iloop2: integer;
    detailDataController: TcxCustomDataController;
    selectCode : string;
    
begin

     // detailDataController := vwBalanceByClient.DataController.GetDetailDataController(vwBalanceByClient.Controller.SelectedRows[0].Index ,0) as TcxCustomDataController;
      detailDataController := vwBalanceByClient.DataController.GetDetailDataController(vwBalanceByClient.ViewData.GetRecordIndexByRecord(vwBalanceByClient.Controller.SelectedRows[0]),0) as TcxCustomDataController;
      fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(Self);
      if (SystemString('LOCALE_NAME') <> '')
      then
        fmEmployeeFindDialog.LimitToEntity := dmAxiom.Entity;

      if fmEmployeeFindDialog.ShowModal = mrOK
      then
      begin
        selectCode := fmEmployeeFindDialog.lbEmployees.EditValue;
          // Go through the detail records and update the Assigned To
          for iLoop := 0 to detailDataController.RecordCount - 1 do
          begin
            qryUpdate.close;
            qryUpdate.SQL.Clear;
            qryUpdate.SQL.add('update debtorworkflowtask set assigned_to = :assigned_to');
            qryUpdate.SQL.add('where ndebtortask = :ndebtortask');

            qryUpdate.ParamByName('assigned_to').AsString := selectCode;
            qryUpdate.ParamByName('ndebtortask').AsInteger := detailDataController.Values[iLoop, 0];
            qryUpdate.ExecSQL;
            qryUpdate.close;
          end;


        refreshList;
      end;
end;

procedure TfrmDebtorTaskDue.ReAssignTask1Click(Sender : TObject);
  var
    // fmEmployeeFindDialog: TfmEmployeeFindDialog;
    selectCode : string;
    Loop : integer;
    RecIdx : integer;
    ColIdx : integer;
  begin
    try
      // tvDueItems.OptionsSelection.MultiSelect := false;
      fmEmployeeFindDialog := TfmEmployeeFindDialog.Create(Self);
      if (SystemString('LOCALE_NAME') <> '')
      then
        fmEmployeeFindDialog.LimitToEntity := dmAxiom.Entity;

      if fmEmployeeFindDialog.ShowModal = mrOK
      then
      begin
        selectCode := fmEmployeeFindDialog.lbEmployees.EditValue;

        // RDW  -- Added nw tab and sub view
        if tabMain.ActivePage = tabClientBalance then
        begin
           for Loop := 0 to  TcxGridDBTableView(grdClientBalance.FocusedView).Controller.SelectedRowCount - 1 do
          begin
            qryUpdate.close;
            qryUpdate.SQL.Clear;
            qryUpdate.SQL.add('update debtorworkflowtask set assigned_to = :assigned_to');
            qryUpdate.SQL.add('where ndebtortask = :ndebtortask');

            qryUpdate.ParamByName('assigned_to').AsString := selectCode;
            qryUpdate.ParamByName('ndebtortask').AsInteger := qryDetailClientRecords.FieldByName('ndebtortask').AsInteger;
            qryUpdate.ExecSQL;
            qryUpdate.close;
          end;
          qryDueItemsByClient.Refresh;
          qryDetailClientRecords.Refresh;
        end
        else
        begin
          for Loop := 0 to tvDueItems.Controller.SelectedRowCount - 1 do
          begin
            qryUpdate.close;
            qryUpdate.SQL.Clear;
            qryUpdate.SQL.add('update debtorworkflowtask set assigned_to = :assigned_to');
            qryUpdate.SQL.add('where ndebtortask = :ndebtortask');
            qryUpdate.ParamByName('assigned_to').AsString := selectCode;
            RecIdx := tvDueItems.Controller.SelectedRecords[Loop].RecordIndex;
            ColIdx := tvDueItems.DataController.GetItemByFieldName('NDEBTORTASK').Index;
            qryUpdate.ParamByName('ndebtortask').AsInteger := tvDueItems.DataController.Values[RecIdx, ColIdx];
            qryUpdate.ExecSQL;
            qryUpdate.close;
          end;
          qryDueItems.Refresh;
        end;

      end;
    finally
      // tvDueItems.OptionsSelection.MultiSelect := false;
    end;
  end;

procedure TfrmDebtorTaskDue.PopupCustomButtonClick(Sender : TObject);
  var
    MenuItem : TMenuItem;
    merg : TfrmDebtorDocumentMerge;
    bUpdate, bAutoWord : Boolean;
    sDocPath : string;
    bStream, fStream : TStream;
  Begin
    MenuItem := TMenuItem(Sender);

    dxMergeProgress.Visible := ivNever;
    bAutoWord := false;

    dmAxiom.qryTmp.close;
    dmAxiom.qryTmp.SQL.Clear;
    dmAxiom.qryTmp.SQL.add('Select * From DEBTORWORKFLOWACTION Where NACTION = ' + MenuItem.Tag.ToString);
    dmAxiom.qryTmp.open;

    // This comes from the Task table, so for the moment default to 'Y'
    // sprocess := qryDueItems.fieldByname('CONFIRMATION_REQUIRED').AsString;
    sDocPath := dmAxiom.qryTmp.fieldByName('DOCUMENT_PATH').AsString;

    bAutoWord := dxShow.Down;
    if sDocPath = ''
    then
      bAutoWord := true;

    try
      merg := TfrmDebtorDocumentMerge.Create(Self);
      merg.StatementMerge(tvDueItemsNMEMO.EditValue, sDocPath, dmAxiom.qryTmp.fieldByName('DEBTOR_NOTE').AsString,
        dmAxiom.qryTmp.fieldByName('generated_document_name').AsString, dmAxiom.qryTmp.fieldByName('DESCR').AsString, 0, bAutoWord, False, True);
      if (not bAutoWord) and (sDocPath <> '')
      then
        merg.ShowModal;

    finally
      merg.free;
    end;

  End;

procedure TfrmDebtorTaskDue.FormShow(Sender : TObject);
  begin
    cxlcAssignTo.EditValue := dmAxiom.UserID;



    cxlcAlertTo.EditValue := '**ALL**';
    loadGrid;
    refreshList;
  end;

procedure TfrmDebtorTaskDue.lvDueCompare(
  Sender       : TObject;
  Item1, Item2 : TListItem;
  Data         : integer;
  var Compare  : integer);
//  var
//    dData1, dData2 : ^TListData;
begin
{    if (Item1.Data = nil) or (Item2.Data = nil)
    then
    begin
      Compare := 0;
      exit;
    end;
    dData1 := Item1.Data;
    dData2 := Item2.Data;

    Compare := CompareDateTime(dData1^.dueDate, dData2^.dueDate);}
end;

procedure TfrmDebtorTaskDue.dxBarButton3Click(Sender : TObject);
  begin
    Self.close;
    // removeFromDesktop(self);
  end;

procedure TfrmDebtorTaskDue.dxBtnDebtorStatementClick(Sender : TObject);
  var
    merg : TfrmDebtorDocumentMerge;
    // lData: ^TListData;
    sprocess : string;
    bUpdate, bAutoWord : Boolean;
    iloop, iSelCount, iSelNumber : integer;
    iListItem : TListItem;
    sDocPath : string;
    bStream, fStream : TStream;
  begin
    dxMergeProgress.Visible := ivNever;
    bAutoWord := false;
    iSelNumber := 0;
    iSelCount := tvDueItems.Controller.SelectedRowCount;
    if iSelCount > 1
    then
    begin
      dxMergeProgress.Visible := ivAlways;
      dxMergeProgress.Max := iSelCount;
      dxMergeProgress.Position := iSelNumber;
    end;

    for iloop := 0 to tvDueItems.ViewData.RowCount - 1 { lvDue.Items.Count - 1 } do
    begin
      // iListItem := lvDue.Items[iLoop];
      // if not iListItem.Selected then
      // continue;

      // lData := iListItem.Data;

      // qryDueItems.GotoBookmark(lData^.bookMark);

      if qryDueItems.fieldByName('TYPE').AsString <> 'Statement'
      then
        continue;

      inc(iSelNumber);
      dxMergeProgress.Position := iSelNumber;

      sprocess := qryDueItems.fieldByName('CONFIRMATION_REQUIRED').AsString;

      sDocPath := qryDueItems.fieldByName('DOCUMENT_PATH').AsString;

      bAutoWord := dxShow.Down;
      if sDocPath = ''
      then
        bAutoWord := true;

      try
        merg := TfrmDebtorDocumentMerge.Create(Self);
        merg.StatementMerge(tvDueItemsNMEMO.EditValue { lData^.nMemo } , sDocPath, qryDueItems.fieldByName('DEBTOR_NOTE').AsString,
          qryDueItems.fieldByName('generated_document_name').AsString, qryDueItems.fieldByName('DESCR').AsString,
          tvDueItemsNDEBTORTASK.EditValue { lData^.itaskKey } , bAutoWord, dxShow.Down, dxPrint.Down);
        if (not bAutoWord) and (sDocPath <> '')
        then
          merg.ShowModal;

        if merg.ok
        then
        begin
          if (sprocess = 'Y') and dxAutoWord.Down
          then
            bUpdate := false
          else if sprocess = 'Y'
          then
            bUpdate := (MsgAsk('Do you want to mark this item as completed') = mrYes)
          else
            bUpdate := true;

          qryUpdate.close;
          qryUpdate.SQL.Clear;
          qryUpdate.SQL.add('update debtorworkflowtask set processed_date = sysdate');
          if bUpdate
          then
            qryUpdate.SQL.add(',confirmed_date = sysdate');
          qryUpdate.SQL.add('where ndebtortask = :ndebtortask');
          qryUpdate.ParamByName('ndebtortask').AsInteger := qryDueItems.fieldByName('ndebtortask').AsInteger;
          qryUpdate.ExecSQL;
          qryUpdate.close;
        end;
      finally
        merg.free;
      end;

      dxMergeProgress.Visible := ivNever;
    end;
    refreshList;
  end;

procedure TfrmDebtorTaskDue.lvDueSelectItem(
  Sender   : TObject;
  Item     : TListItem;
  Selected : Boolean);
  begin
    enableButtons;
  end;

procedure TfrmDebtorTaskDue.lvDueExit(Sender : TObject);
  begin
    enableButtons;
  end;

procedure TfrmDebtorTaskDue.dxbtnLoadInvoiceClick(Sender : TObject);
  // var lData: ^TListData;
  begin

    // lData := lvDue.selected.data;

    with TfrmInvoice.Create(Self) do
      DisplayInvoice(tvDueItemsNMEMO.EditValue);
  end;

procedure TfrmDebtorTaskDue.dxBtnLoadMatterClick(Sender : TObject);
  var
    // lData: ^TListData;
    fMatter : TfrmMatters;
  begin
    // lData := lvDue.selected.data;

    fMatter := TfrmMatters.Create(Self);
    fMatter.DisplayMatter(tvDueItemsFILEID.EditValue);
    fMatter.Visible := true;
  end;

procedure TfrmDebtorTaskDue.dxbtnWordMergeClick(Sender : TObject);
  var
    merg : TfrmDebtorDocumentMerge;
 //   lData : ^TListData;
    sprocess, sDocPath : string;
    bUpdate : Boolean;
    iloop, iSelCount, iSelNumber : integer;
    iListItem : TListItem;
    bStream, fStream : TStream;
  begin
    dxMergeProgress.Visible := ivNever;
    iSelNumber := 0;
    iSelCount := tvDueItems.Controller.SelectedRowCount;
    if iSelCount > 1
    then
    begin
      dxMergeProgress.Visible := ivAlways;
      dxMergeProgress.Max := iSelCount;
      dxMergeProgress.Position := iSelNumber;
    end;

    for iloop := 0 to tvDueItems.Controller.SelectedRowCount - 1 do
    begin
      // iListItem := tvDueItems.Controller.SelectedRows[iLoop];
      // if not iListItem.Selected then
      // continue;

      // lData := iListItem.Data;

      // qryDueItems.GotoBookmark(lData^.bookMark);

      if qryDueItems.fieldByName('TYPE').AsString <> 'Document'
      then
        continue;

      inc(iSelNumber);
      dxMergeProgress.Position := iSelNumber;

      sprocess := qryDueItems.fieldByName('CONFIRMATION_REQUIRED').AsString;

      sDocPath := qryDueItems.fieldByName('DOCUMENT_PATH').AsString;

      if (SystemString('DEBTOR_DOCUMENT_BLOB') = 'Y') and (qryDueItems.fieldByName('DOCUMENT_NAME').AsString <> '')
      then
      begin
        // extract the blob to the file system

        // make sure there is a /tmp directory

        // if not DirectoryExists('c:\tmp') then
        // begin
        // CreateDir('c:\tmp');
        // end;

        bStream := qryDueItems.CreateBlobStream(qryDueItems.fieldByName('DOCUMENT'), bmRead);
        sDocPath := dmAxiom.GetEnvVar('TMP') + '\' + qryDueItems.fieldByName('DOCUMENT_NAME').AsString;
        fStream := TFileStream.Create(sDocPath, fmCreate);
        fStream.CopyFrom(bStream, bStream.Size);
        fStream.free;
        bStream.free;
      end;

      merg := TfrmDebtorDocumentMerge.Create(Self);
      merg.wordMerge(tvDueItemsNMEMO.EditValue { lData^.nMemo } , sDocPath, qryDueItems.fieldByName('DEBTOR_NOTE').AsString,
        qryDueItems.fieldByName('generated_document_name').AsString, qryDueItems.fieldByName('DESCR').AsString,
        tvDueItemsNDEBTORTASK.EditValue { lData^.itaskKey } , dxAutoWord.Down, dxShow.Down, dxPrint.Down);
      if (dxAutoWord.Down = false)
      then
        merg.ShowModal;

      if merg.ok
      then
      begin
        if (sprocess = 'Y') and dxAutoWord.Down
        then
          bUpdate := false
        else if sprocess = 'Y'
        then
          bUpdate := (MsgAsk('Do you want to mark this item as completed') = mrYes)
        else
          bUpdate := true;

        qryUpdate.close;
        qryUpdate.SQL.Clear;
        qryUpdate.SQL.add('update debtorworkflowtask set processed_date = sysdate');
        if bUpdate
        then
          qryUpdate.SQL.add(',confirmed_date = sysdate');
        qryUpdate.SQL.add('where ndebtortask = :ndebtortask');
        qryUpdate.ParamByName('ndebtortask').AsInteger := qryDueItems.fieldByName('ndebtortask').AsInteger;
        qryUpdate.ExecSQL;
        qryUpdate.close;
      end;
      merg.free;

      dxMergeProgress.Visible := ivNever;
    end;
    refreshList;
  end;

procedure TfrmDebtorTaskDue.dxRefreshGridClick(Sender: TObject);
begin
  refreshList;
end;

procedure TfrmDebtorTaskDue.dxBtnProcessClick(Sender : TObject);
  var
//    lData : ^TListData;
    iloop : integer;
    iListItem : TListItem;
begin
    try
      dmAxiom.uniInsight.StartTransaction;

      dxMergeProgress.Visible := ivNever;
      // RDW    -- Added so that can do functionality within sub grid
       if tabMain.ActivePage = tabClientBalance then
        begin

          for iloop := 0 to  TcxGridDBTableView(grdClientBalance.FocusedView).Controller.SelectedRowCount - 1 do
          begin
            qryUpdate.close;
            qryUpdate.SQL.Clear;
            qryUpdate.SQL.add('update debtorworkflowtask set confirmed_date = sysdate');
            qryUpdate.SQL.add('where ndebtortask = :ndebtortask');
            qryUpdate.ParamByName('ndebtortask').AsInteger := qryDetailClientRecords.FieldByName('ndebtortask').AsInteger;
            qryUpdate.ExecSQL;
            qryUpdate.close;
          end;

          if dxDebtorNotes.Down and (qryDetailClientRecords.fieldByName('NOTES').AsString <> '')
          then
          begin
          qryDebtorNotesInsert.close;
          qryDebtorNotesInsert.ParamByName('NMATTER').AsInteger := qryDetailClientRecords.fieldByName('NMATTER').AsInteger;
          qryDebtorNotesInsert.ParamByName('CREATEDBY').AsString := dmAxiom.UserID;
          qryDebtorNotesInsert.ParamByName('NOTE').AsString := qryDetailClientRecords.fieldByName('NOTES').AsString;
          qryDebtorNotesInsert.ExecSQL;
          qryDebtorNotesInsert.close;
        end;
        end
        else
        begin
      for iloop := 0 to tvDueItems.Controller.SelectedRowCount - 1 do
      begin
        // iListItem := lvDue.Items[iLoop];
        // if not iListItem.Selected then
        // continue;

        // lData := iListItem.Data;
        // qryDueItems.GotoBookmark(lData^.bookMark);

        qryUpdate.close;
        qryUpdate.SQL.Clear;
        qryUpdate.SQL.add('update debtorworkflowtask set confirmed_date = sysdate');
        qryUpdate.SQL.add('where ndebtortask = :ndebtortask');
        qryUpdate.ParamByName('ndebtortask').AsInteger := qryDueItems.fieldByName('ndebtortask').AsInteger;
        qryUpdate.ExecSQL;
        qryUpdate.close;

        if dxDebtorNotes.Down and (qryDueItems.fieldByName('NOTES').AsString <> '')
        then
        begin
          qryDebtorNotesInsert.close;
          qryDebtorNotesInsert.ParamByName('NMATTER').AsInteger := qryDueItems.fieldByName('NMATTER').AsInteger;
          qryDebtorNotesInsert.ParamByName('CREATEDBY').AsString := dmAxiom.UserID;
          qryDebtorNotesInsert.ParamByName('NOTE').AsString := qryDueItems.fieldByName('NOTES').AsString;
          qryDebtorNotesInsert.ExecSQL;
          qryDebtorNotesInsert.close;
        end;
      end;
      end;

      dmAxiom.uniInsight.commit;
    except
      on e : Exception do
      begin
        dmAxiom.uniInsight.rollback;
        raise;
      end;
    end;
    refreshList;
end;

procedure TfrmDebtorTaskDue.tabMainChange(Sender : TObject);
  var
    iloop : integer;
    lCol : TlistColumn;
    lItem : TListItem;
  begin
    qryEmployee.close;
    if tabMain.ActivePage = tabDue
    then
      refreshList
    else if tabMain.ActivePage = tabFilter
    then
    begin
      qryEmployee.open;

    end
    else if tabMain.ActivePage = tabClientBalance then
    begin
         refreshList;
    end

  end;

procedure TfrmDebtorTaskDue.dxbtnEmailMergeClick(Sender : TObject);
  var
    merg : TfrmDebtorDocumentMerge;
//    lData : ^TListData;
    sprocess : string;
    bUpdate : Boolean;
    iloop, iSelCount, iSelNumber : integer;
    iListItem : TListItem;
begin
    dxMergeProgress.Visible := ivNever;
    iSelNumber := 0;
    iSelCount := tvDueItems.Controller.SelectedRowCount;
    if iSelCount > 1
    then
    begin
      dxMergeProgress.Visible := ivAlways;
      dxMergeProgress.Max := iSelCount;
      dxMergeProgress.Position := iSelNumber;
    end;

    // merg := TfrmDebtorDocumentMerge.Create(self);

    for iloop := 0 to tvDueItems.Controller.SelectedRowCount - 1 do
    begin
      // iListItem := lvDue.Items[iLoop];
      // if not iListItem.Selected then
      // continue;

      // lData := iListItem.Data;

      // qryDueItems.GotoBookmark(lData^.bookMark);

      if qryDueItems.fieldByName('TYPE').AsString <> 'Email'
      then
        continue;

      inc(iSelNumber);
      dxMergeProgress.Position := iSelNumber;

      sprocess := qryDueItems.fieldByName('CONFIRMATION_REQUIRED').AsString;
      merg := TfrmDebtorDocumentMerge.Create(Self);
      merg.emailMerge(tvDueItemsNMEMO.EditValue { lData^.nMemo } , qryDueItems.fieldByName('EMAIL').AsString, qryDueItems.fieldByName('EMAIL_SUBJECT').AsString,
        qryDueItems.fieldByName('ASSIGNED_TO').AsString, qryDueItems.fieldByName('ALERT_TO').AsString, qryDueItems.fieldByName('ALERT_TO_ADD').AsString,
        qryDueItems.fieldByName('DEBTOR_NOTE').AsString, qryDueItems.fieldByName('DESCR').AsString, tvDueItemsNDEBTORTASK.EditValue { lData^.itaskKey } ,
        dxAutoEmail.Down);

      merg.cxBcShow.Checked := dxShow.Down;
      merg.cxCbPrint.Checked := dxPrint.Down;

      if not dxAutoEmail.Down
      then
        merg.ShowModal;
      if merg.ok
      then
      begin
        if (sprocess = 'Y') and (dxAutoEmail.Down)
        then
          bUpdate := false
        else if sprocess = 'Y'
        then
          bUpdate := (MsgAsk('Do you want to mark this item as completed') = mrYes)
        else
          bUpdate := true;
        qryUpdate.close;
        qryUpdate.SQL.Clear;
        qryUpdate.SQL.add('update debtorworkflowtask set processed_date = sysdate');
        if bUpdate
        then
          qryUpdate.SQL.add(',confirmed_date = sysdate');
        qryUpdate.SQL.add('where ndebtortask = :ndebtortask');
        qryUpdate.ParamByName('ndebtortask').AsInteger := qryDueItems.fieldByName('ndebtortask').AsInteger;
        qryUpdate.ExecSQL;
        qryUpdate.close;
      end;
    end;
    merg.free;
    refreshList;
    dxMergeProgress.Visible := ivNever;
end;

procedure TfrmDebtorTaskDue.lvColumnsClick(Sender : TObject);
var
    lCol : TlistColumn;
    Item : TListItem;
begin
    {
      Item := lvColumns.Selected;
      lCol := Item.data;

      if Item.Checked then
      lCol.Width := 100
      else
      lCol.Width := 0;
    }

end;

procedure TfrmDebtorTaskDue.lvColumnsChange(Sender: TObject;  Item: TListItem;
                                            Change : TItemChange);
var
    lCol : TlistColumn;
begin
    lCol := Item.Data;

    if lCol = nil
    then
      exit;

    if Item.Checked
    then
      lCol.Width := 100
    else
      lCol.Width := 0;
  end;

procedure TfrmDebtorTaskDue.loadGrid;

  begin

    SettingLoadStream(dmAxiom.UserID, 'CollectionManager', tvDueItems);
    SettingLoadStream(dmAxiom.UserID, 'CollectionManager', vwBalanceByClient);
    SettingLoadStream(dmAxiom.UserID, 'CollectionManager', vwClientDetails);

    dxAutoWord.Down := SettingLoadBoolean('CollectionManager', 'DOCAUTOPOST');
    dxPrint.Down := SettingLoadBoolean('CollectionManager', 'DOCPRINT');
    dxShow.Down := SettingLoadBoolean('CollectionManager', 'DOCSHOW');

    dxAutoEmail.Down := SettingLoadBoolean('CollectionManager', 'EMAILAUTOSEND');

    dxDebtorNotes.Down := SettingLoadBoolean('CollectionManager', 'DEBTORNOTES');
  end;

procedure TfrmDebtorTaskDue.saveGrid;
  var
    iloop : integer;
    lCol : TlistColumn;
  begin


    SettingSaveStream(dmAxiom.UserID, 'CollectionManager', tvDueItems);
    // save the options

    SettingSave('CollectionManager', 'DOCAUTOPOST', dxAutoWord.Down);
    SettingSave('CollectionManager', 'DOCPRINT', dxPrint.Down);
    SettingSave('CollectionManager', 'DOCSHOW', dxShow.Down);

    SettingSave('CollectionManager', 'EMAILAUTOSEND', dxAutoEmail.Down);

    SettingSave('CollectionManager', 'DEBTORNOTES', dxDebtorNotes.Down);

    SettingSaveStream(dmAxiom.UserID, 'CollectionManager', vwBalanceByClient);
    SettingSaveStream(dmAxiom.UserID, 'CollectionManager', vwClientDetails);
  end;

procedure TfrmDebtorTaskDue.FormClose(
  Sender     : TObject;
  var Action : TCloseAction);
  begin
    saveGrid;
    qryPhonebook.close;
    qryDebtorTaskItem.close;
    qryDueItems.Close;
    qryDetailClientRecords.Close;

    RemoveFromDesktop(Self);
  end;

procedure TfrmDebtorTaskDue.dxBtnPrintClick(Sender : TObject);
  var
    iloop : integer;
  begin
    dxComponentPrinter1Link1.Preview();
    { buildReport;
      makeSql;
      qryDueItems.Open;
      quickRep.Preview; }
  end;

procedure TfrmDebtorTaskDue.dxBtnNotesClick(Sender : TObject);
  var
    frmTextEdit : TfrmTextEdit;
  begin
    try
      qryDebtorTaskItem.close;
      qryDebtorTaskItem.ParamByName('ndebtortask').AsInteger := tvDueItemsNDEBTORTASK.EditValue;
      qryDebtorTaskItem.open;

      frmTextEdit := TfrmTextEdit.Create(Self);
      frmTextEdit.Caption := 'Edit Notes';

      frmTextEdit.cxText.DataBinding.DataSource := dsDebtorTaskItem;
      frmTextEdit.cxText.DataBinding.DataField := 'notes';

      frmTextEdit.ShowModal;

      frmTextEdit.free;
    finally
      qryDebtorTaskItem.close;
      refreshList;
    end;
  end;

procedure TfrmDebtorTaskDue.ChangeDueDate1Click(Sender : TObject);
  var
    LDate : TDate;
    Loop : integer;
    RecIdx : integer;
    ColIdx : integer;
  begin
    try


      LDate := tvDueItemsACTION_DATE.EditValue;
      // tvDueItems.OptionsSelection.MultiSelect := false;
      if (EditDateDialog(Self, LDate) = true)
      then
      begin
        for Loop := 0 to tvDueItems.Controller.SelectedRowCount - 1 do
        begin
          qryUpdate.close;
          qryUpdate.SQL.Clear;
          qryUpdate.SQL.add('update debtorworkflowtask set ACTION_DATE = :ACTION_DATE');
          qryUpdate.SQL.add('where ndebtortask = :ndebtortask');
          qryUpdate.ParamByName('ACTION_DATE').AsDateTime := LDate;
          //RecIdx := tvDueItems.Controller.SelectedRecords[Loop].RecordIndex;
          //ColIdx := tvDueItems.DataController.GetItemByFieldName('NDEBTORTASK').Index;
          if tabMain.ActivePage = tabClientBalance then
          begin
            qryUpdate.ParamByName('ndebtortask').AsInteger := qryDetailClientRecords.FieldByName('ndebtortask').AsInteger;
          end
          else
          begin
            qryUpdate.ParamByName('ndebtortask').AsInteger:= tvDueItemsNDEBTORTASK.EditValue;
          end;
          qryUpdate.ExecSQL;
          qryUpdate.close;

        end;
        qryDueItems.Refresh;
      end;
    finally
      // tvDueItems.OptionsSelection.MultiSelect := false;
    end;
  end;

procedure TfrmDebtorTaskDue.ChangeDueDateAllBills1Click(Sender: TObject);
  var
    iloop: integer;
    detailDataController: TcxCustomDataController;
    LDate : TDate;
begin
  // RDW - Bit of a pain, get the selected Master Record, then get the datacontroller for the details
 // detailDataController := vwBalanceByClient.DataController.GetDetailDataController(vwBalanceByClient.Controller.SelectedRows[0].Index ,0) as TcxCustomDataController;
   detailDataController := vwBalanceByClient.DataController.GetDetailDataController(vwBalanceByClient.ViewData.GetRecordIndexByRecord(vwBalanceByClient.Controller.SelectedRows[0]),0) as TcxCustomDataController;
    LDate := vwBalanceByClient.DataController.GetItemByFieldName('MIN(X.ACTION_DATE)').EditValue;

        if (EditDateDialog(Self, LDate) = true) then
        begin
          for iLoop := 0 to detailDataController.RecordCount - 1 do
          begin
            qryUpdate.close;
            qryUpdate.SQL.Clear;
            qryUpdate.SQL.add('update debtorworkflowtask set ACTION_DATE = :ACTION_DATE');
            qryUpdate.SQL.add('where ndebtortask = :ndebtortask');
            qryUpdate.ParamByName('ACTION_DATE').AsDateTime := LDate;
            qryUpdate.ParamByName('ndebtortask').AsInteger := detailDataController.Values[iLoop, 0];
            qryUpdate.ExecSQL;
            qryUpdate.close;
          end;
        end;

        refreshList;

  end;

procedure TfrmDebtorTaskDue.CompleteTaskAllBills1Click(Sender: TObject);
  var
    iloop: integer;
    detailDataController: TcxCustomDataController;
begin
  // RDW - Get the detail records of the selected master row

  try
    iloop := vwBalanceByClient.Controller.SelectedRowCount;

   // detailDataController := vwBalanceByClient.DataController.GetDetailDataController(vwBalanceByClient.Controller.SelectedRows[0].Index ,0) as TcxCustomDataController;
     detailDataController := vwBalanceByClient.DataController.GetDetailDataController(vwBalanceByClient.ViewData.GetRecordIndexByRecord(vwBalanceByClient.Controller.SelectedRows[0]),0) as TcxCustomDataController;
      // dmAxiom.uniInsight.StartTransaction;

      for iLoop := 0 to detailDataController.RecordCount - 1 do
      begin
        qryUpdate.close;
        qryUpdate.SQL.Clear;
        qryUpdate.SQL.add('update debtorworkflowtask set confirmed_date = sysdate');
        qryUpdate.SQL.add('where ndebtortask = :ndebtortask');
        qryUpdate.ParamByName('ndebtortask').AsInteger := detailDataController.Values[iLoop, 0];
        qryUpdate.ExecSQL;
        qryUpdate.close;
      end;

      //dmAxiom.uniInsight.commit;

    except
      on e : Exception do
      begin
        dmAxiom.uniInsight.rollback;
        raise;
      end;
    end;
    refreshList;


end;

procedure TfrmDebtorTaskDue.CreateDebtorNote1Click(Sender : TObject);
  var
    frmTextEdit : TfrmTextEdit;
    iCode : integer;
  begin
    try
      qryDebtorTaskItem.close;
      // RDW - Check if Client detail tab
      if tabMain.ActivePage = tabClientBalance then
      begin
        qryDebtorTaskItem.ParamByName('ndebtortask').AsInteger := qryDetailClientRecords.FieldByName('ndebtortask').AsInteger;
      end
      else
      begin
        qryDebtorTaskItem.ParamByName('ndebtortask').AsInteger := tvDueItemsNDEBTORTASK.EditValue;
      end;

      qryDebtorTaskItem.open;

      qryPhonebook.close;
      iCode := qryDebtorTaskItem.fieldByName('NBILL_TO').AsInteger;
      qryPhonebook.ParamByName('phonebookkey').AsInteger := iCode;
      qryPhonebook.open;

      frmTextEdit := TfrmTextEdit.Create(Application);
      frmTextEdit.Caption := 'Edit Debtor Note';

      qryPhonebook.Edit;
      qryPhonebook.fieldByName('debtormemo').AsString := dmAxiom.UserID + ' ' + FormatDateTime('dd-mmm-yyyy hh:nn', Now) + ' ' +
        qryDebtorTaskItem.fieldByName('REFNO').AsString + AnsiString(#13#10) + qryPhonebook.fieldByName('debtormemo').AsString;

      frmTextEdit.cxText.DataBinding.DataSource := dsPhonebook;
      frmTextEdit.cxText.DataBinding.DataField := 'debtormemo';
//      frmTextEdit.frmDebtorTaskDue := Self;

      frmTextEdit.FormStyle := fsStayOnTop;
      frmTextEdit.Show;

      // We are now modal, so don't do this.
      // frmTextEdit.Free;

    finally
      // Nothing to do now we are modal.
    end;

  end;

procedure TfrmDebtorTaskDue.cxButtonEdit1PropertiesButtonClick(
  Sender       : TObject;
  AButtonIndex : integer);
  var
    result : Boolean;
  begin
    case AButtonIndex of
      0 :
        begin
          if (not FormExists(frmPhoneBookSearch))
          then
            Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
          result := (frmPhoneBookSearch.ShowModal() = mrOK);
          if (result)
          then
          begin
            tbDebtor.Text := frmPhoneBookSearch.qryPhonebook.fieldByName('SEARCH').AsString;
            NDebtor := frmPhoneBookSearch.qryPhonebook.fieldByName('NNAME').AsInteger;
          end;
        end;
      1 :
        begin
          tbDebtor.Text := '';
          NDebtor := 0;
        end;
    end;
  end;

procedure TfrmDebtorTaskDue.cxRgDatePropertiesChange(Sender : TObject);
  begin
    cxdeFrom.Enabled := false;
    cxdeTo.Enabled := false;

    if (cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 2) or (cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 4) or
      (cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 5)
    then
    begin
      cxdeFrom.Enabled := true;
      cxdeTo.Enabled := true;
    end;
  end;

procedure TfrmDebtorTaskDue.FormKeyDown(
  Sender  : TObject;
  var Key : Word;
  Shift   : TShiftState);
  begin
    if (ssCtrl in Shift) and (Key = VK_F4)
    then
      Self.close;
  end;

procedure TfrmDebtorTaskDue.tabFilterShow(Sender : TObject);
  begin
    // loadGrid;

    // refreshList;
  end;

procedure TfrmDebtorTaskDue.FormCreate(Sender : TObject);
  begin
    qryEmployee.open;
    tabMain.ActivePage := tabFilter;
  end;

procedure TfrmDebtorTaskDue.tbBillPropertiesButtonClick(
  Sender       : TObject;
  AButtonIndex : integer);
  begin
    if not FormExists(frmInvoiceSearch)
    then
      Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);

    if frmInvoiceSearch.ShowModal = mrOK
    then
    begin
      tbBill.Text := frmInvoiceSearch.qryInvoices.fieldByName('REFNO').AsString;
    end;
  end;

procedure TfrmDebtorTaskDue.tbClientPropertiesButtonClick(
  Sender       : TObject;
  AButtonIndex : integer);
  begin
    if not FormExists(frmClientSearch)
    then
      Application.CreateForm(TfrmClientSearch, frmClientSearch);

    if frmClientSearch.ShowModal = mrOK
    then
    begin
      tbClient.Text := frmClientSearch.qryClientList.fieldByName('CLIENTID').AsString;
    end;
  end;

procedure TfrmDebtorTaskDue.tbMatterPropertiesButtonClick(
  Sender       : TObject;
  AButtonIndex : integer);
  begin
    if not FormExists(frmMatterSearch)
    then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

    if frmMatterSearch.ShowModal = mrOK
    then
    begin
      tbMatter.Text := dmAxiom.qryMSearch.fieldByName('FILEID').AsString;
    end;
  end;

end.
