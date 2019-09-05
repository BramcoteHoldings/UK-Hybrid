unit Entitys;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Db, Buttons, Mask, Spin, ComCtrls, ToolWin,
  ImgList, OracleUniProvider, Uni, DBAccess, MemDS, DBDateTimePicker, cxTextEdit,
  cxDBEdit, cxPC, cxControls, cxContainer, cxEdit, cxGroupBox, dxBar,
  dxBarDBNav, cxMaskEdit, cxButtonEdit, cxLabel, cxDBLabel, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxClasses,
  ppDesignLayer, ppModule, raCodMod, ppVar, ppBands, ppCtrls, ppStrtch,
  ppRegion, Vcl.Imaging.jpeg, ppPrnabl, ppClass, ppCache, ppParameter, ppComm,
  ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, ppSubRpt, ppMemo, dxBarBuiltInMenu,
  cxColorComboBox, cxDBColorComboBox, cxCalendar, System.ImageList, cxCheckBox;

type
  TfrmEntity = class(TForm)
    qryEntity: TUniQuery;
    dsEntity: TUniDataSource;
    ilstToolbar: TImageList;
    Label1: TLabel;
    lblACN: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblABN: TLabel;
    Label11: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    odlgPath: TOpenDialog;
    Label46: TLabel;
    Label47: TLabel;
    spDoRollover: TUniStoredProc;
    qryUpdateLock: TUniQuery;
    Label50: TLabel;
    gbLedgers: TcxGroupBox;
    Label69: TLabel;
    dbtbCreditors: TcxDBTextEdit;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    tbLockAccts: TdxBarButton;
    tbUnlockAccts: TdxBarButton;
    tbRollAccts: TdxBarButton;
    tbUnrollAccounts: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    dbtLockDate: TcxDBLabel;
    dbtRolloverDate: TcxDBLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    dfNextMatter: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxBarDBNavPost1: TdxBarDBNavButton;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    qryTaxRate: TUniQuery;
    dsTaxRate: TUniDataSource;
    Label4: TLabel;
    Label6: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    lblBPayCode: TLabel;
    edBPayCode: TcxDBTextEdit;
    pagLedgers: TcxPageControl;
    tabCreation: TcxTabSheet;
    tabInvoice: TcxTabSheet;
    tabReceipt: TcxTabSheet;
    tabWriteOff: TcxTabSheet;
    tabEOY: TcxTabSheet;
    Label51: TLabel;
    Label56: TLabel;
    dbtbNewFeeDR: TcxDBTextEdit;
    Label57: TLabel;
    dbtbNewFeeCR: TcxDBTextEdit;
    dbtbNewSundCR: TcxDBTextEdit;
    dbtbNewSundDR: TcxDBTextEdit;
    dbtbNewDisbDR: TcxDBTextEdit;
    Label58: TLabel;
    dbtbNewAntdCR: TcxDBTextEdit;
    dbtbNewAntdDR: TcxDBTextEdit;
    dbtbNewCredDR: TcxDBTextEdit;
    dbtbNewCredCR: TcxDBTextEdit;
    Label55: TLabel;
    Label54: TLabel;
    Label53: TLabel;
    Label52: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    dbtbBillFeeTaxDR: TcxDBTextEdit;
    dbtbBillFeeCR: TcxDBTextEdit;
    dbtbBillFeeDR: TcxDBTextEdit;
    dbtbBillOverFeeDR: TcxDBTextEdit;
    dbtbBillOverFeeCR: TcxDBTextEdit;
    dbtbBillOverFeeTaxDR: TcxDBTextEdit;
    dbtbBillDiscFeeTaxDR: TcxDBTextEdit;
    dbtbBillDiscFeeCR: TcxDBTextEdit;
    dbtbBillDiscFeeDR: TcxDBTextEdit;
    dbtbBillSundDR: TcxDBTextEdit;
    dbtbBillSundCR: TcxDBTextEdit;
    dbtbBillSundTaxDR: TcxDBTextEdit;
    dbtbBillDisbTaxDR: TcxDBTextEdit;
    dbtbBillDisbCR: TcxDBTextEdit;
    dbtbBillDisbDR: TcxDBTextEdit;
    dbtbBillAntdDR: TcxDBTextEdit;
    dbtbBillAntdCR: TcxDBTextEdit;
    dbtbBillAntdTaxDR: TcxDBTextEdit;
    dbtbBillUpCredTaxDR: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    Label65: TLabel;
    Label64: TLabel;
    Label63: TLabel;
    Label62: TLabel;
    Label61: TLabel;
    Label60: TLabel;
    Label59: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    dbtbRecFeeCR: TcxDBTextEdit;
    dbtbRecSundCR: TcxDBTextEdit;
    dbtbRecUndisbCR: TcxDBTextEdit;
    dbtbRecDisbCR: TcxDBTextEdit;
    dbtbRecAntdCR: TcxDBTextEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    Label78: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    dbtbWoffFeeCR: TcxDBTextEdit;
    dbtbWoffFeeDR: TcxDBTextEdit;
    dbtbWoffSundDR: TcxDBTextEdit;
    dbtbWoffSundCR: TcxDBTextEdit;
    dbtbWoffUnDisbCR: TcxDBTextEdit;
    dbtbWoffUnDisbDR: TcxDBTextEdit;
    dbtbWoffDisbDR: TcxDBTextEdit;
    dbtbWoffDisbCR: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    Label83: TLabel;
    Label82: TLabel;
    Label81: TLabel;
    Label80: TLabel;
    Label79: TLabel;
    Label86: TLabel;
    cxDBTextEdit50: TcxDBTextEdit;
    qryEntityPrint: TUniQuery;
    qryEntityPrintBase: TUniQuery;
    dsEntityPrint: TUniDataSource;
    dsEntityPrintBase: TUniDataSource;
    peEntityPrint: TppDBPipeline;
    peEntityPrintBase: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLabel2: TppLabel;
    ppImage1: TppImage;
    ppLine5: TppLine;
    ppRegion1: TppRegion;
    ppLabel3: TppLabel;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText14: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText16: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine1: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine3: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText8: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText31: TppDBText;
    ppLine4: TppLine;
    ppDBText32: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel38: TppLabel;
    ppDBText39: TppDBText;
    ppRegion2: TppRegion;
    ppLabel4: TppLabel;
    ppLabel18: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    qryTax: TUniQuery;
    dsTax: TUniDataSource;
    peTax: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppDBText40: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel7: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLabel39: TppLabel;
    ppLine6: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText43: TppDBText;
    ppLabel42: TppLabel;
    ppDBText44: TppDBText;
    ppLabel43: TppLabel;
    ppDBText45: TppDBText;
    ppLabel44: TppLabel;
    ppDBText46: TppDBText;
    ppLabel45: TppLabel;
    ppDBText47: TppDBText;
    ppLabel46: TppLabel;
    ppDBText48: TppDBText;
    ppLabel47: TppLabel;
    ppDBText49: TppDBText;
    ppLabel48: TppLabel;
    ppDBText50: TppDBText;
    ppLabel49: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppImage2: TppImage;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    qryEntityGroup: TUniQuery;
    dsEntityGroup: TUniDataSource;
    peEntityGroup: TppDBPipeline;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppLabel52: TppLabel;
    ppLine7: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBMemo1: TppDBMemo;
    Label2: TLabel;
    dbtbBillDisbAdjCR: TcxDBTextEdit;
    dbtbBillDisbAdjTaxDR: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBColorComboBox1: TcxDBColorComboBox;
    Label10: TLabel;
    Label12: TLabel;
    dbtbWoffBadDebtDR: TcxDBTextEdit;
    dbtbWoffBadDebtCR: TcxDBTextEdit;
    dbtFinYearEnd: TcxDBDateEdit;
    cxGroupBox1: TcxGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    txtDefDept: TcxDBTextEdit;
    txtDefBranch: TcxDBTextEdit;
    grpMultiCurrency: TcxGroupBox;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    txtFXGain: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    txtFXLoss: TcxDBTextEdit;
    cmbCurrency: TcxDBLookupComboBox;
    cbMultiCurrency: TcxDBCheckBox;
    procedure qryEntitySetButtons(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnUseClick(Sender: TObject);
    procedure dbtbLedgerDblClick(Sender: TObject);
    procedure dbtbBillFeeDRChange(Sender: TObject);
    procedure dbtbBillOverFeeCRExit(Sender: TObject);
    procedure dbtbBillDiscFeeDRExit(Sender: TObject);
    procedure dbtbWoffFeeDRExit(Sender: TObject);
    procedure dbtbBillDisbDRExit(Sender: TObject);
    procedure dbtbBillAntdDRExit(Sender: TObject);
    procedure dbtbWoffSundDRExit(Sender: TObject);
    procedure dbtbWoffUnDisbDRExit(Sender: TObject);
    procedure dbtbWoffDisbDRExit(Sender: TObject);
    procedure dbtbNewDisbDRExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnWPDirClick(Sender: TObject);
    procedure tbtnBranchesClick(Sender: TObject);
    procedure tabWriteOffShow(Sender: TObject);
    procedure tbLockAcctsClick(Sender: TObject);
    procedure tbUnlockAcctsClick(Sender: TObject);
    procedure tbRollAcctsClick(Sender: TObject);
    procedure tbUnrollAccountsClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarDBNavPost1Click(Sender: TObject);
    function validateFields():String;
    procedure dxBarDBNavFirst1Click(Sender: TObject);
    procedure dxBarDBNavPrev1Click(Sender: TObject);
    procedure dxBarDBNavNext1Click(Sender: TObject);
    procedure dxBarDBNavLast1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cbMultiCurrencyPropertiesEditValueChanged(Sender: TObject);



  private
    { Private declarations }

    function OKtoPost : boolean;
    procedure SetButtons;

    procedure setNextMatterEdit;

  public
    { Public declarations }
  end;

var
  frmEntity: TfrmEntity;
  
implementation

uses
  AxiomData, BankNew, Branches, Desktop, EntityNew, LSearch, MSearch, MiscFunc,
  citfunc, LockAcctsDlg, UnlockAcctsDlg, RollupAcctsDlg, UnrollAcctsDlg,
  glComponentUtil;

{$R *.DFM}

procedure TfrmEntity.qryEntitySetButtons(DataSet: TDataSet);
begin
 { tbtnFirst.Enabled := not qryEntity.BOF;
  tbtnPrev.Enabled := not qryEntity.BOF;
  tbtnNext.Enabled := not qryEntity.EOF;
  tbtnLast.Enabled := not qryEntity.EOF;   }

{
  Modified 29.10.2002 GG

  Allow unlock only if already locked.
  Allow unroll only if already rolled.
}
  tbUnlockAccts.Enabled:= (not qryEntity.FieldByName('LOCKDATE').IsNull) and
                          (dmAxiom.Security.Accounts.UnLock);
  tbUnrollAccounts.Enabled:= (not qryEntity.FieldByName('LAST_ROLLOVER').IsNull) and
                             (dmAxiom.Security.Accounts.UnRoll)
end;


procedure TfrmEntity.FormShow(Sender: TObject);
begin
  pagLedgers.ActivePage:= tabCreation;

  SetButtons;

  setNextMatterEdit;

  qryEntity.Open;
  qryTaxRate.open;

end;


function TfrmEntity.OKtoPost : boolean;
var
  bOKtoPost : boolean;
  sErrorMsg : string;
begin
  bOKtoPost := True;
  sErrorMsg := '';
  if ((dbtbNewFeeDR.Text <> '') and (dbtbNewFeeCR.Text = '')) or ((dbtbNewFeeDR.Text = '') and (dbtbNewFeeCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Fee Creation';
    bOKtoPost := False;
  end;
  if ((dbtbNewSundDR.Text <> '') and (dbtbNewSundCR.Text = '')) or ((dbtbNewSundDR.Text = '') and (dbtbNewSundCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Sundry Creation';
    bOKtoPost := False;
  end;
  if ((dbtbNewAntdDR.Text <> '') and (dbtbNewAntdCR.Text = '')) or ((dbtbNewAntdDR.Text = '') and (dbtbNewAntdCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Anticipated Disbursement Creation';
    bOKtoPost := False;
  end;
  if ((dbtbBillFeeDR.Text <> '') and (dbtbBillFeeCR.Text = '')) or ((dbtbBillFeeDR.Text = '') and (dbtbBillFeeCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Fee Invoicing';
    bOKtoPost := False;
  end;
  if ((dbtbBillOverFeeDR.Text <> '') and (dbtbBillOverFeeCR.Text = '')) or ((dbtbBillOverFeeDR.Text = '') and (dbtbBillOverFeeCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Fee (Over Recovery) Invoicing';
    bOKtoPost := False;
  end;
  if ((dbtbBillDiscFeeDR.Text <> '') and (dbtbBillDiscFeeCR.Text = '')) or ((dbtbBillDiscFeeDR.Text = '') and (dbtbBillDiscFeeCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Fee (Discount) Invoicing';
    bOKtoPost := False;
  end;
  if ((dbtbBillSundDR.Text <> '') and (dbtbBillSundCR.Text = '')) or ((dbtbBillSundDR.Text = '') and (dbtbBillSundCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Sundry Invoicing';
    bOKtoPost := False;
  end;
  if ((dbtbBillDisbDR.Text <> '') and (dbtbBillDisbCR.Text = '')) or ((dbtbBillDisbDR.Text = '') and (dbtbBillDisbCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Disbursement Invoicing';
    bOKtoPost := False;
  end;
  if ((dbtbBillAntdDR.Text <> '') and (dbtbBillAntdCR.Text = '')) or ((dbtbBillAntdDR.Text = '') and (dbtbBillAntdCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Anticipated Disbursement Invoicing';
    bOKtoPost := False;
  end;
  if ((dbtbWoffFeeDR.Text <> '') and (dbtbWoffFeeCR.Text = '')) or ((dbtbWoffFeeDR.Text = '') and (dbtbWoffFeeCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Billed Fee Write Off';
    bOKtoPost := False;
  end;
  if ((dbtbWoffSundDR.Text <> '') and (dbtbWoffSundCR.Text = '')) or ((dbtbWoffSundDR.Text = '') and (dbtbWoffSundCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Billed Sundry Write Off';
    bOKtoPost := False;
  end;
  if ((dbtbWoffUnDisbDR.Text <> '') and (dbtbWoffUnDisbCR.Text = '')) or ((dbtbWoffUnDisbDR.Text = '') and (dbtbWoffUnDisbCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Unbilled Disbursement Write Off';
    bOKtoPost := False;
  end;
  if ((dbtbWoffDisbDR.Text <> '') and (dbtbWoffDisbCR.Text = '')) or ((dbtbWoffDisbDR.Text = '') and (dbtbWoffDisbCR.Text <> '')) then
  begin
    sErrorMsg := sErrorMsg + '      Billed Disbursement Write Off';
    bOKtoPost := False;
  end;

  if sErrorMsg <> '' then
    MsgErr('The following transactions are incorrectly balanced:' + chr(13) + sErrorMsg);

  OKtoPost := bOKtoPost;
end;


procedure TfrmEntity.tbtnFirstClick(Sender: TObject);
begin
  if qryEntity.Modified then
  begin
    if OKtoPost then
    begin
      qryEntity.Post;
      qryEntity.First;
    end;
  end
  else
    qryEntity.First;
end;

procedure TfrmEntity.tbtnPrevClick(Sender: TObject);
begin
  if qryEntity.Modified then
  begin
    if OKtoPost then
    begin
      qryEntity.Post;
      qryEntity.Prior;
    end;
  end
  else
    qryEntity.Prior;
end;

procedure TfrmEntity.tbtnNextClick(Sender: TObject);
begin
  if qryEntity.Modified then
  begin
    if OKtoPost then
    begin
      qryEntity.Post;
      qryEntity.Next;
    end;
  end
  else
    qryEntity.Next;
end;

procedure TfrmEntity.tbtnLastClick(Sender: TObject);
begin
  if qryEntity.Modified then
  begin
    if OKtoPost then
    begin
      qryEntity.Post;
      qryEntity.Last;
    end;
  end
  else
    qryEntity.Last;
end;

procedure TfrmEntity.tbtnNewClick(Sender: TObject);
var
  bOK : boolean;
begin
  bOK := True;
  if qryEntity.Modified then
    if MsgAsk('Do you want to save your changes?') = mrYes then
    begin
      if OKtoPost then
      begin
        qryEntity.Post;
      end
      else
        bOK := False;
    end
    else
      qryEntity.CancelUpdates;

  if bOK then
    with TfrmEntityNew.Create(Self) do
    begin
      if ShowModal = mrOK then
      begin
        Self.qryEntity.Close;
        Self.qryEntity.Open;
        Self.qryEntity.Locate('CODE', qryEntityInsert.ParamByName('CODE').AsString, []);
      end;
      Close;
    end;
end;

procedure TfrmEntity.dbtbLedgerDblClick(Sender: TObject);
begin
   if not FormExists(frmLedgerSearch) then
      Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);
   if frmLedgerSearch.ShowModal = mrOK then
   begin
      if not qryEntity.Modified then
         qryEntity.Edit;
      (Sender as TcxDBTextEdit).Text := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
      (Sender as TcxDBTextEdit).DataBinding.Field.AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;
   end;
end;

procedure TfrmEntity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{  if qryEntity.Modified then
    if MsgAsk('Do you want to save your changes?') = mrYes then
    begin
      if OKtoPost then
      begin
        qryEntity.Post;
        Action := caFree;
      end;
    end
    else
      Action := caFree
  else
    Action := caFree;
}
  RemoveFromDesktop(Self);
//  Action := caFree;
end;


procedure TfrmEntity.tbtnUseClick(Sender: TObject);
begin
  if qryEntity.FieldByName('ACTIVE').AsString = 'Y' then
  begin
    dmAxiom.Entity := qryEntity.FieldByName('CODE').AsString;
    frmDesktop.StatusBar.Panels[1].Text := dmAxiom.EntityName;
  end
  else
    MsgErr('You may not use an inactive Entity');
end;


procedure TfrmEntity.dbtbBillFeeDRChange(Sender: TObject);
begin
  if dbtbBillOverFeeCR.Text <> '' then
    dbtbBillOverFeeDR.Text := dbtbBillFeeDR.Text;
  if dbtbBillDiscFeeDR.Text <> '' then
    dbtbBillDiscFeeCR.Text := dbtbBillFeeDR.Text;
end;

procedure TfrmEntity.dbtbBillOverFeeCRExit(Sender: TObject);
begin
  if dbtbBillOverFeeCR.Text <> '' then
    dbtbBillOverFeeDR.Text := dbtbBillFeeDR.Text
  else
    dbtbBillOverFeeDR.Text := '';
end;

procedure TfrmEntity.dbtbBillDiscFeeDRExit(Sender: TObject);
begin
  if dbtbBillDiscFeeDR.Text <> '' then
    dbtbBillDiscFeeCR.Text := dbtbBillFeeDR.Text
  else
    dbtbBillDiscFeeCR.Text := '';
end;

procedure TfrmEntity.dbtbWoffFeeDRExit(Sender: TObject);
begin
  if dbtbWoffFeeDR.Text <> '' then
    dbtbWoffFeeCR.Text := dbtbBillFeeDR.Text
  else
    dbtbWoffFeeCR.Text := '';

//  dbtbWoffFeeCR.DataSource.DataSet.UpdateRecord;

end;

procedure TfrmEntity.dbtbBillDisbDRExit(Sender: TObject);
begin
  if dbtbBillDisbDR.Text <> '' then
  begin
    dbtbBillDisbCR.Text := dbtbNewDisbDR.Text;
    if dbtbRecDisbCR.Text = '' then
      dbtbRecDisbCR.Text := dbtbBillDisbDR.Text;
  end
  else
  begin
    dbtbBillDisbCR.Text := '';
    dbtbRecDisbCR.Text := '';
  end;
end;

procedure TfrmEntity.dbtbBillAntdDRExit(Sender: TObject);
begin
{  if (dbtbBillAntdDR.Text <> '') then
  begin
    if dbtbNewAntdDR.Text <> '' then
    begin
      dbtbBillAntdCR.Text := dbtbNewAntdDR.Text;
      dbtbBillAntdCR.Enabled := False;
    end
    else
      dbtbBillAntdCR.Enabled := True;
  end
  else
    dbtbBillAntdCR.Text := ''; }
end;

procedure TfrmEntity.dbtbWoffSundDRExit(Sender: TObject);
begin
  if dbtbWoffSundDR.Text <> '' then
    dbtbWoffSundCR.Text := dbtbBillSundDR.Text
  else
    dbtbWoffSundCR.Text := '';

//  dbtbWoffSundCR.DataSource.DataSet.UpdateRecord;

end;

procedure TfrmEntity.dbtbWoffUnDisbDRExit(Sender: TObject);
begin
  if dbtbWoffUndisbDR.Text <> '' then
    dbtbWoffUndisbCR.Text := dbtbNewDisbDR.Text
  else
    dbtbWoffUndisbCR.Text := '';

//  dbtbWoffUndisbCR.DataSource.DataSet.UpdateRecord;

end;

procedure TfrmEntity.dbtbWoffDisbDRExit(Sender: TObject);
begin
  if dbtbWoffDisbDR.Text <> '' then
    dbtbWoffDisbCR.Text := dbtbBillDisbDR.Text
  else
    dbtbWoffDisbCR.Text := '';

//  dbtbWoffDisbCR.DataSource.DataSet.UpdateRecord;

end;


procedure TfrmEntity.dbtbNewDisbDRExit(Sender: TObject);
begin
  if (dbtbNewDisbDR.Text <> '') and (dbtbBillDisbDR.Text <> '') then
    dbtbRecUndisbCR.Text := dbtbNewDisbDR.Text;
end;

procedure TfrmEntity.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (qryEntity.Modified) then
    begin
      if (MsgAsk('Do you want to save your changes?') = mrYes) then
        begin
          if (OKtoPost) then
            begin
              qryEntity.Post;

            end;    //  end if

        end;    //  end if

    end;    //  end if

  CanClose := TRUE;

end;


procedure TfrmEntity.FormCreate(Sender: TObject);
begin
   if dmAxiom.qryCurrencyList.Active = False then
      dmAxiom.qryCurrencyList.Open;
   if SystemString('LOCALE_NAME') <> '' then
   begin
      lblBPayCode.Visible := False;
      edBPayCode.Visible := False;
      lblACN.Caption := 'Company No.';
      lblABN.Caption := 'LEI';
   end;
end;

procedure TfrmEntity.btnWPDirClick(Sender: TObject);
begin
  //lbdPath.SelectedFolder := qryEntity.FieldByName('WPDIR').AsString;
  odlgPath.InitialDir := qryEntity.FieldByName('WPDIR').AsString;
  if odlgPath.Execute then
  begin
    if not qryEntity.Modified then
      qryEntity.Edit;
    //qryEntity.FieldByName('WPDIR').AsString := lbdPath.SelectedFolder+'\';
    qryEntity.FieldByName('WPDIR').AsString := odlgPath.FileName+'\';
  end;
end;

procedure TfrmEntity.tbtnBranchesClick(Sender: TObject);
begin
  with TfrmBranches.Create(Self) do
  begin
    set_entity(qryEntity.FieldByName('CODE').AsString);
    Show;
  end;
end;

procedure TfrmEntity.tabWriteOffShow(Sender: TObject);
begin
{  if ((dbtbWoffFeeCR.Text <> dbtbBillFeeDR.Text) OR
      (dbtbWoffSundCR.Text <> dbtbBillSundDR.Text) OR
      (dbtbWoffUndisbCR.Text <> dbtbNewDisbDR.Text) OR
      (dbtbWoffDisbCR.Text <> dbtbBillDisbDR.Text)) then
    begin
      if MessageDlg('Do you wish to update the Write Offs?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
        begin
          qryEntity.Edit;
          dbtbWoffFeeDRExit(self);
          dbtbWoffSundDRExit(self);
          dbtbWoffUnDisbDRExit(self);
          dbtbWoffDisbDRExit(self);
        end;    //  end if
    end;    // end if   }
end;

procedure TfrmEntity.tbLockAcctsClick(Sender: TObject);
var
  frmLockAccts: TfrmLockAccounts;
begin
  frmLockAccts:= TfrmLockAccounts.Create(Self);
  try
    frmLockAccts.ShowModal;
    if frmLockAccts.ModalResult = mrOK then
    begin
      // process account locking here
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;

        qryUpdateLock.Close;
        qryUpdateLock.SQL.Clear;
        qryUpdateLock.SQL.Add('UPDATE ENTITY SET LOCKDATE = :LOCKDATE WHERE CODE = :ENTITY');
        qryUpdateLock.ParamByName('LOCKDATE').AsDate:= frmLockAccts.dtmLockDate.Date;
        qryUpdateLock.ParamByName('ENTITY').AsString:= qryEntity.FieldByName('CODE').AsString;

        qryUpdateLock.ExecSQL;
        qryUpdateLock.Close;

        dmAxiom.uniInsight.Commit
      except
        dmAxiom.uniInsight.Rollback
      end
    end
  finally
    frmLockAccts.Release
  end;
  // refresh the entity data
  qryEntity.Refresh;
end;

procedure TfrmEntity.tbUnlockAcctsClick(Sender: TObject);
var
  frmUnlockAccts: TfrmUnlockAccounts;
begin
  frmUnlockAccts:= TfrmUnlockAccounts.Create(Self);
  try
    frmUnlockAccts.dtmBackTo.DateTime:= qryEntity.FieldByName('LOCKDATE').AsDateTime;
    frmUnlockAccts.ShowModal;
    if frmUnlockAccts.ModalResult = mrOK then
    begin
      // process account unlocking here
      try
        if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
        dmAxiom.uniInsight.StartTransaction;

        qryUpdateLock.Close;
        if frmUnlockAccts.rbRemove.Checked then
        begin
          qryUpdateLock.SQL.Clear;
          qryUpdateLock.SQL.Add('UPDATE ENTITY SET LOCKDATE = NULL WHERE CODE = :ENTITY');
        end
        else
        begin
          qryUpdateLock.SQL.Clear;
          qryUpdateLock.SQL.Add('UPDATE ENTITY SET LOCKDATE = :LOCKDATE WHERE CODE = :ENTITY');
          qryUpdateLock.ParamByName('LOCKDATE').AsDate:= frmUnlockAccts.dtmBackTo.Date;
        end;
        qryUpdateLock.ParamByName('ENTITY').AsString:= qryEntity.FieldByName('CODE').AsString;

        qryUpdateLock.ExecSQL;
        qryUpdateLock.Close;

        dmAxiom.uniInsight.Commit
      except
        dmAxiom.uniInsight.Rollback
      end
    end
  finally
    frmUnlockAccts.Release
  end;
  // refresh the entity data
  qryEntity.Refresh;
end;

procedure TfrmEntity.tbRollAcctsClick(Sender: TObject);
var
   frmRollupAccts: TfrmRollupAccounts;
   msg: string;
   bDoRollover: Boolean;
begin
   frmRollupAccts:= TfrmRollupAccounts.Create(Self);
   try
      bDoRollover:= False;
      frmRollupAccts.dtmRollup.DateTime := qryEntity.FieldByName('LOCKDATE').AsDateTime;
      frmRollupAccts.ShowModal;
      if frmRollupAccts.ModalResult = mrOK then
      begin
         // process account rollup here
         msg:= 'You should back up the chart of accounts for entity' +
               Format(' "%s" up to %s before continuing this process.',
                   [qryEntity.FieldByName('CODE').AsString,
                    DateToStr(frmRollupAccts.dtmRollup.Date)]) +
               #13#10#13#10 + 'Have you made a copy of the chart of accounts for' +
               Format(' entity "%s" up to %s?', [qryEntity.FieldByName('CODE').AsString,
                                              DateToStr(frmRollupAccts.dtmRollup.Date)]);
         if MessageDlg(msg, mtWarning, [mbYes,mbNo], 0) = mrYes then
         begin
            if Trunc(qryEntity.FieldByName('LOCKDATE').AsDateTime) < Trunc(frmRollupAccts.dtmRollup.Date) then
            begin
            // need to set the lock date to the rollover date
               if (qryEntity.FieldByName('LOCKDATE').IsNull = True) then
                  msg:= Format('The lock date for entity "%s" is not yet set.',
                           [qryEntity.FieldByName('CODE').AsString]) + #13#10#13#10 +
                           Format('This process will set the lock date for entity "%s" to %s.',
                           [qryEntity.FieldByName('CODE').AsString,
                           DateToStr(frmRollupAccts.dtmRollup.Date)]) +
                           #13#10#13#10 + 'Do you want to proceed?'
               else
                  msg:= Format('The lock date for entity "%s" is currently set to %s.',
                           [qryEntity.FieldByName('CODE').AsString,
                           qryEntity.FieldByName('LOCKDATE').AsString]) + #13#10#13#10 +
                           Format('This process will set the lock date for entity "%s" to %s.',
                           [qryEntity.FieldByName('CODE').AsString,
                           DateToStr(frmRollupAccts.dtmRollup.Date)]) +
                           #13#10#13#10 + 'Do you want to proceed?';

               if MessageDlg(msg, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
                  bDoRollover:= True;
            end
            else
               bDoRollover:= True;
         end
      end;

      if bDoRollover then
      begin
         try
            if dmAxiom.uniInsight.InTransaction then
               dmAxiom.uniInsight.Commit;
            dmAxiom.uniInsight.StartTransaction;
            spDoRollover.ParamByName('AROLLOVER_DATE').AsDate:= frmRollupAccts.dtmRollup.Date;
            spDoRollover.ParamByName('AENTITY').AsString:= qryEntity.FieldByName('CODE').AsString;
            spDoRollover.ParamByName('AWHO').AsString:= dmAxiom.UserID;

            spDoRollover.ExecProc;
            spDoRollover.Close;

            msg:= 'Rollover has completed.' + #13#10#13#10 + 'Do you want to commit the rollover?';
            if MessageDlg(msg, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
               dmAxiom.uniInsight.Commit
            else
               dmAxiom.uniInsight.Rollback;
         except
//        on E:EOraError do
//        begin
//          dmAxiom.uniInsight.Rollback;
//          raise EOraError.Create(E.ErrorCode, Copy(E.Message, 1, Pos(#$A, E.Message)));
//        end
//        else
            begin
               dmAxiom.uniInsight.Rollback;
               raise;
            end
         end;
      end
      else
         MessageDlg('Rollup cancelled at user request', mtInformation, [mbOK], 0);
   finally
      frmRollupAccts.Release
   end;
  // refresh the entity data
   qryEntity.Refresh;
end;

procedure TfrmEntity.tbUnrollAccountsClick(Sender: TObject);
var
  frmUnrollAccts: TfrmUnrollAccounts;
  qryDeleteRollupTrans,
  qryDeleteRollupJournals,
  qryRemoveRollupDate: TUniQuery;
  ChartCode: string;
begin
  frmUnrollAccts:= TfrmUnrollAccounts.Create(Self);
  try
    ChartCode := TableString('CHART','COMPONENT_CODE_DISPLAY',qryEntity.FieldByName('PROFIT_APPR_ACCT').AsString,'CODE');
    frmUnrollAccts.qryPreviousRollup.ParamByName('CODE').AsString:=
      qryEntity.FieldByName('CODE').AsString;
    frmUnrollAccts.qryPreviousRollup.ParamByName('PROFIT_APPR_ACCT').AsString := ChartCode;
    frmUnrollAccts.qryPreviousRollup.ParamByName('LAST_ROLLOVER').AsDateTime:=
      qryEntity.FieldByName('LAST_ROLLOVER').AsDateTime;

    frmUnrollAccts.ShowModal;
    if frmUnrollAccts.ModalResult = mrOK then
    begin
      // process account unlocking here
      qryDeleteRollupTrans:= TUniQuery.Create(Self);
      qryDeleteRollupTrans.Connection:= dmAxiom.uniInsight;
      qryDeleteRollupJournals:= TUniQuery.Create(Self);
      qryDeleteRollupJournals.Connection:= dmAxiom.uniInsight;
      qryRemoveRollupDate:= TUniQuery.Create(Self);
      qryRemoveRollupDate.Connection:= dmAxiom.uniInsight;
      try
        qryDeleteRollupTrans.SQL.Clear;
        qryDeleteRollupJournals.SQL.Clear;
        qryRemoveRollupDate.SQL.Clear;

        qryDeleteRollupTrans.SQL.Add('DELETE FROM TRANSITEM ');
        qryDeleteRollupTrans.SQL.Add('WHERE OWNER_CODE IN (''PAJ'', ''PPJ'')');
        qryDeleteRollupTrans.SQL.Add('AND CREATED > :PREV_ROLLOVER');
        qryDeleteRollupTrans.ParamByName('PREV_ROLLOVER').AsDate:=
          Trunc(frmUnrollAccts.qryPreviousRollup.FieldByName('PREV_ROLLOVER').AsDateTime);

        qryDeleteRollupJournals.SQL.Add('DELETE FROM JOURNAL ');
        qryDeleteRollupJournals.SQL.Add('WHERE TYPE IN (''4'', ''5'')');
        qryDeleteRollupJournals.SQL.Add('AND CREATED > :LAST_ROLLOVER');
        qryDeleteRollupJournals.ParamByName('LAST_ROLLOVER').AsDate:=
          Trunc(frmUnrollAccts.qryPreviousRollup.FieldByName('PREV_ROLLOVER').AsDateTime);

        if frmUnrollAccts.qryPreviousRollup.FieldByName('PREV_ROLLOVER').IsNull then
          qryRemoveRollupDate.SQL.Add('UPDATE ENTITY SET LAST_ROLLOVER = NULL WHERE CODE = :ENTITY')
        else
        begin
          qryRemoveRollupDate.SQL.Add('UPDATE ENTITY SET LAST_ROLLOVER = :PREV_ROLLOVER WHERE CODE = :ENTITY');
          qryRemoveRollupDate.ParamByName('PREV_ROLLOVER').AsDate:=
            Trunc(frmUnrollAccts.qryPreviousRollup.FieldByName('PREV_ROLLOVER').AsDateTime);
        end;
        qryRemoveRollupDate.ParamByName('ENTITY').AsString:= qryEntity.FieldByName('CODE').AsString;
        try
          if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
          dmAxiom.uniInsight.StartTransaction;
          qryDeleteRollupTrans.ExecSQL;
          qryDeleteRollupJournals.ExecSQL;
          qryRemoveRollupDate.ExecSQL;

          dmAxiom.uniInsight.Commit
        except
          dmAxiom.uniInsight.Rollback
        end
      finally
        qryDeleteRollupTrans.Free;
        qryDeleteRollupJournals.Free;
        qryRemoveRollupDate.Free
      end
    end
  finally
    frmUnrollAccts.Release
  end;
  // refresh the entity data
  qryEntity.Refresh;
end;

procedure TfrmEntity.SetButtons;
begin
  tbLockAccts.Enabled:= dmAxiom.Security.Accounts.Lock;
  tbUnlockAccts.Enabled:= dmAxiom.Security.Accounts.UnLock;
  tbRollAccts.Enabled:= dmAxiom.Security.Accounts.Rollup;
  tbUnrollAccounts.Enabled:= dmAxiom.Security.Accounts.Unroll;
end;

procedure TfrmEntity.setNextMatterEdit;
begin
  if (getSourceForNextMatter = 'SYSTEMFILE') then
    begin
      dfNextMatter.Enabled := FALSE;
//      dfNextMatter.Properties.  Color := clBtnFace;
      dfNextMatter.Hint := 'The system variable is being used to hold the next matter number';

    end;    //  end if
end;

procedure TfrmEntity.ToolButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmEntity.cbMultiCurrencyPropertiesEditValueChanged(Sender: TObject);
begin
   grpMultiCurrency.Enabled := cbMultiCurrency.Checked;
end;

procedure TfrmEntity.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  //lbdPath.SelectedFolder := qryEntity.FieldByName('WPDIR').AsString;
  odlgPath.InitialDir := qryEntity.FieldByName('WPDIR').AsString;
  if odlgPath.Execute then
  begin
    if not qryEntity.Modified then
      qryEntity.Edit;
    //qryEntity.FieldByName('WPDIR').AsString := lbdPath.SelectedFolder+'\';
    qryEntity.FieldByName('WPDIR').AsString := odlgPath.FileName+'\';
  end;
end;

procedure TfrmEntity.dxBarDBNavPost1Click(Sender: TObject);
var sError : String;
begin
   sError := validateFields;

   if sError <> '' then
   begin
      MsgErr(sError);
   end
   else
      qryEntity.Post;
end;

function TfrmEntity.validateFields():String;
var iGlComponentLength : integer;
glComponentSetup : TglComponentSetup;
sError : String;
begin
    glComponentSetup := dmAxiom.getGlComponents;
    iGlComponentLength := glComponentSetup.getComponentLength('ACCOUNT');
    if iGlComponentLength > 0 then // 0 if there is only gl component
    begin
        // creditors
        glComponentSetup.checkAccountField(qryEntity,'CREDITORS','Creditor Control',iGlComponentLength,sError);
        // new
        glComponentSetup.checkAccountField(qryEntity,'NEW_FEE_DR','Fee Creation Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'NEW_FEE_CR','Fee Creation Credit',iGlComponentLength ,sError);
        glComponentSetup.checkAccountField(qryEntity,'NEW_SUND_DR','Sundry Creation Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'NEW_SUND_DR','Sundry Creation Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'NEW_DISB_DR','Disbursement Creation Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'NEW_ANTD_DR','Cheq Req Creation Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'NEW_ANTD_DR','Cheq Req Creation Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'NEW_UPCRED_DR','Unpaid Creditors Creation Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'NEW_UPCRED_CR','Unpaid Creditors Creation Credit',iGlComponentLength,sError);
        // billing
        glComponentSetup.checkAccountField(qryEntity,'BILL_FEE_DR','Fee Billing Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_FEE_CR','Fee Billing Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_FEE_TAX_DR','Fee Billing Tax Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_OVERFEE_DR','Fee Over Recovery Billing Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_OVERFEE_CR','Fee Over Recovery Billing Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_OVERFEE_TAX_DR','Fee Over Recovery Billing Tax Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_DISCFEE_DR','Fee Discount Billing Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_DISCFEE_CR','Fee Discount Billing Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_DISCFEE_TAX_DR','Fee Discount Billing Tax Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_SUND_DR','Sundry Billing Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_SUND_CR','Sundry Billing Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_SUND_TAX_DR','Sundry Billing Tax Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_DISB_DR','Disbursement Billing Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_DISB_CR','Disbursement Billing Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_DISB_TAX_DR','Disbursement Billing Tax Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_ANTD_DR','Cheq Req Billing Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_ANTD_CR','Cheq Req Billing Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_ANTD_TAX_DR','Cheq Req Billing Tax Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_UPCRED_DR','Unpaid Creditors Billing Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_UPCRED_CR','Unpaid Creditors Billing Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'BILL_UPCRED_TAX_DR','Unpaid Creditors Billing Tax Debit',iGlComponentLength,sError);
        // receipting
        glComponentSetup.checkAccountField(qryEntity,'REC_FEE_CR','Fee Receipting Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'REC_SUND_CR','Sundry Expense Receipting Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'REC_UNDISB_CR','Unbilled Disbursement Receipting Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'REC_DISB_CR','Disbursement Receipting Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'REC_ANTD_CR','Cheq Req Receipting Credit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'REC_UPCRED_CR','Unpaid Creditors Receipting Credit',iGlComponentLength,sError);
        // w/off
        glComponentSetup.checkAccountField(qryEntity,'WOFF_FEE_DR','Fee-Billed Write Off Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_FEE_CR','Fee-Billed Write Off Credit',iGlComponentLength ,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_SUND_DR','Sundry Expense-Billed Write Off Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_SUND_CR','Sundry Expense-Billed Write Off Credit',iGlComponentLength ,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_UNDISB_DR','Disbursement-Unbilled Write Off Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_UNDISB_CR','Disbursement-Unbilled Write Off Credit',iGlComponentLength ,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_DISB_DR','Disbursement-Billed Write Off Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_DISB_CR','Disbursement-Billed Write Off Credit',iGlComponentLength ,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_ANTD_DR','Cheq Req Write Off Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_ANTD_CR','Cheq Req Write Off Credit',iGlComponentLength ,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_UPCRED_DR','Unpaid Creditors Write Off Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_UPCRED_CR','Unpaid Creditors Write Off Credit',iGlComponentLength ,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_BAD_DEBT_DR','Bad Debts Debit',iGlComponentLength,sError);
        glComponentSetup.checkAccountField(qryEntity,'WOFF_BAD_DEBT_CR','Bad Debts Credit',iGlComponentLength ,sError);
    end;
    validateFields := sError;
end;


procedure TfrmEntity.dxBarButton4Click(Sender: TObject);
begin
    qryEntityPrintBase.Close;
    qryEntityPrint.Close;
    qryEntityGroup.Close;
    qryEntityPrintBase.ParamByName('ENTITY').AsString := qryEntity.FieldByName('CODE').AsString;
    qryEntityPrint.ParamByName('ENTITY').AsString := qryEntity.FieldByName('CODE').AsString;
    qryEntityGroup.ParamByName('ENTITY').AsString := qryEntity.FieldByName('CODE').AsString;
    qryEntityPrintBase.Open;
    qryEntityPrint.Open;
    qryEntityGroup.Open;
    ppReport1.Print;
    qryEntityPrintBase.Close;
    qryEntityPrint.Close;
    qryEntityGroup.Close;
end;

procedure TfrmEntity.dxBarDBNavFirst1Click(Sender: TObject);
var sError : String;
begin
    if qryEntity.state in [dsEdit,dsInsert] then
        sError := validateFields
    else
        sError := '';

    if sError <> '' then
    begin
        MsgErr(sError);
    end
    else
        qryEntity.First;
end;

procedure TfrmEntity.dxBarDBNavPrev1Click(Sender: TObject);
var sError : String;
begin
    if qryEntity.state in [dsEdit,dsInsert] then
        sError := validateFields
    else
        sError := '';

    if sError <> '' then
    begin
        MsgErr(sError);
    end
    else
        qryEntity.Prior;

end;

procedure TfrmEntity.dxBarDBNavNext1Click(Sender: TObject);
var sError : String;
begin
    if qryEntity.state in [dsEdit,dsInsert] then
        sError := validateFields
    else
        sError := '';

    if sError <> '' then
    begin
        MsgErr(sError);
    end
    else
        qryEntity.Next;
end;

procedure TfrmEntity.dxBarDBNavLast1Click(Sender: TObject);
var sError : String;
begin
   if qryEntity.state in [dsEdit,dsInsert] then
      sError := validateFields
   else
      sError := '';

   if sError <> '' then
   begin
      MsgErr(sError);
   end
   else
      qryEntity.last;
end;

end.
