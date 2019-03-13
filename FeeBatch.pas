unit FeeBatch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, Db, DBCtrls, DBGrids, Menus, Buttons,
  ExtCtrls, NumberEdit, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, OraSmart, Qrctrls, QuickRpt, DBAccess,
  ToolWin, ImgList,QuickCodeSearch, RxLookup;

const
  colCREATED = 0;
  colFILE = 1;
  colAUTHOR = 2;
  colREASON = 3;
  colUNITS = 4;
  colRATE = 5;
  colAMOUNT = 6;
  colTAXCODE = 7;
  colTAX = 8;
  SBARCOUNT = 0;
  SBARTIME = 1;
  SBARBILLUNITS = 2;
  SBARAMOUNT = 3;

type
  TfrmFeeBatch = class(TForm)
    Label2: TLabel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    dsFeeTmp: TUniDataSource;
    dbgrFeeTmp: TDBGrid;
    lblAmountMsg: TLabel;
    lblTotalAmount: TLabel;
    gbDefaults: TGroupBox;
    Label8: TLabel;
    tbDesc: TEdit;
    Units: TLabel;
    neUnits: TNumberEdit;
    Label4: TLabel;
    popGrid: TPopupMenu;
    popRemove: TMenuItem;
    popEdit: TMenuItem;
    qryScaleCost: TUniQuery;
    popGridDateStamp: TMenuItem;
    lblTotalUnits: TLabel;
    chkNoExit: TCheckBox;
    qryTmp: TUniQuery;
    dtpDate: TDateTimePicker;
    btnPrint: TBitBtn;
    qryFeeInsert: TUniQuery;
    qryScaleCostAMOUNT: TFloatField;
    qryScaleCostRATE: TFloatField;
    qryScaleCostDESCR: TStringField;
    qryScaleCostUNIT: TStringField;
    ilstToolbar: TImageList;
    ilstTimers: TImageList;
    btnTimer: TBitBtn;
    tmrAutocost: TTimer;
    sbarStatus: TStatusBar;
    btnSave: TButton;
    qryFeeTmp: TUniQuery;
    qryFeeTmpROWID: TStringField;
    qryFeeTmpCREATED: TDateTimeField;
    qryFeeTmpREFNO: TStringField;
    qryFeeTmpAUTHOR: TStringField;
    qryFeeTmpREASON: TStringField;
    qryFeeTmpUNITS: TIntegerField;
    qryFeeTmpRATE: TFloatField;
    qryFeeTmpAMOUNT: TFloatField;
    qryFeeTmpTAXCODE: TStringField;
    qryFeeTmpTAX: TFloatField;
    qryFeeTmpTAXRATE: TFloatField;
    qryFeeTmpELAPSED: TFloatField;
    qryFeeTmpEMPCODE: TStringField;
    qryFeeTmpLONGDESC: TStringField;
    LookupMatter1: TMenuItem;
    Reason1: TMenuItem;
    QuickCode1: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lblMatter: TLabel;
    Label3: TLabel;
    lblElapsed: TLabel;
    qFeeEarners: TUniQuery;
    qFeeEarnersCODE: TStringField;
    qFeeEarnersNAME: TStringField;
    dsFeeEarners: TDataSource;
    cbAuthor: TRxDBLookupCombo;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbgrFeeTmpColExit(Sender: TObject);
    procedure dbgrFeeTmpExit(Sender: TObject);
    procedure dbgrFeeTmpEditButtonClick(Sender: TObject);
    procedure popRemoveClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure dbgrFeeTmpColEnter(Sender: TObject);
    procedure qryFeeTmpAfterDelete(DataSet: TDataSet);
    procedure qryFeeTmpAfterPost(DataSet: TDataSet);
    procedure qryFeeTmpAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryFeeTmpRATEChange(Sender: TField);
    procedure qryFeeTmpUNITSChange(Sender: TField);
    procedure popGridDateStampClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryFeeTmpAfterScroll(DataSet: TDataSet);
    procedure tbDescExit(Sender: TObject);
    procedure tbDescKeyPress(Sender: TObject; var Key: Char);
    procedure qryFeeTmpAMOUNTChange(Sender: TField);
    procedure btnPrintClick(Sender: TObject);
    procedure tbtnMakeFeeClick(Sender: TObject);
    procedure tbtnResumeClick(Sender: TObject);
    procedure btnTimerClick(Sender: TObject);
    procedure tmrAutocostTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure qryFeeTmpNewRecord(DataSet: TDataSet);
    procedure LookupMatter1Click(Sender: TObject);
    procedure Reason1Click(Sender: TObject);
    procedure QuickCode1Click(Sender: TObject);
  private
    { Private declarations }
    FTotalAmount: currency;
    FTotalUnits: integer;
    DefaultTax: string;
    FileID : string;
    function OKtoPost: Boolean;
    procedure UpdateTotals;
    procedure CalcAmount;
    procedure CalcTax;
    procedure CalcStatusbar;
    function CalcAmount2(iSecs : integer; cRate : currency; sType : string) : currency;
  public
    { Public declarations }

  end;

