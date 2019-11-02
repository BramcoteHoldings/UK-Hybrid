unit FeeNotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxLabel, cxDBLabel, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, DBCtrls,
  cxMaskEdit, cxButtonEdit, cxDBRichEdit, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, cxGraphics, cxCalendar, cxLookAndFeels,
  ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, cxCurrencyEdit, cxCheckBox,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

type
  TfrmFeeNotes = class(TForm)
    Label3: TLabel;
    btnOk: TcxButton;
    cxButton2: TcxButton;
    dsDebtorNotes: TUniDataSource;
    qryMaxSequence: TUniQuery;
    qryMaxSequenceNEWSEQUENCE: TFloatField;
    dsAuthors: TUniDataSource;
    qryAuthors: TUniQuery;
    mlNote: TcxRichEdit;
    qryFeeDebtorNotes: TUniQuery;
    qryTmp: TUniQuery;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cxLabel1: TcxLabel;
    cmbDate: TcxDateEdit;
    lBy: TcxLabel;
    cmbAuthor: TcxLookupComboBox;
    cmbDateTo: TcxDateEdit;
    grdFees: TcxGrid;
    tvFees: TcxGridDBTableView;
    grdFeesLevel1: TcxGridLevel;
    btnSearchFees: TcxButton;
    qryFees: TUniQuery;
    dsFees: TUniDataSource;
    tvFeesNFEE: TcxGridDBColumn;
    tvFeesCREATED: TcxGridDBColumn;
    tvFeesDESCR: TcxGridDBColumn;
    tvFeesAUTHOR: TcxGridDBColumn;
    tvFeesFILEID: TcxGridDBColumn;
    tvFeesAMOUNT: TcxGridDBColumn;
    qryFeeUpdate: TUniQuery;
    tvFeesSELECTED: TcxGridDBColumn;
    grdFeesLevel2: TcxGridLevel;
    tvBills: TcxGridDBTableView;
    grdFeesLevel3: TcxGridLevel;
    tvBilledFees: TcxGridDBTableView;
    qryBills: TUniQuery;
    dsBills: TUniDataSource;
    qryBilledFees: TUniQuery;
    dsBilledFees: TUniDataSource;
    tvBillsNMEMO: TcxGridDBColumn;
    tvBillsDISPATCHED: TcxGridDBColumn;
    tvBillsFILEID: TcxGridDBColumn;
    tvBillsREFNO: TcxGridDBColumn;
    tvBillsFEES: TcxGridDBColumn;
    tvBillsFEES_PAID: TcxGridDBColumn;
    qryAuthorFeeDates: TUniQuery;
    lblEnteredBy: TcxLabel;
    tvBilledFeesNFEE: TcxGridDBColumn;
    tvBilledFeesCREATED: TcxGridDBColumn;
    tvBilledFeesDESCR: TcxGridDBColumn;
    tvBilledFeesAUTHOR: TcxGridDBColumn;
    tvBilledFeesNMEMO: TcxGridDBColumn;
    tvBilledFeesAMOUNT: TcxGridDBColumn;
    tvBilledFeesNFEE_DEBTORNOTES: TcxGridDBColumn;
    cmbBillDate: TcxDateEdit;
    cxLabel2: TcxLabel;
    edAmounttoBill: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cmbdebtor_task_codes: TcxLookupComboBox;
    qrydebtor_task_codes: TUniQuery;
    dsdebtor_task_codes: TUniDataSource;
    cxLabel4: TcxLabel;
    procedure edtBillRefPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CRTemp_qryDebtorNotesAfterInsert(DataSet: TDataSet);
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchFeesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbBillRefPropertiesCloseUp(Sender: TObject);
    procedure tvBilledFeesStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure grdFeesActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure tvBilledFeesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvFeesSELECTEDHeaderClick(Sender: TObject);
    procedure tvFeesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cmbdebtor_task_codesPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    lNMemo: integer;
    lRefNo: string;
    lNMatter: integer;
    FEditing: boolean;
    FSequence: integer;
    function GetNote: String;
    procedure SetBy(const Value: String);
    procedure SetEntryDate(const Value: TDateTime);
    procedure SetNote(const Value: String);
    procedure SetNmemo(const Value: integer);
    procedure SetEndDate(const Value: TDateTime);
    procedure SetProcessFlag;
    procedure SetBillDate(const Value: TDateTime);
    procedure SetBillAmount(const Value: double);
    procedure SetTaskCode(const Value: string);
  public
    { Public declarations }
    property EntryDate: TDateTime write SetEntryDate;
    property By: String write SetBy;
    property Note: String read GetNote write SetNote;
    property NMemo: integer read lNMemo write SetNmemo;
    property RefNo: string read lRefNo write lRefNo;
    property NMatter: integer read lNMatter write lNMatter;
    property Editing: boolean read FEditing write FEditing ;
    property Sequence: integer read FSequence write FSequence;
    property EndDate: TDateTime write SetEndDate;
    property BillDate: TDateTime write SetBillDate;
    property BillAmount: double write SetBillAmount;
    property TaskCode: string write SetTaskCode;
  end;

