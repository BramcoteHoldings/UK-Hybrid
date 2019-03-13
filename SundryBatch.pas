unit SundryBatch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  ExtCtrls, NumberEdit, OracleUniProvider, Uni, DBAccess, MemDS, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxButtonEdit, cxTextEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit, cxDBLookupComboBox,
  cxContainer, cxGroupBox, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxCheckBox, cxSpinEdit,
  cxLookAndFeels, cxLookAndFeelPainters, cxMemo, cxDBEdit, cxRichEdit,
  cxDBRichEdit, dxCore, cxNavigator, cxDateUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog;

const
  colFILE = 0;
  colUNITS = 1;
  colTYPE = 2;
  colREASON = 3;
  colRATE = 4;
  colAMOUNT = 5;
  colTAXCODE = 6;
  colTAX = 7;

type
  TfrmSundryBatch = class(TForm)
    Label2: TLabel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    lblAmountMsg: TLabel;
    lblTotal: TLabel;
    qrySundry: TUniQuery;
    qrySundType: TUniQuery;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    qrySundryTmp: TUniQuery;
    dsSundryTmp: TUniDataSource;
    sbarMatter: TStatusBar;
    lblTotalUnits: TLabel;
    chkNoExit: TCheckBox;
    dbgrSundry: TcxGrid;
    dbgrSundryLevel1: TcxGridLevel;
    tvSundry: TcxGridDBTableView;
    tvSundryREFNO: TcxGridDBColumn;
    tvSundryUNITS: TcxGridDBColumn;
    tvSundrySUNDRYTYPE: TcxGridDBColumn;
    tvSundryREASON: TcxGridDBColumn;
    tvSundryRATE: TcxGridDBColumn;
    tvSundryAMOUNT: TcxGridDBColumn;
    tvSundryTAXCODE: TcxGridDBColumn;
    tvSundryTAX: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    qryMSearch: TUniQuery;
    gbDefaults: TcxGroupBox;
    Label4: TLabel;
    Units: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    dsSundType: TUniDataSource;
    qryTaxTypes: TUniQuery;
    dsTaxTypes: TUniDataSource;
    dtpDate: TcxDateEdit;
    cbType: TcxLookupComboBox;
    neRate: TcxCurrencyEdit;
    neUnits: TcxSpinEdit;
    tbDesc: TcxTextEdit;
    chkDefaultUnits: TcxCheckBox;
    memoReason: TcxDBRichEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrSundryColExit(Sender: TObject);
    procedure dbgrSundryExit(Sender: TObject);
    procedure dbgrSundryEditButtonClick(Sender: TObject);
    procedure cbTypeClick(Sender: TObject);
    procedure popRemoveClick(Sender: TObject);
    procedure qrySundryTmpAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrSundryColEnter(Sender: TObject);
    procedure dbgrSundryEnter(Sender: TObject);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure tbDescExit(Sender: TObject);
    procedure qrySundryTmpAfterScroll(DataSet: TDataSet);
    procedure qrySundryTmpAfterDelete(DataSet: TDataSet);
    procedure qrySundryTmpAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1REFNOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1UNITSPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1REFNOPropertiesInitPopup(Sender: TObject);
    procedure cxGrid1DBTableView1REFNOPropertiesCloseUp(Sender: TObject);
    procedure cxGrid1DBTableView1REFNOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dtpDatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbTypePropertiesCloseUp(Sender: TObject);
    procedure tvSundryRATEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvSundryTAXCODEPropertiesCloseUp(Sender: TObject);
    procedure tvSundryAMOUNTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvSundrySUNDRYTYPEPropertiesCloseUp(Sender: TObject);
    procedure tvSundryREASONPropertiesChange(Sender: TObject);
    procedure memoReasonEnter(Sender: TObject);
    procedure memoReasonKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvSundryREASONPropertiesPopup(Sender: TObject);
    procedure tvSundryREASONPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tvSundryEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure tvSundryAMOUNTPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    DefaultTax: string;
    FPopupForm: TCustomForm;
    function OKtoPost : Boolean;
    procedure UpdateTotal;
    procedure CalcAmount;
    procedure CalcTax;
  public
    { Public declarations }

  end;

var
  cTotalAmt: Currency;
  iUnits: integer;

implementation

uses
  AxiomData, MiscFunc, MSearch, Desktop, citfunc, cxLookupDBGrid,
  cxGridDBDataDefinitions;

