unit TransitNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, StdCtrls, Mask, Db, Buttons, NumberEdit,
  OracleUniProvider, Uni, DBAccess, MemDS, ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxControls, cxContainer, cxEdit, cxCheckBox, dxPSCore,
  dxPSContainerLnk, cxGraphics, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeels,
  cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPSDBTCLnk, dxPScxDBEditorLnks,
  dxPSTextLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxSchedulerLnk, cxClasses, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutControl;

type
  TfrmTransitNew = class(TForm)
    qryTransitInsert: TUniQuery;
    qryMatter: TUniQuery;
    lblInvoice: TLabel;
    qryTransit: TUniQuery;
    neAmount: TNumberEdit;
    dtpCreated: TDateTimePicker;
    edtRefNo: TEdit;
    edtBank: TEdit;
    edtCheque: TEdit;
    edtFrom: TEdit;
    edtTo: TEdit;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    ComponentPrinter: TdxComponentPrinter;
    ComponentPrinterLink2: TdxCustomContainerReportLink;
    dtpSent: TDateTimePicker;
    lblMatterDesc: TLabel;
    lblClient: TLabel;
    btnMatterFind: TSpeedButton;
    mmoDesc: TMemo;
    cbPrint: TcxCheckBox;
    lblMatter: TLabel;
    edtBranch: TEdit;
    edtBSB: TEdit;
    edtBankAcct: TEdit;
    mmoAddress: TMemo;
    cmbPaymentType: TcxLookupComboBox;
    qryPaymentType: TUniQuery;
    dsPaymentType: TUniDataSource;
    chkSent: TCheckBox;
    lblTransitNo: TLabel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    procedure btnSaveClick(Sender: TObject);
    procedure neRateChange(Sender: TObject);
    procedure neUnitsChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure mmoDescKeyPress(Sender: TObject; var Key: Char);
    procedure btnMatterFindClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoDescExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbTaxTypeChange(Sender: TObject);
    procedure neAmountExit(Sender: TObject);
    procedure neAmountEnter(Sender: TObject);
    procedure rgDirectionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure chkSentClick(Sender: TObject);

  private
    { Private declarations }
    FEditing: boolean;
    FOldAmount, FEnterAmount: currency;

    fOnTransitFormClose : TNotifyEvent;

    procedure UpdateAmount;
    function  OKtoPost : boolean;
    procedure CalcTax;

  public
    { Public declarations }
    procedure DisplayMatter(iMatter: integer); overload;
    procedure DisplayMatter(sMatter: string); overload;
    procedure DisplayTransit(iTransit: integer);
    procedure CreateTransit(sMatter : string; sDesc : string; cAmount : currency);

    property OnTransitFormClose: TNotifyEvent read FOnTransitFormClose write FOnTransitFormClose;
  end;

const
  cnReceived = 1;

implementation

uses
  AxiomData, MiscFunc, MSearch, SundryBatch, Desktop, GenericSearch,
  TransitSearch, citfunc;

{$R *.DFM}

procedure TfrmTransitNew.DisplayMatter(iMatter: integer);
begin
  lblMatter.Caption := TableString('MATTER', 'NMATTER', iMatter, 'FILEID');
  lblClient.Caption := MatterString(lblMatter.Caption, 'TITLE');
  lblMatterDesc.Caption := MatterString(lblMatter.Caption, 'SHORTDESCR');
  cmbPaymentType.EditValue := 'CQ';
end;

procedure TfrmTransitNew.DisplayMatter(sMatter: string);
begin
  lblMatter.Caption := sMatter;
  lblClient.Caption := MatterString(lblMatter.Caption, 'TITLE');
  lblMatterDesc.Caption := MatterString(lblMatter.Caption, 'SHORTDESCR');
  cmbPaymentType.EditValue := 'CQ';
end;

procedure TfrmTransitNew.DisplayTransit(iTransit: integer);
begin
  with qryTransit do
  begin
    Close;
    ParamByName('NTRANSIT').AsInteger := iTransit;
    Open;

    if not IsEmpty then
    begin
      DisplayMatter(FieldByName('NMATTER').AsInteger);
      btnMatterFind.Visible := false;
//      begin
      {
        dtpCreated.Enabled := false;
        neAmount.Enabled := false;
        //rgDirection.Enabled := false;
        edtRefNo.Enabled := false;
        rgType.Enabled := false;
        edtBank.Enabled := false;
        edtCheque.Enabled := false;
        edtFrom.Enabled := false;
        mmoDesc.Enabled := false;
        edtTo.Enabled := false;
      }
