unit InvPost;
                                                                                    
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ExtCtrls, Mask, DBCtrls, Menus,
  ComCtrls, Buttons, ImgList, MemDS,  OracleUniProvider, Uni, DateTimeAccount,
  DBAccess, VirtualTable, Math, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxLookAndFeelPainters, cxButtons,
  cxCalendar, cxCurrencyEdit,DateUtils, cxCheckBox, cxMemo, cxMaskEdit,
  cxDropDownEdit, EnforceCustomDateEdit, cxLookAndFeels, dxCore, cxNavigator,
  cxDateUtils, cxDBLookupComboBox, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBarBuiltInMenu, dxDPIAwareUtils, dxDateRanges, System.ImageList, cxSpinEdit;

const
  COL_AUTHOR = 0;
  COL_NAME   = 1;
  COL_AMOUNT = 4;
  COL_TAX = 6;

type
  EEmployeeNotFound = Exception;
  
  TfrmInvPost = class(TForm)
    qryMatter: TUniQuery;
    qryBill: TUniQuery;
    ilstItems: TImageList;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    dsDistFees: TUniDataSource;
    qryFees: TUniQuery;
    qryEmps: TUniQuery;
    qryDistFees: TUniQuery;
    qrySetup: TUniQuery;
    qryTotalFees: TUniQuery;
    Label8: TLabel;
    Label4: TLabel;
    popDistFees: TPopupMenu;
    popDistFeesMake100: TMenuItem;
    popDistFeesEqual: TMenuItem;
    popDistFeesRevert: TMenuItem;
    popDistFeesAll: TMenuItem;
    Label11: TLabel;
    qrySund: TUniQuery;
    Label12: TLabel;
    dtpExpectedPayment: TDateTimePicker;
    popDistFeesProrata: TMenuItem;
    qryTmp: TUniQuery;
    Label13: TLabel;
    chkCompleted: TCheckBox;
    Label6: TLabel;
    Label14: TLabel;
    qryCheqReq: TUniQuery;
    Label15: TLabel;
    StatusBar1: TStatusBar;
    Label16: TLabel;
    lblFees: TcxLabel;
    lblTotal: TcxLabel;
    lblFeesTax: TcxLabel;
    lblDisb: TcxLabel;
    lblAntd: TcxLabel;
    lblUpCred: TcxLabel;
    lblSund: TcxLabel;
    lblTax: TcxLabel;
    lblTotalAlloc: TcxLabel;
    lblTotalAllocTax: TcxLabel;
    lblPercentAlloc: TcxLabel;
    lblPercentAllocTax: TcxLabel;
    lblFeesDiff: TcxLabel;
    lblFeesTaxDiff: TcxLabel;
    tbRefno: TcxTextEdit;
    dbgrFeeDist: TcxGrid;
    dbgrFeeDistLevel1: TcxGridLevel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    btnPost: TcxButton;
    qrySubBills: TUniQuery;
    qryUnAllocDisb: TUniQuery;
    qryAllocDisb: TUniQuery;
    qryCalcDebtors: TUniQuery;
    chkprintbill: TcxCheckBox;
    tvFeeDist: TcxGridDBTableView;
    tvFeeDistAUTHOR: TcxGridDBColumn;
    tvFeeDistNAME: TcxGridDBColumn;
    tvFeeDistFEE_AMT: TcxGridDBColumn;
    tvFeeDistFEE_PC: TcxGridDBColumn;
    tvFeeDistALLOC_AMT: TcxGridDBColumn;
    tvFeeDistALLOC_PC: TcxGridDBColumn;
    tvFeeDistALLOC_TAX: TcxGridDBColumn;
    qryFeeDistInsert: TUniQuery;
    qryFeesDiscDist: TUniQuery;
    btnCancel: TcxButton;
    qryDistFeesNMEMO: TLargeintField;
    qryDistFeesAUTHOR: TStringField;
    qryDistFeesNAME: TStringField;
    qryDistFeesFEE_AMT: TFloatField;
    qryDistFeesFEE_PC: TFloatField;
    qryDistFeesALLOC_AMT: TFloatField;
    qryDistFeesALLOC_PC: TFloatField;
    qryDistFeesFEE_TAX: TFloatField;
    qryDistFeesALLOC_TAX: TFloatField;
    qryDistFeesNMATTER: TLargeintField;
    qryDistFeesSYSTEM_DATE: TDateTimeField;
    qryDistFeesDEPT: TStringField;
    qryDistFeesUNITS: TLargeintField;
    qryDistFeesCREATED_DATE: TDateTimeField;
    qryDistFeesMATTER_DEPT: TStringField;
    qryDistFeesNOTIONAL_COST: TFloatField;
    qryDistFeesFILEID: TStringField;
    qryDistFeesCREATED: TDateTimeField;
    qryDistFeesRECEIPT_AMT: TFloatField;
    qryDistFeesWRITEOFF_AMT: TFloatField;
    qryDistFeesIA_AMT: TFloatField;
    qryDistFeesROWID: TStringField;
    tvFeeDistFEEDIST_ID: TcxGridDBColumn;
    dsEmps: TUniDataSource;
    dtpDispatched: TEnforceCustomDateEdit;
    qryFeeInsert: TUniQuery;
    procedure btnPostClick(Sender: TObject);
    procedure dbgrFeeDistColEnter(Sender: TObject);
    procedure qryDistFeesALLOC_AMTChange(Sender: TField);
    procedure qryDistFeesAfterInsert(DataSet: TDataSet);
    procedure dbgrFeeDistColExit(Sender: TObject);
    procedure popDistFeesRevertClick(Sender: TObject);
    procedure popDistFeesMake100Click(Sender: TObject);
    procedure popDistFeesEqualClick(Sender: TObject);
    procedure popDistFeesAllClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure popDistFeesProrataClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbRefnoDblClick(Sender: TObject);
    procedure cxGrid1DBTableView1AUTHORPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dtpDispatchedPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EnforceCustomDateEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dtpDispatchedPropertiesChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tvFeeDistALLOC_AMTPropertiesEditValueChanged(Sender: TObject);
    procedure tvFeeDistALLOC_AMTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure qryDistFeesBeforeInsert(DataSet: TDataSet);
    procedure tvFeeDistNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure tvFeeDistAUTHORPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    Interim: TDateTime;
    bPosted: boolean;
    AMemo: integer;
    FRefreshBill: boolean;
    FClickPost: boolean;
    bFromNavigator: boolean;

    procedure CalcTotals;
    procedure SetupDistFees;
    procedure ShowTotals;

    {function roundCurrency(iIn : Currency) : Currency;
    procedure postSubBills(iNmemo : integer);    }

    property ClickPost: boolean read FClickPost write FClickPost;
  public
    { Public declarations }
    property RefreshBillGrid: boolean read FRefreshBill write FRefreshBill;
    procedure DisplayInvoice(iMemo: integer; bShow: boolean = True; bClickPost: boolean = False; dtDispatchedDate: TDateTime = NULLDate);

  end;

var
   frmInvPost: TfrmInvPost;
   bCalcOk, bRecalcTax: boolean;
   cTotalFees,cTotalFeesTax, cTotalAlloc, cTotalAllocTax : Currency;
   iDistFeeRecCount : integer;
   sMemoDesc : string;
   ATotal_Units: integer;

   implementation

uses
  {
    Modified 2.12.2002 GG
    
    Math routine removed because of a bug; replaced by function with same name in miscfunc
  }
  MiscFunc, AxiomData, Variants, {Math, }Matters,glComponentUtil,DebtorTaskNew,
  Bills, citfunc;

{$R *.DFM}

procedure TfrmInvPost.DisplayInvoice(iMemo : integer; bShow: boolean; bClickPost: boolean; dtDispatchedDate: TDateTime );
var
   ABILL_DUE_DAY: integer;
   AYear,Amonth,ADay, AHour, ASecond, AMillisecond, AMinute: word;
begin
   cTotalAlloc := 0;
   cTotalAllocTax := 0;
   AMemo := iMemo;
//   FRefreshBill := not bClickPost;
   ClickPost := bClickPost;
   dtpDispatched.Properties.OnChange := nil;
   qryBill.Close;
   qryBill.SQL.Clear;
   qryBill.SQL.Add('SELECT M.*, M.ROWID FROM NMEMO M WHERE M.NMEMO = ' + IntToStr(iMemo));
   qryBill.Open;

   if not qryBill.IsEmpty then
   begin
      qryTmp.Close;
      qryTmp.SQL.Text := 'SELECT SUM(UNITS) AS TOTAL_UNITS FROM FEE WHERE FEE.NMEMO = ' + IntToStr(qryBill.FieldByName('NMEMO').AsInteger);
      qryTmp.Open;
      ATotal_Units := qryTmp.FieldByName('TOTAL_UNITS').AsInteger;
      qryTmp.Close;

     // 28/09/2004 TH - Pre-Assign Bill Number updates
     if PreassignBill() then
       tbRefno.Text := qryBill.FieldByName('DRAFT_BILL_NO').AsString
     else
     begin
       if qryBill.FieldByName('REFNO').AsString = 'DRAFT' then
          tbRefno.Text := NextRefno
       else
          tbRefno.Text := qryBill.FieldByName('REFNO').AsString;
     end;

     lblFees.Caption := Format('%.2n', [qryBill.FieldByName('FEES').AsCurrency]);
     lblFeesTax.Caption := Format('%.2n', [qryBill.FieldByName('FEESTAX').AsCurrency]);
     lblDisb.Caption := Format('%.2n', [qryBill.FieldByName('DISB').AsCurrency]);
     lblAntd.Caption := Format('%.2n', [qryBill.FieldByName('ANTD').AsCurrency]);
     lblUpCred.Caption := Format('%.2n', [qryBill.FieldByName('UPCRED').AsCurrency]);
     lblSund.Caption := Format('%.2n', [qryBill.FieldByName('SUND').AsCurrency]);
     lblTax.Caption := Format('%.2n', [qryBill.FieldByName('TAX').AsCurrency]);
     lblTotal.Caption := Format('%.2n', [qryBill.FieldByName('FEES').AsCurrency +
                                         qryBill.FieldByName('DISB').AsCurrency +
                                         qryBill.FieldByName('UPCRED').AsCurrency +
                                         qryBill.FieldByName('ANTD').AsCurrency +
                                         qryBill.FieldByName('SUND').AsCurrency +
                                         qryBill.FieldByName('TAX').AsCurrency +
                                         qryBill.FieldByName('DISCOUNT').AsCurrency]);
     qryDistFees.Close;
     qryDistFees.ParamByName('P_Invoice').AsInteger := iMemo;
     qrySetup.Close;
     qrySetup.ParamByName('P_Matter').AsInteger := qryBill.FieldByName('NMATTER').AsInteger;
     qrySetup.ParamByName('P_Invoice').AsInteger := iMemo;
     qryTotalFees.Close;
     qryTotalFees.ParamByName('P_Matter').AsInteger := qryBill.FieldByName('NMATTER').AsInteger;
     qryTotalFees.ParamByName('P_Invoice').AsInteger := iMemo;
     qryTotalFees.Open;
     qryMatter.Close;
     qryMatter.ParamByName('FILEID').AsString := qryBill.FieldByName('FILEID').AsString;
     qryMatter.Open;

     SetupDistFees;

     if Self.qryBill.FieldByName('INTERIM').IsNull then
       Interim := Trunc(Date)
     else
     begin
       Interim := qryBill.FieldByName('INTERIM').AsDateTime;
//       dtpDispatched.Date := Interim;
     end;

     if dtDispatchedDate <> NULLDate then
      dtpDispatched.Date := dtDispatchedDate
     else
        if SystemString('DFLT_BILL_DISPATCHED_DATE') <> '' then
        begin
           dtpDispatched.Date := SystemDate('DFLT_BILL_DISPATCHED_DATE');
        end;

     if qryBill.FieldByName('EXPPAYMENT').IsNull then
     begin
         ABILL_DUE_DAY := TableInteger('MATTER','NMATTER', qryBill.FieldByName('NMATTER').AsInteger,'BILL_DUE_DAY');
         if (ABILL_DUE_DAY > 0) then
         begin
            DecodeDateTime(dtpDispatched.Date,AYear,Amonth,ADay, AHour, AMinute, ASecond, AMillisecond);
            if (AMonth + 1) = 13 then
            begin
               AMonth := 1;
               AYear := AYear + 1;
            end
            else
               AMonth := AMonth + 1;

            try
               dtpExpectedPayment.DateTime := Trunc(EncodeDateTime(AYear,AMonth,ABILL_DUE_DAY, AHour, AMinute, ASecond, AMillisecond));
            except
            //
            end;
         end
         else
            dtpExpectedPayment.DateTime := Trunc(dtpDispatched.Date) + SystemInteger('DR_PAYMENT_DAYS');
     end
     else
     begin
        if (qryBill.FieldByName('EXPPAYMENT').AsDateTime < Now) then
        begin
           ABILL_DUE_DAY := TableInteger('MATTER','NMATTER', qryBill.FieldByName('NMATTER').AsInteger,'BILL_DUE_DAY');
           if (ABILL_DUE_DAY > 0) then
           begin
              DecodeDateTime(dtpDispatched.Date,AYear,Amonth,ADay, AHour, AMinute, ASecond, AMillisecond);
              if (AMonth + 1) = 13 then
              begin
                 AMonth := 1;
                 AYear := AYear + 1;
              end
              else
                 AMonth := AMonth + 1;

              try
                 dtpExpectedPayment.DateTime := Trunc(EncodeDateTime(AYear,AMonth,ABILL_DUE_DAY, AHour, AMinute, ASecond, AMillisecond));
              except
               //
              end;
           end
           else
              dtpExpectedPayment.DateTime := Trunc(dtpDispatched.Date) + SystemInteger('DR_PAYMENT_DAYS');
        end
        else
           dtpExpectedPayment.DateTime := Self.qryBill.FieldByName('EXPPAYMENT').AsDateTime;
//         dtpExpectedPayment.MinDate := dtpDispatched.MinDate;
     end;

     dtpExpectedPayment.MinDate := dtpDispatched.Properties.MinDate; //  dtpDispatched.MinDate;

     dtpDispatched.Properties.OnChange := dtpDispatchedPropertiesChange;

     if bShow then
     begin
        if (SystemString('BILL_POST_MODAL') = 'Y') and (not bClickPost)  then
           ShowModal
        else
           Show;
     end;
   end
   else
      Close;
end;

procedure TfrmInvPost.SetupDistFees;
begin
   if cTotalFees = 0 then
   begin
 //    qryTmp.Close;
 //    qryTmp.SQL.Text := 'SELECT SUM(AMOUNT) AS TOTAL_FEES,SUM(TAX) AS TOTAL_FEESTAX FROM FEE WHERE FEE.NMATTER = ' + IntToStr(qryBill.FieldByName('NMATTER').AsInteger) + ' AND FEE.NMEMO = ' + IntToStr(qryBill.FieldByName('NMEMO').AsInteger);
 //    qryTmp.Open;
      cTotalFees      := Self.qryBill.FieldByName('FEES').AsCurrency;    //qryTmp.FieldByName('TOTAL_FEES').AsCurrency;
      cTotalFeesTax   := Self.qryBill.FieldByName('FEESTAX').AsCurrency; //qryTmp.FieldByName('TOTAL_FEESTAX').AsCurrency;
   end;

      // delete fee dist in case BILL POSTING failed previously and clean up did not work
   qryTmp.Close;
   qryTmp.SQL.Text := 'DELETE FROM FEEDIST '+
                      ' WHERE NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger) + ' AND NMATTER = ' + qryMatter.FieldByName('NMATTER').AsString;
   qryTmp.ExecSQL;
   qryTmp.Close;

   if cTotalFees > 0 then
   begin
      qryDistFees.Close;
      qryDistFees.Open;
      qrySetup.Close;
      qrySetup.Open;
      qrySetup.First;
      bCalcOk := False;
      iDistFeeRecCount := 0;

      if qrySetup.IsEmpty then
      begin
         {RB if there are no fees then the FEE_AMT should be 0}
         iDistFeeRecCount := 1;
         with qryDistFees do
         begin
            Insert;
            FieldByName('NMATTER').AsInteger          := Self.qryBill.FieldByName('NMATTER').AsInteger;
            FieldByName('NMEMO').AsInteger            := Self.qryBill.FieldByName('NMEMO').AsInteger;
            FieldByName('AUTHOR').AsString            := qryMatter.FieldByName('AUTHOR').AsString;
            // this is dodgy code but it works for the moment.
            //AES 28-March-2013
            if State = dsBrowse then Edit;
            FieldByName('ALLOC_AMT').AsCurrency       := 0;
            if State = dsBrowse then Edit;
            FieldByName('ALLOC_PC').AsFloat           := 100;
            if State = dsBrowse then Edit;
            FieldByName('ALLOC_TAX').AsCurrency       := 0;
            FieldByName('FEE_AMT').AsCurrency         := 0;
            FieldByName('FEE_PC').AsFloat             := 100;
            FieldByName('FEE_TAX').AsCurrency         := 0;
            FieldByName('CREATED_DATE').AsDateTime    := dtpDispatched.Date;
            FieldByName('UNITS').AsInteger            := qrySetup.FieldByName('SUMUNITS').AsInteger;
            FieldByName('DEPT').AsString              := TableString('EMPLOYEE','CODE',qryMatter.FieldByName('AUTHOR').AsString,'DEPT');
            FieldByName('MATTER_DEPT').AsString       := TableString('MATTER','NMATTER',qryMatter.FieldByName('NMATTER').AsInteger,'DEPT');
            FieldByName('NAME').AsString              := TableString('EMPLOYEE', 'CODE', qryMatter.FieldByName('AUTHOR').AsString, 'NAME');
            Post;
         end;
      end
      else
      begin
         while not qrySetup.EOF do
         begin
            iDistFeeRecCount := iDistFeeRecCount + 1;
            qryDistFees.Insert;
            qryDistFees.FieldByName('NMEMO').AsInteger    := Self.qryBill.FieldByName('NMEMO').AsInteger;
            qryDistFees.FieldByName('AUTHOR').AsString    := qrySetup.FieldByName('AUTHOR').AsString;
            qryDistFees.FieldByName('NAME').AsString      := qrySetup.FieldByName('NAME').AsString;
            qryDistFees.FieldByName('NMATTER').AsInteger  := Self.qryBill.FieldByName('NMATTER').AsInteger;
            qryDistFees.FieldByName('DEPT').AsString      := TableString('EMPLOYEE','CODE',qryMatter.FieldByName('AUTHOR').AsString,'DEPT');
            qryDistFees.FieldByName('CREATED_DATE').AsDateTime  := dtpDispatched.Date;
            qryDistFees.FieldByName('MATTER_DEPT').AsString     := TableString('MATTER','NMATTER',qryMatter.FieldByName('NMATTER').AsInteger,'DEPT');


            if qryTotalFees.FieldByName('SUMAMOUNT').AsCurrency <> 0 then
               qryDistFees.FieldByName('FEE_PC').AsFloat  := (qrySetup.FieldByName('SUMAMOUNT').AsCurrency / qryTotalFees.FieldByName('SUMAMOUNT').AsCurrency) * 100
            else
               qryDistFees.FieldByName('FEE_PC').AsFloat  := 100;

            qryDistFees.FieldByName('FEE_AMT').AsCurrency := qrySetup.FieldByName('SUMAMOUNT').AsCurrency;
            qryDistFees.FieldByName('FEE_TAX').AsCurrency := qrySetup.FieldByName('SUMTAX').AsCurrency;

            // don't re-calculate the tax component here - just use the amount from
            // the original distribution.
            // this seems to be wrong tax needs to be calculated here just in case
            // users change the allocation.

            bRecalcTax:= False;

            qryDistFees.FieldByName('ALLOC_AMT').AsCurrency:=
                  cTotalFees * qryDistFees.FieldByName('FEE_PC').AsFloat / 100;
            qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:=
                  cTotalFeesTax * qryDistFees.FieldByName('FEE_PC').AsFloat / 100;

            qryDistFees.FieldByName('ALLOC_PC').AsFloat  := qryDistFees.FieldByName('FEE_PC').AsFloat;

            qryDistFees.FieldByName('UNITS').AsInteger     :=  qrySetup.FieldByName('SUMUNITS').AsInteger;
