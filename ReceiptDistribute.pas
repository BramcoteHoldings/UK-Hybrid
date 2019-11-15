unit ReceiptDistribute;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleUniProvider, Uni, DBAccess, MemDS, StdCtrls, Buttons, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters, cxContainer,
  cxLabel, cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCheckBox, cxCurrencyEdit, cxTextEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxPC, Menus, cxLookAndFeels, cxPCdxBarPopupMenu,
  cxNavigator, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxNumberLabel,
  dxDateRanges;

type
  TfrmReceiptDistribute = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    qryBill: TUniQuery;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    qryDist: TUniQuery;
    dsDist: TUniDataSource;
    neFees: TcxCurrencyEdit;
    neDisb: TcxCurrencyEdit;
    neUpCred: TcxCurrencyEdit;
    neAntd: TcxCurrencyEdit;
    neSund: TcxCurrencyEdit;
    lblRcptno: TcxLabel;
    lblBillRefno: TcxLabel;
    lblDispatched: TcxLabel;
    cxPageControl1: TcxPageControl;
    tsCheqReqs: TcxTabSheet;
    grdCheqReqs: TcxGrid;
    grdCheqReqsLevel1: TcxGridLevel;
    qrySubBill: TUniQuery;
    tvCheqReqs: TcxGridDBTableView;
    tvCheqReqsREQDATE: TcxGridDBColumn;
    tvCheqReqsDESCR: TcxGridDBColumn;
    tvCheqReqsPAYEE: TcxGridDBColumn;
    tvCheqReqsAMOUNT: TcxGridDBColumn;
    tvCheqReqsTAXCODE: TcxGridDBColumn;
    tvCheqReqsNCHEQREQ: TcxGridDBColumn;
    tvCheqReqsAllocate: TcxGridDBColumn;
    nlFeesBilled: TcxNumberLabel;
    nlDisbBilled: TcxNumberLabel;
    nlUpCredBilled: TcxNumberLabel;
    nlAntdBilled: TcxNumberLabel;
    nlSundBilled: TcxNumberLabel;
    nlFeesRec: TcxNumberLabel;
    nlDisbRec: TcxNumberLabel;
    nlUpCredRec: TcxNumberLabel;
    nlAntdRec: TcxNumberLabel;
    nlSundRec: TcxNumberLabel;
    nlFeesOwing: TcxNumberLabel;
    nlDisbOwing: TcxNumberLabel;
    nlUpCredOwing: TcxNumberLabel;
    nlAntdOwing: TcxNumberLabel;
    nlSundOwing: TcxNumberLabel;
    nlFeesBalance: TcxNumberLabel;
    nlDisbBalance: TcxNumberLabel;
    nlUpCredBalance: TcxNumberLabel;
    nlAntdBalance: TcxNumberLabel;
    nlSundBalance: TcxNumberLabel;
    nlTotal: TcxNumberLabel;
    nlReceipt: TcxNumberLabel;
    nlUnallocated: TcxNumberLabel;
    lblBillCredit: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CalcTotals(Sender: TObject);
  private
    { Private declarations }
    FDistributed: boolean;
    procedure SetTotal(Value: currency);
    procedure SetReceipt(Value: currency);
    property Total: currency write SetTotal;
    property Receipt: currency write SetReceipt;
  public
    { Public declarations }
    function SetupDistribution(Rcptno: string; NMemo,NSubBill: integer; Fees, Disb, UpCred, Antd, Sund: Currency): Boolean;
    property Distributed: boolean read FDistributed;
  end;


implementation

{$R *.DFM}


uses
  AxiomData, MiscFunc;

function TfrmReceiptDistribute.SetupDistribution(Rcptno: string; NMemo,NSubBill: integer; Fees, Disb, UpCred, Antd, Sund: Currency): Boolean;
var
   dataSet : TUniQuery;
   cTotal : Currency;