var
  frmFeeNotes: TfrmFeeNotes;

implementation

uses AxiomData, CitFunc, InvoiceSearch, MiscFunc;

{$R *.dfm}

function TfrmFeeNotes.GetNote: String;
begin
   Result := mlNote.Lines.Text;
end;

procedure TfrmFeeNotes.grdFeesActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
   btnOk.Enabled := True;
   if ALevel.Caption = 'Billed WIP' then
      btnOk.Enabled := False;
end;

procedure TfrmFeeNotes.SetBy(const Value: String);
begin
   lBy.Caption := Value;
end;

procedure TfrmFeeNotes.SetEntryDate(const Value: TDateTime);
begin
   cmbDate.Date := Value;
//   lDate.Caption := DateTimeToStr(Value);
end;

procedure TfrmFeeNotes.SetEndDate(const Value: TDateTime);
begin
   cmbDateTo.Date := Value;
end;

procedure TfrmFeeNotes.SetNote(const Value: String);
begin
   mlNote.Lines.Text := Value;
end;

procedure TfrmFeeNotes.tvBilledFeesCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   mlNote.Lines.Clear;
   if (NOT VarIsNull(tvBilledFeesNFEE_DEBTORNOTES.EditValue)) then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'select note from fee_debtornotes where NFEE_DEBTORNOTES = :NFEE_DEBTORNOTES';
         ParamByName('NFEE_DEBTORNOTES').AsInteger := integer(tvBilledFeesNFEE_DEBTORNOTES.EditValue);
         Open;
         mlNote.Text := FieldByName('note').AsString;
         Close;
      end;
   end;
end;

procedure TfrmFeeNotes.tvBilledFeesStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
   AColumn: TcxCustomGridTableItem;
begin
   AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('NFEE_DEBTORNOTES');
   if VarIsNull(ARecord.Values[AColumn.Index]) then
      AStyle := dmAxiom.cxStyle9
   else
      AStyle := dmAxiom.cxStyleFeeNotes;
end;

procedure TfrmFeeNotes.tvFeesSELECTEDHeaderClick(Sender: TObject);
begin
   SetProcessFlag;
end;

procedure TfrmFeeNotes.tvFeesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
   try
      if (Editing = False) then
      begin
         if not VarIsNull(AValue) then
         begin
               edAmounttoBill.Value := AValue;
         end
         else
            edAmounttoBill.Value := 0;
      end;
   except
   //
   end;
end;

procedure TfrmFeeNotes.SetNmemo(const Value: Integer);
begin

end;

procedure TfrmFeeNotes.edtBillRefPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmInvoiceSearch) then
      Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);

   if frmInvoiceSearch.ShowModal = mrOk then
   begin
//      qryDebtorNotes.FieldByName('NMEMO').AsInteger := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger;
//      qryDebtorNotes.FieldByName('REFNO').AsString := frmInvoiceSearch.qryInvoices.FieldByName('REFNO').AsString;
   end;
end;

procedure TfrmFeeNotes.cmbBillRefPropertiesCloseUp(Sender: TObject);
begin
   if cmbAuthor.Text <> '' then
   begin
      with qryAuthorFeeDates do
      begin
         Close;
         ParamByName('author').AsString := cmbAuthor.EditValue;
         ParamByName('nmatter').AsInteger := NMatter;
         Open;
         cmbDate.Date := FieldByName('start_date').AsDateTime;
         cmbDateTo.date   := FieldByName('end_date').AsDateTime;
         Close;
      end;
   end;
end;

procedure TfrmFeeNotes.cmbdebtor_task_codesPropertiesEditValueChanged(
  Sender: TObject);
begin
   if cmbdebtor_task_codes.Text <> '' then
      mlNote.Text := TableString('debtor_task_codes','code', string(cmbdebtor_task_codes.editvalue), 'descr');
end;