implementation

uses
  AxiomData, FeeBatchPrint, MiscFunc, MSearch, Desktop, ScaleCosts, citfunc,
  Variants;

{$R *.DFM}

var
{
  Modified 25.10.2002 GG
  Removed compiler hint
  iActiveTimer : integer;
}
  iMinsPerUnit : integer;
  iRecords : integer;

procedure TfrmFeeBatch.FormShow(Sender: TObject);
begin
  Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;

  qryFeeTmp.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
  qryFeeTmp.Open;
  iRecords := qryFeeTmp.RecordCount;


  qFeeEarners.First();
  while(not qFeeEarners.Eof) do
  begin
    dbgrFeeTmp.Columns[colAUTHOR].PickList.Add(qFeeEarnersCODE.AsString);
    qFeeEarners.Next();
  end;
  qFeeEarners.First();

  if TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'ISFEEEARNER') = 'Y' then
    cbAuthor.KeyValue := dmAxiom.UserID
  else
    cbAuthor.KeyValue := qFeeEarnersCODE.AsString;

  if Self.Visible then
    cbAuthor.SetFocus;
end;


procedure TfrmFeeBatch.btnCancelClick(Sender: TObject);
begin
  if tmrAutocost.Enabled then
    MessageDlg('You must stop autocosting before you exit',mtWarning, [mbOK], 0)
  else
    if MsgAsk('Are you sure you want to exit Fee Batch?') = mrYes then
      Self.Close;
end;


procedure TfrmFeeBatch.UpdateTotals;
var
  bmPrevRecord: TBookmark;
  cTotalAmount : currency;
  iTotalUnits : integer;
begin
  bmPrevRecord := qryFeeTmp.GetBookmark;  { returns nil if table is empty }
  try
    qryFeeTmp.DisableControls;
    qryFeeTmp.First;
    cTotalAmount := 0;			{ use temp for efficiency }
    iTotalUnits := 0;
    while not qryFeeTmp.EOF do
    begin
      cTotalAmount := cTotalAmount + qryFeeTmp.FieldByName('AMOUNT').AsCurrency;
      iTotalUnits := iTotalUnits + qryFeeTmp.FieldByName('UNITS').AsInteger;
      qryFeeTmp.Next;
    end;
    lblTotalAmount.Caption := Format('%m', [cTotalAmount]);
    lblTotalUnits.Caption := Format('%d', [iTotalUnits]);
  finally
     qryFeeTmp.EnableControls;
     if bmPrevRecord <> nil then
     begin
       qryFeeTmp.GoToBookmark(bmPrevRecord);
       qryFeeTmp.FreeBookmark(bmPrevRecord);
     end;
  end;
end;


function TfrmFeeBatch.OKtoPost : Boolean;
var
  sTmp : String;
  bOKtoPost : boolean;
begin
  bOKtoPost := True;
  sTmp := '';
  if tmrAutocost.Enabled then
    sTmp := 'You must stop autocosting before you can process this batch';

  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Fee Batch details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    bOKtoPost := False
  end;
  OKtoPost := bOKtoPost;
end;


procedure TfrmFeeBatch.btnOKClick(Sender: TObject);
var
  bPostingFailed: boolean;
  dAmount: double;