{$R *.DFM}


procedure TfrmSundryBatch.FormShow(Sender: TObject);
begin
   Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;

   cTotalAmt := 0;
   iUnits := 0;

{   with qrySundType do
   begin
      Open;
      First;
      while not EOF do
      begin
         cbType.Items.Add(qrySundType.FieldByName('CODE').AsString);
         dbgrSundry.Columns[colTYPE].PickList.Add(FieldByName('CODE').AsString);
         Next;
      end;
      Close;
   end;   }

   qrySundryTmp.Open;

   if Self.Visible then
     cbType.SetFocus;
end;

procedure TfrmSundryBatch.btnCancelClick(Sender: TObject);
begin
  if MsgAsk('Are you sure you want to cancel this Sundry Batch?') = mrYes then
  begin
    Self.Close;
  end;
end;

procedure TfrmSundryBatch.UpdateTotal;
var
  bmPrevRecord: TBookmark;
begin
//  if DeletingItems then Exit;		{ don't calculate if deleting all items }
  if qrySundryTmp.Modified then
    qrySundryTmp.Post;
  bmPrevRecord := qrySundryTmp.GetBookmark;  { returns nil if table is empty }
  try
    qrySundryTmp.DisableControls;
    qrySundryTmp.First;
    cTotalAmt := 0;			{ use temp for efficiency }
    iUnits := 0;
    while not qrySundryTmp.EOF do
    begin
      cTotalAmt := cTotalAmt + qrySundryTmp.FieldByName('AMOUNT').AsCurrency;
      iUnits := iUnits + qrySundryTmp.FieldByName('UNITS').AsInteger;
      qrySundryTmp.Next;
    end;
    lblTotal.Caption := Format('%m', [cTotalAmt]);
    lblTotalUnits.Caption := Format('%d', [iUnits]);
  finally
     qrySundryTmp.EnableControls;
     if bmPrevRecord <> nil then
     begin
       qrySundryTmp.GoToBookmark(bmPrevRecord);
       qrySundryTmp.FreeBookmark(bmPrevRecord);
     end;
  end;
end;

function TfrmSundryBatch.OKtoPost : Boolean;
var
  sTmp : String;
  bOKtoPost : boolean;
begin
  bOKtoPost := True;
  sTmp := '';

  with qrySundryTmp do
  begin
    First;
    while not EOF and bOKtoPost do
    begin
      if not MatterIsCurrent(FieldByName('REFNO').AsString) then
      begin
        bOKtoPost := False;
        sTmp := 'Matter ' + FieldByName('REFNO').AsString + ' is not current';
      end;
      if (FieldByName('SUNDRYTYPE').AsString = '') or (FieldByName('SUNDRYTYPE').AsString <> TableString('SUNDRYTYPE', 'CODE', FieldByName('SUNDRYTYPE').AsString, 'CODE')) then
      begin
        bOKtoPost := False;
        sTmp := 'Invalid Sundry Type';
      end;

      if bOKtoPOst then
        Next;
    end;
  end;

  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Sundry Batch details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    bOKtoPost := False
  end;
  OKtoPost := bOKtoPost;
end;

procedure TfrmSundryBatch.btnOKClick(Sender: TObject);
var
   Row: integer;
begin
    // clean up grid prior to doing anything.
   for Row := 0 to tvSundry.DataController.RecordCount - 1 do
   begin
      tvSundry.DataController.FocusedRowIndex := Row;
      if tvSundry.DataController.GetDisplayText(Row, tvSundryREFNO.Index) = '' then
         tvSundry.DataController.DeleteFocused;
   end;

   if OKtoPost then
   begin
       with qrySundryTmp do
       begin
         First;
         while not EOF do
         begin
           try
             if dmAxiom.uniInsight.InTransaction then
                dmAxiom.uniInsight.Commit;
             dmAxiom.uniInsight.StartTransaction;
             qrySundry.ParamByName('CREATED').AsDateTime := dtpDate.Date;
             qrySundry.ParamByName('DESCR').AsString := FieldByName('REASON').AsString;
             qrySundry.ParamByName('UNITS').AsInteger := FieldByName('UNITS').AsInteger;
             qrySundry.ParamByName('TYPE').AsString := FieldByName('SUNDRYTYPE').AsString;
             qrySundry.ParamByName('PERUNIT').AsFloat := FieldByName('RATE').AsCurrency;
             qrySundry.ParamByName('AMOUNT').AsFloat := FieldByName('AMOUNT').AsCurrency;
             qrySundry.ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('REFNO').AsString, 'NMATTER');
             qrySundry.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('REFNO').AsString, 'NCLIENT');
             qrySundry.ParamByName('FILEID').AsString := FieldByName('REFNO').AsString;
             qrySundry.ParamByName('ACCT').AsString := dmAxiom.Entity;
             qrySundry.ParamByName('TAXCODE').AsString := FieldByName('TAXCODE').AsString;
             qrySundry.ParamByName('TAX').AsFloat := FieldByName('TAX').AsCurrency;
             qrySundry.ExecSQL;

