unit DebtorTaskDue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, DB, MemDS, DBAccess, OracleUniProvider, Uni,
  cxContainer, cxListView, DebtorTaskNew, ComCtrls, ImgList, dxBar,
  dxBarExtItems, cxEdit, cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, cxLabel, ExtCtrls, cxButtonEdit,
  cxCalendar, cxCurrencyEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPSBaseGridLnk, dxPSLVLnk, cxPCdxBarPopupMenu,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxSchedulerLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxClasses, dxCore,
  JvExComCtrls, JvListView, cxDateUtils;



const cnCOLDUE = 0;
const cnCOLACTION = 1;
const cnCOLBILL = 2;
const cnCOLASSIGNTO = 3;
const cnCOLALERTNTO = 4;
const cnCOLALERTNTO2 = 5;
const cnCOLMATTER = 6;
const cnCOLBILLTO = 7;
const cnCOLCLIENTNAME = 8;
const cnCOLMATTERSHORTDESCR = 9;
const cnCOLDEBTORPHONE = 10;
const cnCOLMATTERAUTHOR = 11;
const cnCOLNOTES = 12;
const cnCOLTEMPLATE =13;
const cnCOLBALANCE = 14;
const cnCOLDEBTOREMAIL = 15;

//const RPTFIELDS: array[0..15] of string = ('DESCR', 'ACTION_DATE', 'REFNO', 'ASSIGNED_TO', 'ALERT_TO', 'ALERT_TO_ADD', 'FILEID','BILL_TO', 'NAME', 'SHORTDESCR', 'DEBTOR_PHONE', 'AUTHOR', 'NOTES','template_descr','BALANCE','DEBTOR_EMAIL');
//const RPTDESCR: array[0..15] of string = ('Action', 'Action Date', 'Bill No', 'Assign To', 'Alert To', 'Add Alert To', 'File ID', 'Bill To', 'Client', 'Matter Descr', 'Debtor Phone#', 'Author', 'Notes', 'Template', 'Balance', 'Debtor Email');


type
  TcolumnDetails = record
    sCaption: string;
    iSize: integer;
    iTag: integer;
  end;

  TfrmDebtorTaskDue = class(TForm)
    tabMain: TcxPageControl;
    tabDue: TcxTabSheet;
    tabFilter: TcxTabSheet;
    qryDueItems: TUniQuery;
    ilListImages: TImageList;
    dxBarManager1: TdxBarManager;
    btnClose: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarContainerItem1: TdxBarContainerItem;
    dxbtnLoadInvoice: TdxBarButton;
    dxbtnWordMerge: TdxBarButton;
    dxbtnEmailMerge: TdxBarButton;
    dxBtnLoadMatter: TdxBarButton;
    qryUpdate: TUniQuery;
    dxBtnProcess: TdxBarButton;
    cxRgDate: TcxRadioGroup;
    dxMergeProgress: TdxBarProgressItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxAutoWord: TdxBarButton;
    dxAutoEmail: TdxBarButton;
    dxPrint: TdxBarButton;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxlcAssignTo: TcxLookupComboBox;
    cxlcAlertTo: TcxLookupComboBox;
    tabColumns: TcxTabSheet;
    lvColumns: TListView;
    dxBtnPrint: TdxBarButton;
    dxShow: TdxBarButton;
    dxNote: TdxBarEdit;
    dxBtnNote: TdxBarButton;
    dxBtnNotes: TdxBarButton;
    qryDebtorTaskItem: TUniQuery;
    dsDebtorTaskItem: TUniDataSource;
    dxBarSubItem6: TdxBarSubItem;
    dxDebtorNotes: TdxBarButton;
    qryDebtorNotesInsert: TUniQuery;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    tbFile: TcxButtonEdit;
    edtBillRef: TcxButtonEdit;
    cxdeFrom: TcxDateEdit;
    cxdeTo: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxCeFrom: TcxCurrencyEdit;
    cxCeTo: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    dxBtnRefresh: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxListViewReportLink;
    dxBtnDebtorStatement: TdxBarButton;
    dxButtonSMS: TdxBarButton;
    lvDue: TJvListView;
    procedure enableButtons;
    procedure refreshList;
    procedure makeSQL;
    procedure FormShow(Sender: TObject);
    procedure lvDueCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure dxBarButton3Click(Sender: TObject);
    procedure lvDueSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure lvDueExit(Sender: TObject);
    procedure dxbtnLoadInvoiceClick(Sender: TObject);
    procedure dxBtnLoadMatterClick(Sender: TObject);
    procedure dxbtnWordMergeClick(Sender: TObject);
    procedure dxBtnProcessClick(Sender: TObject);
    procedure tabMainChange(Sender: TObject);
    procedure dxbtnEmailMergeClick(Sender: TObject);
    procedure lvColumnsClick(Sender: TObject);
    procedure lvColumnsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBtnPrintClick(Sender: TObject);
    procedure dxBtnNotesClick(Sender: TObject);
    procedure tbFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtBillRefPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxRgDatePropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tabFilterShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBtnRefreshClick(Sender: TObject);
    procedure dxBtnDebtorStatementClick(Sender: TObject);
  private
    { Private declarations }
    aReportControls: array of TControl;
    procedure addColumn(lList: TJvListView; var lNode: TListItem; sCaption: string; iImageIndex: integer);
    procedure saveGrid;
    procedure loadGrid;