begin
  if qryFeeTmp.Modified then
    qryFeeTmp.Post;
  if OKtoPost then
  begin
    try
      dmAxiom.uniInsight.StartTransaction;
      bPostingFailed := False;
      with qryFeeTmp do
      begin
        First;
        while not EOF do
        begin
          if MatterIsCurrent(FieldByName('REFNO').AsString) then
          begin
            qryFeeInsert.ParamByName('CREATED').AsDateTime := FieldByName('CREATED').AsDateTime;
            qryFeeInsert.ParamByName('DESCR').AsString := FieldByName('REASON').AsString;
            qryFeeInsert.ParamByName('UNITS').AsInteger := FieldByName('UNITS').AsInteger;
            //if SystemInteger('TIME_UNITS') > 0 then
            if iMinsPerUnit > 0 then
            begin
              qryFeeInsert.ParamByName('MINS').AsInteger := FieldByName('UNITS').AsInteger * iMinsPerUnit;
              qryFeeInsert.ParamByName('UNIT').AsString := 'Units';
            end
            else
            begin
              qryFeeInsert.ParamByName('MINS').AsInteger := FieldByName('UNITS').AsInteger;
              qryFeeInsert.ParamByName('UNIT').AsString := 'Mins';
            end;
            qryFeeInsert.ParamByName('AUTHOR').AsString := FieldByName('AUTHOR').AsString;
            qryFeeInsert.ParamByName('RATE').AsFloat := FieldByName('RATE').AsCurrency;
            qryFeeInsert.ParamByName('NMATTER').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('REFNO').AsString, 'NMATTER');
            qryFeeInsert.ParamByName('NCLIENT').AsInteger := TableInteger('MATTER', 'FILEID', FieldByName('REFNO').AsString, 'NCLIENT');
            qryFeeInsert.ParamByName('PARTNER').AsString := MatterString(FieldByName('REFNO').AsString, 'PARTNER');
            qryFeeInsert.ParamByName('FILEID').AsString := FieldByName('REFNO').AsString;
            qryFeeInsert.ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
            qryFeeInsert.ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', String(cbAuthor.KeyValue), 'DEPT');
            qryFeeInsert.ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', String(cbAuthor.KeyValue), 'TYPE');
            qryFeeInsert.ParamByName('TAXCODE').AsString := FieldByName('TAXCODE').AsString;
            dAmount := FieldByName('AMOUNT').AsCurrency;
            qryFeeInsert.ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', FieldByName('TAXCODE').AsString, FieldByName('CREATED').AsDateTime);
            qryFeeInsert.ParamByName('AMOUNT').AsFloat := dAmount;
            qryFeeInsert.ExecSQL;

           MatterUpdate(qryFeeInsert.ParamByName('NMATTER').AsInteger, 'UNBILL_FEES', FieldByName('AMOUNT').AsCurrency + FieldByName('TAX').AsCurrency);
            if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR') <> '' then
              PostLedgers(qryFeeInsert.ParamByName('CREATED').AsDateTime
                , qryFeeInsert.ParamByName('AMOUNT').AsFloat
                , qryFeeInsert.ParamByName('FILEID').AsString
                , 'FEE'
                , qryFeeInsert.ParamByName('NFEE').AsInteger
                , qryFeeTmp.FieldByName('REASON').AsString
                , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR')
                , TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_CR')
                , qryFeeInsert.ParamByName('AUTHOR').AsString
                , FieldByName('TAXCODE').AsString);
          end
          else
            raise Exception.Create('Matter ' + FieldByName('REFNO').AsString + ' is not a current Matter');
          Next;
        end;
      end;

    CheckLedgerTotal;

    with qryTmp do
      begin
        SQL.Text := 'DELETE FROM FEETMP WHERE EMPCODE=:EMPCODE';
        ParambyName('EMPCODE').AsString := dmAxiom.UserId;
        ExecSQL;
        Close;
      end;

    except
      on E: Exception do
      begin
        dmAxiom.uniInsight.Rollback;
        bPostingFailed := True;
        MsgErr('Fee Batch posting failed:'#13#13 + E.Message);
      end;
    end;

    if not bPostingFailed then
    begin
      dmAxiom.uniInsight.Commit;
      if qryFeeTmp.UpdatesPending then
        qryFeeTmp.CancelUpdates;
      qryFeeTmp.Close;
      qryFeeTmp.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
      qryFeeTmp.Open;
      if not chkNoExit.Checked then
        Self.Close;
    end;
  end;
end;


procedure TfrmFeeBatch.dbgrFeeTmpColExit(Sender: TObject);
begin
  case dbgrFeeTmp.SelectedIndex of
    colFILE :
    begin
      if not qryFeeTmp.Modified then
        qryFeeTmp.Edit;
      dbgrFeeTmp.Columns.Items[colFILE].Field.Text := Trim(UpperCase(dbgrFeeTmp.Columns.Items[colFILE].Field.Text));
      FileID := dbgrFeeTmp.Columns.Items[colFILE].Field.Text;
      //sbarMatter.Panels[0].Text := MatterString(dbgrFeeTmp.Columns.Items[colFILE].Field.Text, 'MATLOCATE');
      lblMatter.Caption := MatterString(dbgrFeeTmp.Columns.Items[colFILE].Field.Text, 'MATLOCATE');
      dbgrFeeTmp.Columns.Items[colTaxCODE].Field.AsString := MatterString(FileID, 'FEE_TAX_BASIS');

    end;
    colAUTHOR: // Display the long Description
    begin
      if dbgrFeeTmp.Columns.Items[colAUTHOR].Field.OldValue <> dbgrFeeTmp.Columns.Items[colAUTHOR].Field.Value  then
      begin
        qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', dbgrFeeTmp.Columns.Items[colFILE].Field.Text, dbgrFeeTmp.Columns.Items[colAUTHOR].Field.Text, dbgrFeeTmp.Columns.Items[colCREATED].Field.AsDateTime );
        CalcAmount;
      end;
    end;

    colREASON :
    begin
      if not qryFeeTmp.Modified then
        qryFeeTmp.Edit;
      QuickCode(dbgrFeeTmp.Columns.Items[colREASON].Field);
      if (dbgrFeeTmp.Columns.Items[colREASON].Field.Text <> '') and (Length(dbgrFeeTmp.Columns.Items[colREASON].Field.Text) <= 11) then
      begin
        with qryScaleCost do
        begin
          ParamByName('P_Code').AsString := UpperCase(dbgrFeeTmp.Columns.Items[colREASON].Field.Text);
          Open;
          if not EOF then
          begin
            qryFeeTmp.FieldByName('REASON').AsString := FieldByName('DESCR').AsString;
            if FieldByName('AMOUNT').AsCurrency > 0.00 then
            begin
              qryFeeTmp.FieldByName('AMOUNT').AsCurrency := FieldByName('AMOUNT').AsCurrency;
              qryFeeTmp.FieldByName('RATE').AsCurrency := 0.0;
              UpdateTotals;
            end
            else
            begin
              qryFeeTmp.FieldByName('RATE').AsCurrency := FieldByName('RATE').AsCurrency;
              CalcAmount;
            end;
          end;
          Close;
        end;
      end;
    end;
  end;
end;


procedure TfrmFeeBatch.CalcAmount;
begin
  if qryFeeTmp.FieldByName('RATE').AsCurrency <> 0.0 then
  begin
    if not qryFeeTmp.Modified then
      qryFeeTmp.Edit;
    if iMinsPerUnit > 0 then
      qryFeeTmp.FieldByName('AMOUNT').AsCurrency := (qryFeeTmp.FieldByName('UNITS').AsInteger * iMinsPerUnit / 60) * qryFeeTmp.FieldByName('RATE').AsCurrency
    else
      qryFeeTmp.FieldByName('AMOUNT').AsCurrency := (qryFeeTmp.FieldByName('UNITS').AsInteger / 60) * qryFeeTmp.FieldByName('RATE').AsCurrency;
    UpdateTotals;
  end;
end;


procedure TfrmFeeBatch.CalcTax;
var
  dAmount: double;
begin
  if not qryFeeTmp.Modified then
    qryFeeTmp.Edit;
  dAmount := qryFeeTmp.FieldByName('AMOUNT').AsCurrency;
  qryFeeTmp.FieldByName('TAX').AsCurrency := TaxCalc(dAmount, '', qryFeeTmp.FieldByName('TAXCODE').AsString, dtpDate.Date);
  qryFeeTmp.FieldByName('AMOUNT').AsCurrency := dAmount;
end;


procedure TfrmFeeBatch.dbgrFeeTmpExit(Sender: TObject);
begin
  UpdateTotals;
end;


procedure TfrmFeeBatch.dbgrFeeTmpEditButtonClick(Sender: TObject);
begin
  if dbgrFeeTmp.SelectedIndex = colFILE then
  begin
    lblMatter.Caption := '';
    if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
    if frmMatterSearch.ShowModal = mrOk then
    begin
      if not qryFeeTmp.Modified then
        qryFeeTmp.Edit;
      qryFeeTmp.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
    end;
  end
  else if dbgrFeeTmp.SelectedIndex = colREASON then
  begin
    with TfrmScaleCosts.Create(Self) do
    begin
      if ShowModal = mrOk then
      begin
        if not qryFeeTmp.Modified then
          qryFeeTmp.Edit;
        qryFeeTmp.FieldByName('REASON').AsString := qryScaleCosts.FieldByName('DESCR').AsString;
        if qryScaleCosts.FieldByName('AMOUNT').AsCurrency > 0 then
        begin
          qryFeeTmp.FieldByName('AMOUNT').AsCurrency := qryScaleCosts.FieldByName('AMOUNT').AsCurrency;
          qryFeeTmp.FieldByName('RATE').AsCurrency := 0.0;
          UpdateTotals;
        end
        else
        begin
          qryFeeTmp.FieldByName('RATE').AsCurrency := qryScaleCosts.FieldByName('RATE').AsCurrency;
          CalcAmount;
        end;
      end;
    end;
  end
end;


procedure TfrmFeeBatch.popRemoveClick(Sender: TObject);
{
  Modified 25.10.2002 GG
  Removed compiler hint
var icount : integer;
}
begin
{
  Modified 25.10.2002 GG
  Removed compiler hint
icount := qryFeeTmp.RecordCount;
}
  if not qryFeeTmp.IsEmpty   then
  begin
    qryFeeTmp.Delete;
    CalcAmount;
  end;
end;

procedure TfrmFeeBatch.popEditClick(Sender: TObject);
begin
  if not qryFeeTmp.IsEmpty then
    qryFeeTmp.Edit;
end;

procedure TfrmFeeBatch.dbgrFeeTmpColEnter(Sender: TObject);
begin
  if dbgrFeeTmp.SelectedIndex <> colFILE then
  begin
    if MatterString(dbgrFeeTmp.Columns.Items[colFILE].Field.Text, 'FILEID') <> dbgrFeeTmp.Columns.Items[colFILE].Field.Text then
    begin
      MsgErr('Invalid File Number: ' + dbgrFeeTmp.Columns.Items[colFILE].Field.Text);
      dbgrFeeTmp.SelectedIndex := colFILE;
    end;
    qryFeeTmp.Edit;
    qryFeeTmp.FieldbyName('EMPCODE').AsString := dmAxiom.UserId;
  end;
  if dbgrFeeTmp.SelectedIndex = colAUTHOR then
  begin
    if qryFeeTmp.Modified and (qryFeeTmp.FieldByName('RATE').AsCurrency = 0) then
    begin
      qryFeeTmp.FieldByName('RATE').AsCurrency := FeeRate('N', dbgrFeeTmp.Columns.Items[colFILE].Field.Text, dbgrFeeTmp.Columns.Items[colAUTHOR].Field.Text, dbgrFeeTmp.Columns.Items[colCREATED].Field.AsDateTime);
      CalcAmount;
    end;
    //btnSave.Click;
  end;
end;

procedure TfrmFeeBatch.qryFeeTmpAfterDelete(DataSet: TDataSet);
begin
  UpdateTotals;
end;

procedure TfrmFeeBatch.qryFeeTmpAfterPost(DataSet: TDataSet);
begin
  DefaultTax := qryFeeTmp.FieldByName('TAXCODE').AsString;

  UpdateTotals;
end;

procedure TfrmFeeBatch.qryFeeTmpAfterInsert(DataSet: TDataSet);
begin
  qryFeeTmp.Edit;
  qryFeeTmp.FieldByname('CREATED').AsDateTime := dtpDate.Date;
  qryFeeTmp.FieldByname('REFNO').AsString := FileID;
  qryFeeTmp.FieldByname('AUTHOR').AsString := String(cbAuthor.KeyValue);
  qryFeeTmp.FieldByname('REASON').AsString := tbDesc.Text;
  qryFeeTmp.FieldByName('UNITS').AsInteger := neUnits.AsInteger;
  qryFeeTmp.FieldByName('TAXCODE').AsString := DefaultTax;
  qryFeeTmp.FieldByName('EMPCODE').AsString := dmAxiom.UserId;


  CalcAmount;
end;

procedure TfrmFeeBatch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryScaleCost.Close;
  //if qryFeeTmp.UpdatesPending then
    //qryFeeTmp.CancelUpdates;
  btnSave.Click;
  qryFeeTmp.Close;
  Self.Release;
end;

procedure TfrmFeeBatch.qryFeeTmpRATEChange(Sender: TField);
begin
  CalcAmount;
end;

procedure TfrmFeeBatch.qryFeeTmpUNITSChange(Sender: TField);
begin
  CalcAmount;
end;


procedure TfrmFeeBatch.popGridDateStampClick(Sender: TObject);
begin
  if not qryFeeTmp.Modified then
    qryFeeTmp.Edit;
  qryFeeTmp.FieldByName('CREATED').AsDateTime := dtpDate.Date;
end;

procedure TfrmFeeBatch.FormCreate(Sender: TObject);
begin
  qFeeEarners.Open();
  FileID := '';
  FTotalAmount := 0;
  FTotalUnits := 0;

  with qryTmp do
  begin
    Close;
    SQL.Text := 'SELECT CODE FROM TAXTYPE ORDER BY CODE';
    Open;
    while not EOF do
    begin
      dbgrFeeTmp.Columns[colTAXCODE].PickList.Add(FieldByName('CODE').AsString);

      Next;
    end;
    Close;
  end;

  DefaultTax := get_default_gst('Fee');

  if DefaultTax = '' then
    DefaultTax := dmAxiom.DefaultTax;
  dtpDate.DateTime := Now;
  dtpDate.MaxDate := Date;

  //if not dmAxiom.runningide then
    //btnTimer.Visible := false;

  SettingLoadBoolean('FEEBATCH','NOEXIT');
  iMinsPerUnit := SystemInteger('TIME_UNITS');
  qryFeeTmpAMOUNT.OnChange := qryFeeTmpAMOUNTChange;
  qryFeeTmpRATE.OnChange := qryFeeTmpRATEChange;
  qryFeeTmpUNITS.OnChange := qryFeeTmpUNITSChange;
end;


procedure TfrmFeeBatch.qryFeeTmpAfterScroll(DataSet: TDataSet);
begin
  //sbarMatter.Panels[0].Text := MatterString(qryFeeTmp.FieldByName('REFNO').AsString, 'MATLOCATE');
end;

procedure TfrmFeeBatch.tbDescExit(Sender: TObject);
begin
  QuickCode(Sender);
end;

procedure TfrmFeeBatch.tbDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    QuickCode(Sender);
end;

procedure TfrmFeeBatch.qryFeeTmpAMOUNTChange(Sender: TField);
begin
  qryFeeTmpAMOUNT.OnChange := nil;
  CalcTax;
  qryFeeTmpAMOUNT.OnChange := qryFeeTmpAMOUNTChange;
end;

procedure TfrmFeeBatch.btnPrintClick(Sender: TObject);
begin
   with TfrmFeeBatchPrint.Create(Self) do
      DisplayReport(qryFeeTmp, dtpDate.Date, String(cbAuthor.KeyValue));
end;

procedure TfrmFeeBatch.tbtnMakeFeeClick(Sender: TObject);
begin
end;

{
var
  frmNewFee : TfrmFeeNew;
  sUnits : string;
  cAmount : currency;
begin
  // Turn of the clock
  tmrAutoCost.Enabled := False;
  // Convert Timer to Editable Fee
  if iMinsPerUnit = 0 then
    sUnits := CurrToStr(rTimers[lvTimers.Selected.Index].cRate)
  else
    sUnits := lblUnits.Caption;
  if iMinsPerUnit > 0 then
    cAmount := (((rTimers[lvTimers.Selected.Index].iElapsed div 60) div iMinsPerUnit) + 1) * rTimers[lvTimers.Selected.Index].cRate / 60 * iMinsPerUnit
  else
    cAmount := rTimers[lvTimers.Selected.Index].iElapsed * rTimers[lvTimers.Selected.Index].cRate / 3600;

  frmNewFee := TfrmFeeNew.Create(Self);
  frmNewFee.Show;
  frmNewFee.CreateFee(lblMatter.Caption, lblAuthor.Caption, mmoDesc.Text, sUnits, (rTimers[lvTimers.Selected.Index].iElapsed div 60),  rTimers[lvTimers.Selected.Index].cRate, cAmount, cbFeeType.Text);

  DecrPriorities(lvTimers.Selected.Index);
  DisplayDetails;
end;
}

procedure TfrmFeeBatch.tbtnResumeClick(Sender: TObject);
begin
end;
{
var
  iCtr : integer;
begin
  if lvTimers.Selected.Index <> iActiveTimer then
  begin
    rTimers[lvTimers.Selected.Index].bPaused := False;
    IncrPriorities(lvTimers.Selected.Index);
    for iCtr := 0 to lvTimers.Items.Count - 1 do
      if iCtr <> iActiveTimer then
        lvTimers.Items[iCtr].ImageIndex := 0;
    lvTimers.Items[iActiveTimer].ImageIndex := 1;
    DisplayDetails;
    SetPause;
    tmrAutocost.Enabled := True;
  end
  else
  begin
    tmrAutocost.Enabled := False;
    rTimers[iActiveTimer].bPaused := True;
    lvTimers.Items[iActiveTimer].ImageIndex := 0;
//    btnSwatch.Glyph := ilstTimers[3]. ;
    iActiveTimer := -1;
    SetResume;
  end;
end;
}

procedure TfrmFeeBatch.btnTimerClick(Sender: TObject);
begin
  if qryFeeTmp.Active then
    begin
      if not qryFeeTmp.FieldbyName('REFNO').IsNull then
        begin
          tmrAutoCost.Enabled := not tmrAutocost.Enabled;
          if tmrAutoCost.Enabled then
            begin
              //ilstTimers.GetBitmap(1,btnTimer.Glyph);
              btnTimer.Caption := 'End Timer';
            end
          else
            begin
              //ilstTimers.GetBitmap(0,btnTimer.Glyph);
              btnTimer.Caption := 'Start Timer';
            end;
        end
      else
        MessageDlg('You must select a current matter to start/stop the timer', mtError, [mbOK], 0);
    end;
end;


procedure TfrmFeeBatch.tmrAutocostTimer(Sender: TObject);
var
  iTmp, iUnits : integer;
{
  Modified 25.10.2002 GG
  Removed compiler hint
  cAmount : currency;
}
begin
{  if iActiveTimer >= 0 then
  begin
    rTimers[iActiveTimer].iElapsed := rTimers[iActiveTimer].iElapsed + 1;
    ShowTime;
    CalcStatusBar;
  end; }
  if qryFeeTmp.Active then
    begin
      qryFeeTmp.Edit;
      if qryFeeTmp.FieldbyName('ELAPSED').IsNull then
        qryFeeTmp.FieldbyName('ELAPSED').AsInteger := 0;
      qryFeeTmp.FieldbyName('ELAPSED').AsInteger := qryFeeTmp.FieldbyName('ELAPSED').AsInteger + 1;
    end;

    lblElapsed.Caption := '';
    iTmp := qryFeeTmp.FieldbyName('ELAPSED').AsInteger div 60;
    if iTmp > 0 then
      lblElapsed.Caption := IntToStr(iTmp) + ' mins, ';
    iTmp := qryFeeTmp.FieldbyName('ELAPSED').AsInteger mod 60;
    lblElapsed.Caption := lblElapsed.Caption + IntToStr(iTmp) + ' secs';
    if lblMatter.Caption = '' then
      lblMatter.Caption := MatterString(qryFeeTmp.FieldByName('REFNO').AsString, 'MATLOCATE');
    // Calc the amount
    //nlAmount.AsCurrency := CalcAmount(rTimers[iIdx].iElapsed, rTimers[iIdx].cRate, rTimers[iIdx].sType);

    if not qryFeeTmp.FieldbyName('UNITS').IsNull then
      iUnits := qryFeeTmp.FieldbyName('UNITS').AsInteger
    else
      iUnits := 1;

    if (iMinsPerUnit > 0) then
      iUnits := ((qryFeeTmp.FieldbyName('ELAPSED').AsInteger div 60 div iMinsPerUnit) +1);

  if qryFeeTmp.FieldbyName('UNITS').AsInteger <> iUnits then
    begin
      qryFeeTmp.Edit;
      qryFeeTmp.FieldbyName('UNITS').AsInteger := iUnits;
      btnSave.Click;
    end;
  CalcStatusBar

end;

procedure TfrmFeeBatch.CalcStatusbar;
var
  iTotalElapsed : integer;
  iCtr : integer;
  iHours, iMins, iSecs, iUnits : integer;
  sElapsed : string;
  cAmount : currency;
begin
  iUnits := 0;
  cAmount := 0;
  iTotalElapsed := 0;
  if (qryFeeTmp.RecordCount > 0) then
    begin
      for iCtr := 0 to (qryFeeTmp.RecordCount - 1) do
      begin
        iTotalElapsed := iTotalElapsed + qryFeeTmp.FieldbyName('ELAPSED').AsInteger;
        //if (rTimers[iCtr].sType = 'N') and (iMinsPerUnit > 0) then
        if (iMinsPerUnit > 0) then
          iUnits := iUnits + ((qryFeeTmp.FieldbyName('ELAPSED').AsInteger div 60 div iMinsPerUnit) + 1);
        cAmount := cAmount + CalcAmount2(qryFeeTmp.FieldbyName('ELAPSED').AsInteger, qryFeeTmp.FieldbyName('RATE').AsInteger, '');
      end;
      sElapsed := 'Total Time = ';
      // Do the minutes
      iMins := iTotalElapsed div 60;
      if iMins > 0 then
        if iMins > 59 then
        begin
          iHours := iMins div 60;
          iMins := iMins mod 60;
          if iHours = 1 then
            sElapsed := '1 hour, '
          else
            sElapsed := IntToStr(iHours) + ' hours, '
        end;
      if iMins = 1 then
        sElapsed := sElapsed + '1 min, '
      else
        sElapsed := sElapsed + IntToStr(iMins) + ' mins, ';
      // and now the seconds
      iSecs := iTotalElapsed mod 60;
      if iSecs = 1 then
        sElapsed := sElapsed + '1 sec'
      else
        sElapsed := sElapsed + IntToStr(iSecs) + ' secs';
      sbarStatus.Panels[SBARTIME].Text := sElapsed;
      if iUnits > 0 then
        sbarStatus.Panels[SBARBILLUNITS].Text := IntToStr(iUnits) + ' Billable Units'
      else
        sbarStatus.Panels[SBARBILLUNITS].Text := '';
      sbarStatus.Panels[SBARAMOUNT].Text := Format('%m', [cAmount]);
  end;
end;

function TfrmFeeBatch.CalcAmount2(iSecs : integer; cRate : currency; sType : string) : currency;
begin
  //if rTimers[iActiveTimer].bBillable then
  begin
    if iMinsPerUnit > 0 then
      CalcAmount2 := (((iSecs div 60) div iMinsPerUnit) + 1) * cRate / 60 * iMinsPerUnit
    else
      CalcAmount2 := iSecs * cRate / 3600;
  end
  //else  // Non-billable
    //CalcAmount := 0.0;
end;


procedure TfrmFeeBatch.FormDestroy(Sender: TObject);
begin
  qFeeEarners.Close();
  if chkNoExit.Checked then
    SettingSave('FEEBATCH','NOEXIT',1)
  else
    SettingSave('FEEBATCH','NOEXIT',0);
end;

procedure TfrmFeeBatch.btnSaveClick(Sender: TObject);
begin
  if qryFeeTmp.Active then
    begin
      if qryFeeTmp.State in [dsInsert] then
        begin
          //showmessage('POST');
          qryFeeTmp.Post;
        end;
      if qryFeeTmp.UpdatesPending then
      //if not ((qryFeeTmp.RecordCount = 0) and (iRecords = 0)) then
        begin
          //qryFeeTmp.Close;
          //qryFeeTmp.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
          //qryFeeTmp.Open;
        try
          dmAxiom.uniInsight.StartTransaction;
          qryFeeTmp.ApplyUpdates;
          dmAxiom.uniInsight.Commit;
        except
          dmAxiom.uniInsight.Rollback;
        end;
        end;
      //if not ((qryFeeTmp.RecordCount = 0) and (iRecords = 0)) then
        {qryFeeTmp.ApplyUpdates;
        qryFeeTmp.Close;
        qryFeeTmp.ParambyName('EMPCODE').AsString := dmAxiom.UserId;
        qryFeeTmp.Open;}
    end;
end;

procedure TfrmFeeBatch.qryFeeTmpNewRecord(DataSet: TDataSet);
begin
  qryFeeTmp.Edit;
  qryFeeTmp.FieldbyName('LONGDESC').AsString := dmAxiom.GetSeqNumber('SQNC_FEETMP');
end;

procedure TfrmFeeBatch.LookupMatter1Click(Sender: TObject);
begin
    lblMatter.Caption := '';
    if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
    if frmMatterSearch.ShowModal = mrOk then
    begin
      if not qryFeeTmp.Modified then
        qryFeeTmp.Edit;
      qryFeeTmp.FieldByName('REFNO').AsString := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
    end;
end;

procedure TfrmFeeBatch.Reason1Click(Sender: TObject);
begin
 begin
    with TfrmScaleCosts.Create(Self) do
    begin
      if ShowModal = mrOk then
      begin
        if not qryFeeTmp.Modified then
          qryFeeTmp.Edit;
        qryFeeTmp.FieldByName('REASON').AsString := qryScaleCosts.FieldByName('DESCR').AsString;
        if qryScaleCosts.FieldByName('AMOUNT').AsCurrency > 0 then
        begin
          qryFeeTmp.FieldByName('AMOUNT').AsCurrency := qryScaleCosts.FieldByName('AMOUNT').AsCurrency;
          qryFeeTmp.FieldByName('RATE').AsCurrency := 0.0;
          UpdateTotals;
        end
        else
        begin
          qryFeeTmp.FieldByName('RATE').AsCurrency := qryScaleCosts.FieldByName('RATE').AsCurrency;
          CalcAmount;
        end;
      end;
    end;
    end;
end;

procedure TfrmFeeBatch.QuickCode1Click(Sender: TObject);
begin
with TfrmQuickCodeSearch.Create(Self) do
begin
    ShowModal;
    qryFeeTmp.FieldByName('REASON').AsString := qryFeeTmp.FieldByName('REASON').AsString + QuickCode;
    Free;
end;
end;

end.