//                  Round(ATotal_Units * qryDistFees.FieldByName('FEE_PC').AsFloat/100);

        {    qryDistFeesALLOC_TAX.AsCurrency:=
              qryDistFees.FieldByName('FEE_TAX').AsCurrency;  }

            // now re-calculate tax when changes occur
            bRecalcTax:= True;
  {
       Modified 8.01.2003 GG

       Allocated Tax amounts are now computed in the onchange event of the
       qryDistFeesALLOC_AMT persistent field.

       They do not need to be calculated here.

           dTaxRatio:= qryDistFeesFEE_TAX.AsCurrency / qryDistFeesFEE_AMT.AsCurrency;
           qryDistFeesALLOC_TAX.AsCurrency := FloatToCurr(qryDistFeesALLOC_AMT.AsCurrency * dTaxRatio);

  /   /      qryDistFees.FieldByName('ALLOC_TAX').AsCurrency := cTotalFeesTax * qryDistFees.FieldByName('FEE_PC').AsFloat / 100;
  /   /      qryDistFees.FieldByName('ALLOC_TAX').AsFloat := cTotalFeesTax * qryDistFees.FieldByName('FEE_PC').AsFloat / 100;
  }

           //      if cTotalFees <> qryBill.FieldByName('FEES').AsCurrency then
 //   /        qryDistFees.FieldByName('ALLOC_AMT').AsCurrency := qryBill.FieldByName('FEES').AsCurrency * qryDistFees.FieldByName('FEE_PC').AsCurrency / 100
 //   /      else
 //   /        qryDistFees.FieldByName('ALLOC_AMT').AsCurrency := qrySetup.FieldByName('SUMAMOUNT').AsCurrency;

 //   /      if cTotalFeesTax <> qryBill.FieldByName('FEESTAX').AsCurrency then
 //   /        qryDistFees.FieldByName('ALLOC_TAX').AsCurrency := qryBill.FieldByName('FEESTAX').AsCurrency * qryDistFees.FieldByName('FEE_PC').AsCurrency / 100
 //   /      else
 //   /        qryDistFees.FieldByName('ALLOC_TAX').AsCurrency := qrySetup.FieldByName('SUMTAX').AsCurrency;

            qryDistFees.Post;
            qrySetup.Next;
         end;
      end;
//      qryDistFees.Post;
      CalcTotals;

      if cTotalAlloc <> cTotalFees then
      begin
        if not qryDistFees.Locate('AUTHOR', Self.qryBill.FieldByName('AUTHOR').AsString, []) then
          qryDistFees.First;
        popDistFeesMake100Click(Self);
      end;
      qryDistFees.close;
      qryDistFees.open;
   end
   else
      CalcTotals;
   bCalcOk := True;
end;


procedure TfrmInvPost.btnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmInvPost.btnPostClick(Sender: TObject);
var
  bOKtoPost: Boolean;
  sWipMainDr, sWipMainCr, sWipSubDr, sWipSubCr: string;
  sFeeMainCr, sFeeSubCr : string;
  sDebtMainDr, sDebtSubDr, sTaxCode: string;
  sLedger, sBank : string;
  bPostingFailed,
  bTaxDiff: boolean;
  cAdjust, cDiff,cTaxDiff,  cDebtors,
  cFeesTax,
  cDisbTax,
  cUpCredTax,
  cAntdTax,
  cSundTax,
  cDiscount,
  cDiscountTax,
  cDiscountOrig,
  cDiscountTaxOrig,
  cAllocDisbAmount,
  FeeAllocTaxDiff,
  LTaxCalc,
  cAllocDisbTax,
  cAllocDisbAmountDiff,
  cAllocDisbTaxDiff: Currency;
  dAmount, LAmount: double;
  iInvoice,
  iNMatter: integer;
  msg,
  lsBillFeeTaxDR,
  lsBillFeeTaxSubDR,
  lsBillSundTaxDR,
  lsBillSundTaxSubDR,
  lsBillDisbTaxDR,
  lsBillDisbTaxSubDR,
  lsBillAntdTaxDR,
  lsBillAntdTaxSubDR,
  lsBillUpCredTaxDR,
  lsBillUpCredTaxSubDR,
  lsChartSuffix,
  lsBillFeeDiscTaxDR,
  lsBillDisbTaxAdjDR,
  lsBillDisbTaxAdjSubDR,
  sLedgerKey,
  sLedgerKeyDr: string;

  glComponentSetup : TglComponentSetup;

  frmDebtorTaskNew : TfrmDebtorTasknew;
  iModResult : integer;
  ReqDate: TDateTime;
  sBillNoTest: integer;
begin
 // get the gl component setup
   glComponentSetup := dmAxiom.getGlComponents;

{
  Added 25.10.2002 GG
  Show message if transaction is being posted into a locked period
}
   bOKtoPost:= (PostIntoLockedPeriod(dtpDispatched.Date) in [prNotLocked, prOKToProceed]);

   if bOKtoPost then
   begin
   // zero the ledger counter
      cFeesTax := 0;
      cSundTax := 0;
      cTaxDiff := 0;
      ZeroLedgerTotal;
      FeeAllocTaxDiff := 0.00;
      cAllocDisbAmount := 0;
      cAllocDisbAmountDiff := 0;
      cAllocDisbTax := 0;
      cAllocDisbTaxDiff := 0;

    // Make sure that this number has not been entered
      if IsRefnoExisting(tbRefno.Text, qryBill.FieldByName('NMEMO').AsInteger) then
      begin
         if ClickPost then
         begin
            Repeat
               tbRefno.Text := NextRefno;
            Until not IsRefnoExisting(tbRefno.Text);
         end
         else
         begin
            MsgErr('Bill ' + tbRefno.Text + ' has already been entered, double click on the "bill refno" to get the next available number');
            ModalResult := mrNone;
            Exit; // <--- Jumping out here
         end;
      end;    //  end if
      // 20 Dec 2017 DW added to get tax code for the matter
      sTaxCode := MatterString(Self.qryBill.FieldByName('FILEID').AsString, 'FEE_TAX_BASIS');
      if sTaxCode = '' then sTaxCode := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'FEE_TAX_BASIS');
      if sTaxCode = '' then sTaxCode := dmAxiom.DefaultTax;

      qryEmps.Close;
      qryEmps.ParamByName('active').Clear;
      if SystemString('ALLOW_INACTIVE_FEE_POST') = 'N' then
         qryEmps.ParamByName('active').AsString := 'Y';
      qryEmps.Open;

      cTotalAlloc:= SimpleRounding(cTotalAlloc);
      if cTotalAlloc = Self.qryBill.FieldByName('FEES').AsCurrency then
      begin
         try
            bPostingFailed := False;
            bTaxDiff := False;
            if dmAxiom.uniInsight.InTransaction then
              dmAxiom.uniInsight.Rollback;
            dmAxiom.uniInsight.StartTransaction;

            cDebtors := qryMatter.FieldByName('DEBTORS').AsCurrency;
            iInvoice := Self.qryBill.FieldByName('NMEMO').AsInteger;
            iNMatter := qryMatter.FieldByName('NMATTER').AsInteger;
            {  Need to do the following code in order to cater for transactions that have
               a taxcode value of GSTNC.  These transactions do not have any GST calculated
               at time of posting.  GST is only recorded at time of billing.  Prior to posting
               the bill we need to calculate the GST value for any transactions that have a GST
               amount of 0
            }

            qrySetup.SQL.Text := 'UPDATE ALLOC A SET '+
                                 'TAX =(SELECT (A.AMOUNT*(ABS(RATE)/100)) '+
                                 'FROM TAXRATE WHERE TAXCODE=A.TAXCODE AND TRUNC(A.CREATED) >= commence and TRUNC(A.CREATED) <= nvl(end_period,sysdate+1000)) WHERE TAX = 0 AND ' +
                                 'BILLED = ''N''  AND NMATTER = ' +
                                 IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger) +
                                 ' AND NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);
            qrySetup.ExecSQL;
            qrySetup.Close;

            qrySetup.SQL.Text := 'UPDATE CHEQREQ CR SET '+
                                 'TAX =(SELECT (CR.AMOUNT*(ABS(BILL_RATE)/100)) '+
                                 'FROM TAXRATE WHERE TAXCODE=CR.TAXCODE AND TRUNC(CR.REQDATE) >= commence and TRUNC(CR.REQDATE) <= nvl(end_period,sysdate+1000)), '+
                                 'BILLED_TAX = (SELECT (CR.AMOUNT*(ABS(RATE)/100)) '+
                                 'FROM TAXRATE WHERE TAXCODE=CR.TAXCODE AND TRUNC(CR.REQDATE) >= commence and TRUNC(CR.REQDATE) <= nvl(end_period,sysdate+1000)), '+
                                 'CR.BILLED_AMOUNT = CR.AMOUNT '+
                                 'WHERE TAX = 0 AND FILEID = ' + QuotedStr(Self.qryBill.FieldByName('FILEID').AsString) + ' AND '+
                                 'NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);
            qrySetup.ExecSQL;
            qrySetup.Close;
              // Sundries
            qrySetup.SQL.Text := 'UPDATE SUNDRY A SET '+
                                 ' TAX =(SELECT (A.AMOUNT*(ABS(RATE)/100)) '+
                                 ' FROM TAXRATE WHERE TAXCODE=A.TAXCODE AND TRUNC(A.CREATED) >= commence and TRUNC(A.CREATED) <= nvl(end_period,sysdate+1000)) WHERE TAX = 0 AND NMATTER = ' +
                                   IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger) +
                                   ' AND NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);
            qrySetup.ExecSQL;
            qrySetup.Close;

            qrySetup.SQL.Text := 'UPDATE FEE F SET '+
                                 'TAX =(SELECT (F.AMOUNT*(ABS(RATE)/100)) FROM TAXRATE WHERE TAXCODE = F.TAXCODE AND TRUNC(F.CREATED) >= commence and TRUNC(F.CREATED) <= nvl(end_period, sysdate+1000) ) '+
                                   'WHERE TAX = 0 AND TYPE = ''ia'' AND Billed = ''N'' AND '+
                                   'NMATTER = ' + IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger) + ' AND '+
                                   'NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);
            qrySetup.ExecSQL;
            qrySetup.Close;

            if (Self.qryBill.FieldByName('RV_TYPE').AsString = 'N') then
            begin
              sMemoDesc := 'Client Bill ' + tbRefno.Text;

          {   First we must make any Fee adjustments where the
              allocation differs from the entered fees.
          }
              cAdjust := 0.0;
              if not qryDistFees.IsEmpty then
              begin
                 qryDistFees.First;
                 while not qryDistFees.EOF do
                 begin
                   // MGD 30/10/02 - only create adjustment if the alloc amount and fee amount changes,
                   // ignore changes to taxed amount..
      //             cTaxDiff := qryDistFees.FieldByName('ALLOC_TAX').AsCurrency - qryDistFees.FieldByName('FEE_TAX').AsCurrency;
                   cDiff := qryDistFees.FieldByName('ALLOC_AMT').AsCurrency - qryDistFees.FieldByName('FEE_AMT').AsCurrency;
            //   / this code seems to be repeated further down
            //   / AES 15-Feb-2013