//      end;
      FOldAmount := FieldByName('AMOUNT').AsCurrency;
      dtpCreated.DateTime := FieldByName('CREATED').AsDateTime;

      edtFrom.Text := FieldByName('RCVD_FROM').AsString;
      edtTo.Text := FieldByName('PAID_TO').AsString;

      if not FieldByName('PAID_DATE').IsNull then
        begin
          dtpSent.Date := Now;
          chkSent.Checked := true
        end
      else
        begin
          dtpSent.Date := FieldByName('PAID_DATE').AsDateTime;
          chkSent.Checked := false;
        end;

      edtBank.Text := FieldByName('BRANCH').AsString;
      edtCheque.Text := FieldByName('CHQNO').AsString;

      mmoDesc.Text := FieldByName('DESCR').AsString;
      neAmount.AsCurrency := FieldByName('AMOUNT').AsCurrency;

      edtBranch.Text := FieldByName('BANK_BRANCH').AsString;
      edtBSB.Text := FieldByName('BSB').AsString;
      edtBankAcct.Text := FieldByName('BANK_ACCOUNT').AsString;
      mmoAddress.Text := FieldByName('PAID_TO_ADDRESS').AsString;

      cmbPaymentType.EditValue := FieldByName('PAYMENT_TYPE').AsString;

{      if FieldByName('PAYMENT_TYPE').AsString = 'CHEQ' then
         rgType.ItemIndex := 0
      else if FieldByName('PAYMENT_TYPE').AsString = 'CASH' then
         rgType.ItemIndex := 1;      }
      edtRefNo.Text := FieldByName('REFNO').AsString;
      lblTransitNo.Caption := IntToStr(iTransit);
      FEditing := true;
    end;
  end;
end;

procedure TfrmTransitNew.CreateTransit(sMatter : string; sDesc : string; cAmount : currency);
begin
  if not FEditing then
  begin
    DisplayMatter(sMatter);
    mmoDesc.Text := sDesc;
    //neRate.AsCurrency := TableCurrency('SUNDRYTYPE', 'CODE', sType, 'RATE');
    neAmount.AsCurrency := cAmount;
    cmbPaymentType.EditValue := 'CQ';
  end;
end;

procedure TfrmTransitNew.btnSaveClick(Sender: TObject);
var
  bPostingFailed : boolean;
  sNTransit : string;
  PayType : string;
begin
   sNTransit := '';

   if OKtoPost then
   begin
      btnSave.SetFocus;
      bPostingFailed := False;

      try
        with qryMatter do
        begin
          Close;
          ParamByName('P_FileID').AsString := lblMatter.Caption;
          Open;
        end;

        if dmAxiom.uniInsight.InTransaction = True then
             dmAxiom.uniInsight.Rollback;
        dmAxiom.uniInsight.StartTransaction;

{      if rgType.ItemIndex = 0 then
         PayType := 'CHEQ'
      else if rgType.ItemIndex = 1 then
         PayType := 'CASH';  }

        PayType := string(cmbPaymentType.EditValue);

        if not FEditing then
        begin
          // Create a new TransitItem
          with qryTransitInsert do
          begin
//          sNTransit := dmAxiom.GetSeqnums('SQNC_NTRANSIT');
//          ParamByName('NTRANSIT').AsString := sNTransit;
            ParamByName('CREATED').AsDateTime := dtpCreated.Date;
            ParamByName('RCVD_DATE').AsDateTime := dtpCreated.Date;
          //if rgDirection.ItemIndex = cnReceived then
            ParamByName('AMOUNT').AsFloat := neAmount.AsCurrency;
          //else
            //ParamByName('AMOUNT').AsFloat := (neAmount.AsCurrency * - 1);
            ParamByName('DESCR').AsString := mmoDesc.Lines.Text;
            ParamByName('REFNO').AsString := edtRefNo.Text;
            ParamByName('BRANCH').AsString := edtBank.Text;
            ParamByName('CHQNO').AsString := edtCheque.Text;
            ParamByName('RCVD_FROM').AsString := edtFrom.Text;
            ParamByName('PAID_TO').AsString := edtTo.Text;
            ParamByName('PAYMENT_TYPE').AsString := PayType;
            ParamByName('BANK_BRANCH').AsString := edtBranch.Text;
            ParamByName('BSB').AsString := edtBSB.Text;
            ParamByName('BANK_ACCOUNT').AsString := edtBankAcct.Text;
            ParamByName('PAID_TO_ADDRESS').AsString := mmoAddress.Lines.Text;

            if chkSent.Checked then
              ParamByName('PAID_DATE').AsDateTime := dtpSent.Date;

            ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
            ParamByName('FILEID').AsString := lblMatter.Caption;
            ExecSQL;
            sNTransit := dmAxiom.GetSeqnums('SQNC_NTRANSIT');
            lblTransitNo.Caption := sNTransit;
        end;
      end
      else
      begin
        // Update the sundry
        with qryTransit do
        begin
          Edit;
          FieldByName('CREATED').AsDateTime := dtpCreated.Date;
          FieldByName('DESCR').AsString := mmoDesc.Text;
          FieldByName('REFNO').AsString := edtRefNo.Text;
          FieldByName('BRANCH').AsString := edtBank.Text;
          FieldByName('CHQNO').AsString := edtCheque.Text;
          FieldByName('AMOUNT').AsCurrency := neAmount.AsCurrency;
          FieldByName('RCVD_FROM').AsString := edtFrom.Text;
          FieldByName('PAID_TO').AsString := edtTo.Text;
          FieldByName('REFNO').AsString := edtRefNo.Text;
          FieldByName('PAYMENT_TYPE').AsString := PayType;
          FieldByName('BANK_BRANCH').AsString := edtBranch.Text;
          FieldByName('BSB').AsString := edtBSB.Text;
          FieldByName('BANK_ACCOUNT').AsString := edtBankAcct.Text;
          FieldByName('PAID_TO_ADDRESS').AsString := mmoAddress.Lines.Text;

          if chkSent.Checked then
            FieldByName('PAID_DATE').AsDateTime := dtpSent.Date
          else
            FieldByName('PAID_DATE').AsString := '';
          Post;
        end;
      end;
    except
      on E: Exception do
      begin
        dmAxiom.uniInsight.Rollback;
        bPostingFailed := True;
        MsgErr('Transit Item insert failed:' + chr(13) + chr(13) + E.Message);
      end;
    end;

    if not bPostingFailed then
    begin
      dmAxiom.uniInsight.Commit;
      if cbPrint.Checked then
      begin
         ComponentPrinterLink2.CurrentPage := 1;
         ComponentPrinter.Print(True,nil,nil);