//    procedure buildReport;
  public
    { Public declarations }
  end;

var
  frmDebtorTaskDue: TfrmDebtorTaskDue;

implementation
uses  dateUtils, Matters, BillNew, debtorDocumentMerge, miscFunc, axiomData,
      TextEdit,MSearch,citfunc,InvoiceSearch;
{$R *.dfm}

procedure TfrmDebtorTaskDue.enableButtons;
var
   iSelCount, iloop: Integer;
   dData: ^TListData;
   lItem: TlistItem;
   bHideProcess: boolean;
begin
   dxbtnLoadInvoice.Enabled := false;
   dxBtnLoadMatter.Enabled := false;
   dxbtnWordMerge.Enabled := false;
   dxbtnEmailMerge.Enabled := false;
   dxBtnProcess.Enabled := false;
   dxBtnDebtorStatement.Enabled := False;
   bHideProcess := false;
   dxBtnNotes.Enabled := false;

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
      else if dData^.sType = 'SMS' then
         dxButtonSMS.Enabled := dmAxiom.Security.CollectionsManagement.MergeTask
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

procedure TfrmDebtorTaskDue.addColumn(lList: TJvListView; var lNode: TListItem; sCaption: string; iImageIndex: integer);
var
   iSubItem: integer;
begin
  if lNode = nil then
  begin
    lNode := lList.Items.add;
    lNode.Caption := sCaption;
    lNode.ImageIndex := iImageIndex;
  end
  else
  begin
    iSubItem := lNode.SubItems.Count;
    lNode.SubItems.Add(sCaption);
    lNode.SubItemImages[iSubItem] := iImageIndex;

  end;
end;

procedure TfrmDebtorTaskDue.refreshList;
var iLoop: integer;
  dData: ^TListData;
  lNode: TListItem;
  dAction: TDateTime;
  lCol: TlistColumn;
  iImageIndex: integer;
  iCurrentSelection : integer;
begin

  iCurrentSelection := -1;
  if lvDue.Selected <> nil then
        iCurrentSelection := lvDue.Selected.Index;

  for iLoop := 0 to lvDue.Items.Count - 1 do
  begin
    lNode := lvDue.Items[iloop];
    dData := lNode.data;
    if qryDueItems.BookmarkValid(dData^.bookmark) then
      qryDueItems.FreeBookmark(dData^.bookmark);

    dispose(dData);
    lNode.data := nil;
  end;
  lvDue.Items.Clear;
  qryDueItems.close;
  makeSql;
  qryDueItems.open;
  qryDueItems.first;

  while not qryDueItems.eof do
  begin
    lNode := nil;
    for iLoop := 0 to lvDue.Columns.Count - 1 do
    begin
      lCol := lvDue.Column[iLoop];
      case lCol.Tag of
        cnCOLDUE:
          begin
            if qryDueItems.fieldByName('TYPE').AsString = 'Document' then
              iImageIndex := 8
            else if qryDueItems.fieldByName('TYPE').AsString = 'Email' then
              iImageIndex := 7
            else if qryDueItems.fieldByName('TYPE').AsString = 'SMS' then
              iImageIndex := 16
            else if qryDueItems.fieldByName('TYPE').AsString = 'Statement' then
              iImageIndex := 15;
            addColumn(lvDue, lNode, qryDueItems.fieldByName('DESCR').AsString, iImageIndex);
          end;
        cnCOLACTION:
          begin
            dAction := qryDueItems.fieldByName('ACTION_DATE').AsDateTime;
            addColumn(lvDue, lNode, FormatDateTime('dd/mm/yyyy', dAction), -1);
          end;
        cnCOLBILL:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('REFNO').AsString, -1);
        cnCOLASSIGNTO:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('ASSIGNED_TO').AsString, -1);
        cnCOLALERTNTO:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('ALERT_TO').AsString, -1);
        cnCOLALERTNTO2:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('ALERT_TO_ADD').AsString, -1);
        cnCOLMATTER:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('FILEID').AsString, -1);
        cnCOLMATTERSHORTDESCR:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('SHORTDESCR').AsString, -1);
        cnCOLCLIENTNAME:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('NAME').AsString, -1);
        cnCOLBILLTO:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('BILL_TO').AsString, -1);
        cnCOLDEBTORPHONE:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('DEBTOR_PHONE').AsString, -1);
        cnCOLMATTERAUTHOR:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('AUTHOR').AsString, -1);
        cnCOLNOTES:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('NOTES').AsString, -1);
        cnCOLTEMPLATE:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('template_descr').AsString, -1);
        cnCOLBALANCE:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('balance').AsString, -1);
        cnCOLDEBTOREMAIL:
          addColumn(lvDue, lNode, qryDueItems.fieldByName('debtor_email').AsString, -1);
      end;
    end;

    {lNode := lvDue.Items.add;
    lNode.Caption := qryDueItems.fieldByName('DESCR').AsString;
    if qryDueItems.fieldByName('TYPE').AsString = 'Document' then
      lNode.ImageIndex := 8
    else
      lNode.ImageIndex := 7;
                // due date


    dAction := qryDueItems.fieldByName('ACTION_DATE').AsDateTime;

    lNode.SubItems.Add(FormatDateTime('dd/mm/yyyy', dAction));
    lNode.SubItemImages[0] := 0;

    lNode.SubItems.Add(qryDueItems.fieldByName('REFNO').AsString);
    lNode.SubItemImages[1] := 6;


    lNode.SubItems.Add(qryDueItems.fieldByName('ASSIGNED_TO').AsString);
    lNode.SubItemImages[2] := 5;

    lNode.SubItems.Add(qryDueItems.fieldByName('ALERT_TO').AsString);
    lNode.SubItemImages[3] := 5;


    lNode.SubItems.Add(qryDueItems.fieldByName('FILEID').AsString);
    lNode.SubItemImages[4] := 9;
    }

    if qryDueItems.fieldByName('processed_Date').isnull then
      lNode.StateIndex := -1
    else
      lNode.StateIndex := 1;

    new(dData);
    dData^.bookMark := qryDueItems.GetBookmark;
    dData^.dueDate := dAction;
    dData^.sType := qryDueItems.fieldByName('TYPE').AsString;
    dData^.fileId := qryDueItems.fieldByName('FILEID').AsString;
    dData^.nMemo := qryDueItems.fieldByName('NMEMO').AsInteger;
    dData^.iTaskKey := qryDueItems.fieldByName('NDEBTORTASK').AsInteger;
    lNode.data := dData;

    qryDueItems.Next;
  end;

  if (iCurrentSelection <> -1) and (lvDue.Items.Count > 0) then
  begin
        if iCurrentSelection > lvDue.Items.Count-1 then
           iCurrentSelection := lvDue.Items.Count-1;

        lvDue.Items[iCurrentSelection].Selected := true;
        lvDue.ItemFocused := lvDue.Items[iCurrentSelection];
  end;