//                   if (cDiff <> 0.0) {or (cTaxDiff <> 0.0)} then
{                   begin
                     // Make a fee adjustment
                     qryFees.ParamByName('CREATED').AsDateTime := dtpDispatched.Date;
                     qryFees.ParamByName('NMATTER').AsInteger  := qryBill.FieldByName('NMATTER').AsInteger;
                     qryFees.ParamByName('NCLIENT').AsInteger  := qryMatter.FieldByName('NCLIENT').AsInteger;
                     qryFees.ParamByName('AUTHOR').AsString    := qryDistFees.FieldByName('AUTHOR').AsString;
                     qryFees.ParamByName('PARTNER').AsString   := qryMatter.FieldByName('PARTNER').AsString;
                     qryFees.ParamByName('FILEID').AsString    := qryMatter.FieldByName('FILEID').AsString;
                     qryFees.ParamByName('NMEMO').AsInteger    := qryBill.FieldByName('NMEMO').AsInteger;
                     qryFees.ParamByName('BANK_ACCT').AsString := qryBill.FieldByName('BANK_ACCT').AsString;
                   end;
}
   // end of    change 15-Feb-2013
    {
      Modifie   d 18.11.2002 GG

      Throw a   n exception if this code cannot be found in the employee table
    }

                   if not qryEmps.Locate('CODE', UpperCase(qryDistFees.FieldByName('AUTHOR').AsString), []) then
                   begin
                       // Employee not found... raise exception and let the user correct this
                       msg:= Format('Employee "%s" not found.', [qryDistFees.FieldByName('AUTHOR').AsString]);
                       msg:= msg + #10#13 + 'Employee could be no longer be Active or does not exist in the Employees table. ';
    //                   msg:= msg + #10#13 + 'Employee could be no longer be Active or does not exist in the Employees table. ';

                      raise EEmployeeNotFound.Create(msg)
                   end;

                   if qryEmps.FieldByName('ACTIVE').AsString = 'N' then
                        MsgWarn('Employee '+qryDistFees.FieldByName('AUTHOR').AsString +' is no longer Active. '+ #10#13 +
                                ' Fees will be posted to an Employee that is no longer Active.');

                   cDiff := qryDistFees.FieldByName('ALLOC_AMT').AsCurrency - qryDistFees.FieldByName('FEE_AMT').AsCurrency;
                   if (cDiff <> 0.0) {or (cTaxDiff <> 0.0)} then
                   begin
                     // Make a fee adjustment
                     qryFees.ParamByName('CREATED').AsDateTime := dtpDispatched.Date;
                     qryFees.ParamByName('NMATTER').AsInteger  := Self.qryBill.FieldByName('NMATTER').AsInteger;
                     qryFees.ParamByName('NCLIENT').AsInteger  := qryMatter.FieldByName('NCLIENT').AsInteger;
                     qryFees.ParamByName('AUTHOR').AsString    := qryDistFees.FieldByName('AUTHOR').AsString;
                     qryFees.ParamByName('PARTNER').AsString   := qryMatter.FieldByName('PARTNER').AsString;
                     qryFees.ParamByName('FILEID').AsString    := qryMatter.FieldByName('FILEID').AsString;
                     qryFees.ParamByName('NMEMO').AsInteger    := Self.qryBill.FieldByName('NMEMO').AsInteger;
                     qryFees.ParamByName('BANK_ACCT').AsString := Self.qryBill.FieldByName('BANK_ACCT').AsString;


                     qryFees.ParamByName('EMP_TYPE').AsString  := qryEmps.FieldByName('TYPE').AsString;
                     qryFees.ParamByName('DEPT').AsString      := qryEmps.FieldByName('DEPT').AsString;
                     qryFees.ParamByName('DESCR').AsString     := 'Fee Adjustment as per Bill ' + tbRefno.Text;
                     // 17 Dec 2017 DW added to get tax code for the matter
                     //if MatterString(Self.qryBill.FieldByName('FILEID').AsString, 'FEE_TAX_BASIS') <> '' then
                     //   qryFees.ParamByName('TAXCODE').AsString := MatterString(Self.qryBill.FieldByName('FILEID').AsString, 'FEE_TAX_BASIS')
                     //else
                     //   qryFees.ParamByName('TAXCODE').AsString   := dmAxiom.DefaultTax;
                     qryFees.ParamByName('TAXCODE').AsString := sTaxCode;

                     dAmount := cDiff;
                     // get the tax for the fees

                     //qryFees.ParamByName('TAX').AsFloat := TaxCalc(dAmount, '', dmAxiom.DefaultTax, Interim);
                     qryFees.ParamByName('AMOUNT').AsFloat := dAmount;
                     qryFees.ParamByName('TAX').AsFloat    := cTaxDiff;
                     qryFees.ExecSQL;

                     qryFeeDistInsert.ParamByName('nmemo').AsInteger         := Self.qryBill.FieldByName('nmemo').AsInteger;
                     qryFeeDistInsert.ParamByName('author').AsString         := qryDistFees.FieldByName('author').AsString;
                     qryFeeDistInsert.ParamByName('nmatter').AsInteger       := Self.qryBill.FieldByName('nmatter').AsInteger;
                     qryFeeDistInsert.ParamByName('dept').AsString           := TableString('EMPLOYEE','CODE', qryDistFees.FieldByName('author').AsString, 'DEPT');
                     qryFeeDistInsert.ParamByName('matter_dept').AsString    := TableString('matter','nmatter',Self.qryBill.FieldByName('NMATTER').AsInteger, 'DEPT');
                     qryFeeDistInsert.ParamByName('ia_amt').AsCurrency       := dAmount;
                     qryFeeDistInsert.ParamByName('name').AsString           := TableString('EMPLOYEE','CODE',qryDistFees.FieldByName('author').AsString, 'NAME');
                     qryFeeDistInsert.ExecSQL;

                     cAdjust := cAdjust + cDiff;
                   end;
                   qryDistFees.Next;
                 end;
              end;

              try
                 { Now the fees are correct, post them to the various ledgers }
                 qryFees.Close;

                 qrySetup.Close;
                 qrySetup.SQL.Clear;
                 qrySetup.SQL.Add('SELECT SUM(AMOUNT) AS SUMAMOUNT, MIN(DISCOUNT) as DISCOUNT,');
                 qrySetup.SQL.Add('SUM(TAX) AS SUMTAX, AUTHOR, CHART_SUFFIX,');
                 qrySetup.SQL.Add(' FEE_CHART, FEEWOFF_CHART, DISBWOFF_CHART');
                 qrySetup.SQL.Add(' from ( ');
                 qrySetup.SQL.Add('SELECT CASE WHEN (NVL ( fee.task_amount, 0) > 0) THEN  fee.task_amount ELSE fee.amount END AS amount,');
                 qrySetup.SQL.Add(' NMEMO.DISCOUNT as DISCOUNT,');
                 qrySetup.SQL.Add(' CASE WHEN (NVL ( fee.task_amount, 0) > 0) THEN  fee.task_tax ELSE fee.tax END AS tax, FEE.AUTHOR,');
                 qrySetup.SQL.Add('nvl(EMPLOYEE.CHART_SUFFIX,EMP_AUTH.CHART_SUFFIX) as CHART_SUFFIX,');
                 qrySetup.SQL.Add(' nvl(EMPLOYEE.FEE_CHART,EMP_AUTH.FEE_CHART) as FEE_CHART, nvl(EMPLOYEE.FEEWOFF_CHART,EMP_AUTH.FEEWOFF_CHART) as FEEWOFF_CHART,nvl(EMPLOYEE.DISBWOFF_CHART,EMP_AUTH.DISBWOFF_CHART) as DISBWOFF_CHART ');
                 qrySetup.SQL.Add('FROM FEE, EMPLOYEE, MATTER, EMPLOYEE EMP_AUTH, NMEMO ');
                 qrySetup.SQL.Add('WHERE FEE.NMATTER = ' + IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger));
                 qrySetup.SQL.Add('  AND FEE.NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger));
                 qrySetup.SQL.Add('  AND FEE.NMATTER = MATTER.NMATTER ');
                 qrySetup.SQL.Add('  AND UPPER(FEE.AUTHOR) = UPPER(EMPLOYEE.CODE(+))');
                 qrySetup.SQL.Add('  AND UPPER(MATTER.AUTHOR) = UPPER(EMP_AUTH.CODE(+))');
                 qrySetup.SQL.Add('  AND NMEMO.NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger));
                 qrySetup.SQL.Add(') GROUP BY AUTHOR, CHART_SUFFIX,');
                 qrySetup.SQL.Add(' FEE_CHART, FEEWOFF_CHART, DISBWOFF_CHART ');
                 if dmAxiom.runningide then
                    qrySetup.SQL.SaveToFile('c:\tmp\bill_qrysetup.sql');
                 qrySetup.Open;

                 if (Self.qryBill.FieldByName('FEES').AsFloat = 0) and (qrySetup.FieldByName('sumamount').AsFloat > 0) and
                    (qryDistFees.IsEmpty = True) then
                 begin
                    while qrySetup.Eof = False do
                    begin
                       with qryFeeInsert do
                       begin
                          Close;
                          ParamByName('CREATED').AsDateTime := Now;
                          ParamByName('AUTHOR').AsString := qrySetup.FieldByName('AUTHOR').AsString;
                          ParamByName('PARTNER').AsString := MatterString(Self.qryBill.FieldByName('NMATTER').AsInteger, 'PARTNER');;
                          ParamByName('BANK_ACCT').AsString := dmAxiom.Entity;
                          ParamByName('DEPT').AsString := TableString('EMPLOYEE', 'CODE', qrySetup.FieldByName('AUTHOR').AsString, 'DEPT');
                          ParamByName('EMP_TYPE').AsString := TableString('EMPLOYEE', 'CODE', qrySetup.FieldByName('AUTHOR').AsString, 'TYPE');
                          ParamByName('DESCR').AsString := 'Bill adjustment';
                          ParamByName('FILEID').AsString := Self.qryBill.FieldByName('FILEID').AsString;
                          ParamByName('NMATTER').AsInteger := Self.qryBill.FieldByName('NMATTER').AsInteger;
                          ParamByName('NCLIENT').AsString := MatterString(Self.qryBill.FieldByName('NMATTER').AsInteger, 'NCLIENT');
                          ParamByName('TAXCODE').AsString := dmAxiom.DefaultTax;
                          ParamByName('TAX').AsFloat := qrySetup.FieldByName('sumtax').AsFloat * -1;
                          ParamByName('AMOUNT').AsFloat := qrySetup.FieldByName('sumamount').AsFloat * -1;
                          ParamByName('BILLED').AsString := 'Y';
                          ParamByName('TYPE').AsString := 'ia';
                          ParamByName('PROGRAM_NAME').AsString := 'Bill Post';
                          ParamByName('NMEMO').AsInteger := Self.qryBill.FieldByName('nmemo').AsInteger;
                          ParamByName('VERSION').AsString := dmAxiom.GetVersionInfo;
                          ExecSQL;
                       end;
                       qrySetup.Next;
                    end;
                 end;

                 //sFee := TableString('EMPLOYEE','CODE', ,'FEE_CHART');
                 sWipMainDr    := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_DR');
                 if sWipMainDr <> '' then
                    sWipMainCr  := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_FEE_CR');
                 sFeeMainCr    := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_FEE_CR');
                 sDebtMainDr   := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_FEE_DR');

                 //The tax portions of the bill.  BJ 29/11/2002
                 lsBillFeeTaxDR     := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_FEE_TAX_DR');
                 lsBillSundTaxDR    := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_SUND_TAX_DR');
                 lsBillDisbTaxDR    := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_TAX_DR');
                 lsBillAntdTaxDR    := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_ANTD_TAX_DR');
                 lsBillUpCredTaxDR  := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_UPCRED_TAX_DR');
                 lsBillFeeDiscTaxDR := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISCFEE_TAX_DR');
                 lsChartSuffix      := qrySetup.FieldByName('CHART_SUFFIX').AsString;
                 lsBillDisbTaxAdjDR := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_ADJ_TAX_DR');

                 cFeesTax := 0.0;
                 if (qryDistFees.IsEmpty = False) then
                 begin
                    while not qrySetup.EOF do
                    begin
                      // MGD - use the allocations and adjustments...
                      if qryDistFees.Locate('NMEMO;AUTHOR',VarArrayOf([Self.qryBill.FieldByName('NMEMO').AsInteger,
                         qrySetup.FieldByName('AUTHOR').AsString]),[]) then
                      begin
                        if qrySetup.FieldByName('SUMAMOUNT').AsCurrency <> 0.0 then
                        begin
                          // Reverse Work in Progress if we have to
                          if sWipMainDr <> '' then
                          begin
                            begin
                              sWipSubDr := sWipMainDr + qrySetup.FieldByName('CHART_SUFFIX').AsString;
                              if not ValidLedger(dmAxiom.Entity, sWipSubDr) then
                                sWipSubDr := sWipMainDr;
                              sWipSubCr := sWipMainCr + qrySetup.FieldByName('CHART_SUFFIX').AsString;
                              if not ValidLedger(dmAxiom.Entity, sWipSubCr) then
                                sWipSubCr := sWipMainCr;
                            end;
                            // Unpost the Work In Progress

                            {post components}
                            sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,
                                           sWipSubCr,qrySetup.fieldByName('AUTHOR').AsString,true,'');

                            sLedgerKeyDr := glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,
                                           sWipSubDr,qrySetup.fieldByName('AUTHOR').AsString,true,'');

                            PostLedgers(dtpDispatched.Date
                              , qrySetup.FieldByName('SUMAMOUNT').AsCurrency
                              , Self.qryBill.FieldByName('FILEID').AsString
                              , 'NMEMO'
                              , Self.qryBill.FieldByName('NMEMO').AsInteger
                              , sMemoDesc
                              , sLedgerKey
                              , sLedgerKeyDr
                              , qryMatter.FieldByName('AUTHOR').AsString
                              // 17 Dec 17 DW changed to use Matter Tax Code or default tax code if not set
                              //, dmAxiom.DefaultTax);
                              , sTaxCode);
                          end;

                          // Now credit the billed fees
                          if (qrySetup.FieldByName('FEE_CHART').AsString <> '') then
                            sFeeSubCr := qrySetup.FieldByName('FEE_CHART').AsString
                          else
                            sFeeSubCr := sFeeMainCr + qrySetup.FieldByName('CHART_SUFFIX').AsString;
                          { rb - removed this, didn't make sense anyway
                          if not ValidLedger(dmAxiom.Entity, sFeeSubCr) then
                            sFeeSubCr := sFeeMainCr;
                          }
      (*
                          // MGD - use the allocations and adjustments...
                          qryDistFees.Locate('NMEMO;AUTHOR',VarArrayOf([qryBill.FieldByName('NMEMO').AsInteger,
                            qrySetup.FieldByName('AUTHOR').AsString]),[]);
      *)
                          {post componsnts}
                          sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,
                          sFeeSubCr,qrySetup.fieldByName('AUTHOR').AsString,false,'Error with Fee Chart');

                          FeeAllocTaxDiff := FeeAllocTaxDiff + RoundTo(qryDistFees.FieldByName('ALLOC_TAX').AsCurrency, -2);
                          PostLedger(dtpDispatched.Date
                            , qryDistFees.FieldByName('ALLOC_AMT').AsCurrency
                            , qryDistFees.FieldByName('ALLOC_TAX').AsCurrency
                            , Self.qryBill.FieldByName('FILEID').AsString
                            , 'NMEMO'
                            , Self.qryBill.FieldByName('NMEMO').AsInteger
                            , sMemoDesc
                            , sLedgerKey
                            , qryMatter.FieldByName('AUTHOR').AsString
                            , -1
                            , ''
                            // 17 Dec 17 DW changed to use Matter Tax Code or default tax code if not set
                            //, dmAxiom.DefaultTax);
                            , sTaxCode);

                            if (Self.qryBill.FieldByName('FEESTAX').AsCurrency <> 0.0) then
                            begin
                                // Post the Fee Tax (BILL_FEE_TAX_DR).    BJ  29/11/2002
                                if (lsBillFeeTaxDR <> '') then
                                begin
                                    lsBillFeeTaxSubDR := lsBillFeeTaxDR + lsChartSuffix;
                                    { rb - removed this, didn't make sense anyway
                                    if (not ValidLedger(dmAxiom.Entity, lsBillFeeTaxSubDR)) then
                                      lsBillFeeTaxSubDR := lsBillFeeTaxDR;
                                    }

    {
      Code modified 13.12.2002 GG

      This line incorrectly adds the full invoice fees tax component to the GL for
      every Fee, instead of just the tax part for this fee

                                     - qryBill.FieldByName('FEESTAX').AsCurrency,

    }
                                  {post componsnts}
                                  sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,
                                  lsBillFeeTaxSubDR,qrySetup.fieldByName('AUTHOR').AsString,true,'Error with Fee Tax Chart');

                                    PostLedger(dtpDispatched.Date
                                      , - qryDistFees.FieldByName('ALLOC_TAX').AsCurrency
                                      , 0
                                      , Self.qryBill.FieldByName('FILEID').AsString
                                      , 'NMEMO'
                                      , Self.qryBill.FieldByName('NMEMO').AsInteger
                                      , sMemoDesc
                                      , sLedgerKey
                                      , qryMatter.FieldByName('AUTHOR').AsString
    			        			                , -1
                                      , ''
                                      // 17 Dec 17 DW changed to use Matter Tax Code or default tax code if not set
                                      //, dmAxiom.DefaultTax);
                                      , sTaxCode);
                                  end;    //  end if
                              end;   //  end if

                          // And debit Debtors
                          if sDebtMainDr <> '' then
                          begin
                            sDebtSubDr := sDebtMainDr + qrySetup.FieldByName('CHART_SUFFIX').AsString;
                            { rb - removed this, didn't make sense anyway
                            if not ValidLedger(dmAxiom.Entity, sDebtSubDr) then
                              sDebtSubDr := sDebtMainDr;
                            }

                            {post componsnts}
                            sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,
                            sDebtSubDr,qrySetup.fieldByName('AUTHOR').AsString,true,'Error with Debtors Chart');


                            PostLedger(dtpDispatched.Date
                              , - RoundTo(qryDistFees.FieldByName('ALLOC_AMT').AsCurrency, -2)
                              , 0
                              , Self.qryBill.FieldByName('FILEID').AsString
                              , 'NMEMO'
                              , Self.qryBill.FieldByName('NMEMO').AsInteger
                              , sMemoDesc
                              , sLedgerKey
                              , qryMatter.FieldByName('AUTHOR').AsString
                              , -1
                              , ''
                              // 17 Dec 17 DW changed to use Matter Tax Code or default tax code if not set
                              //, dmAxiom.DefaultTax);
                              , sTaxCode);
                          end;
                        end;
                        // qrySetup.FieldByName('SUMTAX').AsCurrency;
                        cFeesTax := cFeesTax + qryDistFees.FieldByName('ALLOC_TAX').AsCurrency;
                      end;
                      // And keep going through the suffixes...
                      qrySetup.Next;
                    end;
                  end;
              finally
                   //
              end;

              cDiscountTax := 0;
              cDiscount := 0;
              cDiscountOrig := 0;
              cDiscountTaxOrig := 0;
              // reduce fees if a discount has been applied.
              if qrySetup.FieldByName('DISCOUNT').AsCurrency <> 0.0 then
              begin
                 cDiscount := qrySetup.FieldByName('DISCOUNT').AsCurrency;
                 cDiscountTax := cDiscount / SystemInteger('GST_DIVIDER');
                 cDiscount := cDiscount - cDiscountTax;
                 cDiscountOrig := cDiscount;
                 cDiscountTaxOrig := cDiscountTax;

                 // need to enter adjustment in FEE based on distribution
                 qryDistFees.First;
                 while (not qryDistFees.EOF) do
                 begin
                     qryFeesDiscDist.ParamByName('CREATED').AsDateTime := dtpDispatched.Date;
                     qryFeesDiscDist.ParamByName('NMATTER').AsInteger  := Self.qryBill.FieldByName('NMATTER').AsInteger;
                     qryFeesDiscDist.ParamByName('NCLIENT').AsInteger  := qryMatter.FieldByName('NCLIENT').AsInteger;
                     qryFeesDiscDist.ParamByName('AUTHOR').AsString    := qryDistFees.FieldByName('AUTHOR').AsString;
                     qryFeesDiscDist.ParamByName('PARTNER').AsString   := qryMatter.FieldByName('PARTNER').AsString;
                     qryFeesDiscDist.ParamByName('FILEID').AsString    := qryMatter.FieldByName('FILEID').AsString;
                     qryFeesDiscDist.ParamByName('NMEMO').AsInteger    := Self.qryBill.FieldByName('NMEMO').AsInteger;
                     qryFeesDiscDist.ParamByName('BANK_ACCT').AsString := Self.qryBill.FieldByName('BANK_ACCT').AsString;

                     qryFeesDiscDist.ParamByName('EMP_TYPE').AsString  := qryEmps.FieldByName('TYPE').AsString;
                     qryFeesDiscDist.ParamByName('DEPT').AsString      := qryEmps.FieldByName('DEPT').AsString;
                     qryFeesDiscDist.ParamByName('DESCR').AsString     := 'Discount Allowed for Bill # ' + tbRefno.Text;
                     // 20 Dec 2017 DW added sTaxCode
                     //if MatterString(Self.qryBill.FieldByName('FILEID').AsString, 'FEE_TAX_BASIS') <> '' then
                     //   qryFeesDiscDist.ParamByName('TAXCODE').AsString := MatterString(Self.qryBill.FieldByName('FILEID').AsString, 'FEE_TAX_BASIS')
                     //else
                     //   qryFeesDiscDist.ParamByName('TAXCODE').AsString   := dmAxiom.DefaultTax;
                        qryFeesDiscDist.ParamByName('TAXCODE').AsString   := sTaxCode;


                     dAmount := cDiscount * (qryDistFees.FieldByName('alloc_pc').AsFloat/100);
//                     cDiscount := cDiscount - dAmount;
                     cTaxDiff := cDiscountTax * (qryDistFees.FieldByName('alloc_pc').AsFloat/100);