//         ComponentPrinter.PrintPages([1]);
      end;

      //SettingSave('TransitNew', 'Type', cbType.Text);
      qryTransitInsert.Close;
      qryTransit.Close;
      qryMatter.Close;

      if (sNTransit <> '') then
        MsgInfo('Transit item created - ' + sNTransit);
      Self.Close;
    end;
  end;
end;

function TfrmTransitNew.OKtoPost : boolean;
var
  sTmp : String;
begin
   OKtoPost := True;
   sTmp := '';
   if lblMatter.Caption = '' then
      sTmp := sTmp + '       Matter' + Chr(13);
   if mmoDesc.Text = '' then
      sTmp := sTmp + '       Reason' + Chr(13);
//   if (rgDirection.ItemIndex = -1) then
//      sTmp := sTmp + '       Direction' + Chr(13);
   if cmbPaymentType.Text = '' then
      sTmp := sTmp + '       Payment Type' + Chr(13);
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Transit Item details before posting:    ' + Chr(13) + Chr(13) + sTmp);
    OKtoPost := False
  end;
  if Trunc(dtpCreated.Date) > Trunc(dtpSent.Date) then
    begin
      MsgInfo('The sent date cannot be before the received date');

    end;
end;

procedure TfrmTransitNew.neRateChange(Sender: TObject);
begin
  UpdateAmount;
end;

procedure TfrmTransitNew.UpdateAmount;
begin
end;

procedure TfrmTransitNew.neUnitsChange(Sender: TObject);
begin
  UpdateAmount;
end;

procedure TfrmTransitNew.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTransitNew.mmoDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Quickcode(mmoDesc);
end;

procedure TfrmTransitNew.btnMatterFindClick(Sender: TObject);
begin
  if frmMatterSearch.ShowModal = mrOK then
    if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
      DisplayMatter(dmAxiom.qryMSearch.FieldByName('NMATTER').AsInteger)
    else
      MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
end;

procedure TfrmTransitNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryTransit.Close;
  qryMatter.Close;
  qryPaymentType.Close;
  
  if(Assigned(FOnTransitFormClose)) then
    FOnTransitFormClose(Self);

  Self.Release;
end;

procedure TfrmTransitNew.mmoDescExit(Sender: TObject);
begin
  Quickcode(mmoDesc);
end;

procedure TfrmTransitNew.FormCreate(Sender: TObject);
begin
  FEditing := False;
  dtpCreated.DateTime := Now;
  dtpCreated.MaxDate := Trunc(Date) + 1;
  dtpSent.DateTime := Now;
  qryPaymentType.Open;
end;

procedure TfrmTransitNew.cbTaxTypeChange(Sender: TObject);
begin
  CalcTax;
end;

procedure TfrmTransitNew.neAmountExit(Sender: TObject);
begin
  if neAmount.AsCurrency <> FEnterAmount then
    CalcTax;
end;

procedure TfrmTransitNew.CalcTax;
begin

end;

procedure TfrmTransitNew.neAmountEnter(Sender: TObject);
begin
  FEnterAmount := neAmount.AsCurrency;
end;

procedure TfrmTransitNew.rgDirectionClick(Sender: TObject);
begin
{  if rgDirection.ItemIndex = 0 then
    begin
      pnlReceived.Visible := true;
      pnlSent.Visible := false;
    end
  else
    begin
      pnlSent.Visible := true;
      pnlReceived.Visible := false;
    end;}
end;

procedure TfrmTransitNew.FormShow(Sender: TObject);
begin
  rgDirectionClick(sender);
end;

procedure TfrmTransitNew.Button1Click(Sender: TObject);
begin
  if not FormExists(frmTransitSearch) then
    Application.CreateForm(TfrmTransitSearch, frmTransitSearch);
  frmTransitSearch.ShowModal;
end;

procedure TfrmTransitNew.chkSentClick(Sender: TObject);
begin
  dtpSent.Enabled := chkSent.Checked;
end;

end.