//             MatterUpdate(qrySundry.ParamByName('NMATTER').AsInteger, 'UNBILL_SUND', qrySundry.ParamByName('AMOUNT').AsFloat);

             if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
               PostLedgers(dtpDate.Date
                 , FieldByName('AMOUNT').AsCurrency
                 , FieldByName('REFNO').AsString
                 , 'SUNDRY'
                 , qrySundry.ParamByName('NSUNDRY').AsInteger
                 , FieldByName('REASON').AsString
                 , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR')
                 , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR')
                 , MatterString(FieldByName('REFNO').AsString, 'AUTHOR')
                 , FieldByName('TAXCODE').AsString);

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

       if qrySundryTmp.IsEmpty then
         if not chkNoExit.Checked then
         begin
            Self.Close;
         end;
   end;
end;

procedure TfrmSundryBatch.dbgrSundryColExit(Sender: TObject);
begin
{  case dbgrSundry.SelectedIndex of
    colFILE :
    begin
      if not qrySundryTmp.Modified then
        qrySundryTmp.Edit;
      dbgrSundry.Columns.Items[colFILE].Field.Text := Trim(UpperCase(dbgrSundry.Columns.Items[colFILE].Field.Text));
        sbarMatter.Panels[0].Text := MatterString(dbgrSundry.Columns.Items[colFILE].Field.Text, 'MATLOCATE');
    end;
    colTYPE: // Display the long Description
    begin
      if dbgrSundry.Columns.Items[colTYPE].Field.Text <> cbType.Text then
      begin
        qrySundryTmp.FieldByName('REASON').AsString := TableString('SUNDRYTYPE', 'CODE', dbgrSundry.Columns.Items[colTYPE].Field.Text, 'DESCR');
        qrySundryTmp.FieldByName('RATE').AsCurrency := TableCurrency('SUNDRYTYPE', 'CODE', dbgrSundry.Columns.Items[colTYPE].Field.Text, 'RATE');
      end;
      CalcAmount;
    end;
    colREASON:
    begin
      if not qrySundryTmp.Modified then
        qrySundryTmp.Edit;
      QuickCode(dbgrSundry.Columns.Items[colREASON].Field);
    end;
    colUNITS:
    begin
      if chkDefaultUnits.Checked then
        if Copy(dbgrSundry.Columns.Items[colREASON].Field.Text, 1, Length(tbDesc.Text)) = tbDesc.Text then
          dbgrSundry.Columns.Items[colREASON].Field.Text := tbDesc.Text + ' - ' + dbgrSundry.Columns.Items[colUNITS].Field.Text + ' units';
      CalcAmount;
    end;
    colRATE:
      CalcAmount;

  end;    }
end;

procedure TfrmSundryBatch.CalcAmount;
var
  cAmt : currency;
begin
  if not qrySundryTmp.Modified then
    qrySundryTmp.Edit;
  cAmt := qrySundryTmp.FieldByName('AMOUNT').AsCurrency;
  qrySundryTmp.FieldByName('AMOUNT').AsCurrency := qrySundryTmp.FieldByName('UNITS').AsInteger * qrySundryTmp.FieldByName('RATE').AsCurrency;
  cTotalAmt := cTotalAmt - cAmt + qrySundryTmp.FieldByName('AMOUNT').AsCurrency;
  lblTotal.Caption := Format('%m', [cTotalAmt]);
end;

procedure TfrmSundryBatch.CalcTax;
var
  dAmount: double;