//                     cDiscountTax := cDiscountTax - cTaxDiff;

                     qryFeesDiscDist.ParamByName('AMOUNT').AsFloat := dAmount;
                     qryFeesDiscDist.ParamByName('TAX').AsFloat    := cTaxDiff;
                     qryFeesDiscDist.ExecSQL;

                     qryDistFees.Next;
                 end;

                 {post componsnts}
                 sLedgerKey := glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,
                              TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISCFEE_DR'),'',true,'Error with Fee Discount Chart');

                 PostLedger(dtpDispatched.Date
                   , cDiscountOrig
                   , cDiscountTaxOrig
                   , Self.qryBill.FieldByName('FILEID').AsString
                   , 'NMEMO'
                   , Self.qryBill.FieldByName('NMEMO').AsInteger
                   , sMemoDesc
                   , sLedgerKey
                   , qryMatter.FieldByName('AUTHOR').AsString
                   , -1
                   , ''
                   // 20 Dec 2017 DW added sTaxCode
                   //, dmAxiom.DefaultTax
                   , sTaxCode
                   , False
                   , '0'
                   , 0
                   , 0
                   , 0
                   , False
                   , Self.qryBill.FieldByName('NMEMO').AsInteger);

                   {post componsnts}
                 sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,
                       lsBillFeeDiscTaxDR,qrySetup.fieldByName('AUTHOR').AsString,true,'Error with Fee Tax Chart');

                 PostLedger(dtpDispatched.Date
                   , - cDiscountTaxOrig
                   , 0
                   , Self.qryBill.FieldByName('FILEID').AsString
                   , 'NMEMO'
                   , Self.qryBill.FieldByName('NMEMO').AsInteger
                   , sMemoDesc
                   , sLedgerKey
                   , qryMatter.FieldByName('AUTHOR').AsString
    			     	   , -1
                   , ''
                   // 20 Dec 2017 DW added sTaxCode
                   //, dmAxiom.DefaultTax
                   , sTaxCode
                   , False
                   , '0'
                   , 0
                   , 0
                   , 0
                   , False
                   , Self.qryBill.FieldByName('NMEMO').AsInteger);

                 {post componsnts}
                 sLedgerKey := glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,
                              TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISCFEE_CR'),'',true,'Error with Debtors Chart');

                 PostLedger(dtpDispatched.Date
                   , - cDiscountOrig
                   , 0
                   , Self.qryBill.FieldByName('FILEID').AsString
                   , 'NMEMO'
                   , Self.qryBill.FieldByName('NMEMO').AsInteger
                   , sMemoDesc
                   , sLedgerKey
                   , qryMatter.FieldByName('AUTHOR').AsString
                   , -1
                   , ''
                   // 20 Dec 2017 DW added sTaxCode
                   //, dmAxiom.DefaultTax
                   , sTaxCode
                   , False
                   , '0'
                   , 0
                   , 0
                   , 0
                   , False
                   , Self.qryBill.FieldByName('NMEMO').AsInteger);

                 PostLedger(dtpDispatched.Date
                   , 0
                   , - cDiscountTaxOrig
                   , Self.qryBill.FieldByName('FILEID').AsString
                   , 'NMEMO'
                   , Self.qryBill.FieldByName('NMEMO').AsInteger
                   , sMemoDesc
                   , sLedgerKey
                   , qryMatter.FieldByName('AUTHOR').AsString
                   , -1
                   , ''
                   // 20 Dec 2017 DW added sTaxCode
                   //, dmAxiom.DefaultTax
                   , sTaxCode
                   , False
                   , '0'
                   , 0
                   , 0
                   , 0
                   , False
                   , Self.qryBill.FieldByName('NMEMO').AsInteger);
              end;

              //MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'UNBILL_FEES', cAdjust - (cFeesTax + qryBill.FieldByName('FEES').AsCurrency));
//              MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'UNBILL_FEES',  cAdjust - (qryBill.FieldByName('FEES').AsCurrency));
//              MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'BILL_FEES',    qryBill.FieldByName('FEES').AsCurrency);
//              MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'DEBTORS',      qryBill.FieldByName('FEES').AsCurrency + cFeesTax);
    {!! SUNDRY }
              // Now update the sundries
              // Find out how many actual Sundries there are for this invoice
              qrySetup.Close;
              qrySetup.SQL.Text := 'SELECT SUM(AMOUNT) AS SUMAMOUNT FROM SUNDRY WHERE NMATTER = ' +
                                    IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger) +
                                    ' AND NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);
              qrySetup.Open;

              if not qrySetup.EOF then

//              MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'UNBILL_SUND', -qrySetup.FieldByName('SUMAMOUNT').AsCurrency);