procedure TfrmFeeNotes.CRTemp_qryDebtorNotesAfterInsert(DataSet: TDataSet);
var
   ASequence: integer;
begin
   qryFeeDebtorNotes.FieldByName('createdby').AsString := dmAxiom.UserID;
   qryFeeDebtorNotes.FieldByName('created').AsDateTime := Now;
   qryFeeDebtorNotes.FieldByName('nmatter').AsInteger  := lNMatter;


   qryMaxSequence.Close;
   qryMaxSequence.ParamByName('nmatter').AsInteger := lNMatter;
   qryMaxSequence.ExecSQL;
   ASequence := qryMaxSequence.FieldByName('newsequence').AsInteger;
   if ASequence = 0 then ASequence := 1;
   qryFeeDebtorNotes.FieldByName('sequence').AsInteger  := ASequence;
end;

procedure TfrmFeeNotes.btnSearchFeesClick(Sender: TObject);
var
   I: integer;
begin
   with qryFees do
   begin
      Close;
      ParamByName('author').Clear;
      if (cmbAuthor.Text <> '') then
         ParamByName('author').AsString  := cmbAuthor.EditValue;
      ParamByName('nmatter').AsInteger  := lNMatter;
      if Editing = True then
         ParamByName('NFEE_DEBTORNOTES').AsInteger := Sequence
      else
      begin
         ParamByName('start_date').AsDateTime := cmbDate.Date;
         ParamByName('end_date').AsDateTime := cmbDateTo.Date;
      end;
      Open;
   end;
   if lblEnteredBy.Caption = '' then
      lblEnteredBy.Caption := '[' + DateToStr(Date) + ' - ' + dmAxiom.UserID + ']';

   tvFees.BeginUpdate;
   for I := 0 to tvFees.DataController.RecordCount - 1 do
      tvFees.DataController.Values[I, tvFeesSELECTED.Index] := True;
  tvFees.EndUpdate;
end;

procedure TfrmFeeNotes.btnOkClick(Sender: TObject);
var
   iFeeSeq,
   iCtr,
   lNFee:          integer;
   tv:            TcxGridDBTableView;
   Data:          TcxCustomDataController;
   tView:         TcxGridViewData;
   bSelected:     boolean;
begin
   if (mlNote.Text <> '') then
   begin
      if Editing then
      begin
         with qryTmp do
         begin
            if dmAxiom.uniInsight.InTransaction then
               dmAxiom.uniInsight.Commit;
            dmAxiom.uniInsight.StartTransaction;
            try
               SQL.Text := 'UPDATE FEE_DEBTORNOTES SET '+
                           ' NOTE = :NOTE, BILL_DATE = :BILL_DATE, SEARCH_DATE_FROM =:SEARCH_DATE_FROM,'+
                           ' SEARCH_DATE_TO = :SEARCH_DATE_TO, SEARCH_AUTHOR = :SEARCH_AUTHOR, '+
                           ' DEBTOR_TASK_CODE = :DEBTOR_TASK_CODE, BILL_AMOUNT = :BILL_AMOUNT '+
                           ' where NMATTER = :NMATTER '+
                           ' AND NFEE_DEBTORNOTES = :NFEE_DEBTORNOTES';