begin
  dAmount := qrySundryTmp.FieldByName('AMOUNT').AsCurrency;
  qrySundryTmp.FieldByName('TAX').AsCurrency := TaxCalc(dAmount, '', qrySundryTmp.FieldByName('TAXCODE').AsString, dtpDate.Date);
  qrySundryTmp.FieldByName('AMOUNT').AsCurrency := dAmount;
end;

procedure TfrmSundryBatch.dbgrSundryExit(Sender: TObject);
begin
  UpdateTotal;
end;

procedure TfrmSundryBatch.dbgrSundryEditButtonClick(Sender: TObject);
begin
{  if dbgrSundry.SelectedIndex = colFILE then
  begin
    if frmMatterSearch.ShowModal = mrOk then
    begin
      qrySundryTmp.Edit;
      qrySundryTmp.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
    end;
  end;   }
end;


procedure TfrmSundryBatch.cbTypeClick(Sender: TObject);
begin
//  lblTypeDesc.Caption := TableString('SUNDRYTYPE', 'CODE', cbType.Text, 'DESCR');
  neRate.Value := TableCurrency('SUNDRYTYPE', 'CODE',integer(cbType.EditValue), 'RATE');
  tbDesc.Text := cbType.Text;
  qrySundryTmp.Edit;
end;

procedure TfrmSundryBatch.popRemoveClick(Sender: TObject);
begin
  if not qrySundryTmp.IsEmpty then
  begin
    qrySundryTmp.Delete;
    CalcAmount;
  end;
end;

procedure TfrmSundryBatch.qrySundryTmpAfterInsert(DataSet: TDataSet);
var
   lSunCode: string;
   lTaxCode: string;
begin
   try
      with qrySundryTmp do
      begin
         if cbType.Text <> '' then
         begin
            FieldByName('SUNDRYTYPE').AsString := cbType.EditValue;
            lSunCode := cbType.EditValue;
         end;
         FieldByName('UNITS').AsInteger := neUnits.Value;
         FieldByName('RATE').AsCurrency := neRate.Value;
         FieldByName('REASON').AsString := tbDesc.Text;
         lTaxCode := TableString('SUNDRYTYPE', 'CODE', lSunCode, 'TAXCODE');
         if (lTaxCode = '') then
              FieldByName('TAXCODE').AsString := DefaultTax
         else
              FieldByName('TAXCODE').AsString := lTaxCode;
      end;
   finally
      CalcAmount;
      CalcTax;
   end;
end;

procedure TfrmSundryBatch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if qrySundryTmp.UpdatesPending then
      qrySundryTmp.CancelUpdates;
   qrySundryTmp.Close;
   qrySundry.Close;

   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
      Self.Release;
   RemoveFromDesktop(Self);
  //Self.Release;
end;


procedure TfrmSundryBatch.dbgrSundryColEnter(Sender: TObject);
begin
 { if dbgrSundry.SelectedIndex <> colFILE then
  begin
    if MatterString(dbgrSundry.Columns.Items[colFILE].Field.Text, 'FILEID') <> dbgrSundry.Columns.Items[colFILE].Field.Text then
    begin
      MsgErr('Invalid File Number: ' + dbgrSundry.Columns.Items[colFILE].Field.Text);
      dbgrSundry.SelectedIndex := colFILE;
    end;
  end;     }
end;


procedure TfrmSundryBatch.dbgrSundryEnter(Sender: TObject);
begin
  if not qrySundryTmp.IsEmpty then
    qrySundryTmp.Edit;
end;

procedure TfrmSundryBatch.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(Sender);
end;

procedure TfrmSundryBatch.tbDescExit(Sender: TObject);
begin
  Quickcode(Sender);
end;

procedure TfrmSundryBatch.qrySundryTmpAfterScroll(DataSet: TDataSet);
begin
  sbarMatter.Panels[0].Text := MatterString(qrySundryTmp.FieldByName('REFNO').AsString, 'MATLOCATE');
end;