begin
   Result := False;

   cTotal := Fees+ Disb+UpCred+Antd+Sund;

   { rb 21/oct/05
    add the nsubbill param
    if this is > 0 then we assume that we are
    working with a sub bill and pull the params from that
    }

   if (NSubBill > 0) then
   begin
      dataSet := qrySubBill;
      dataSet.ParamByName('NMEMO').AsInteger := NMemo;
      dataSet.ParamByName('NSUBBILL').AsInteger := NSubBill;
   end
   else
   begin
      dataSet := qryBill;
      dataSet.ParamByName('NMEMO').AsInteger := NMemo;
   end;

   with dataSet do
   begin
      //ParamByName('NMEMO').AsInteger := NMemo;
      Open;
      if IsEmpty then
      begin
         MessageDlg('Bill is Empty', mtWarning, [mbOK], 0);
         Exit;
      end else
      begin
         qryDist.Close;
         qryDist.ParamByName('NMEMO').AsInteger := NMemo;
         qryDist.Open;

         lblDispatched.Caption := DateToStr(FieldByName('DISPATCHED').AsDateTime);

         lblBillRefno.Caption := FieldByName('REFNO').AsString;

         // Check if the amount is -ve from a bill journal write up
         if cTotal < 0 then
         begin
            neFees.Properties.MinValue := cTotal;
            neFees.Properties.MaxValue := 0;
            neDisb.Properties.MinValue := cTotal;
            neDisb.Properties.MaxValue := 0;
            neAntd.Properties.MinValue := cTotal;
            neAntd.Properties.MaxValue := 0;
            neSund.Properties.MinValue := cTotal;
            neSund.Properties.MaxValue := 0;
         end
         else
         begin
            neFees.Properties.MinValue := 0;
            neFees.Properties.MaxValue := FieldByName('FEES').AsCurrency + FieldByName('FEESTAX').AsCurrency - FieldByName('FEES_WOFF').AsCurrency - FieldByName('FEESTAX_WOFF').AsCurrency;
            neDisb.Properties.MinValue := 0;
            neDisb.Properties.MaxValue := FieldByName('DISB').AsCurrency + FieldByName('DISBTAX').AsCurrency - FieldByName('DISB_WOFF').AsCurrency - FieldByName('DISBTAX_WOFF').AsCurrency;
            neAntd.Properties.MinValue := 0;
            neAntd.Properties.MaxValue := FieldByName('UPCRED').AsCurrency + FieldByName('UPCREDTAX').AsCurrency - FieldByName('UPCRED_WOFF').AsCurrency - FieldByName('UPCREDTAX_WOFF').AsCurrency;
            neSund.Properties.MinValue := 0;
            neSund.Properties.MaxValue := FieldByName('SUND').AsCurrency + FieldByName('SUNDTAX').AsCurrency - FieldByName('SUND_WOFF').AsCurrency - FieldByName('SUNDTAX_WOFF').AsCurrency;;
         end;

         neFees.Value := Fees;