//               ParamByName('createdby').AsString := dmAxiom.UserID;
//               ParamByName('created').AsDateTime         := cmbDate.Date;
               ParamByName('nmatter').AsInteger             := lNMatter;

               if cmbBillDate.Date > 0 then
                  ParamByName('BILL_DATE').AsDateTime       := cmbBillDate.Date;

               ParamByName('note').AsString                 := mlNote.Text;
               ParamByName('NFEE_DEBTORNOTES').AsInteger    := Sequence;
               ParamByName('SEARCH_DATE_TO').AsDateTime     := cmbDateTo.Date;
               ParamByName('SEARCH_DATE_FROM').AsDateTime   := cmbDate.Date;
               if (cmbAuthor.Text <> '') then
                  ParamByName('SEARCH_AUTHOR').AsInteger    := cmbAuthor.EditValue;
               if cmbdebtor_task_codes.Text <> '' then
                  ParamByName('DEBTOR_TASK_CODE').AsString  := cmbdebtor_task_codes.EditValue;
               ParamByName('BILL_AMOUNT').AsCurrency        := edAmounttoBill.Value;

               ExecSQL;

               // need to delete note number prior to update
               with dmAxiom.qryTmp do
               begin
                  Close;
                  SQL.Text := 'update fee set NFEE_DEBTORNOTES = null where nmatter = :nmatter and NFEE_DEBTORNOTES = :NFEE_DEBTORNOTES';
                  ParamByName('NFEE_DEBTORNOTES').AsInteger := Sequence;
                  ParamByName('nmatter').AsInteger          := lNMatter;
                  ExecSQL;
               end;

               // need to update fee transactions with the note number
               tv := grdFees.FocusedView as TcxGridDBTableView;
               Data := tv.DataController;
               tView := tv.ViewData;
               try
                  tvFees.BeginUpdate();
                  for iCtr := 0 to Data.RecordCount - 1 do
                  begin
                     lNFee := tView.GetRecordByIndex(iCtr).Values[tvFeesNFEE.Index];
                     if VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeesSELECTED.Index]) then
                        bSelected := False
                     else
                        bSelected := tView.GetRecordByIndex(iCtr).Values[tvFeesSELECTED.Index];
                     if bSelected then
                     begin
                        qryFeeUpdate.ParamByName('NFEE').AsInteger := lNFee;
                        qryFeeUpdate.ParamByName('nfee_debtornote').AsInteger := Sequence;
                        qryFeeUpdate.Prepare;
                        qryFeeUpdate.ExecSQL;
                     end;
                  end;
               finally
                  tvFees.EndUpdate;
               end;
            finally
               dmAxiom.uniInsight.Commit;
            end;
         end;
      end
      else
      begin
         with qryTmp do
         begin
            if dmAxiom.uniInsight.InTransaction then
               dmAxiom.uniInsight.Commit;
            dmAxiom.uniInsight.StartTransaction;
            try
               SQL.Text := 'INSERT INTO FEE_DEBTORNOTES '+
                           '  (NFEE_DEBTORNOTES, NMATTER, CREATED, CREATEDBY, NOTE, REVIEW_DATE, SEQUENCE, '+
                           '  SEARCH_DATE_FROM, SEARCH_DATE_TO, SEARCH_AUTHOR, BILL_DATE, DEBTOR_TASK_CODE, BILL_AMOUNT)'+
                           'VALUES  '+
                           ' (:NFEE_DEBTORNOTES, :NMATTER, :CREATED, :CREATEDBY, :NOTE, :REVIEW_DATE, :SEQUENCE,'+
                           '  :SEARCH_DATE_FROM, :SEARCH_DATE_TO, :SEARCH_AUTHOR, :BILL_DATE, :DEBTOR_TASK_CODE, :BILL_AMOUNT)';
               ParamByName('createdby').AsString := dmAxiom.UserID;
               ParamByName('created').AsDateTime := Date;
               ParamByName('nmatter').AsInteger  := lNMatter;
               ParamByName('NFEE_DEBTORNOTES').AsInteger := iFeeSeq;
               ParamByName('SEARCH_DATE_FROM').AsDateTime := cmbDate.Date;
               ParamByName('SEARCH_DATE_TO').AsDateTime := cmbDateTo.Date;
               if (cmbAuthor.Text <> '') then
                  ParamByName('SEARCH_AUTHOR').AsString := cmbAuthor.EditValue;
               if (cmbBillDate.Date > 0) then
                  ParamByName('BILL_DATE').AsDateTime := cmbBillDate.Date;

               iFeeSeq := StrToInt(dmAxiom.GetSeqNumber('SEQ_FEE_DEBTORNOTES'));

               qryMaxSequence.Close;
               qryMaxSequence.ParamByName('nmatter').AsInteger := lNMatter;
               qryMaxSequence.ExecSQL;
               Sequence := qryMaxSequence.FieldByName('newsequence').AsInteger;
               if Sequence = 0 then Sequence := 1;

               ParamByName('sequence').AsInteger  := Sequence;
               ParamByName('note').AsString := lblEnteredBy.Caption + ' ' + mlNote.Text;
               ParamByName('NFEE_DEBTORNOTES').AsInteger := iFeeSeq;
               if cmbdebtor_task_codes.Text <> '' then
                  ParamByName('DEBTOR_TASK_CODE').AsString := cmbdebtor_task_codes.EditValue;

               ParamByName('BILL_AMOUNT').AsCurrency := edAmounttoBill.Value;
               ExecSQL;

               // need to update fee transactions with the note number
               tv := grdFees.FocusedView as TcxGridDBTableView;
               Data := tv.DataController;
               tView := tv.ViewData;
               try
                  tvFees.BeginUpdate();
                  for iCtr := 0 to Data.RecordCount - 1 do
                  begin
                     lNFee := tView.GetRecordByIndex(iCtr).Values[tvFeesNFEE.Index];
                     if VarIsNull(tView.GetRecordByIndex(iCtr).Values[tvFeesSELECTED.Index]) then
                        bSelected := False
                     else
                        bSelected := tView.GetRecordByIndex(iCtr).Values[tvFeesSELECTED.Index];
                     if bSelected then
                     begin
                        qryFeeUpdate.ParamByName('NFEE').AsInteger := lNFee;
                        qryFeeUpdate.ParamByName('nfee_debtornote').AsInteger := iFeeSeq;
                        qryFeeUpdate.Prepare;
                        qryFeeUpdate.ExecSQL;
                     end;
                  end;
               finally
                  tvFees.EndUpdate;
               end;
            finally
               dmAxiom.uniInsight.Commit;
            end;
         end;
      end;
   end
   else
   begin
      MsgWarn('You need to enter some notes before saving.' );
      ModalResult := mrNone;
   end;