end;

procedure TfrmDebtorTaskDue.makeSQL;
begin
  qryDueItems.SQL.Clear;
  qryDueItems.SQL.add('select trim(to_char(memo.owing,''$9999999.00'')) balance, dtt.descr as template_descr,dt.notes,ma.author,nvl(dcn.workphone,dc.workphone) as debtor_phone,');
  qryDueItems.SQL.add('ta.generated_document_name,cl.name,');
  qryDueItems.SQL.Add('memo.bill_to,ta.document,ta.document_name,ta.debtor_note,ta.email,ta.email_subject,dt.ndebtortask,dt.CONFIRMATION_REQUIRED,ta.type,');
  qryDueItems.SQL.add('dt.descr,ma.nmatter,ma.fileid,memo.nmemo,assigned_to,');
  qryDueItems.SQL.Add('alert_to,trunc(action_date) as action_date,ta.document_path,dt.confirmed_Date,dt.processed_date,memo.refno,ma.shortdescr, alert_to_add, nvl(dcn.email, dc.email) as debtor_email ');
  qryDueItems.SQL.add('from debtorworkflowaction ta,debtorworkflowtask dt,debtorworkflowtemplate dtt,');
  qryDueItems.SQL.add('(select m.* ');
  qryDueItems.SQL.add('from nmemo m) memo,matter ma,client cl,phonebook dc,phonebook dcn');
  qryDueItems.SQL.add('where dt.nmemo = memo.nmemo');
  qryDueItems.SQL.add('and memo.nmatter = ma.nmatter');
  qryDueItems.SQL.add('and ta.naction = dt.naction');
  qryDueItems.SQL.add('and ma.nclient = cl.nclient');
  qryDueItems.SQL.add('AND dt.ntemplate = dtt.ntemplate (+)');
  qryDueItems.SQL.add('AND dc.NCLIENT (+)  = ma.NBILL_TO');
  qryDueItems.SQL.add('AND dcn.NCLIENT (+) = memo.NBILL_TO');
  qryDueItems.SQL.add('and memo.rv_type = ''N''');
  qryDueItems.SQL.add('and memo.owing >= dt.MIN_BALANCE');

  if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag =  5 then
  begin
        if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate) then
        begin
                qryDueItems.SQL.add('and dt.confirmed_date between  trunc(:dtFrom-1) and trunc(:dtTo+1)');
                qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
                qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
        end
        else if cxdeFrom.Date <> nullDate then
        begin
             qryDueItems.SQL.add('and dt.confirmed_date >= trunc(:dtFrom-1)');
             qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        end
        else if cxdeTo.Date <> nullDate then
        begin
             qryDueItems.SQL.add('and trunc(dt.confirmed_date) <= trunc(:dtTo+1)');
             qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
        end;
  end
  else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag <> 6 then
        qryDueItems.SQL.add('and dt.confirmed_date is null');

  if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag  = 0 then
    qryDueItems.SQL.add('and dt.action_date < trunc(sysdate+1)')
  else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 2 then
  begin
        if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate) then
        begin
                qryDueItems.SQL.add('and dt.action_date between  trunc(:dtFrom-1) and trunc(:dtTo+1)');
                qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
                qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
        end
        else if cxdeFrom.Date <> nullDate then
        begin
             qryDueItems.SQL.add('and dt.action_date >= trunc(:dtFrom-1)');
             qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        end
        else if cxdeTo.Date <> nullDate then
        begin
             qryDueItems.SQL.add('and trunc(dt.action_date) <= trunc(:dtTo+1)');
             qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
        end;
  end
  else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 4 then
  begin
        if (cxdeFrom.Date <> nullDate) and (cxdeTo.Date <> nullDate) then
        begin
                qryDueItems.SQL.add('and memo.exppayment between  trunc(:dtFrom-1) and trunc(:dtTo+1)');
                qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
                qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
        end
        else if cxdeFrom.Date <> nullDate then
        begin
             qryDueItems.SQL.add('and memo.exppayment >= trunc(:dtFrom-1)');
             qryDueItems.ParamByName('dtFrom').AsDate := cxdeFrom.Date;
        end
        else if cxdeTo.Date <> nullDate then
        begin
             qryDueItems.SQL.add('and trunc(memo.exppayment) <= trunc(:dtTo+1)');
             qryDueItems.ParamByName('dtTo').AsDate := cxdeTo.Date;
        end;
  end
  else if cxRgDate.Properties.Items[cxRgDate.ItemIndex].Tag = 3 then
        qryDueItems.SQL.add('and dt.action_date < trunc(next_day(sysdate,''MON''))');

  if cxlcAssignTo.EditValue <> '**ALL**' then
    qryDueItems.SQL.add('and dt.assigned_to = ''' + cxlcAssignTo.EditValue + '''');
  if cxlcAlertTo.EditValue <> '**ALL**' then
    qryDueItems.SQL.add('and dt.alert_to = ''' + cxlcAlertTo.EditValue + '''');

  if tbFile.Text <> '' then
        qryDueItems.SQL.add('and ma.fileid = ''' + tbFile.Text + '''');
  if edtBillRef.Text <> '' then
         qryDueItems.SQL.add('and memo.refno = ''' + edtBillRef.Text + '''');

  if  (cxCeFrom.Value <> 0) and ( cxCeTo.value <> 0) then
  begin
        qryDueItems.SQL.Add('and owing between :owFrom and :owTo');
        qryDueItems.ParamByName('owFrom').AsCurrency := cxCeFrom.Value;
        qryDueItems.ParamByName('owTo').AsCurrency := cxCeTo.Value;
  end;
end;

procedure TfrmDebtorTaskDue.FormShow(Sender: TObject);
begin
  cxlcAssignTo.EditValue := dmAxiom.UserID;

  cxlcAlertTo.EditValue := '**ALL**';
  loadGrid;
  refreshList;
end;

procedure TfrmDebtorTaskDue.lvDueCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var dData1, dData2: ^TListData;
begin
  if (Item1.data = nil) or (Item2.data = nil) then
  begin
    Compare := 0;
    exit;
  end;
  dData1 := Item1.data;
  dData2 := Item2.data;

  compare := CompareDateTime(dData1^.dueDate, dData2^.dueDate);
end;

procedure TfrmDebtorTaskDue.dxBarButton3Click(Sender: TObject);
begin
  self.Close;
//  removeFromDesktop(self);
end;

procedure TfrmDebtorTaskDue.lvDueSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  enableButtons;
end;

procedure TfrmDebtorTaskDue.lvDueExit(Sender: TObject);
begin
  enableButtons;
end;

procedure TfrmDebtorTaskDue.dxbtnLoadInvoiceClick(Sender: TObject);
var lData: ^TListData;
begin

  lData := lvDue.selected.data;

  with TfrmInvoice.Create(Self) do
    DisplayInvoice(lData^.nmemo);
end;

procedure TfrmDebtorTaskDue.dxBtnLoadMatterClick(Sender: TObject);
var lData: ^TListData;
  fMatter: TfrmMatters;
begin
  lData := lvDue.selected.data;

  fMatter := TfrmMatters.Create(Self);
  fMatter.DisplayMatter(lData^.fileId);
  fMatter.Visible := true;
end;

procedure TfrmDebtorTaskDue.dxbtnWordMergeClick(Sender: TObject);
var merg: TfrmDebtorDocumentMerge;
  lData: ^TListData;
  sprocess: string;
  bUpdate, bAutoWord: boolean;
  iLoop, iSelCount, iSelNumber: integer;
  iListItem: TListItem;
  sDocPath: string;
  bStream, fStream: TStream;
begin
   dxMergeProgress.Visible := ivNever;
   bAutoWord := False;
   iSelNumber := 0;
   iSelCount := lvDue.SelCount;
   if iSelCount > 1 then
   begin
      dxMergeProgress.Visible := ivAlways;
      dxMergeProgress.Max := iSelCount;
      dxMergeProgress.Position := iSelNumber;
   end;

   for iLoop := 0 to lvDue.Items.Count - 1 do
   begin
      iListItem := lvDue.Items[iLoop];
      if not iListItem.Selected then
         continue;

      lData := iListItem.Data;

      qryDueItems.GotoBookmark(lData^.bookMark);

      if qryDueItems.FieldByname('TYPE').AsString <> 'Document' then
         continue;

      inc(iSelNumber);
      dxMergeProgress.Position := iSelNumber;

      sprocess := qryDueItems.fieldByname('CONFIRMATION_REQUIRED').AsString;

      sDocPath := qryDueItems.fieldByname('DOCUMENT_PATH').AsString;

      if (systemString('DEBTOR_DOCUMENT_BLOB') = 'Y') and (qryDueItems.fieldByname('DOCUMENT_NAME').AsString <> '') then
      begin
         // extract the blob to the file system

         // make sure there is a /tmp directory

   //      if not DirectoryExists('c:\tmp') then
   //      begin
   //        CreateDir('c:\tmp');
   //      end;

         bStream := qryDueItems.CreateBlobStream(qryDueItems.fieldByName('DOCUMENT'), bmRead);
         sDocPath := dmAxiom.GetEnvVar('TMP') + '\' + qryDueItems.fieldByname('DOCUMENT_NAME').AsString;
         fStream := TFileStream.create(sDocPath, fmCreate);
         fStream.CopyFrom(bStream, bStream.Size);
         fStream.Free;
         bStream.Free;
      end;

      bAutoWord := dxShow.Down;
      if sDocPath = '' then
         bAutoWord := True;

      merg := TfrmDebtorDocumentMerge.Create(self);
      merg.wordMerge(lData^.nMemo,
                     sDocPath,
                     qryDueItems.fieldByname('DEBTOR_NOTE').AsString,
                     qryDueItems.fieldByname('generated_document_name').AsString,
                     qryDueItems.fieldByname('DESCR').AsString,
                     lData^.itaskKey,
                     bAutoWord,
                     dxShow.Down,
                     dxPrint.Down);
      if (not dxAutoWord.Down) and (sDocPath <> '') then
         merg.ShowModal;

      if merg.ok then
      begin
         if (sprocess = 'Y') and dxAutoWord.Down then
            bUpdate := false
         else if sprocess = 'Y' then
            bUpdate := (MsgAsk('Do you want to mark this item as completed') = mrYes)
         else
            bUpdate := true;

         qryUpdate.Close;
         qryUpdate.SQL.Clear;
         qryUpdate.SQL.Add('update debtorworkflowtask set processed_date = sysdate');
         if bUpdate then
            qryUpdate.SQL.Add(',confirmed_date = sysdate');
         qryUpdate.SQL.Add('where ndebtortask = :ndebtortask');
         qryUpdate.ParamByName('ndebtortask').AsInteger := qryDueItems.fieldByname('ndebtortask').AsInteger;
         qryUpdate.ExecSQL;
         qryUpdate.Close;
      end;
      merg.free;

      dxMergeProgress.Visible := ivNever;
   end;
   refreshList;
end;

procedure TfrmDebtorTaskDue.dxBtnProcessClick(Sender: TObject);
var lData: ^TListData;
  iLoop: integer;
  iListItem: TListItem;
begin
   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;

      dxMergeProgress.Visible := ivNever;

      for iLoop := 0 to lvDue.Items.Count - 1 do
      begin
         iListItem := lvDue.Items[iLoop];
         if not iListItem.Selected then
            continue;

         lData := iListItem.Data;
         qryDueItems.GotoBookmark(lData^.bookMark);

         qryUpdate.Close;
         qryUpdate.SQL.Clear;
         qryUpdate.SQL.Add('update debtorworkflowtask set confirmed_date = sysdate');
         qryUpdate.SQL.Add('where ndebtortask = :ndebtortask');
         qryUpdate.ParamByName('ndebtortask').AsInteger := qryDueItems.fieldByname('ndebtortask').AsInteger;
         qryUpdate.ExecSQL;
         qryUpdate.Close;

         if dxDebtorNotes.Down and  (qryDueItems.FieldByName('NOTES').AsString <> '') then
         begin
            qryDebtorNotesInsert.close;
            qryDebtorNotesInsert.ParamByName('NMATTER').AsInteger :=qryDueItems.fieldByName('NMATTER').AsInteger;
            qryDebtorNotesInsert.ParamByName('CREATEDBY').AsString := dmAxiom.UserID;
            qryDebtorNotesInsert.ParamByName('NOTE').AsString := qryDueItems.FieldByName('NOTES').AsString;
            qryDebtorNotesInsert.ExecSQL;
            qryDebtorNotesInsert.Close;
         end;
      end;

      dmAxiom.uniInsight.commit;

   except on e:Exception do
      begin
         dmAxiom.uniInsight.rollback;
         raise;
      end;
   end;

   refreshList;
end;

procedure TfrmDebtorTaskDue.tabMainChange(Sender: TObject);
var iloop: integer;
  lCol: TListColumn;
  lItem: TListItem;
begin
   saveGrid;
   
   qryEmployee.close;
   dxBtnRefresh.Enabled := False;
   if tabMain.ActivePage = tabDue then
   begin
      refreshList;
      dxBtnRefresh.Enabled := True;
   end
   else if tabMain.ActivePage = tabFilter then
   begin
      qryEmployee.Open;
   end
   else if tabMain.ActivePage = tabColumns then
   begin
      lvColumns.Items.Clear;
      for iLoop := 0 to lvDue.Columns.Count - 1 do
      begin
         lCol := lvDue.Column[iLoop];
         lItem := lvColumns.Items.Add;
         lItem.Caption := lCol.Caption;
         if lCol.Width > 0 then
            Litem.Checked := true;
         lItem.Data := lCol;
      end;
   end;
end;

procedure TfrmDebtorTaskDue.dxbtnEmailMergeClick(Sender: TObject);
var merg: TfrmDebtorDocumentMerge;
  lData: ^TListData;
  sprocess: string;
  bupdate: boolean;
  iLoop, iSelCount, iSelNumber: integer;
  iListItem: TListItem;
begin
  dxMergeProgress.Visible := ivNever;
  iSelNumber := 0;
  iSelCount := lvDue.SelCount;
  if iSelCount > 1 then
  begin
    dxMergeProgress.Visible := ivAlways;
    dxMergeProgress.Max := iSelCount;
    dxMergeProgress.Position := iSelNumber;
  end;
  merg := TfrmDebtorDocumentMerge.Create(self);
  for iLoop := 0 to lvDue.Items.Count - 1 do
  begin
    iListItem := lvDue.Items[iLoop];
    if not iListItem.Selected then
      continue;

    lData := iListItem.Data;

    qryDueItems.GotoBookmark(lData^.bookMark);

    if qryDueItems.FieldByname('TYPE').AsString <> 'Email' then
      continue;

    inc(iSelNumber);
    dxMergeProgress.Position := iSelNumber;

    sprocess := qryDueItems.fieldByname('CONFIRMATION_REQUIRED').AsString;
    merg := TfrmDebtorDocumentMerge.Create(self);
    merg.emailMerge(lData^.nMemo,
      qryDueItems.fieldByName('EMAIL').AsString,
      qryDueItems.fieldByName('EMAIL_SUBJECT').AsString,
      qryDueItems.fieldByName('ASSIGNED_TO').AsString,
      qryDueItems.fieldByName('ALERT_TO').AsString,
      qryDueItems.fieldByName('ALERT_TO_ADD').AsString,
      qryDueItems.fieldByname('DEBTOR_NOTE').AsString,
      qryDueItems.fieldByname('DESCR').AsString,
      lData^.itaskKey,
      dxAutoEmail.Down);

    merg.cxBcShow.Checked := dxShow.Down;
    merg.cxCbPrint.Checked := dxPrint.Down;

    if not dxAutoEmail.Down then
      merg.ShowModal;
    if merg.ok then
    begin
      if (sprocess = 'Y') and (dxAutoEmail.Down) then
        bUpdate := false
      else if sprocess = 'Y' then
        bUpdate := (MsgAsk('Do you want to mark this item as completed') = mrYes)
      else
        bUpdate := true;
      qryUpdate.Close;
      qryUpdate.SQL.Clear;
      qryUpdate.SQL.Add('update debtorworkflowtask set processed_date = sysdate');
      if bUpdate then
        qryUpdate.SQL.Add(',confirmed_date = sysdate');
      qryUpdate.SQL.Add('where ndebtortask = :ndebtortask');
      qryUpdate.ParamByName('ndebtortask').AsInteger := qryDueItems.fieldByname('ndebtortask').AsInteger;
      qryUpdate.ExecSQL;
      qryUpdate.Close;
    end;
  end;
  merg.free;
  refreshList;
  dxMergeProgress.Visible := ivNever;
end;

procedure TfrmDebtorTaskDue.lvColumnsClick(Sender: TObject);
var lCol: TListColumn;
  Item: TListItem;
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

procedure TfrmDebtorTaskDue.lvColumnsChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
var lCol: TListColumn;
begin
  lCol := Item.data;

  if lCol = nil then
    exit;

  if Item.Checked then
    lCol.Width := 100
  else
    lCol.Width := 0;
end;

procedure TfrmDebtorTaskDue.loadGrid;
var
   iLoop, iNumberCols, iColPos: integer;
   lCol: TcolumnDetails;
   lNewCol: TListColumn;
   colCopy, lnew: array of TcolumnDetails;
   bNotFound: boolean;
begin
   iNumberCols := lvDue.Columns.Count;
   setLength(colCopy, iNumberCols);
   setLength(lnew, iNumberCols);

   for iLoop := 0 to lvDue.Columns.Count - 1 do
   begin
      colCopy[iLoop].sCaption := lvDue.Columns[iloop].caption;
      colCopy[iLoop].iSize := lvDue.Columns[iloop].Width;
      colCopy[iLoop].iTag := lvDue.Columns[iloop].tag;
   end;

   bNotFound := false;

   for iLoop := 0 to iNumberCols - 1 do
   begin
      lCol := colCopy[iLoop];
      iColPos := SettingLoadInteger('CollectionManager', 'COLPOSITION' + intToStr(lCol.itag));
      if iColPos = 0 then
      begin
         bNotFound := true;
         continue;
      end;
      lCol.isize := SettingLoadInteger('CollectionManager', 'COLWIDTH' + intToStr(lCol.itag));
      lnew[iColPos - 1] := lCol;
   end;

   if not bNotFound then
   begin
      lvDue.Columns.Clear;
      for iLoop := 0 to iNumberCols - 1 do
      begin
         lCol := lnew[iLoop];
         lNewCol := lvDue.Columns.Add;
         lNewCol.Caption := lCol.sCaption;
         lNewCol.Width := lcol.iSize;
         lNewCol.Tag := lcol.iTag;
      end;
   end;

   colCopy := nil;
   lnew := nil;

  {
  SettingSave('CollectionManager','DOCAUTOPOST',dxAutoWord.down);
  SettingSave('CollectionManager','DOCPRINT',dxPrint.down);
  SettingSave('CollectionManager','DOCSHOW',dxShow.down);

  SettingSave('CollectionManager','EMAILAUTOSEND',dxAutoEmail.down);

  SettingSave('CollectionManager','DEBTORNOTES',dxDebtorNotes.down);
  }


   dxAutoWord.down := SettingLoadBoolean('CollectionManager','DOCAUTOPOST');
   dxPrint.down := SettingLoadBoolean('CollectionManager','DOCPRINT');
   dxShow.down := SettingLoadBoolean('CollectionManager','DOCSHOW');

   dxAutoEmail.down := SettingLoadBoolean('CollectionManager','EMAILAUTOSEND');

   dxDebtorNotes.down := SettingLoadBoolean('CollectionManager','DEBTORNOTES');
end;

procedure TfrmDebtorTaskDue.saveGrid;
var
   iLoop: integer;
   lCol: TListColumn;
begin
   // save the column size
   for iLoop := 0 to lvDue.Columns.Count - 1 do
   begin
      lCol := lvDue.Column[iLoop];
      SettingSave('CollectionManager', 'COLWIDTH' + intToStr(lCol.tag), lCol.Width);
      // save the column position
      SettingSave('CollectionManager', 'COLPOSITION' + intToStr(lCol.tag), iLoop + 1);
   end;

   // save the options
   SettingSave('CollectionManager','DOCAUTOPOST',dxAutoWord.down);
   SettingSave('CollectionManager','DOCPRINT',dxPrint.down);
   SettingSave('CollectionManager','DOCSHOW',dxShow.down);

   SettingSave('CollectionManager','EMAILAUTOSEND',dxAutoEmail.down);

   SettingSave('CollectionManager','DEBTORNOTES',dxDebtorNotes.down);
   dmAxiom.uniInsight.Commit;
end;

procedure TfrmDebtorTaskDue.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  saveGrid;
  RemoveFromDesktop(Self);
end;

{procedure TfrmDebtorTaskDue.buildReport;
var iTop,iLoop, iNumCols, iStartPos, iInterval: integer;
  iTotalColWidth : integer;
  iPer : double;
  lCol: TListColumn;
  qrLabel: TQRLabel;
  qrText: TQRDBText;
begin
  qrlblCompany.Caption := SystemString('COMPANY');

  while qrColHead.ControlCount > 0 do
  begin
    qrColHead.RemoveControl(qrColHead.Controls[0]);
  end;

  while qrDetail.ControlCount > 0 do
  begin
    qrDetail.RemoveControl(qrDetail.Controls[0]);
  end;

  iTotalColWidth := 0;
  iNumCols := 0;
  for iLoop := 0 to lvDue.Columns.Count - 1 do
  begin
    lCol := lvDue.Columns[iLoop];
    inc(iTotalColWidth,lCol.Width);
  end;

  iStartPos := 8;

  for iLoop := 0 to lvDue.Columns.Count - 1 do
  begin
    lCol := lvDue.Columns[iLoop];
    if lCol.Width = 0 then
      continue;

    if iNumCols mod 2 = 0 then
        iTop := 4
    else
        iTop := 20;

    iPer := lCol.Width / iTotalColWidth;
    iInterval := trunc((qrColHead.Width) * iPer);
    //lCol.Width := (qrColHead.Width - iStartPos) * lCol.Width

     // add the title
    qrLabel := TQRLabel.Create(qrColHead);
    qrColHead.InsertControl(qrLabel);
    qrLabel.Parent := qrColHead;
    qrLabel.Left := iStartPos;
    qrLabel.Top := iTop;
    qrLabel.Caption := RPTDESCR[lCol.tag];
     // add the field

    qrText := TQRDBText.Create(qrDetail);
    qrDetail.InsertControl(qrText);
    qrText.Parent := qrDetail;
    qrText.Left := iStartPos;
    qrText.Top := iTop;
    qrText.DataField := RPTFIELDS[lCol.tag];
    qrText.DataSet := qryDueItems;

    inc(iStartPos, iInterval);
    inc(iNumCols);
  end;
end; }

procedure TfrmDebtorTaskDue.dxBtnPrintClick(Sender: TObject);
var
   iLoop: integer;
begin
   dxComponentPrinter1Link1.Preview();
//  buildReport;
//  makeSql;
//  qryDueItems.Open;
//  quickRep.Preview;
end;

procedure TfrmDebtorTaskDue.dxBtnNotesClick(Sender: TObject);
var
   frmTextEdit : TfrmTextEdit;
   lData: ^TListData;
begin
   lData := lvDue.Selected.Data;
   qryDebtorTaskItem.Close;
   qryDebtorTaskItem.ParamByName('ndebtortask').AsInteger := lData.iTaskKey;
   qryDebtorTaskItem.open;

   try
      frmTextEdit := TfrmTextEdit.Create(self);
      frmTextEdit.caption := 'Edit Notes';
      frmTextEdit.cxText.DataBinding.DataSource := dsDebtorTaskItem;
      frmTextEdit.cxText.DataBinding.DataField := 'notes';

      if frmTextEdit.ShowModal = mrOk then
         refreshList;
   finally
      frmTextEdit.Free;
      qryDebtorTaskItem.Close;
   end;

end;

procedure TfrmDebtorTaskDue.tbFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not FormExists(frmMatterSearch) then
    Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

  if frmMatterSearch.ShowModal = mrOk then
  begin
        tbFile.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
  end;
end;

procedure TfrmDebtorTaskDue.edtBillRefPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not FormExists(frmInvoiceSearch) then
    Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);

  if frmInvoiceSearch.ShowModal = mrOk then
  begin
        edtBillRef.Text := frmInvoiceSearch.qryInvoices.FieldByName('REFNO').AsString;
  end;
end;

procedure TfrmDebtorTaskDue.cxRgDatePropertiesChange(Sender: TObject);
begin
     cxdeFrom.Enabled := false;
     cxdeTo.Enabled := false;

     if (cxRgDate.Properties.Items[cxRgDate.ItemIndex].tag = 2)
     or (cxRgDate.Properties.Items[cxRgDate.ItemIndex].tag = 4)
     or (cxRgDate.Properties.Items[cxRgDate.ItemIndex].tag = 5)  then
     begin
        cxdeFrom.Enabled := true;
        cxdeTo.Enabled := true;
     end;
end;

procedure TfrmDebtorTaskDue.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (ssCtrl in Shift) and (key = VK_F4) then
      Self.Close;
end;

procedure TfrmDebtorTaskDue.tabFilterShow(Sender: TObject);
begin
//   loadGrid;

//   refreshList;
end;

procedure TfrmDebtorTaskDue.FormCreate(Sender: TObject);
begin
   qryEmployee.Open;
end;

procedure TfrmDebtorTaskDue.dxBtnRefreshClick(Sender: TObject);
begin
   if tabMain.ActivePage = tabDue then
    refreshList
end;

procedure TfrmDebtorTaskDue.dxBtnDebtorStatementClick(Sender: TObject);
var
   merg: TfrmDebtorDocumentMerge;
   lData: ^TListData;
   sprocess: string;
   bUpdate, bAutoWord: boolean;
   iLoop, iSelCount, iSelNumber: integer;
   iListItem: TListItem;
   sDocPath: string;
   bStream, fStream: TStream;
begin
   dxMergeProgress.Visible := ivNever;
   bAutoWord := False;
   iSelNumber := 0;
   iSelCount := lvDue.SelCount;
   if iSelCount > 1 then
   begin
      dxMergeProgress.Visible := ivAlways;
      dxMergeProgress.Max := iSelCount;
      dxMergeProgress.Position := iSelNumber;
   end;

   for iLoop := 0 to lvDue.Items.Count - 1 do
   begin
      iListItem := lvDue.Items[iLoop];
      if not iListItem.Selected then
         continue;

      lData := iListItem.Data;

      qryDueItems.GotoBookmark(lData^.bookMark);

      if qryDueItems.FieldByname('TYPE').AsString <> 'Statement' then
         continue;

      inc(iSelNumber);
      dxMergeProgress.Position := iSelNumber;

      sprocess := qryDueItems.fieldByname('CONFIRMATION_REQUIRED').AsString;

      sDocPath := qryDueItems.fieldByname('DOCUMENT_PATH').AsString;

      bAutoWord := dxShow.Down;
      if sDocPath = '' then
         bAutoWord := True;

      try
         merg := TfrmDebtorDocumentMerge.Create(self);
         merg.StatementMerge(lData^.nMemo,
                             sDocPath,
                             qryDueItems.fieldByname('DEBTOR_NOTE').AsString,
                             qryDueItems.fieldByname('generated_document_name').AsString,
                             qryDueItems.fieldByname('DESCR').AsString,
                             lData^.itaskKey,
                             bAutoWord,
                             dxShow.Down,
                             dxPrint.Down
                             );
         if (not bAutoWord) and (sDocPath <> '') then
            merg.ShowModal;

         if merg.ok then
         begin
            if (sprocess = 'Y') and dxAutoWord.Down then
               bUpdate := false
            else if sprocess = 'Y' then
               bUpdate := (MsgAsk('Do you want to mark this item as completed') = mrYes)
            else
               bUpdate := true;

            qryUpdate.Close;
            qryUpdate.SQL.Clear;
            qryUpdate.SQL.Add('update debtorworkflowtask set processed_date = sysdate');
            if bUpdate then
               qryUpdate.SQL.Add(',confirmed_date = sysdate');
            qryUpdate.SQL.Add('where ndebtortask = :ndebtortask');
            qryUpdate.ParamByName('ndebtortask').AsInteger := qryDueItems.fieldByname('ndebtortask').AsInteger;
            qryUpdate.ExecSQL;
            qryUpdate.Close;
         end;
      finally
         merg.free;
      end;

      dxMergeProgress.Visible := ivNever;
   end;
   refreshList;
end;

end.