//              MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'BILL_SUND',     qrySetup.FieldByName('SUMAMOUNT').AsCurrency);

              if (qrySetup.FieldByName('SUMAMOUNT').AsCurrency <> 0.0) then
              begin
                if TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR') <> '' then
                begin
                {post componsnts}
                  sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_CR'),'',true,'Error with New Sundry Chart');
                  sLedgerKeyDr :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'NEW_SUND_DR'),'',true,'Error with New Sundry Chart');

                  PostLedgers(dtpDispatched.Date
                    , qrySetup.FieldByName('SUMAMOUNT').AsCurrency
                    , Self.qryBill.FieldByName('FILEID').AsString
                    , 'NMEMO'
                    , Self.qryBill.FieldByName('NMEMO').AsInteger
                    , sMemoDesc
                    , sLedgerKey
                    , sLedgerKeyDr
                    , qryMatter.FieldByName('AUTHOR').AsString
                    // 20 Dec 2017 DW added sTaxCode
                    //, dmAxiom.DefaultTax);
                    , sTaxCode);
                end;
              end;

              // See if we have to adjust the sundries
              if Self.qryBill.FieldByName('SUND').AsCurrency <> qrySetup.FieldByName('SUMAMOUNT').AsCurrency then
              begin
                // We have to create a sundry adjustment
                qrySund.ParamByName('CREATED').AsDateTime   := dtpDispatched.Date;
                qrySund.ParamByName('NMATTER').AsInteger    := Self.qryBill.FieldByName('NMATTER').AsInteger;
                qrySund.ParamByName('FILEID').AsString      := qryMatter.FieldByName('FILEID').AsString;
                qrySund.ParamByName('NCLIENT').AsInteger    := qryMatter.FieldByName('NCLIENT').AsInteger;
                qrySund.ParamByName('NMEMO').AsInteger      := Self.qryBill.FieldByName('NMEMO').AsInteger;
                qrySund.ParamByName('ACCT').AsString        := Self.qryBill.FieldByName('BANK_ACCT').AsString;
                qrySund.ParamByName('DESCR').AsString       := 'Sundry Adjustment as per Bill ' + tbRefno.Text;
                // 20 Dec 2017 DW added sTaxCode
                // qrySund.ParamByName('TAXCODE').AsString     := dmAxiom.DefaultTax;
                qrySund.ParamByName('TAXCODE').AsString     := sTaxCode;
                dAmount                                     := Self.qryBill.FieldByName('SUND').AsCurrency - qrySetup.FieldByName('SUMAMOUNT').AsCurrency;
                // 20 Dec 2017 DW added sTaxCode
                //qrySund.ParamByName('TAX').AsFloat          := TaxCalc(dAmount, '', dmAxiom.DefaultTax, Interim);
                qrySund.ParamByName('TAX').AsFloat          := TaxCalc(dAmount, '', sTaxCode, Interim);
                qrySund.ParamByName('AMOUNT').AsFloat       := dAmount;
                qrySund.ExecSQL;
                qrySund.Close;
              end;

              qryTmp.Close;
              qryTmp.SQL.Text := 'SELECT SUM(SUNDRY.AMOUNT) AS LEDGER_AMOUNT, '+
                                 'SUM(SUNDRY.TAX) AS TAXAMOUNT, SUNDRYTYPE.LEDGER '+
                                 'FROM SUNDRY, SUNDRYTYPE '+
                                 'WHERE SUNDRY.NMATTER = ' +
                                 IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger) +
                                 ' AND SUNDRY.NMEMO = ' +
                                 IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger) +
                                 ' AND SUNDRYTYPE.CODE = SUNDRY.TYPE(+) '+
                                 ' AND SUNDRYTYPE.ENTITY = ' + quotedstr(qryMatter.FieldByName('ENTITY').AsString) +
                                 ' GROUP BY SUNDRYTYPE.LEDGER';
              qryTmp.Open;

                // Do the appropriate adjustments for sundries recovered.
              cSundTax := 0;
              while not qryTmp.EOF do
              begin
                cSundTax := cSundTax + qryTmp.FieldByName('TAXAMOUNT').AsFloat;
                // Post this sundry
                if qryTmp.FieldByName('LEDGER').AsString = '' then
                   sLedger := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_SUND_CR')
                else
                   sLedger := qryTmp.FieldByName('LEDGER').AsString;

                // calculate the ledger key
                sLedgerKey :=  glComponentSetup.buildLedgerKey(Self.qryBill.FieldByName('NMATTER').AsString,sLedger,'',false,'Error with Sundry Chart');

                PostLedger(dtpDispatched.Date
                  , qryTmp.FieldByName('LEDGER_AMOUNT').AsCurrency
                  , qryTmp.FieldByName('TAXAMOUNT').AsCurrency
                  , Self.qryBill.FieldByName('FILEID').AsString
                  , 'NMEMO'
                  , Self.qryBill.FieldByName('NMEMO').AsInteger
                  , sMemoDesc
                  , sLedgerKey
                  , qryMatter.FieldByName('AUTHOR').AsString
                  , -1
                  , ''
                  // 20 Dec 2017 DW added sTaxCode
                  //, dmAxiom.DefaultTax);
                  , sTaxCode);

                // Get the next sundry for this matter
                qryTmp.Next;
              end;

              if Self.qryBill.FieldByName('SUND').AsCurrency <> 0.0 then
              begin
                // Now adjust the Debtors Chart
                MatterUpdate(qryBill.FieldByName('NMATTER').AsInteger, 'DEBTORS',
                  Self.qryBill.FieldByName('SUND').AsCurrency + cSundTax);

                {post gl component}
                sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_SUND_DR'),'',true,'Error with Sundry Chart');

                PostLedger(dtpDispatched.Date
                  , - Self.qryBill.FieldByName('SUND').AsCurrency
                  , 0
                  , Self.qryBill.FieldByName('FILEID').AsString
                  , 'NMEMO'
                  , Self.qryBill.FieldByName('NMEMO').AsInteger
                  , sMemoDesc
                  , sLedgerKey
                  , qryMatter.FieldByName('AUTHOR').AsString
                  , -1
                  , ''
                  // 20 Dec 2017 DW Added sTaxCode
                  //, dmAxiom.DefaultTax);
                  , sTaxCode);
              end;

              if (Self.qryBill.FieldByName('SUNDTAX').AsCurrency <> 0.0) then
              begin
                  // Post the Sundry Tax (BILL_SUND_TAX_DR).    BJ  29/11/2002
                 if (lsBillSundTaxDR <> '') then
                 begin
                      lsBillSundTaxSubDR := lsBillSundTaxDR + lsChartSuffix;

                      { rb - removed this, didn't make sense anyway
                      if (not ValidLedger(dmAxiom.Entity, lsBillSundTaxSubDR)) then
                        lsBillSundTaxSubDR := lsBillSundTaxDR;
                      }


                      sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,lsBillSundTaxSubDR,'',true,'Error with Sundry Tax Chart');

                      PostLedger(dtpDispatched.Date
                        , - Self.qryBill.FieldByName('SUNDTAX').AsCurrency
                        , 0
                        , Self.qryBill.FieldByName('FILEID').AsString
                        , 'NMEMO'
                        , Self.qryBill.FieldByName('NMEMO').AsInteger
                        , sMemoDesc
                        , sLedgerKey
                        , qryMatter.FieldByName('AUTHOR').AsString
                        , -1
                        , ''
                        // 20 Dec 2017 DW Added sTaxCode
                        //, dmAxiom.DefaultTax);
                        , sTaxCode);

                end;    //  end if

              end;    //  end if

              // Find out how many actual Anticipated Disbursements there are for this invoice
              qrySetup.Close;
              qrySetup.SQL.Clear;
              qrySetup.SQL.Add('SELECT SUM(AMOUNT) AS SUMAMOUNT, SUM(TAX) AS TAXAMOUNT');
              qrySetup.SQL.Add('FROM CHEQREQ');
              qrySetup.SQL.Add('WHERE FILEID = :FILEID');
              qrySetup.SQL.Add('  AND NMEMO = :NMEMO');
              qrySetup.Params[0].AsString   := qryMatter.FieldByName('FILEID').AsString;
              qrySetup.Params[1].AsInteger  := Self.qryBill.FieldByName('NMEMO').AsInteger;
              qrySetup.Open;
              if qrySetup.FieldByName('SUMAMOUNT').AsCurrency <> 0 then
              begin
                MatterUpdate(Self.qryBill.FieldByName('NMATTER').AsInteger,
                  'UNBILL_CREQ',
                  - (qrySetup.FieldByName('SUMAMOUNT').AsCurrency));
                MatterUpdate(Self.qryBill.FieldByName('NMATTER').AsInteger,
                  'BILL_CREQ',
                  qrySetup.FieldByName('SUMAMOUNT').AsCurrency);
              end;

              if Self.qryBill.FieldByName('ANTD').AsCurrency <> 0.0 then
              begin

              {post componsnts}
                sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity,'BILL_ANTD_CR'),'',true,'Error with Ant D Chart');


                PostLedger(dtpDispatched.Date
                  , Self.qryBill.FieldByName('ANTD').AsCurrency
                  , qrySetup.FieldByName('TAXAMOUNT').AsCurrency
                  , Self.qryBill.FieldByName('FILEID').AsString
                  , 'NMEMO'
                  , Self.qryBill.FieldByName('NMEMO').AsInteger
                  , sMemoDesc
                  , sLedgerKey
                  , qryMatter.FieldByName('AUTHOR').AsString
                  , -1
                  , ''
                  // 20 Dec 2017 DW Added sTaxCode
                  //, dmAxiom.DefaultTax);
                  , sTaxCode);

                // Now adjust the Debtors Chart
                MatterUpdate(Self.qryBill.FieldByName('NMATTER').AsInteger, 'DEBTORS',
                  qrySetup.FieldByName('SUMAMOUNT').AsCurrency + qrySetup.FieldByName('TAXAMOUNT').AsCurrency);

                {post componsnts}
                sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_ANTD_DR'),'',true,'Error with Ant D Chart');


                PostLedger(dtpDispatched.Date
                  , - Self.qryBill.FieldByName('ANTD').AsCurrency
                  , 0
                  , Self.qryBill.FieldByName('FILEID').AsString
                  , 'NMEMO'
                  , Self.qryBill.FieldByName('NMEMO').AsInteger
                  , sMemoDesc
                  , sLedgerKey
                  , qryMatter.FieldByName('AUTHOR').AsString
                  , -1
                  , ''
                  // 20 Dec 2017 DW Added sTaxCode
                  //, dmAxiom.DefaultTax);
                  , sTaxCode);
              end;

              if (Self.qryBill.FieldByName('ANTDTAX').AsCurrency <> 0.0) then
              begin
                  // Post the Antd Tax (BILL_ANTD_TAX_DR).    BJ  29/11/2002
                  if (lsBillAntdTaxDR <> '') then
                  begin
                      lsBillAntdTaxSubDR := lsBillAntdTaxDR + lsChartSuffix;
                      { rb - removed this, didn't make sense anyway
                      if (not ValidLedger(dmAxiom.Entity, lsBillAntdTaxSubDR)) then
                        lsBillAntdTaxSubDR := lsBillAntdTaxDR;
                      }

                      {post componsnts}
                      sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,lsBillAntdTaxSubDR,'',true,'Error with Ant D Tax Chart');


                      PostLedger(dtpDispatched.Date
                        , - Self.qryBill.FieldByName('ANTDTAX').AsCurrency
                        , 0
                        , Self.qryBill.FieldByName('FILEID').AsString
                        , 'NMEMO'
                        , Self.qryBill.FieldByName('NMEMO').AsInteger
                        , sMemoDesc
                        , sLedgerKey
                        , qryMatter.FieldByName('AUTHOR').AsString
                        , -1
                        , ''
                        // 20 Dec 2017 DW Added sTaxCode
                        //, dmAxiom.DefaultTax);
                        , sTaxCode);
                  end;    //  end if
              end;   //  end if

              // AES 15/2/18  changes for disbursement adjustments
              // Now, let us adjust the disbursements
              if (Self.qryBill.FieldByName('DISB').AsCurrency > 0.0) then
              begin
                qrySetup.Close;
                qrySetup.SQL.Clear;
                //qrySetup.SQL.Add('SELECT SUM(AMOUNT) AS SUMAMOUNT, SUM(DECODE(NVL(alloc.tax,0), 0,DECODE(alloc.billed,''Y'',alloc.tax,');
                //qrySetup.SQL.Add(' DECODE((r.rate - r.bill_rate),''0'',alloc.tax, ROUND((alloc.amount) * ABS(r.rate)) / 100)),alloc.tax)) AS TAXAMOUNT');
                // 19 Oct 2018 DW bille tax amount
                qrySetup.SQL.Add('SELECT SUM(AMOUNT) AS SUMAMOUNT, SUM(DECODE(NVL(alloc.billed_tax_amount,0), 0,DECODE(alloc.billed,''Y'',alloc.billed_tax_amount,');
                qrySetup.SQL.Add(' DECODE((r.rate - r.bill_rate),''0'',alloc.billed_tax_amount, ROUND((alloc.amount) * ABS(r.rate)) / 100)),alloc.billed_tax_amount)) AS TAXAMOUNT');
                qrySetup.SQL.Add('FROM ALLOC,TAXRATE R,SUBBILLS');
                qrySetup.SQL.Add('WHERE ALLOC.NMATTER = :NMATTER');
                qrySetup.SQL.Add('  AND ALLOC.NMEMO = :NMEMO');
                qrySetup.SQL.Add('  AND (nvl(NRECEIPT,0) = 0 OR (nvl(NRECEIPT,0) > 0 AND TYPE = ''DR'')) AND NINVOICE IS NULL ');
                qrySetup.SQL.Add('  AND NVL(ALLOC.BILLING_TAXCODE, ALLOC.TAXCODE) = R.TAXCODE (+) AND  TRUNC (alloc.created) >= r.commence and TRUNC(alloc.created) <= nvl(r.end_period,sysdate + 1000) ');
                qrySetup.SQL.Add('  AND ALLOC.NMEMO = SUBBILLS.NMEMO (+) AND ALLOC.NSUBBILL = SUBBILLS.NSUBBILL (+) ');
                qrySetup.ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                qrySetup.ParamByName('NMEMO').AsInteger := Self.qryBill.FieldByName('NMEMO').AsInteger;
                qrySetup.Open;
              end
              else
              if (Self.qryBill.FieldByName('DISB').AsCurrency < 0.0) then
              begin
                qrySetup.Close;
                qrySetup.SQL.Clear;
                //qrySetup.SQL.Add('SELECT SUM(0-AMOUNT) AS SUMAMOUNT, SUM(DECODE(NVL(0-alloc.tax,0), 0,DECODE(alloc.billed,''Y'',0-alloc.tax,');
                //qrySetup.SQL.Add(' DECODE((r.rate - r.bill_rate),''0'',0-alloc.tax, ROUND((0-alloc.amount) * ABS(r.rate)) / 100)),0-alloc.tax)) AS TAXAMOUNT');
                // 19 Oct 2018 DW
                qrySetup.SQL.Add('SELECT SUM(0-AMOUNT) AS SUMAMOUNT, SUM(DECODE(NVL(0-alloc.billed_tax_amount,0), 0,DECODE(alloc.billed,''Y'',0-alloc.billed_tax_amount,');
                qrySetup.SQL.Add(' DECODE((r.rate - r.bill_rate),''0'',0-alloc.billed_tax_amount, ROUND((0-alloc.amount) * ABS(r.rate)) / 100)),0-alloc.billed_tax_amount)) AS TAXAMOUNT');
                qrySetup.SQL.Add('FROM ALLOC,TAXRATE R,SUBBILLS');
                qrySetup.SQL.Add('WHERE ALLOC.NMATTER = :NMATTER');
                qrySetup.SQL.Add('  AND ALLOC.NMEMO = :NMEMO');
                qrySetup.SQL.Add('  AND (nvl(NRECEIPT,0) = 0 OR (nvl(NRECEIPT,0) > 0 AND TYPE = ''DR'')) AND NINVOICE IS NULL ');
                qrySetup.SQL.Add('  AND NVL(ALLOC.BILLING_TAXCODE, ALLOC.TAXCODE) = R.TAXCODE (+) AND  TRUNC (alloc.created) >= r.commence and TRUNC(alloc.created) <= nvl(r.end_period,sysdate + 1000) ');
                qrySetup.SQL.Add('  AND ALLOC.NMEMO = SUBBILLS.NMEMO (+) AND ALLOC.NSUBBILL = SUBBILLS.NSUBBILL (+) ');
                qrySetup.ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                qrySetup.ParamByName('NMEMO').AsInteger := Self.qryBill.FieldByName('NMEMO').AsInteger;
                qrySetup.Open;
              end;

                // Now adjust the unbilled disbursements chart
              MatterUpdate(Self.qryBill.FieldByName('NMATTER').AsInteger,
                'UNBILL_DISB', - Self.qryBill.FieldByName('DISB').AsCurrency);
              MatterUpdate(Self.qryBill.FieldByName('NMATTER').AsInteger,
                'BILL_DISB', Self.qryBill.FieldByName('DISB').AsCurrency);

              // 10 Dec 2018 DW these needed to be restricted
              if (Self.qryBill.FieldByName('DISB').AsCurrency <> 0.0) then
              begin
                  cAllocDisbAmount   := qrySetup.FieldByName('SUMAMOUNT').AsCurrency;
                  cAllocDisbTax      := qrySetup.FieldByName('TAXAMOUNT').AsCurrency;

                  if ((abs(cAllocDisbAmount) <>  Self.qryBill.FieldByName('DISB').AsCurrency)) and (Self.qryBill.FieldByName('DISB').AsCurrency <> 0) then
                  begin
                     cAllocDisbAmountDiff  := abs(cAllocDisbAmount) - Self.qryBill.FieldByName('DISB').AsCurrency;
                     cAllocDisbTaxDiff     := abs(cAllocDisbTax) - Self.qryBill.FieldByName('DISBTAX').AsCurrency;
                  end;

                  {post normal componsnts}
                  sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_CR'),'',false,'Error with Disbursement Chart');

                  PostLedger(dtpDispatched.Date
                    , - qrySetup.FieldByName('SUMAMOUNT').AsCurrency  //Self.qryBill.FieldByName('DISB').AsCurrency
                    , - qrySetup.FieldByName('TAXAMOUNT').AsCurrency
                    , Self.qryBill.FieldByName('FILEID').AsString
                    , 'NMEMO'
                    , Self.qryBill.FieldByName('NMEMO').AsInteger
                    , sMemoDesc
                    , sLedgerKey
                    , qryMatter.FieldByName('AUTHOR').AsString
                    , -1
                    , ''
                    // 20 Dec 2017 DW Added sTaxCode
                    //, dmAxiom.DefaultTax);
                    , sTaxCode);

                    // Now adjust the Debtors the other way
                  MatterUpdate(Self.qryBill.FieldByName('NMATTER').AsInteger, 'DEBTORS',
                    Self.qryBill.FieldByName('DISB').AsCurrency - qrySetup.FieldByName('TAXAMOUNT').AsFloat);

                  {post componsnts}
                  sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_DR'),'',false,'Error with Disbursement Chart');

                  PostLedger(dtpDispatched.Date
                    , qrySetup.FieldByName('SUMAMOUNT').AsCurrency  //- Self.qryBill.FieldByName('DISB').AsCurrency
                    , 0
                    , Self.qryBill.FieldByName('FILEID').AsString
                    , 'NMEMO'
                    , Self.qryBill.FieldByName('NMEMO').AsInteger
                    , sMemoDesc
                    , sLedgerKey
                    , qryMatter.FieldByName('AUTHOR').AsString
                    , -1
                    , ''
                    // 20 Dec 2017 DW Added sTaxCode
                    //, dmAxiom.DefaultTax);
                    , sTaxCode);

                    // 05/09/2019  AES this is to post to Adj GL
                    if (Self.qryBill.FieldByName('BILLED_DISB_ADJUSTMENT').AsFloat <> 0) then
                    begin
                       sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_ADJ_CR'),'',false,'Error with Disbursement Chart');

                       PostLedger(dtpDispatched.Date
                          , - Self.qryBill.FieldByName('BILLED_DISB_ADJUSTMENT').AsCurrency
                          , 0
                          , Self.qryBill.FieldByName('FILEID').AsString
                          , 'NMEMO'
                          , Self.qryBill.FieldByName('NMEMO').AsInteger
                          , sMemoDesc
                          , sLedgerKey
                          , qryMatter.FieldByName('AUTHOR').AsString
                          , -1
                          , ''
                          , sTaxCode);
                    end;
              end;

              if (qryBill.FieldByName('DISBTAX').AsCurrency <> 0.0) then
              begin
                 // Post the Disb Adj Tax (BILL_DISB_TAX_DR).
                 if (lsBillDisbTaxAdjDR <> '') then
                 begin
                    lsBillDisbTaxSubDR := lsBillDisbTaxDR + lsChartSuffix;

                    { rb - removed this, didn't make sense anyway
                      if (not ValidLedger(dmAxiom.Entity, lsBillDisbTaxSubDR)) then
                        lsBillDisbTaxSubDR := lsBillDisbTaxDR;
                      }

                        {post componsnts}
                    sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,lsBillDisbTaxSubDR,'',false,'Error with Disbursement Tax Chart');

                     PostLedger(dtpDispatched.Date
                        , qrySetup.FieldByName('TAXAMOUNT').AsCurrency   //- Self.qryBill.FieldByName('DISBTAX').AsCurrency
                        , 0
                        , Self.qryBill.FieldByName('FILEID').AsString
                        , 'NMEMO'
                        , Self.qryBill.FieldByName('NMEMO').AsInteger
                        , sMemoDesc
                        , sLedgerKey
                        , qryMatter.FieldByName('AUTHOR').AsString
    				            , -1
                        , ''
                        // 20 Dec 2017 DW Added sTaxCode
                        //, dmAxiom.DefaultTax);
                        , sTaxCode);
                 end;    //  end if
              end;   //  end if

              {post disb adjustments if any }
              if (cAllocDisbAmountDiff <> 0) then
              begin
                 sLedgerKey := glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_ADJ_CR'),'',false,'Error with Disbursement Adjustment Chart');

                 PostLedger(dtpDispatched.Date
                   , - cAllocDisbAmountDiff
                   , - cAllocDisbTaxDiff
                   , Self.qryBill.FieldByName('FILEID').AsString
                   , 'NMEMO'
                   , Self.qryBill.FieldByName('NMEMO').AsInteger
                   , sMemoDesc
                   , sLedgerKey
                   , qryMatter.FieldByName('AUTHOR').AsString
    			         , -1
                   , ''
                   // 20 Dec 2017 DW Added sTaxCode
                   //, dmAxiom.DefaultTax);
                   , sTaxCode);

                   // Now adjust the Debtors the other way
                 MatterUpdate(Self.qryBill.FieldByName('NMATTER').AsInteger, 'DEBTORS',
                     Self.qryBill.FieldByName('DISB').AsCurrency - qrySetup.FieldByName('TAXAMOUNT').AsFloat);

                 {post componsnts}
                 sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_DISB_ADJ_DR'),'',false,'Error with Disbursement Adjustment Chart');

                 PostLedger(dtpDispatched.Date
                   , cAllocDisbAmountDiff
                   , 0
                   , Self.qryBill.FieldByName('FILEID').AsString
                   , 'NMEMO'
                   , Self.qryBill.FieldByName('NMEMO').AsInteger
                   , sMemoDesc
                   , sLedgerKey
                   , qryMatter.FieldByName('AUTHOR').AsString
    			         , -1
                   , ''
                   // 20 Dec 2017 DW Added sTaxCode
                   //, dmAxiom.DefaultTax);
                   , sTaxCode);

                 if (cAllocDisbTaxDiff <> 0.0) then
                 begin
                    // Post the Disb Tax (BILL_DISB_ADJ_TAX_DR).    BJ  29/11/2002
                    if (lsBillDisbTaxAdjDR <> '') then
                    begin
                       lsBillDisbTaxAdjSubDR := lsBillDisbTaxAdjDR + lsChartSuffix;

                       {post componsnts}
                       sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString, lsBillDisbTaxAdjSubDR,'',false,'Error with Disbursement Adjustment Tax Chart');

                       PostLedger(dtpDispatched.Date
                           , cAllocDisbTaxDiff
                           , 0
                           , Self.qryBill.FieldByName('FILEID').AsString
                           , 'NMEMO'
                           , Self.qryBill.FieldByName('NMEMO').AsInteger
                           , sMemoDesc
                           , sLedgerKey
                           , qryMatter.FieldByName('AUTHOR').AsString
    			     	            , -1
                           , ''
                           // 20 Dec 2017 DW Added sTaxCode
                           //, dmAxiom.DefaultTax);
                           , sTaxCode);
                    end;    //  end if
                 end;   //  end if
              end;  // disb adjustments


              // Now, let us adjust the unpaid creditors
              if qryBill.FieldByName('UPCRED').AsCurrency <> 0.0 then
              begin
                 qrySetup.Close;
                 qrySetup.SQL.Clear;
                 qrySetup.SQL.Add('SELECT SUM(AMOUNT) AS SUMAMOUNT, SUM(TAX) AS TAXAMOUNT');
                 qrySetup.SQL.Add('FROM ALLOC');
                 qrySetup.SQL.Add('WHERE NMATTER = :NMATTER');
                 qrySetup.SQL.Add('  AND NMEMO = :NMEMO');
                 qrySetup.Params[0].AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
                 qrySetup.Params[1].AsInteger := Self.qryBill.FieldByName('NMEMO').AsInteger;
                 qrySetup.Open;

                 {post componsnts}
                 sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_UPCRED_CR'),'',false,'Error with Unpaid Creditors Chart');

                 PostLedger(dtpDispatched.Date
                    , - (Self.qryBill.FieldByName('UPCRED').AsCurrency {+ qryBill.FieldByName('UPCREDTAXFREE').AsCurrency})
                    , 0
                    , Self.qryBill.FieldByName('FILEID').AsString
                    , 'NMEMO'
                    , Self.qryBill.FieldByName('NMEMO').AsInteger
                    , sMemoDesc
                    , sLedgerKey
                    , qryMatter.FieldByName('AUTHOR').AsString
                    , -1
                    , ''
                    // 20 Dec 2017 DW Added sTaxCode
                    //, dmAxiom.DefaultTax);
                    , sTaxCode);

                  // Now adjust the unbilled creditors chart
                 MatterUpdate(Self.qryBill.FieldByName('NMATTER').AsInteger,
                    'UNBILL_UPCRED', 0.0 - Self.qryBill.FieldByName('UPCRED').AsCurrency);
                 MatterUpdate(Self.qryBill.FieldByName('NMATTER').AsInteger,
                    'BILL_UPCRED', Self.qryBill.FieldByName('UPCRED').AsCurrency);

                 {post componsnts}
                 sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_UPCRED_DR'),'',false,'Error with Unpaid Creditors Chart');

                 PostLedger(dtpDispatched.Date
                    , (Self.qryBill.FieldByName('UPCRED').AsCurrency {+ Self.qryBill.FieldByName('UPCREDTAXFREE').AsCurrency})
                    , 0
                    , Self.qryBill.FieldByName('FILEID').AsString
                    , 'NMEMO'
                    , Self.qryBill.FieldByName('NMEMO').AsInteger
                    , sMemoDesc
                    , sLedgerKey
                    , qryMatter.FieldByName('AUTHOR').AsString
                    , -1
                    , ''
                    // 20 Dec 2017 DW Added sTaxCode
                    //, dmAxiom.DefaultTax);
                    , sTaxCode);

                 if (qryBill.FieldByName('UPCREDTAX').AsCurrency <> 0.0) then
                 begin
                  // Post the UpCred Tax (BILL_UPCRED_TAX_DR).    BJ  29/11/2002
                    if (lsBillUpCredTaxDR <> '') then
                    begin
                      lsBillUpCredTaxSubDR := lsBillUpCredTaxDR + lsChartSuffix;

                      { rb - removed this, didn't make sense anyway
                      if (not ValidLedger(dmAxiom.Entity, lsBillUpCredTaxSubDR)) then
                        lsBillUpCredTaxSubDR := lsBillUpCredTaxDR;
                      }

                      {post componsnts}
                      sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,lsBillUpCredTaxSubDR,'',false,'Error with Unpaid Creditors Tax Chart');

                      PostLedger(dtpDispatched.Date
                        , - Self.qryBill.FieldByName('UPCREDTAX').AsCurrency
                        , 0
                        , Self.qryBill.FieldByName('FILEID').AsString
                        , 'NMEMO'
                        , Self.qryBill.FieldByName('NMEMO').AsInteger
                        , sMemoDesc
                        , sLedgerKey
                        , qryMatter.FieldByName('AUTHOR').AsString
    			    	          , -1
                        , ''
                        // 20 Dec 2017 DW Added sTaxCode
                        //, dmAxiom.DefaultTax);
                        , sTaxCode);

                    end;    //  end if (lsBillUpCredTaxDR <> '') then
                 end; // end if (qryBill.FieldByName('UPCREDTAX').AsCurrency <> 0.0) then
              end; // end if qryBill.FieldByName('UPCRED').AsCurrency <> 0.0 then

              // Now, let us adjust the amount paid from trust
              if (qryBill.FieldByName('TRUST').AsCurrency <> 0.0) then
              begin
                sBank := TableString('MATTER','FILEID',Self.qryBill.FieldbyName('FILEID').AsString,'ACCT');
                ReqDate := Trunc(Date);
                // AES 14/06/2006
                // Only do this if there is no authority to transfer funds immediately.
                if TableString('MATTER','NMATTER',Self.qryBill.FieldByName('NMATTER').AsString,'TRUSTAUTH') = 'N' then
                begin
                   if (SystemInteger('TTO_CLEARANCE_DAYS') > 0) then
                   begin
                       ReqDate := GetClearDate(Trunc(Date),SystemInteger('TTO_CLEARANCE_DAYS'));
                       // changed by AES 07/09/2009 uses same function as receipts, accounts for public holidays if defined
{                       case DayofTheWeek(IncDay(Trunc(Date),SystemInteger('TTO_CLEARANCE_DAYS'))) of
                          DayMonday:               ReqDate := IncDay(Trunc(Date),5);
                          DayTuesday..DayFriday:   ReqDate := IncDay(Trunc(Date),3);
                          DaySaturday:             ReqDate := IncDay(Trunc(Date),5);
                          DaySunday:               ReqDate := IncDay(Trunc(Date),4);
                       end;  }
                   end
                   else
                      ReqDate := Trunc(Date);
                end;
                if (sBank = '') then
                  MessageDlg('There is no Trust account associated with this matter',mtWarning,[mbOK],0);
                qryCheqReq.Open;
                qryCheqReq.Insert;
                qryCheqReq.FieldByName('NCHEQREQ').AsInteger  := GetSequenceNumber('sqnc_ncheqreq');
                qryCheqReq.FieldByName('CONVERTED').AsString  := 'N';
                qryCheqReq.FieldByName('REQDATE').AsDateTime  := ReqDate;
                qryCheqReq.FieldByName('BANK').AsString       := sBank;
                qryCheqReq.FieldByName('TRUST').AsString      := 'T';
                qryCheqReq.FieldByName('FILEID').AsString     := Self.qryBill.FieldByName('FILEID').AsString;
                qryCheqReq.FieldByName('NMATTER').AsInteger   := Self.qryBill.FieldByName('NMATTER').AsInteger;
                qryCheqReq.FieldByName('NMEMO').AsInteger     := Self.qryBill.FieldByName('NMEMO').AsInteger;
                qryCheqReq.FieldByName('PAYEE').AsString      := dmAxiom.EntityName;
                qryCheqReq.FieldByName('DESCR').AsString      := 'Trust to Office Transfer - Payment of Bill #' + tbRefno.Text;;
                qryCheqReq.FieldByName('AMOUNT').AsCurrency   := Self.qryBill.FieldByName('TRUST').AsCurrency;
                qryCheqReq.FieldByName('AUTHOR').AsString     := Self.qryBill.FieldByName('AUTHOR').AsString;
                //qryCheqReq.FieldByName('NOTE').AsString       := 'Automatically Generated from Bill #' + qryBill.FieldByName('REFNO').AsString;
                qryCheqReq.FieldByName('NOTE').AsString       := 'Automatically Generated from Bill #' + tbRefno.Text;
                qryCheqReq.FieldByName('HELD').AsString       := 'N';
                qryCheqReq.FieldByName('BILLNO').AsString     := tbRefno.Text;
                qryCheqReq.FieldByName('GROUPABLE').AsString  := 'Y';
                qryCheqReq.Post;
                qryCheqReq.ApplyUpdates;
              end;

              // Now update the fees, etc, as billed
              // and recalc the TAX

              // Fees
              // MGD 30/10/02 - removed recalc of tax rates...
              // mgd 29/11/02 - readded recalc of tax rates...
              // AES 19/5/04 - removed recalc of tax rates...
    {          qrySetup.SQL.Text := 'UPDATE FEE A SET BILLED = ''Y'', INVOICEDATE = :DISPATCHED '+
                                   ',TAX =(SELECT (A.AMOUNT*(ABS(RATE)/100)) FROM TAXRATE WHERE TAXCODE=A.TAXCODE) '+
                                   ' WHERE TYPE <> ''ia'' AND '+
                                   ' NMATTER = ' + IntToStr(qryBill.FieldByName('NMATTER').AsInteger) +
                                   ' AND NMEMO = ' + IntToStr(qryBill.FieldByName('NMEMO').AsInteger);  }
             qrySetup.SQL.Text := 'UPDATE FEE A SET BILLED = ''Y'', INVOICEDATE = :DISPATCHED '+
                                   ' WHERE TYPE <> ''ia'' AND '+
                                   ' NMATTER = ' + IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger) +
                                   ' AND NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);
              qrySetup.ParamByName('DISPATCHED').AsDateTime := dtpDispatched.Date;
              qrySetup.ExecSQL;
              qrySetup.Close;

              {
                Uplift fees.

                If the uplift has not been changed, it must be set to billed or
                the matter will not be updated.

                Brendan Jagtenberg
                14/04/2003

              }
              // AES 19/5/04 - removed recalc of tax rates...
             { qrySetup.SQL.Text := 'UPDATE FEE F SET BILLED = ''Y'', INVOICEDATE = :DISPATCHED '+
                                   ',TAX =(SELECT (F.AMOUNT*(ABS(RATE)/100)) FROM TAXRATE WHERE TAXCODE = F.TAXCODE) '+
                                   'WHERE TYPE = ''ia'' AND Billed = ''N'' AND '+
                                   'NMATTER = ' + IntToStr(qryBill.FieldByName('NMATTER').AsInteger) + ' AND '+
                                   'NMEMO = ' + IntToStr(qryBill.FieldByName('NMEMO').AsInteger); }
              qrySetup.SQL.Text := 'UPDATE FEE F SET BILLED = ''Y'', INVOICEDATE = :DISPATCHED '+
                                   'WHERE TYPE = ''ia'' AND '+ // Billed = ''N'' AND '+
                                   'NMATTER = ' + IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger) + ' AND '+
                                   'NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);
              qrySetup.ParamByName('DISPATCHED').AsDateTime := dtpDispatched.Date;
              qrySetup.ExecSQL;
              qrySetup.Close;

              // Disburements
              {qrySetup.SQL.Text := 'UPDATE ALLOC A SET BILLED = ''Y'' ,TAX =(SELECT (A.AMOUNT*(ABS(RATE)/100)) '+
                                   'FROM TAXRATE WHERE TAXCODE=A.TAXCODE) WHERE NMATTER = ' +
                                   IntToStr(qryBill.FieldByName('NMATTER').AsInteger) +
                                   ' AND NMEMO = ' + IntToStr(qryBill.FieldByName('NMEMO').AsInteger); }

              qrySetup.SQL.Text := 'UPDATE ALLOC A SET BILLED = ''Y'' WHERE NMATTER = ' +
                                   IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger) +
                                   ' AND NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);
              qrySetup.ExecSQL;
              qrySetup.Close;
              // Anticipated Disburements
              // *** 15/09/2003 AES commented out - removed the tax part from the update statement as the rounding is incorrect
           {   qrySetup.SQL.Text := 'UPDATE CHEQREQ CR SET BILLED = ''Y'', INVOICEDATE = :DISPATCHED ,'+
                                   'TAX =(SELECT (CR.AMOUNT*(ABS(RATE)/100)) FROM TAXRATE WHERE TAXCODE=CR.TAXCODE) '+
                                   'WHERE FILEID = ' + QuotedStr(qryBill.FieldByName('FILEID').AsString) + ' AND '+
                                   'NMEMO = ' + IntToStr(qryBill.FieldByName('NMEMO').AsInteger);  }

              qrySetup.SQL.Text := 'UPDATE CHEQREQ SET BILLED = ''Y'', INVOICEDATE = :DISPATCHED '+
                                   'WHERE FILEID = ' + QuotedStr(Self.qryBill.FieldByName('FILEID').AsString) + ' AND '+
                                   'NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);

              qrySetup.ParamByName('DISPATCHED').AsDateTime := dtpDispatched.Date;
              qrySetup.ExecSQL;
              qrySetup.Close;

              // Sundries
              // AES 19/5/04 - removed recalc of tax rates...
     {         qrySetup.SQL.Text := 'UPDATE SUNDRY A SET BILLED = ''Y'' '+
                                   ',TAX =(SELECT (A.AMOUNT*(ABS(RATE)/100)) FROM TAXRATE WHERE TAXCODE=A.TAXCODE) '+
                                   ' WHERE '+
                                   ' NMATTER = ' + IntToStr(qryBill.FieldByName('NMATTER').AsInteger) +
                                   ' AND NMEMO = ' + IntToStr(qryBill.FieldByName('NMEMO').AsInteger); }
              qrySetup.SQL.Text := 'UPDATE SUNDRY A SET BILLED = ''Y'' '+
                                   ' WHERE '+
                                   ' NMATTER = ' + IntToStr(Self.qryBill.FieldByName('NMATTER').AsInteger) +
                                   ' AND NMEMO = ' + IntToStr(Self.qryBill.FieldByName('NMEMO').AsInteger);
              qrySetup.ExecSQL;
              qrySetup.Close;

              // If there is a Trust Transfer to be done, adjust the Matter
              if Self.qryBill.FieldByName('TRUST').AsCurrency <> 0 then
              begin
                qryMatter.Edit;
                qryMatter.FieldByName('TRUST_TRANS').AsCurrency := qryMatter.FieldByName('TRUST_TRANS').AsCurrency + qryBill.FieldByName('TRUST').AsCurrency;
                qryMatter.FieldByName('LASTTRANS').AsCurrency := Now;
                qryMatter.Post;
              end;

              if chkCompleted.Checked then
              begin
                 qryMatter.Edit;
                 qryMatter.FieldByName('COMPLETED').AsDateTime := Now;
                 qryMatter.Post;
              end;
            end;

            // Work out the tax
            cDisbTax := Self.qryBill.FieldByName('DISBTAX').AsCurrency;
            cAntdTax := Self.qryBill.FieldByName('ANTDTAX').AsCurrency;
            cUpCredTax := Self.qryBill.FieldByName('UPCREDTAX').AsCurrency;
            // 18/5/2004  AES added following line
            cSundTax := Self.qryBill.FieldByName('SUNDTAX').AsCurrency;

            if (cFeesTax + cDisbTax + cUpCredTax + cAntdTax + cSundTax + cDiscountTax) <> 0 then
            begin
            {
              This has now been replaced by individual postings of the tax to
              individual ledgers.

              BJ 29/11/2002

              // Adjust debtors and GST liability
              PostLedger(dtpDispatched.DateTime,
                - (cFeesTax + cDisbTax + cUpCredTax + cAntdTax + cSundTax),
                0,
                qryBill.FieldByName('FILEID').AsString,
                'NMEMO',
                qryBill.FieldByName('NMEMO').AsInteger,
                sMemoDesc,
                TableString('ENTITY', 'CODE', dmAxiom.Entity, 'BILL_FEE_DR'),
                qryMatter.FieldByName('AUTHOR').AsString);
            }

              if (FeeAllocTaxDiff <> cFeesTax) then
              begin

                 {post componsnts}
                 sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,
                                lsBillFeeTaxSubDR,'',true,'Error with Fee Tax Chart');


                 PostLedger(dtpDispatched.Date
                   , FeeAllocTaxDiff - cFeesTax
                   , 0
                   , Self.qryBill.FieldByName('FILEID').AsString
                   , 'NMEMO'
                   , Self.qryBill.FieldByName('NMEMO').AsInteger
                   , sMemoDesc + ' - GST rounding adjustment'
                   , sLedgerKey
                   , qryMatter.FieldByName('AUTHOR').AsString
       			   , -1
                   , ''
                   // 20 Dec 2017 DW Added sTaxCode
                   //, dmAxiom.DefaultTax);
                   , sTaxCode);
                 bTaxDiff := True;
              end;

              {post componsnts}
              // 20 dEC 2017 Added sTaxCode
              //sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('TAXTYPE', 'CODE', 'GST', 'OUTPUTLEDGER'),'',true,'Error with Fee Tax Chart');
              sLedgerKey :=  glComponentSetup.buildLedgerKey(qryMatter.FieldByName('NMATTER').AsString,TableString('TAXTYPE', 'CODE', sTaxCode, 'OUTPUTLEDGER'),'',true,'Error with Fee Tax Chart');

              PostLedger(dtpDispatched.Date
                , (cFeesTax + cDisbTax + cUpCredTax + cAntdTax + cSundTax)
                , 0
                , Self.qryBill.FieldByName('FILEID').AsString
                , 'NMEMO'
                , Self.qryBill.FieldByName('NMEMO').AsInteger
                , sMemoDesc
                , sLedgerKey
                , qryMatter.FieldByName('AUTHOR').AsString
    			   , -1
                , ''
                // 20 Dec 2017 DW Added sTaxCode
                //, dmAxiom.DefaultTax);
                , sTaxCode);

              PostLedger(dtpDispatched.Date
                , (cDiscountTax)
                , 0
                , Self.qryBill.FieldByName('FILEID').AsString
                , 'NMEMO'
                , Self.qryBill.FieldByName('NMEMO').AsInteger
                , sMemoDesc
                , sLedgerKey
                , qryMatter.FieldByName('AUTHOR').AsString
    			      , -1
                , ''
                // 20 Dec 2017 DW Added sTaxCode
                //, dmAxiom.DefaultTax
                , sTaxCode
                , False
                , '0'
                , 0
                , 0
                , 0
                , False
                , Self.qryBill.FieldByName('NMEMO').AsInteger);
            end;

    {
      Code Modified 16.01.2003 GG

      If posting fails, show a value breakdown of the tax components that we
      attempted to post.  This will help users identify which part(s) contributed
      to the invalid total.
    }

            try
              //now check the ledger balance
              if not bTaxDiff then
                CheckLedgerTotal;
            except
               MessageDlg('The Bill did not post. '+ #10#13 +
                         'Breakdown of Bill Tax Totals: ' + #10#13#10#13 +
                         'Fees Tax:     ' + FormatCurr('$0.00', cFeesTax) + #10#13 +
                         'Disb Tax:     ' + FormatCurr('$0.00', cDisbTax) + #10#13 +
                         'UpCred Tax:   ' + FormatCurr('$0.00', cUpCredTax) + #10#13 +
                         'Antd Tax:     ' + FormatCurr('$0.00', cAntdTax) + #10#13 +
                         'Sund Tax:     ' + FormatCurr('$0.00', cSundTax) + #10#13 +
                         'Disc Tax:     ' + FormatCurr('$0.00', cDiscountTax) ,
                         mtInformation, [mbOk], 0);
                 raise
            end;

            // Finally dispatch the invoice
            Self.qryBill.Close;
            Self.qryBill.SQL.Clear;
            Self.qryBill.SQL.Add('UPDATE NMEMO SET');
            Self.qryBill.SQL.Add('DISPATCHED = :DISPATCHED, EXPPAYMENT = :EXPPAYMENT, DEBTORS = :DEBTORS, ');
            Self.qryBill.SQL.Add('TAX = :TAX, FEESTAX = :FEESTAX, DISBTAX = :DISBTAX, UPCREDTAX = :UPCREDTAX, SUNDTAX = :SUNDTAX, ANTDTAX = :ANTDTAX, ');
            Self.qryBill.SQL.Add('AUTHOR = :AUTHOR, PARTNER = :PARTNER, SYSTEMDATE = sysdate, ');
            Self.qryBill.SQL.Add('REFNO = ' + QuotedStr(tbRefno.Text) + ', ');
            // 30/09/2004 TH - Commented nulling of DRAFT_BILL_NO
            // qryBill.SQL.Add(' DRAFT_BILL_NO = NULL, ');
            Self.qryBill.SQL.Add(' DRAFT_BILL_NO = ' + QuotedStr(tbRefno.Text) + ', ');

            if TryStrToInt(tbRefno.Text, sBillNoTest) then
               Self.qryBill.SQL.Add(' BPAY_REFERENCE = ' + QuotedStr(CreateBPayReference(tbRefno.Text)) + ', ');

            Self.qryBill.SQL.Add('FEES_PAID = 0, DISB_PAID = 0, UPCRED_PAID = 0, ANTD_PAID = 0, SUND_PAID = 0, ');
            Self.qryBill.SQL.Add('TAX_PAID = 0, FEESTAX_PAID = 0, DISBTAX_PAID = 0, UPCREDTAX_PAID = 0, ANTDTAX_PAID = 0, SUNDTAX_PAID = 0');
            Self.qryBill.SQL.Add(', IS_DRAFT = ''N'' ');
            Self.qryBill.SQL.Add('WHERE NMEMO = ' + IntToStr(iInvoice));

            Self.qryBill.ParamByName('DISPATCHED').AsDateTime    := dtpDispatched.Date;
            Self.qryBill.ParamByName('EXPPAYMENT').AsDateTime    := Trunc(dtpExpectedPayment.Date);
            Self.qryBill.ParamByName('DEBTORS').AsCurrency       := 0;
            Self.qryBill.ParamByName('TAX').AsCurrency           := (cFeesTax + cDisbTax + cAntdTax + cUpCredTax + cSundTax);
            Self.qryBill.ParamByName('FEESTAX').AsCurrency       := cFeesTax;
            Self.qryBill.ParamByName('DISBTAX').AsCurrency       := cDisbTax;
            Self.qryBill.ParamByName('UPCREDTAX').AsCurrency     := cUpCredTax;
            Self.qryBill.ParamByName('ANTDTAX').AsCurrency       := cAntdTax;
            Self.qryBill.ParamByName('SUNDTAX').AsCurrency       := cSundTax;
            Self.qryBill.ParamByName('AUTHOR').AsString          := qryMatter.FieldByName('AUTHOR').AsString;
            Self.qryBill.ParamByName('PARTNER').AsString         := qryMatter.FieldByName('PARTNER').AsString;
            Self.qryBill.ExecSQL;
            Self.qryBill.Close;

            // update the dispatched date in fee dist in case it changed since creation of bill
            qrySetup.SQL.Text := 'UPDATE FEEDIST SET CREATED_DATE = :DISPATCHED '+
                                 ' WHERE NMEMO = ' + IntToStr(iInvoice) + ' AND NMATTER = ' + qryMatter.FieldByName('NMATTER').AsString;
            qrySetup.ParamByName('DISPATCHED').AsDateTime := dtpDispatched.Date;
            qrySetup.ExecSQL;
            qrySetup.Close;

            {
              Not need now, using a new method for getting and setting the bill
              number. Refer MiscFunc - NextRefno.

              Brendan Jagtenberg

              26/03/2003


            // Update the last bill number
            qryTmp.Close;
            qryTmp.SQL.Text := 'UPDATE ENTITY SET LASTBILL = ' + QuotedStr(tbRefno.Text) + ' WHERE CODE = ''' + dmAxiom.Entity + '''';
            qryTmp.ExecSQL;
            qryTmp.Close;

            }


    {        // debtor task system
            if SystemString('DEBTOR_TASK') = 'Y' then
            begin
               try
               frmDebtorTaskNew := TfrmDebtorTasknew.Create(self);
               frmDebtorTaskNew.externalTransaction := true;
               frmDebtorTaskNew.init(iInvoice);

               iModResult := frmDebtorTaskNew.ShowModal;

               if iModResult <> mrOk then
               begin
                  if MsgAsk('Debtor task not created, do you want to post this invoice') = mrNo then
                  begin
                     dmAxiom.uniInsight.Rollback;
                     self.Close;
                     exit;
                  end;
               end;
               finally
                  frmDebtorTaskNew.Free;
               end;
            end;         }

            // post the sub bills
             if SystemString('ALLOW_SPLIT_BILLS') = 'Y' then
                dmAxiom.upDateSubBills(iInvoice);

         except
            on E: Exception do
            begin
               dmAxiom.uniInsight.Rollback;
               bPostingFailed := True;

{               qryDistFees.CancelUpdates;
               qryTmp.Close;
               qryTmp.SQL.Text := 'DELETE FROM FEEDIST WHERE NMEMO = ' + IntToStr(AMemo);
               qryTmp.Execute;
}
               if not Self.Visible then
                  Self.ShowModal;
               MsgErr('Bill posting failed:' + #13 + #13 + E.Message);
            end;
         end;

      // If we get here it has worked
         if (bPostingFailed = False) then
         begin
            // create bpay code when want to keep sequential bill numbers
            with Self.qryBill do
            begin
               Close;
               SQL.Clear;
               SQL.Add('SELECT NMEMO.*, NMEMO.ROWID FROM NMEMO ');
               SQL.Add('WHERE NMEMO = ' + IntToStr(iInvoice));
               Open;
            end;
            if Self.qryBill.FieldByName('BPAY_REFERENCE').IsNull then
            begin
//               if (not qryBill.FieldByName('DRAFT_BILL_NO').IsNull) then
//               begin
                  qryBill.Edit;
                  qryBill.FieldByName('BPAY_REFERENCE').AsString  := CreateBPayReference(Self.qryBill.FieldByName('REFNO').AsString);
                  qryBill.Post;
//                end;
            end;
            Self.qryBill.Close;

            try
               dmAxiom.uniInsight.Commit;
            finally
               bPosted := True;
               // print and save invoice if option set
               if (chkprintbill.Checked or (SystemString('AUTO_PRINT_BILL')='Y')) and (not ClickPost) then
               begin
                  qryCalcDebtors.Close;
                  qryCalcDebtors.ParamByName('NMEMO').AsInteger := iInvoice;
                  qryCalcDebtors.ExecSql;
                  qryCalcDebtors.Close;

                  InvoiceMerge(iInvoice, iNMatter, chkprintbill.Checked, (SystemString('AUTO_PRINT_BILL')='Y'));
               end;

               // now save debtor task templates, if any
               if SystemString('DEBTOR_TASK') = 'Y' then
               begin
                  try
                     frmDebtorTaskNew := TfrmDebtorTasknew.Create(self);
                     frmDebtorTaskNew.externalTransaction := true;
                     frmDebtorTaskNew.init(iInvoice);

                     iModResult := frmDebtorTaskNew.ShowModal;

                  finally
                     frmDebtorTaskNew.Free;
                  end;
               end;
            end;
            Self.Close;
         end;
      end
      else
         MsgErr('Please allocate the correct amount of fees before posting');
   end;
end;

procedure TfrmInvPost.dbgrFeeDistColEnter(Sender: TObject);
begin
{  if (dbgrFeeDist.SelectedIndex <> COL_AMOUNT) and
     (dbgrFeeDist.SelectedIndex <> COL_AUTHOR) and
     (dbgrFeeDist.SelectedIndex <> COL_TAX) then
    dbgrFeeDist.SelectedIndex := COL_AMOUNT; }
end;

procedure TfrmInvPost.CalcTotals;
var
  sAuthor : string;
{
  Added 6.01.2003 GG

  Keep track of what fired this function
}
  bCalcFlag: Boolean;
{
  Added 8.01.2003 GG

  Keep track of the difference between the invoice tax component and the
  allocated tax component
}
  cAllocTaxDiff, cHighestAllocTax: Currency;
  sHighestTaxAmountAuthor: string;
begin
   if not qryDistFees.IsEmpty then
   begin
      sAuthor := qryDistFees.FieldByName('AUTHOR').AsString;
      cTotalAlloc := 0;
      cTotalAllocTax:= 0;
{
      Added 6.01.2003 GG

      Don't allow onchange to execute this function while this code is executing
}
      if bCalcOk then
      begin
         bCalcFlag:= True;
         bCalcOk:= False;
      end
      else
         bCalcFlag:= False;
      try
         qryDistFees.First;
         while not qryDistFees.EOF do
         begin
            cTotalAlloc := cTotalAlloc + qryDistFees.FieldByName('ALLOC_AMT').AsCurrency;
            cTotalAllocTax:= cTotalAllocTax + qryDistFees.FieldByName('ALLOC_TAX').AsCurrency;
            qryDistFees.Edit;
            if Self.qryBill.FieldByName('FEES').AsCurrency = 0 then
               qryDistFees.FieldByName('ALLOC_PC').AsFloat := 0
            else
               qryDistFees.FieldByName('ALLOC_PC').AsFloat := (qryDistFees.FieldByName('ALLOC_AMT').AsCurrency / Self.qryBill.FieldByName('FEES').AsCurrency) * 100;
            qryDistFees.Post;
            qryDistFees.Next;
         end;
      except
        //
      end;
{
  A   dded 8.01.2003 GG

  N   ow we need to balance the tax, but only if we have 100% of the fees allocated,
  a   nd the tax is not 100% allocated
}
{
  i   f (SimpleRounding(cTotalAlloc) = SimpleRounding(qryBill.FieldByName('FEES').AsCurrency)) and
        (SimpleRounding(cTotalAllocTax) <> SimpleRounding(qryBill.FieldByName('FEESTAX').AsCurrency)) then
}
      if (cTotalAlloc = cTotalFees) and
         (cTotalAllocTax <> cTotalFeesTax) then
      begin
         cAllocTaxDiff:= cTotalFeesTax - cTotalAllocTax;

         qryDistFees.DisableControls;

       // find out which fee-earner has the highest tax amount
         qryDistFees.First;
         cHighestAllocTax:= 0;
         while not qryDistFees.EOF do
         begin
            if qryDistFees.FieldByName('ALLOC_TAX').AsCurrency > cHighestAllocTax then
            begin
               cHighestAllocTax:= qryDistFees.FieldByName('ALLOC_TAX').AsCurrency;
               sHighestTaxAmountAuthor:= qryDistFees.FieldByName('AUTHOR').AsString;
            end;
            qryDistFees.Next;
         end;

       {
        Now that we know who has the higest tax component allocated, add the amount
        outstanding to that value
       }
         qryDistFees.Locate('AUTHOR', sHighestTaxAmountAuthor, []);
         qryDistFees.Edit;
         qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= qryDistFees.FieldByName('ALLOC_TAX').AsCurrency + cAllocTaxDiff;
         qryDistFees.Post;

         // now re-calculate the total allocated tax
         qryDistFees.First;
         cTotalAllocTax:= 0;
         while not qryDistFees.EOF do
         begin
            cTotalAllocTax:= cTotalAllocTax + qryDistFees.FieldByName('ALLOC_TAX').AsCurrency;
            qryDistFees.Next;
         end;

         qryDistFees.EnableControls;
      end;

      qryDistFees.Locate('AUTHOR', sAuthor, []);

{
  A   dded 6.01.2003 GG

  C   an allow onchange to re-calculate allocated amounts now.
}
      if bCalcFlag then
         bCalcOk:= True;
   end;

   ShowTotals;
end;

procedure TfrmInvPost.qryDistFeesALLOC_AMTChange(Sender: TField);
var
  dTaxRatio,
  dAllocAmt: double;
begin{
  Code modified 6.01.2003 GG

  If the allocated amount of fees for this fee-earner has been set to zero, make
  sure that the fees tax against that same fee-earner is also set to zero.
  Otherwise, calculate the tax amount based on a ratio of the allocated fees.
}
   if bRecalcTax then
   begin
      qryDistFees.Edit;
      if (Sender.AsCurrency = 0) then
      begin
         qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= 0
      end
      else
      begin
         {Use the ratio of the fee-earner's fees tax over the fee-earner's fees to
         calculate this fee-earner's allocated fees tax}
         if qryDistFees.FieldByName('ALLOC_AMT').AsFloat = 0 then
            qryDistFees.FieldByName('ALLOC_TAX').AsFloat:= 0
         else
         begin
            if (qryDistFees.FieldByName('FEE_AMT').AsFloat > 0) then
            begin
               dTaxRatio:= qryDistFees.FieldByName('FEE_TAX').AsFloat / qryDistFees.FieldByName('FEE_AMT').AsFloat;
               qryDistFees.FieldByName('ALLOC_TAX').AsFloat:= (qryDistFees.FieldByName('ALLOC_AMT').AsFloat * dTaxRatio);
            end
            else
            if (qryDistFees.FieldByName('ALLOC_AMT').AsFloat > 0) then
            begin
               dAllocAmt := qryDistFees.FieldByName('ALLOC_AMT').AsFloat;
               qryDistFees.FieldByName('ALLOC_TAX').AsFloat := TaxCalc(dAllocAmt, '', 'GST', Now);
            end;
         end;
      end;
      qryDistFees.Post;
   end;

   if bCalcOk then
      CalcTotals;
end;

procedure TfrmInvPost.qryDistFeesBeforeInsert(DataSet: TDataSet);
begin
  if bCalcOk and (bFromNavigator = False) then
  begin
    bCalcOk := False;
 end;
end;

procedure TfrmInvPost.qryDistFeesAfterInsert(DataSet: TDataSet);
begin
  if bCalcOk then
  begin
    bCalcOk := False;
    qryDistFees.Edit;
    DataSet.FieldByName('FEE_AMT').AsCurrency := 0;
    DataSet.FieldByName('FEE_PC').AsFloat := 0;
    DataSet.FieldByName('ALLOC_AMT').AsCurrency := 0;
    qryDistFees.Edit;
    DataSet.FieldByName('ALLOC_PC').AsFloat := 0;
    qryDistFees.Edit;
    DataSet.FieldByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    qryDistFees.Edit;
    DataSet.FieldByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
    qryDistFees.Edit;
    DataSet.FieldByName('CREATED_DATE').AsDateTime := Now;
    qryDistFees.Edit;
    DataSet.FieldByName('NMEMO').AsInteger := AMemo;
    DataSet.Post;
    bCalcOk := True;
  end;
end;

procedure TfrmInvPost.dbgrFeeDistColExit(Sender: TObject);
begin
{  if dbgrFeeDist.SelectedIndex = COL_AUTHOR then
  begin
    if not qryDistFees.Modified then
      qryDistFees.Edit;
    qryDistFees.FieldByName('NAME').AsString := TableString('EMPLOYEE', 'CODE', qryDistFees.FieldByName('AUTHOR').AsString, 'NAME');
    qryDistFees.Post;
  end;   }
end;

procedure TfrmInvPost.popDistFeesRevertClick(Sender: TObject);
begin
   if (MsgAsk('This will remove any changes made. Continue?') = mrYes)  then
   begin
      try
         qryTmp.Close;
         qryTmp.SQL.Text := 'DELETE FROM FEEDIST WHERE NMEMO = ' + IntToStr(AMemo);
         qryTmp.Execute;
      finally
         SetupDistFees;
      end;
   end;
end;

procedure TfrmInvPost.popDistFeesMake100Click(Sender: TObject);
begin
  bCalcOk := False;
  qryDistFees.Edit;
  bRecalcTax:= False;
  qryDistFees.FieldByName('ALLOC_AMT').AsCurrency:= qryDistFees.FieldByName('ALLOC_AMT').AsCurrency + cTotalFees - cTotalAlloc;
  qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= qryDistFees.FieldByName('ALLOC_TAX').AsCurrency + cTotalFeesTax - cTotalAllocTax;
  bRecalcTax:= True;
  qryDistFees.Post;
  bCalcOk := True;
  CalcTotals;
end;

procedure TfrmInvPost.popDistFeesEqualClick(Sender: TObject);
var
  sAuthor : string;
begin
{
  Modified 8.01.2003 GG

  Changes to this method to re-calculate tax properly
}
  bCalcOk := False;
  sAuthor := qryDistFees.FieldByName('AUTHOR').AsString;
  cTotalAlloc := 0;
  cTotalAllocTax:= 0;

  qryDistFees.First;
  while not qryDistFees.EOF do
  begin
    qryDistFees.Edit;
    bRecalcTax:= False;
    qryDistFees.FieldByName('ALLOC_AMT').AsCurrency := SimpleRounding(FloatToCurr(cTotalFees / iDistFeeRecCount));
    qryDistFees.FieldByName('ALLOC_TAX').AsCurrency := SimpleRounding(FloatToCurr(cTotalFeesTax / iDistFeeRecCount));
    bRecalcTax:= True;
    cTotalAlloc := cTotalAlloc + qryDistFees.FieldByName('ALLOC_AMT').AsCurrency;
    cTotalAllocTax:= cTotalAllocTax + qryDistFees.FieldByName('ALLOC_TAX').AsCurrency;
    qryDistFees.Post;
    qryDistFees.Next;
  end;
  qryDistFees.Locate('AUTHOR', sAuthor, []);

  bCalcOk := True;
  popDistFeesMake100Click(Self);
end;

procedure TfrmInvPost.popDistFeesAllClick(Sender: TObject);
var
  sAuthor : string;
begin
  bCalcOk := False;
  sAuthor := qryDistFees.FieldByName('AUTHOR').AsString;
  cTotalAlloc:= 0;
  cTotalAllocTax:= 0;
  qryDistFees.First;
  while not qryDistFees.EOF do
  begin
    qryDistFees.Edit;
    if qryDistFees.FieldByName('AUTHOR').AsString = sAuthor then
    begin
      bRecalcTax:= False;
      qryDistFees.FieldByName('ALLOC_AMT').AsCurrency:= Self.qryBill.FieldByName('FEES').AsCurrency;
      qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= cTotalFeesTax;
      bRecalcTax:= True;
    end
    else
    begin
      qryDistFees.FieldByName('ALLOC_AMT').AsCurrency := 0;
      qryDistFees.FieldByName('ALLOC_TAX').AsCurrency := 0;
    end;
    cTotalAlloc := cTotalAlloc + qryDistFees.FieldByName('ALLOC_AMT').AsCurrency;
    cTotalAllocTax:= cTotalAllocTax + qryDistFees.FieldByName('ALLOC_TAX').AsCurrency;
    if qryDistFees.State = dsBrowse then
      qryDistFees.Edit;
    qryDistFees.FieldByName('ALLOC_PC').AsFloat := qryDistFees.FieldByName('ALLOC_AMT').AsCurrency / Self.qryBill.FieldByName('FEES').AsCurrency * 100;
    qryDistFees.Post;

    qryDistFees.Next;
  end;
  qryDistFees.Locate('AUTHOR', sAuthor, []);
  ShowTotals;
  bCalcOk := True;
end;


procedure TfrmInvPost.ShowTotals;
begin
   lblTotalAlloc.Caption := Format('%.2n', [cTotalAlloc]);
   try
      lblPercentAlloc.Caption := Format('%f', [cTotalAlloc / Self.qryBill.FieldByName('FEES').AsCurrency * 100]);
   except
      lblPercentAlloc.Caption := '0';
   end;
   lblFeesDiff.Caption:= Format('%.2n', [cTotalAlloc - Self.qryBill.FieldByName('FEES').AsCurrency]);

{
  Added 7.01.2003 GG
}
   lblTotalAllocTax.Caption := Format('%.2n', [cTotalAllocTax]);
   try
      lblPercentAllocTax.Caption := Format('%f', [cTotalAllocTax / Self.qryBill.FieldByName('FEESTAX').AsCurrency * 100]);
   except
      lblPercentAllocTax.Caption := '0';
   end;
   lblFeesTaxDiff.Caption:= Format('%.2n', [cTotalAllocTax - Self.qryBill.FieldByName('FEESTAX').AsCurrency]);

{
  Added 7.01.2003 GG

  Enable post button if fees and tax match original values
}
   if (Self.qryBill.FieldByName('FEES').AsCurrency > 0) then
   begin
      btnPost.Enabled := (SimpleRounding(cTotalAlloc) = SimpleRounding(Self.qryBill.FieldByName('FEES').AsCurrency)) and
                         (SimpleRounding(cTotalAllocTax) = SimpleRounding(Self.qryBill.FieldByName('FEESTAX').AsCurrency));
   end
   else
      btnPost.Enabled := True;
end;


procedure TfrmInvPost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if not bPosted then
   begin
//      qryDistFees.CancelUpdates;
      qryTmp.Close;
      qryTmp.SQL.Text := 'DELETE FROM FEEDIST WHERE NMEMO = ' + IntToStr(AMemo);
      qryTmp.Execute;
   end;

   Self.qryBill.Close;
   qryTotalFees.Close;
   qrySetup.Close;
   qryDistFees.Close;
   qryFees.Close;
   qrySund.Close;
   qryMatter.Close;
   qryEmps.Close;
   qryTmp.Close;

{
  Code Modified 22.11.02 GG

  Refresh the frmMatter details on exiting this form.
}
   if Self.Visible then
   begin
      if (not RefreshBillGrid) then
      begin
         try
            if Owner is TfrmMatters then
               (Owner as TfrmMatters).DisplayMatter((Owner as TfrmMatters).qryMatter.FieldByName('FILEID').AsString);
         except
         // if an error, maybe not called from Matter screen so just ignore and continue on
         end;
      end;
      //Refresh the Bills screen
      if (RefreshBillGrid) then
      begin
         try
            (Owner as TfrmBills).MakeSQL();
         except
            // not called from Bills screen
         end;
      end;
   end;

  Self.Release;
end;


procedure TfrmInvPost.popDistFeesProrataClick(Sender: TObject);
var
  sAuthor : string;
  cProRataTotal, cProRataTaxTotal : currency;
begin
   bCalcOk:= False;
   cTotalAlloc:= 0.0;
   cTotalAllocTax:= 0.0;
   cProRataTotal:= 0.0;
   cProRataTaxTotal:= 0.0;

   sAuthor := qryDistFees.FieldByName('AUTHOR').AsString;
   qryDistFees.Edit;
   qryDistFees.FieldByName('ALLOC_AMT').AsCurrency := 0.0;
//   qryDistFees.Post;
   // Go through all authors and add the amount if allocated not zero
   qryDistFees.First;
   while not qryDistFees.EOF do
   begin
      if qryDistFees.FieldByName('ALLOC_AMT').AsCurrency <> 0.0 then
      begin
         cProRataTotal := cProRataTotal + qryDistFees.FieldByName('FEE_AMT').AsCurrency;
         cProRataTaxTotal := cProRataTaxTotal + qryDistFees.FieldByName('FEE_TAX').AsCurrency;
      end;
      qryDistFees.Next;
   end;

   // Now Prorata the remaining authors
   qryDistFees.First;
   while not qryDistFees.EOF do
   begin
      qryDistFees.Edit;
      if qryDistFees.FieldByName('ALLOC_AMT').AsCurrency <> 0.0 then
      begin
         bRecalcTax:= False;
         qryDistFees.FieldByName('ALLOC_AMT').AsCurrency := SimpleRounding(FloatToCurr(cTotalFees * (qryDistFees.FieldByName('FEE_AMT').AsCurrency / cProrataTotal)));
         // check if there is tax 
         if qryDistFees.FieldByName('ALLOC_TAX').AsCurrency > 0 then
            qryDistFees.FieldByName('ALLOC_TAX').AsCurrency := SimpleRounding(FloatToCurr(cTotalFeesTax * (qryDistFees.FieldByName('FEE_TAX').AsCurrency / cProrataTaxTotal)))
         else
            qryDistFees.FieldByName('ALLOC_TAX').AsCurrency := 0;
         bRecalcTax:= True
      end;
      qryDistFees.FieldByName('ALLOC_PC').AsFloat := qryDistFees.FieldByName('ALLOC_AMT').AsCurrency / Self.qryBill.FieldByName('FEES').AsCurrency * 100;
      cTotalAlloc := cTotalAlloc + qryDistFees.FieldByName('ALLOC_AMT').AsCurrency;
      cTotalAllocTax:= cTotalAllocTax + qryDistFees.FieldByName('ALLOC_TAX').AsCurrency;
      qryDistFees.Post;

      qryDistFees.Next;
   end;
   qryDistFees.Locate('AUTHOR', sAuthor, []);
   ShowTotals;
   bCalcOk := True;
end;


procedure TfrmInvPost.FormCreate(Sender: TObject);
begin
   cTotalFees := 0;
   bPosted := False;
   bRecalcTax := False;

   dtpDispatched.EnforceLock := not dmAxiom.Security.PriorPeriodTransactions.Post;
   dtpDispatched.Date := Today;

   dtpDispatched.Enabled := dmAxiom.Security.Bill.ChangeDispatchedDate;
   dtpExpectedPayment.Enabled := dmAxiom.Security.Bill.ChangePaymentDueDate;
   qryEmps.Open;

//   EnforceCustomDateEdit1.EnforceLock := not dmAxiom.Security.PriorPeriodTransactions.Post;
//   EnforceCustomDateEdit1.Date := Today;
end;

procedure TfrmInvPost.FormShow(Sender: TObject);
begin
{
  Added 25.10.2002 GG

  If the user does not have authority to post into a locked period, prevent
  them from changing the transaction date into the locked period
}
//   dtpDispatched.EnforceLock:= not dmAxiom.Security.PriorPeriodTransactions.Post;
//   dtpDispatched.Date := Today;

//   dtpDispatched.EnforceLock := not dmAxiom.Security.PriorPeriodTransactions.Post;
//   dtpDispatched.Properties.MaxDate := Now();
//   dtpDispatched.Date := Now();

   if dbgrFeeDist.Font.Size <> dmAxiom.GridFont then
      dbgrFeeDist.Font.Size := dmAxiom.GridFont;

   if SettingLoadBoolean('sys', 'BILL', 'BILLREF') then
      tbRefNo.enabled := false
   else
      tbRefNo.enabled := true;

   chkprintbill.Enabled := (TableString('BILLTEMPLATE','CODE',Self.qryBill.FieldByName('billtemplate').AsString,'REPORT_TYPE') = 'A');
   chkPrintBill.Checked := (SystemString('SAVE_BILL_AS_PDF') = 'Y');
   bFromNavigator := False;
end;

procedure TfrmInvPost.tbRefnoDblClick(Sender: TObject);
begin
  tbRefno.Text := NextRefno;

{
  This is crap, it does not work...

  Brendan J.    25/03/2003
  
  if SettingLoadBoolean('sys', 'BILL', 'BILLREF') then
    tbRefNo.Text := qryBill.FieldbyName('NMEMO').AsString
  else
    tbRefno.Text := NextRefno(TableString('ENTITY', 'CODE', dmAxiom.Entity, 'LASTBILL'));

}

end;

procedure TfrmInvPost.cxGrid1DBTableView1AUTHORPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if not qryDistFees.Modified then
      qryDistFees.Edit;
    qryDistFees.FieldByName('NAME').AsString := TableString('EMPLOYEE', 'CODE', string(DisplayValue), 'NAME');
    qryDistFees.FieldByName('AUTHOR').AsString := string(DisplayValue);
    qryDistFees.Post;
   end;

{function TfrmInvPost.roundCurrency(iIn : Currency) : Currency;
begin
     roundCurrency := round(iIn * 100)/100;
end;

procedure TfrmInvPost.postSubBills(iNmemo : integer);
var
cTotalFees,cTotalDisb,cTotalSund,cTotalAntd,cTotalUpCred : Currency;
cTotalFeesTax,cTotalDisbTax,cTotalSundTax,cTotalAntdTax,cTotalUpCredTax,cTotalTax : Currency;
cUnallocDisb,cUnallocDisbTax : Currency;
cAllocDisb,cAllocDisbTax : Currency;
cPercent : double;

cFeePost,cFeePostCount,cFeePostTax,cFeePostTaxCount : Currency;
cSundPost,cSundPostCount,cSundPostTax,cSundPostTaxCount : Currency;
cAntdPost,cAntdPostCount,cAntdPostTax,cAntdPostTaxCount : Currency;
cUpCredPost,cUpCredPostCount,cUpCredPostTax,cUpCredPostTaxCount : Currency;
cDisbPost,cDisbPostCount,cDisbPostTax,cDisbPostTaxCount : Currency;

roundBookmark : TBookmark;

begin
 //
 qryBill.Close;
 qryBill.SQL.Clear;
 qryBill.SQL.Add('SELECT * ');
 qryBill.SQL.Add('FROM NMEMO');
 qryBill.SQL.Add('WHERE NMEMO = :NMEMO');
 qryBill.ParamByName('NMEMO').AsInteger := iNmemo;
 qryBill.open;

 cTotalFees := qryBill.fieldByName('FEES').AsCurrency;
 cTotalDisb := qryBill.fieldByName('DISB').AsCurrency;
 cTotalSund := qryBill.fieldByName('SUND').AsCurrency;
 cTotalAntd := qryBill.fieldByName('ANTD').AsCurrency;
 cTotalUpCred := qryBill.fieldByName('UPCRED').AsCurrency;

 cTotalFeesTax := qryBill.fieldByName('FEESTAX').AsCurrency;
 cTotalDisbTax := qryBill.fieldByName('DISBTAX').AsCurrency;
 cTotalSundTax := qryBill.fieldByName('SUNDTAX').AsCurrency;
 cTotalAntdTax := qryBill.fieldByName('ANTDTAX').AsCurrency;
 cTotalUpCredTax := qryBill.fieldByName('UPCREDTAX').AsCurrency;
 cTotalTax := qryBill.fieldByName('TAX').AsCurrency;
 qryBill.Close;

 qryUnAllocDisb.close;
 qryUnAllocDisb.ParamByName('NMEMO').AsInteger := iNmemo;
 qryUnAllocDisb.open;
 cUnallocDisb := qryUnAllocDisb.fieldByName('AMOUNT').AsCurrency;
 cUnallocDisbTax := qryUnAllocDisb.fieldByName('TAX').AsCurrency;
 qryUnAllocDisb.Close;

 qrySubBills.Close;
 qrySubBills.ParamByName('NMEMO').AsInteger := iNmemo;
 qrySubBills.Open;
 qrySubBills.first;

 cFeePostCount := 0;
 cFeePostTaxCount := 0;
 cAntdPostCount := 0;
 cAntdPostTaxCount := 0;
 cSundPostCount := 0;
 cSundPostTaxCount := 0;
 cUpCredPostCount := 0;
 cUpCredPostTaxCount := 0;
 cDisbPostCount := 0;
 cDisbPostTaxCount := 0;
 roundBookmark := nil;

 while not qrySubBills.Eof do
 begin

        if qrySubBills.FieldByName('ROUNDING').AsString = 'Y' then
        begin
            roundBookmark := qrySubBills.GetBookmark;
            qrySubBills.Next;
            continue;
        end;

        qryAllocDisb.close;
        qryAllocDisb.ParamByName('NMEMO').AsInteger := iNmemo;
        qryAllocDisb.ParamByName('NSUBBILL').AsInteger := qrySubBills.fieldByname('NSUBBILL').AsInteger;
        qryAllocDisb.Open;
        cAllocDisb := qryAllocDisb.FieldByName('AMOUNT').AsCurrency;
        cAllocDisbTax := qryAllocDisb.FieldByName('TAX').AsCurrency;
        qryAllocDisb.close;



        // now calc the values
        cPercent :=  qrySubBills.fieldByName('percentage').AsFloat;
        cPercent := cPercent / 100;
        // fees
        cFeePost := roundCurrency(cTotalFees * cPercent);
        cFeePostCount := cFeePostCount + cFeePost;
        cFeePostTax := roundCurrency(cTotalFeesTax * cPercent);
        cFeePostTaxCount := cFeePostTaxCount + cFeePostTax;
        // antd
        cAntdPost := roundCurrency(cTotalAntd * cPercent);
        cAntdPostCount := cAntdPostCount + cAntdPost;
        cAntdPostTax := roundCurrency(cTotalAntdTax * cPercent);
        cAntdPostTaxCount := cAntdPostTaxCount + cAntdPostTax;
        // sund
        cSundPost := roundCurrency(cTotalSund * cPercent);
        cSundPostCount := cSundPostCount + cSundPost;
        cSundPostTax := roundCurrency(cTotalSundTax * cPercent);
        cSundPostTaxCount := cSundPostTaxCount + cSundPostTax;
         // upCred
        cUpCredPost := roundCurrency(cTotalUpCred * cPercent);
        cUpCredPostCount := cUpCredPostCount + cUpCredPost;
        cUpCredPostTax := roundCurrency(cTotalUpCredTax * cPercent);
        cUpCredPostTaxCount := cUpCredPostTaxCount + cUpCredPostTax;
        //Disb
        cDisbPost := roundCurrency(cUnallocDisb * cPercent) + cAllocDisb;
        cDisbPostCount := cDisbPostCount + cDisbPost;
        cDisbPostTax := roundCurrency(cUnallocDisbTax * cPercent) + cAllocDisbTax;
        cDisbPostTaxCount := cDisbPostTaxCount + cDisbPostTax;

        // now update the record
        qrySubBills.edit;
        qrySubBills.FieldByName('FEES').AsCurrency := cFeePost;
        qrySubBills.FieldByName('FEESTAX').AsCurrency := cFeePostTax;
        qrySubBills.FieldByName('ANTD').AsCurrency := cAntdPost;
        qrySubBills.FieldByName('ANTDTAX').AsCurrency := cAntdPostTax;
        qrySubBills.FieldByName('SUND').AsCurrency := cSundPost;
        qrySubBills.FieldByName('SUNDTAX').AsCurrency := cSundPostTax;
        qrySubBills.FieldByName('UPCRED').AsCurrency := cUpCredPost;
        qrySubBills.FieldByName('UPCREDTAX').AsCurrency := cUpCredPostTax;
        qrySubBills.FieldByName('DISB').AsCurrency := cDisbPost;
        qrySubBills.FieldByName('DISBTAX').AsCurrency := cDisbPostTax;
        //qrySubBills.FieldByName('TAX').AsCurrency := cFeePostTax + cAntdPostTax + cSundPostTax + cUpCredPostTax + cDisbPostTax;
        qrySubBills.post;

        qrySubBills.Next;    
 end;
 // no the rounding entry !
 if roundBookmark <> nil then
 begin
        qrySubBills.GotoBookmark(roundBookmark);
        qrySubBills.FreeBookmark(roundBookmark);

        qrySubBills.Edit;
        qrySubBills.FieldByName('FEES').AsCurrency := cTotalFees - cFeePostCount;
        qrySubBills.FieldByName('FEESTAX').AsCurrency := cTotalFeesTax - cFeePostTaxCount;
        qrySubBills.FieldByName('ANTD').AsCurrency := cTotalAntd - cAntdPostCount;
        qrySubBills.FieldByName('ANTDTAX').AsCurrency := cTotalAntdTax - cAntdPostTaxCount;
        qrySubBills.FieldByName('SUND').AsCurrency := cTotalSund - cSundPostCount;
        qrySubBills.FieldByName('SUNDTAX').AsCurrency := cTotalSundTax - cSundPostTaxCount;
        qrySubBills.FieldByName('UPCRED').AsCurrency := cTotalUpCred - cUpCredPostCount;
        qrySubBills.FieldByName('UPCREDTAX').AsCurrency := cTotalUpCredTax - cUpCredPostTaxCount;
        qrySubBills.FieldByName('DISB').AsCurrency := cTotalDisb - cDisbPostCount;
        qrySubBills.FieldByName('DISBTAX').AsCurrency := cTotalDisbTax - cDisbPostTaxCount;
        //qrySubBills.FieldByName('TAX').AsCurrency +  (cTotalFeesTax - cFeePostTaxCount) + (cTotalAntdTax - cAntdPostTaxCount) + (cTotalSundTax - cSundPostTaxCount) + (cTotalUpCredTax - cUpCredPostTaxCount) + (cTotalDisbTax - cDisbPostTaxCount);
        qrySubBills.post;
 end;
 qrySubBills.Close;

end;
}

procedure TfrmInvPost.dtpDispatchedPropertiesChange(Sender: TObject);
var
   ABILL_DUE_DAY: integer;
   AYear,
   Amonth,
   ADay,
   AHour,
   AMinute,
   ASeconds,
   AMilliSeconds: word;
begin
   if Self.qryBill.Active then
   begin
      if Self.qryBill.FieldByName('EXPPAYMENT').IsNull then
      begin
         ABILL_DUE_DAY := TableInteger('MATTER','NMATTER',Self.qryBill.FieldByName('NMATTER').AsInteger,'BILL_DUE_DAY');
         if (ABILL_DUE_DAY > 0) then
         begin
            DecodeDateTime(Now,AYear,Amonth,ADay, AHour, AMinute, ASeconds, AMilliSeconds);
            if (AMonth + 1) = 13 then
            begin
               AMonth := 1;
               AYear := AYear + 1;
            end
            else
               AMonth := AMonth + 1;
            try
               dtpExpectedPayment.DateTime := EncodeDateTime(AYear,AMonth,ABILL_DUE_DAY,AHour, AMinute, ASeconds, AMilliSeconds);
            except
              //
            end;
         end
         else
            dtpExpectedPayment.DateTime := Now + SystemInteger('DR_PAYMENT_DAYS');
      end
      else
          dtpExpectedPayment.Date := Self.qryBill.FieldByName('EXPPAYMENT').AsDateTime;
   end;

//   dtpExpectedPayment.DateTime := Trunc(dtpDispatched.Date) + SystemInteger('DR_PAYMENT_DAYS');
end;

procedure TfrmInvPost.dtpDispatchedPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
     if DisplayValue > TcxDateEdit(Sender).Properties.MaxDate  then
      DisplayValue := DateToStr(TcxDateEdit(Sender).Properties.MaxDate);
end;

procedure TfrmInvPost.EnforceCustomDateEdit1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if DisplayValue > TcxDateEdit(Sender).Properties.MaxDate  then
      DisplayValue := DateToStr(TcxDateEdit(Sender).Properties.MaxDate);
end;

procedure TfrmInvPost.tvFeeDistALLOC_AMTPropertiesEditValueChanged(
  Sender: TObject);
var
  dTaxRatio: Single;
begin{
  Code modified 6.01.2003 GG

  If the allocated amount of fees for this fee-earner has been set to zero, make
  sure that the fees tax against that same fee-earner is also set to zero.
  Otherwise, calculate the tax amount based on a ratio of the allocated fees.
}
   if bRecalcTax then
   begin
      qryDistFees.Edit;
      if tvFeeDistALLOC_AMT.EditValue = 0 then
      begin
         qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= 0
      end
      else
      begin
         {Use the ratio of the fee-earner's fees tax over the fee-earner's fees to
         calculate this fee-earner's allocated fees tax}
         if qryDistFees.FieldByName('FEE_AMT').AsCurrency = 0 then
            qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= 0
         else
         begin
            dTaxRatio:= qryDistFees.FieldByName('FEE_TAX').AsCurrency / qryDistFees.FieldByName('FEE_AMT').AsCurrency;
            qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= FloatToCurr(qryDistFees.FieldByName('ALLOC_AMT').AsCurrency * dTaxRatio);
         end;
      end;
      qryDistFees.Post;
   end;

   if bCalcOk then
      CalcTotals;
end;

procedure TfrmInvPost.tvFeeDistALLOC_AMTPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  dTaxRatio: Single;
begin{
  Code modified 6.01.2003 GG

  If the allocated amount of fees for this fee-earner has been set to zero, make
  sure that the fees tax against that same fee-earner is also set to zero.
  Otherwise, calculate the tax amount based on a ratio of the allocated fees.
}
   if bRecalcTax then
   begin
      qryDistFees.Edit;
      if (DisplayValue = 0) then
      begin
         tvFeeDistALLOC_TAX.EditValue := 0;  //qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= 0;
            tvFeeDistALLOC_AMT.EditValue := 0;  //qryDistFees.FieldByName('FEE_AMT').AsCurrency := 0;
      end
      else
      begin
         {Use the ratio of the fee-earner's fees tax over the fee-earner's fees to
         calculate this fee-earner's allocated fees tax}
         if DisplayValue = 0 then
         begin
            tvFeeDistALLOC_TAX.EditValue := 0;  //qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= 0;
            tvFeeDistALLOC_AMT.EditValue := 0;  //qryDistFees.FieldByName('FEE_AMT').AsCurrency := 0;
         end
         else
         begin
            dTaxRatio:= tvFeeDistALLOC_TAX.EditValue/tvFeeDistALLOC_AMT.EditValue; // qryDistFees.FieldByName('FEE_TAX').AsCurrency / qryDistFees.FieldByName('FEE_AMT').AsCurrency;
            tvFeeDistALLOC_TAX.EditValue := DisplayValue * dTaxRatio;

//            qryDistFees.FieldByName('ALLOC_TAX').AsCurrency:= tvFeeDistALLOC_TAX.EditValue;  //FloatToCurr(qryDistFees.FieldByName('ALLOC_AMT').AsCurrency * dTaxRatio);
         end;
      end;
      qryDistFees.Post;
   end;

   if bCalcOk then
      CalcTotals;

end;

procedure TfrmInvPost.tvFeeDistAUTHORPropertiesChange(Sender: TObject);
begin
   if not qryDistFees.Modified then
      qryDistFees.Edit;
   qryDistFees.FieldByName('NAME').AsString := TableString('EMPLOYEE', 'CODE', qryEmps.FieldByName('CODE').AsString, 'NAME');
   qryDistFees.FieldByName('AUTHOR').AsString := qryEmps.FieldByName('CODE').AsString;
    //qryDistFees.FieldByName('NAME').AsString := TableString('EMPLOYEE', 'CODE', string(tvFeeDistAUTHOR.EditValue), 'NAME');
//    qryDistFees.FieldByName('AUTHOR').AsString := string(DisplayValue);
    qryDistFees.Post;
end;

procedure TfrmInvPost.tvFeeDistNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   if AButtonIndex = NBDI_INSERT then
   begin
      bCalcOk := True;
      bRecalcTax := True;
      bFromNavigator := True;
   end;
end;

end.