end;

procedure TfrmFeeNotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryAuthors.Close;
   qryBills.Close;
   qryBilledFees.Close;
   qrydebtor_task_codes.Close;
end;

procedure TfrmFeeNotes.FormCreate(Sender: TObject);
var
   iCtr: integer;
begin
   qrydebtor_task_codes.Open;
   for iCtr := 0 to tvFees.DataController.Summary.FooterSummaryItems.Count - 1 do
      tvFees.DataController.Summary.FooterSummaryItems[0].Format := GetCurrencySymbol+',0.00';
end;

procedure TfrmFeeNotes.FormShow(Sender: TObject);
begin
   qryBilledFees.Close;
   qryBilledFees.ParamByName('nmatter').AsInteger := Nmatter;
   qryBilledFees.Open;

   qryBills.Close;
   qryBills.ParamByName('nmatter').AsInteger := Nmatter;
   qryBills.Open;

   btnSearchFees.Click;
end;

procedure TfrmFeeNotes.SetProcessFlag;
var
   Idx, I: Integer;
   ABookmark: TBookmark;
   DC: TcxDBDataController;
   GV: TcxGridDBTableView;
   bitmap: TBitmap;
   AColumn: TcxGridDBColumn;
begin
   GV := grdFees.ActiveView as TcxGridDBTableView;
   DC := GV.DataController;
   DC.BeginUpdate;
   Idx := DC.FocusedRowIndex;

   if GV.Name = 'tvFees' then
      AColumn := tvFeesSELECTED;

   try
      if GV.DataController.RowCount > 0 then
      begin
         Bitmap:= TBitmap.Create;
         if tvFeesSELECTED.Tag = 0 then
         begin
            Bitmap.LoadFromFile('.\images\CHECKBOXUNTICK.bmp');        //Bitmap.LoadFromResourceName(HInstance,'CHECKBOXUNTICK');
            AColumn.HeaderGlyph.Assign(Bitmap);
            AColumn.Tag := 1;
            GV.ViewData.Records[0].Focused := True;
            for I := 0 to GV.ViewData.RowCount - 1 do
            begin
               GV.ViewData.Records[I].Focused := True;
               if (DC.Values[I, AColumn.Index] = null) or
                  (DC.Values[I, AColumn.Index] = False) then
               begin
                  AColumn.EditValue := true;
               end;
            end;
         end
         else
         begin
            Bitmap.LoadFromFile('.\images\checkboxtick.bmp');        //Bitmap.LoadFromResourceName(HInstance,'CHECKBOXTICK');
            AColumn.HeaderGlyph.Assign(Bitmap);
            AColumn.Tag := 0;
            GV.ViewData.Records[0].Focused := True;
            for I := 0 to GV.ViewData.RowCount - 1 do
            begin
               GV.ViewData.Records[I].Focused := True;
               if DC.Values[I, AColumn.Index] = true then
               begin
                  AColumn.EditValue := false;
               end;
            end;
         end;
         Bitmap.Free;
      end;
   finally
      DC.EndUpdate;
   end;
end;

procedure TfrmFeeNotes.SetBillDate(const Value: TDateTime);
begin
   cmbBillDate.Date := Value;
end;

procedure TfrmFeeNotes.SetBillAmount(const Value: double);
begin
   edAmounttoBill.Value := Value;
end;

procedure TfrmFeeNotes.SetTaskCode(const Value: string);
begin
   cmbdebtor_task_codes.EditValue := Value;
end;

end.