procedure TfrmSundryBatch.qrySundryTmpAfterDelete(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmSundryBatch.qrySundryTmpAfterPost(DataSet: TDataSet);
begin
  UpdateTotal;
end;

procedure TfrmSundryBatch.FormCreate(Sender: TObject);
begin
{   with dmAxiom.qryNew do
   begin
     Close;
     SQL.Text := 'SELECT CODE FROM TAXTYPE ORDER BY CODE';
     Open;
     while not EOF do
     begin
       dbgrSundry.Columns[colTAXCODE].PickList.Add(FieldByName('CODE').AsString);

       Next;
     end;
     Close;
   end;  }

   if dmAxiom.DictionaryInstalled then
   begin
//     memoReason.AddictSpell := dmAxiom.AddictLiveSpell;
//     dmAxiom.AddictLiveSpell.AddControl(memoReason);
//     memoReason.LiveSpelling := true;
   end;

   qryTaxTypes.Open;
   DefaultTax := dmAxiom.DefaultTax;

   dtpDate.Date := Now;
   dtpDate.Properties.MaxDate := Now;

   qrySundType.Open;
   
   qryMRUList.Close;
   qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
   qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
   qryMRUList.Open;
end;


procedure TfrmSundryBatch.cxGrid1DBTableView1REFNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if frmMatterSearch.ShowModal = mrOk then
   begin
      qrySundryTmp.Edit;
      qrySundryTmp.FieldByName('REFNO').AsString := qryMRUList.FieldByName('FILEID').AsString;
   end;
end;

procedure TfrmSundryBatch.cxGrid1DBTableView1UNITSPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   qrySundryTmp.FieldByName('UNITS').AsInteger := DisplayValue;
   if chkDefaultUnits.Checked then
      if Copy(tvSundryREASON.DataBinding.Field.Text, 1, Length(tbDesc.Text)) = tbDesc.Text then
         tvSundryREASON.DataBinding.Field.Text := tbDesc.Text + ' - ' + tvSundryUNITS.DataBinding.Field.Text + ' units';
   CalcAmount;
   CalcTax;
end;

procedure TfrmSundryBatch.cxGrid1DBTableView1REFNOPropertiesInitPopup(
  Sender: TObject);
begin
   qryMRUList.Refresh;
end;

procedure TfrmSundryBatch.cxGrid1DBTableView1REFNOPropertiesCloseUp(
  Sender: TObject);
var
   selectedRow : String;
begin
   selectedRow := TcxLookupComboBox(Sender).Text;

   // If search selected, open matter search screen
   if selectedRow = 'SEARCH...' then
   begin
      if not FormExists(frmMatterSearch) then
         Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
      if frmMatterSearch.ShowModal = mrOk then
      begin
         if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
         begin
            MsgErr('You may not post to a matter that is archived.');
         end
         else
         if not qrySundryTmp.Modified then
            qrySundryTmp.Edit;
         qrySundryTmp.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
 //      qrySundryTmp.FieldByName('NMATTER').AsInteger := dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger;
 //      tvFeeTmpMATTERDETAILS.DataBinding.Field.AsString := dmAxiom.qryMSearch.FieldByName('TITLE').AsString + ' '+
 //                                                 dmAxiom.qryMSearch.FieldByName('SHORTDESCR').AsString;
         CalcAmount;
      end;
   end
   // If recent matter selected, obtain matter details
   else if selectedRow <> '' then
   begin
      if (IsMatterArchived(qryMRUList.FieldByName('FILEID').AsString)) then
      begin
         MsgErr('You may not post to a matter that is archived.');
      end
      else
      begin
         qryMSearch.Close;
         qryMSearch.ParamByName('P_FILEID').AsString :=  selectedRow;
         qryMSearch.Open;

         if not qrySundryTmp.Modified then
            qrySundryTmp.Edit;

         qrySundryTmp.FieldByName('REFNO').AsString := qryMSearch.FieldByName('FILEID').AsString;
    //    qrySundryTmp.FieldByName('NMATTER').AsInteger := qryMSearch.FieldByName('NMATTER').AsInteger;
    //    tvFeeTmpMATTERDETAILS.DataBinding.Field.AsString := qryMSearch.FieldByName('TITLE').AsString + ' '+
    //                                                 qryMSearch.FieldByName('SHORTDESCR').AsString;
    //    qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', qryFeeTmp.FieldByName('FILEID').AsString, qryFeeTmp.FieldByName('AUTHOR').AsString);
         CalcAmount;
      end;
   end;
end;

procedure TfrmSundryBatch.cxGrid1DBTableView1REFNOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
   ARefNo: string;
begin
   if (DisplayValue <> '') then
   begin
      ARefNo := UpperCase(string(DisplayValue));
      if (IsMatterArchived(ARefNo)) then
      begin
         ErrorText := 'You may not enter a Sundry for a matter that is archived.';
         Error := True;
      end
      else
      if (MatterExists(ARefNo)) then
      begin
         if not qrySundryTmp.Modified then
            qrySundryTmp.Edit;
         qrySundryTmp.FieldByName('REFNO').AsString := ARefNo;
         CalcAmount;
      end
      else
      begin
         ErrorText := 'Matter does not exist!';
         Error := True;
      end;
   end;
end;

procedure TfrmSundryBatch.dtpDatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if (dtpDate.Date > Now) then
   begin
      dtpDate.Date := Now;
      Error := False;
   end;
end;

procedure TfrmSundryBatch.cbTypePropertiesCloseUp(Sender: TObject);
begin
   try
      neRate.Value := TableCurrency('SUNDRYTYPE', 'CODE', string(cbType.EditValue), 'RATE');
      tbDesc.Text := cbType.Text;
      qrySundryTmp.Edit;
   except
     //
   end;
end;

procedure TfrmSundryBatch.tvSundryRATEPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   try
      qrySundryTmp.FieldByName('RATE').AsCurrency := DisplayValue;
      CalcAmount;
      CalcTax;
   except
     //
   end;
end;

procedure TfrmSundryBatch.tvSundryTAXCODEPropertiesCloseUp(
  Sender: TObject);
begin
   try
      qrySundryTmp.FieldByName('TAXCODE').AsString := TcxLookupComboBox(Sender).Text;
      CalcTax;
   except
     //
   end;
end;

procedure TfrmSundryBatch.tvSundryAMOUNTPropertiesChange(Sender: TObject);
begin
   CalcTax;
end;

procedure TfrmSundryBatch.tvSundryAMOUNTPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   qrySundryTmp.FieldByName('AMOUNT').AsCurrency := DisplayValue;
   CalcTax;
end;

procedure TfrmSundryBatch.tvSundrySUNDRYTYPEPropertiesCloseUp(
  Sender: TObject);
begin
   try
      qrySundryTmp.FieldByName('SUNDRYTYPE').AsString := TcxLookupComboBox(Sender).Text;
      qrySundryTmp.FieldByName('REASON').AsString := TableString('SUNDRYTYPE', 'CODE', TcxLookupComboBox(Sender).Text, 'DESCR');
      qrySundryTmp.FieldByName('RATE').AsCurrency := TableCurrency('SUNDRYTYPE', 'CODE', TcxLookupComboBox(Sender).Text, 'RATE');
      qrySundryTmp.FieldByName('TAXCODE').AsString := TableString('SUNDRYTYPE', 'CODE', TcxLookupComboBox(Sender).Text, 'TAXCODE');
      CalcAmount;
      tvSundryREASON.Focused := True;
   except
     //
   end;
end;

procedure TfrmSundryBatch.tvSundryREASONPropertiesChange(Sender: TObject);
begin
   try
      QuickCode(tvSundryREASON.DataBinding.Field);
   except
     //
   end;
end;

procedure TfrmSundryBatch.memoReasonEnter(Sender: TObject);
begin
//   if TableString('EMPLOYEE','CODE',dmAxiom.UserID,'TIME_SHEET_SEL_DESCR') = 'N' then
//      TAddictDBRichEdit(Sender).SelStart := Length(TAddictDBRichEdit(Sender).Text) + 1;
//   else
//      TAddictDBRichEdit(Sender).SelectAll;
   TcxDBRichEdit(Sender).SelStart := Length(TcxDBRichEdit(Sender).Text) + 1;
end;

procedure TfrmSundryBatch.memoReasonKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_SPACE then
      QuickCode(Sender);

   if Key = VK_Tab then
   begin
      if FPopupForm is TcxCustomEditPopupWindow then
         (FPopupForm as TcxCustomEditPopupWindow).Edit.DroppedDown := False;
      tvSundryTAXCODE.Focused := True;
   end;
end;

procedure TfrmSundryBatch.tvSundryREASONPropertiesPopup(Sender: TObject);
begin
   FPopupForm := GetParentForm(TControl(Sender));
end;

procedure TfrmSundryBatch.tvSundryREASONPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   qrySundryTmp.FieldByName('REASON').AsString := Trim(DisplayValue);
end;

procedure TfrmSundryBatch.tvSundryEditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
  if AItem = tvSundryREASON then
      if Key = ' ' then
         QuickCode(TcxButtonEdit(AEdit), TcxButtonEdit(AEdit).Text);
end;

end.