//         nlFeesBilled.AsCurrency := FieldByName('FEES').AsCurrency + FieldByName('FEESTAX').AsCurrency - FieldByName('FEES_WOFF').AsCurrency - FieldByName('FEESTAX_WOFF').AsCurrency;
         nlFeesBilled.AsCurrency := FieldByName('FEES').AsCurrency + FieldByName('FEESTAX').AsCurrency - FieldByName('FEES_WOFF').AsCurrency - FieldByName('FEESTAX_WOFF').AsCurrency;
         nlFeesRec.AsCurrency := FieldByName('FEES_PAID').AsCurrency + FieldByName('FEESTAX_PAID').AsCurrency;
         nlFeesOwing.AsCurrency := nlFeesBilled.AsCurrency - nlFeesRec.AsCurrency;

         neDisb.Value := Disb;

         nlDisbBilled.AsCurrency := FieldByName('DISB').AsCurrency + FieldByName('DISBTAX').AsCurrency - FieldByName('DISB_WOFF').AsCurrency - FieldByName('DISBTAX_WOFF').AsCurrency;
         nlDisbRec.AsCurrency := FieldByName('DISB_PAID').AsCurrency + FieldByName('DISBTAX_PAID').AsCurrency;
         nlDisbOwing.AsCurrency := nlDisbBilled.AsCurrency - nlDisbRec.AsCurrency;

         neUpCred.Value := UpCred;

         nlUpCredBilled.AsCurrency := FieldByName('UPCRED').AsCurrency + FieldByName('UPCREDTAX').AsCurrency - FieldByName('UPCRED_WOFF').AsCurrency - FieldByName('UPCREDTAX_WOFF').AsCurrency;
         nlUpCredRec.AsCurrency := FieldByName('UPCRED_PAID').AsCurrency + FieldByName('UPCREDTAX_PAID').AsCurrency;
         nlUpCredOwing.AsCurrency :=  nlUpCredBilled.AsCurrency - nlUpCredRec.AsCurrency;

         neAntd.Value := Antd;
         neAntd.Properties.MaxValue := FieldByName('Antd').AsCurrency + FieldByName('AntdTAX').AsCurrency - FieldByName('ANTD_WOFF').AsCurrency - FieldByName('ANTDTAX_WOFF').AsCurrency;
         nlAntdBilled.AsCurrency := FieldByName('Antd').AsCurrency + FieldByName('AntdTAX').AsCurrency - FieldByName('ANTD_WOFF').AsCurrency - FieldByName('ANTDTAX_WOFF').AsCurrency;
         nlAntdRec.AsCurrency := FieldByName('Antd_PAID').AsCurrency + FieldByName('AntdTAX_PAID').AsCurrency;
         nlAntdOwing.AsCurrency := nlAntdBilled.AsCurrency - nlAntdRec.AsCurrency;
         if neAntd.Value > 0 then
            Self.Height := 536;

         neSund.Value := Sund;

         nlSundBilled.AsCurrency := FieldByName('SUND').AsCurrency + FieldByName('SUNDTAX').AsCurrency - FieldByName('SUND_WOFF').AsCurrency - FieldByName('SUNDTAX_WOFF').AsCurrency;
         nlSundRec.AsCurrency := FieldByName('SUND_PAID').AsCurrency + FieldByName('SUNDTAX_PAID').AsCurrency;
         nlSundOwing.AsCurrency := nlSundBilled.AsCurrency - nlSundRec.AsCurrency;

         lblRcptno.Caption := Rcptno;

         Total := Fees + Disb + Antd + UpCred + Sund;
         Result := True;
      end;
   end;
end;

procedure TfrmReceiptDistribute.SetTotal(Value: currency);
begin
   nlTotal.AsCurrency := Value;
   CalcTotals(Self);
end;

procedure TfrmReceiptDistribute.SetReceipt(Value: currency);
begin
   nlReceipt.AsCurrency := Value;
   nlUnallocated.AsCurrency := nlTotal.AsCurrency - nlReceipt.AsCurrency;
end;

procedure TfrmReceiptDistribute.CalcTotals(Sender: TObject);
begin
   nlFeesBalance.AsCurrency := nlFeesOwing.AsCurrency - neFees.Value;
   nlDisbBalance.AsCurrency := nlDisbOwing.AsCurrency - neDisb.Value;
   nlAntdBalance.AsCurrency := nlAntdOwing.AsCurrency - neAntd.Value;
   nlUpCredBalance.AsCurrency := nlUpCredOwing.AsCurrency - neUpCred.Value;
   nlSundBalance.AsCurrency := nlSundOwing.AsCurrency - neSund.Value;
   Receipt := neFees.Value + neDisb.Value + neAntd.Value + neUpCred.Value + neSund.Value;

   lblBillCredit.Visible := ((nlFeesBalance.AsCurrency < 0) or (nlDisbBalance.AsCurrency < 0) or
                            (nlAntdBalance.AsCurrency < 0) or (nlSundBalance.AsCurrency < 0));
end;

procedure TfrmReceiptDistribute.FormCreate(Sender: TObject);
begin
   FDistributed := False;
end;

procedure TfrmReceiptDistribute.btnOKClick(Sender: TObject);
begin
   if nlUnallocated.AsCurrency <> 0.0 then
   begin
      MsgErr('You must correctly allocate this entry before exiting');
      ModalResult := mrNone;
   end else
   begin
      FDistributed := True;
   end;
end;

procedure TfrmReceiptDistribute.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryBill.Close;
end;

end.
