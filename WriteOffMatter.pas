unit WriteOffMatter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxButtonEdit, cxLabel, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, NumberEdit,
  dxBar, Ora, OracleUniProvider, Uni, DBAccess, MemDS, MemDS, DBAccess, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, EnforceCustomDateEdit, cxCurrencyEdit, cxMemo,
  cxRichEdit, cxDBLabel, cxCheckBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxLookAndFeels, cxLookAndFeelPainters,
  dxBarBuiltInMenu, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ComCtrls, dxCore,
  cxDateUtils;

type
  TfrmWriteOffsMatterDisbs = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    btnOk: TdxBarButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    lblCheqReq: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    lblClient: TcxLabel;
    lblMatterDesc: TcxLabel;
    btnMatterFind: TcxButtonEdit;
    pagLedgers: TcxPageControl;
    tsFees: TcxTabSheet;
    grdFeesLevel1: TcxGridLevel;
    grdFees: TcxGrid;
    qryMatter: TUniQuery;
    dsMatter: TUniDataSource;
    cmbAuthor: TcxLookupComboBox;
    qryEmployees: TUniQuery;
    dsEmployees: TUniDataSource;
    dtpCreated: TEnforceCustomDateEdit;
    cmbDept: TcxLookupComboBox;
    tsDisbursements: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    mmoDesc: TcxRichEdit;
    lblCreditors: TcxLabel;
    lblWIP: TcxLabel;
    lblSundries: TcxLabel;
    lblDisbursements: TcxLabel;
    lblAnticipated: TcxLabel;
    qryFees: TUniQuery;
    dsFees: TUniDataSource;
    tvFees: TcxGridDBBandedTableView;
    tvFeesCREATED: TcxGridDBBandedColumn;
    tvFeesDESCR: TcxGridDBBandedColumn;
    tvFeesAMOUNT: TcxGridDBBandedColumn;
    tvFeesAUTHOR: TcxGridDBBandedColumn;
    tvFeesTAXCODE: TcxGridDBBandedColumn;
    tvFeesTAX: TcxGridDBBandedColumn;
    tvFeesDBBandedColumn1: TcxGridDBBandedColumn;
    grdDisbsLevel1: TcxGridLevel;
    grdDisbs: TcxGrid;
    tvDisbs: TcxGridDBBandedTableView;
    qryDisb: TUniQuery;
    dsDisb: TUniDataSource;
    tvDisbsCREATED: TcxGridDBBandedColumn;
    tvDisbsREFNO: TcxGridDBBandedColumn;
    tvDisbsDESCR: TcxGridDBBandedColumn;
    tvDisbsAMOUNT: TcxGridDBBandedColumn;
    tvDisbsPAYER: TcxGridDBBandedColumn;
    tvDisbsTAXCODE: TcxGridDBBandedColumn;
    tvDisbsTAX: TcxGridDBBandedColumn;
    tvDisbsDBBandedColumn1: TcxGridDBBandedColumn;
    lblWIPTax: TcxLabel;
    lblDisbursementsTax: TcxLabel;
    lblCreditorsTax: TcxLabel;
    lblAnticipatedTax: TcxLabel;
    lblSundriesTax: TcxLabel;
    lblWIPTotal: TcxLabel;
    lblDisbursementsTotal: TcxLabel;
    lblCreditorsTotal: TcxLabel;
    lblAnticipatedTotal: TcxLabel;
    lblSundriesTotal: TcxLabel;
    qryDept: TUniQuery;
    dsDept: TUniDataSource;
    qryUpCred: TUniQuery;
    dsUpCred: TUniDataSource;
    grdUnpaidCredLevel1: TcxGridLevel;
    grdUnpaidCred: TcxGrid;
    tvUnpaidCred: TcxGridDBBandedTableView;
    tvUnpaidCredCREATED: TcxGridDBBandedColumn;
    tvUnpaidCredREFNO: TcxGridDBBandedColumn;
    tvUnpaidCredDESCR: TcxGridDBBandedColumn;
    tvUnpaidCredAMOUNT: TcxGridDBBandedColumn;
    tvUnpaidCredTAXCODE: TcxGridDBBandedColumn;
    tvUnpaidCredTAX: TcxGridDBBandedColumn;
    tvUnpaidCredPAYER: TcxGridDBBandedColumn;
    tvUnpaidCredDBBandedColumn1: TcxGridDBBandedColumn;
    qrySund: TUniQuery;
    dsSund: TUniDataSource;
    grdSundriesLevel1: TcxGridLevel;
    grdSundries: TcxGrid;
    tvSundries: TcxGridDBBandedTableView;
    tvSundriesCREATED: TcxGridDBBandedColumn;
    tvSundriesDESCR: TcxGridDBBandedColumn;
    tvSundriesAMOUNT: TcxGridDBBandedColumn;
    tvSundriesTAXCODE: TcxGridDBBandedColumn;
    tvSundriesTAX: TcxGridDBBandedColumn;
    tvSundriesDBBandedColumn1: TcxGridDBBandedColumn;
    qryAntd: TUniQuery;
    dsAntd: TUniDataSource;
    grdCheqReqsLevel1: TcxGridLevel;
    grdCheqReqs: TcxGrid;
    tvCheqReqs: TcxGridDBBandedTableView;
    tvCheqReqsREQDATE: TcxGridDBBandedColumn;
    tvCheqReqsBANK: TcxGridDBBandedColumn;
    tvCheqReqsDESCR: TcxGridDBBandedColumn;
    tvCheqReqsTAXCODE: TcxGridDBBandedColumn;
    tvCheqReqsAMOUNT: TcxGridDBBandedColumn;
    tvCheqReqsPAYEE: TcxGridDBBandedColumn;
    tvCheqReqsTAX: TcxGridDBBandedColumn;
    tvCheqReqsDBBandedColumn1: TcxGridDBBandedColumn;
    Label13: TLabel;
    Label15: TLabel;
    edFeeWOCR: TcxTextEdit;
    edDisbWOCR: TcxTextEdit;
    edUpCredWOCR: TcxTextEdit;
    edAntdWOCR: TcxTextEdit;
    edSundWOCR: TcxTextEdit;
    edFeeWODR: TcxTextEdit;
    edDisbWODR: TcxTextEdit;
    edUpCredWODR: TcxTextEdit;
    edAntdWODR: TcxTextEdit;
    edSundWODR: TcxTextEdit;
    procedure btnMatterFindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnMatterFindPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function OktoPost : boolean;
    procedure ShowDetails(pFileId: string);
  public
    { Public declarations }
  end;

var
  frmWriteOffsMatterDisbs: TfrmWriteOffsMatterDisbs;

implementation

uses AxiomData, MSearch, MiscFunc, glComponentUtil;

{$R *.dfm}

procedure TfrmWriteOffsMatterDisbs.btnMatterFindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   frmSearchForMatter: TfrmMatterSearch;
begin
   frmSearchForMatter := TfrmMatterSearch.Create(Self);
   frmSearchForMatter.chkOnlyCurrent.Checked := False;
   frmSearchForMatter.MatterArchiveInit;

   if frmSearchForMatter.ShowModal = mrOK then
   begin
      btnMatterFind.Text := dmAxiom.qryMSearch .FieldByName('FILEID').AsString;
      ShowDetails(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
   frmSearchForMatter.Free;
end;

procedure TfrmWriteOffsMatterDisbs.btnMatterFindPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   ShowDetails( MatterString(string(DisplayValue),'FILEID'));
end;

procedure TfrmWriteOffsMatterDisbs.ShowDetails(pFileId: string);
var
    sArchiveError : string;
begin
   try
   begin
      Screen.Cursor := crSQLWait;
      with qryMatter do
      begin
         Close;
         // this is really nmatter
         ParamByName('P_FILE').AsString := pFileId;
         Open;
         lblClient.Caption := FieldByName('TITLE').AsString;
         lblMatterDesc.Caption := FieldByName('SHORTDESCR').AsString;

         qryFees.Close;
         qryFees.ParamByName('P_Matter').AsInteger := FieldByName('NMATTER').AsInteger;
         qryFees.Open;

         qryDisb.Close;
         qryDisb.ParamByName('P_Matter').AsInteger := FieldByName('NMATTER').AsInteger;
         qryDisb.Open;

         qryUpCred.Close;
         qryUpCred.ParamByName('P_Matter').AsInteger := FieldByName('NMATTER').AsInteger;
         qryUpCred.Open;

         qrySund.Close;
         qrySund.ParamByName('P_Matter').AsInteger := FieldByName('NMATTER').AsInteger;
         qrySund.Open;

         qryAntd.Close;
         qryAntd.ParamByName('P_FileID').AsInteger := FieldByName('NMATTER').AsInteger;
         qryAntd.Open;

   //      lblDebtors.Caption := FormatCurr('$#0.00', FieldByName('CAL_DEBTORS').AsFloat);
         lblWIP.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_FEES').AsFloat);
         lblWIPTax.Caption := FormatCurr('$#0.00', FieldByName('CAL_FEES_TAX').AsFloat);
         lblWIPTotal.Caption := FormatCurr('$#0.00', FieldByName('CAL_FEES_TAX').AsFloat + FieldByName('CAL_UNBILL_FEES').AsFloat);

         lblSundries.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_SUND').AsFloat);
         lblSundriesTax.Caption := FormatCurr('$#0.00', FieldByName('CAL_SUND_TAX').AsFloat);
         lblSundriesTotal.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_SUND').AsFloat + FieldByName('CAL_SUND_TAX').AsFloat);


         lblDisbursements.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_DISB').AsFloat);
         lblDisbursementsTax.Caption := FormatCurr('$#0.00', FieldByName('CAL_DISB_TAX').AsFloat);
         lblDisbursementsTotal.Caption := FormatCurr('$#0.00', FieldByName('CAL_DISB_TAX').AsFloat + FieldByName('CAL_UNBILL_DISB').AsFloat);

         lblAnticipated.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_ANTD').AsFloat);
         lblAnticipatedTax.Caption := FormatCurr('$#0.00', FieldByName('CAL_ANTD_TAX').AsFloat);
         lblAnticipatedTotal.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_ANTD').AsFloat + FieldByName('CAL_ANTD_TAX').AsFloat);
   //      lblTrust.Caption := FormatCurr('$#0.00', FieldByName('CAL_TRUST_BAL').AsFloat);

         lblCreditors.Caption := FormatCurr('$#0.00', FieldByName('CAL_CREDITORS').AsFloat);
         lblCreditorsTax.Caption := FormatCurr('$#0.00', FieldByName('CAL_CREDITORS_TAX').AsFloat);
         lblCreditorsTotal.Caption := FormatCurr('$#0.00', FieldByName('CAL_CREDITORS_TAX').AsFloat + FieldByName('CAL_CREDITORS').AsFloat);
//         edAdjust.Text := TableString('TAXTYPE', 'CODE', 'GST', 'OUTPUTLEDGER');

         if (TableString('EMPLOYEE', 'CODE', cmbAuthor.EditValue, 'FEEWOFF_CHART') <> '') then
             edFeeWODR.Text := TableString('EMPLOYEE', 'CODE', string(cmbAuthor.EditValue), 'FEEWOFF_CHART')
         else
             edFeeWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_DR');

             edFeeWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_FEE_CR');

             edSundWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_SUND_DR');
             edSundWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_SUND_CR');

 {          if rgledgertype.itemindex = 0 then
              edDisbWODR.Text := TableString('EMPLOYEE', 'CODE', cmbAuthor.EditValue, 'DISBWOFF_CHART')
           else if rgledgertype.itemindex = 1 then
              edDisbWODR.Text := TableString('EMPLOYEE', 'CODE', cmbAuthor.EditValue, 'DISBUNREC_CHART')
           else
              edDisbWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_DR');   }

           edDisbWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_DISB_CR');

           if (TableString('EMPLOYEE', 'CODE', string(cmbAuthor.EditValue), 'DISBWOFF_CHART') <> '') then
             edUpCredWODR.Text := TableString('EMPLOYEE', 'CODE', string(cmbAuthor.EditValue), 'DISBWOFF_CHART')
           else
             edUpCredWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_DR');

           edUpCredWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_UPCRED_CR');


           if (TableString('EMPLOYEE', 'CODE', string(cmbAuthor.EditValue), 'DISBWOFF_CHART') <> '') then
             edAntdWODR.Text := TableString('EMPLOYEE', 'CODE', string(cmbAuthor.EditValue), 'DISBWOFF_CHART')
           else
             edAntdWODR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_DR');

           edAntdWOCR.Text := TableString('ENTITY', 'CODE', dmAxiom.Entity, 'WOFF_ANTD_CR');

      end;
   end;
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TfrmWriteOffsMatterDisbs.btnOkClick(Sender: TObject);
begin
   Close();
   RemoveFromDesktop(Self);
end;

procedure TfrmWriteOffsMatterDisbs.FormCreate(Sender: TObject);
begin
   Self.Caption := Self.Caption + ' - ' + dmAxiom.EntityName;
   qryEmployees.Open;
   qryDept.Open;
end;

function TfrmWriteOffsMatterDisbs.OKtoPost : boolean;
var
   sTmp : String;
   bOKtoPost: boolean;
begin
   bOKtoPost:= True;

   sTmp := '';
   if not qryMatter.Active then
     sTmp := '       No Matter selected'#13;
   if cmbAuthor.Text = '' then
     sTmp := sTmp + '       Author'#13;
   if mmoDesc.Text = '' then
     sTmp := sTmp + '       Reason'#13;
//   if (neFees.AsCurrency + neDisb.AsCurrency + neUpCred.AsCurrency + neAntD.AsCurrency + neSund.AsCurrency + neFeesTax.AsCurrency + neDisbTax.AsCurrency + neUpCredTax.AsCurrency + neAntDTax.AsCurrency + neSundTax.AsCurrency) = 0 then
//     sTmp := sTmp + '       Amount(s) to Write Off'#13;
   if sTmp <> '' then
   begin
     MsgInfo('Please complete the following Write Off details before posting: '#13#13 + sTmp);
     bOKtoPost := False
   end;

   result:= bOKtoPost;
end;

procedure TfrmWriteOffsMatterDisbs.dxBarButton1Click(Sender: TObject);
var
   glComponentSetup : TglComponentSetup;
   sLedgerKey,sLedgerKeyDr,sLedgerKeyTax : String;
   rDepartmentOverride : TComponentOverride;
begin
   glComponentSetup := dmAxiom.getGlComponents;

   // create the department override
   rDepartmentOverride.componentType := EMPDEPT;
   rDepartmentOverride.value := cmbDept.EditValue;

   if OKtoPost then
   begin


   end;
end;

procedure TfrmWriteOffsMatterDisbs.FormShow(Sender: TObject);
begin
   cmbAuthor.EditValue := dmAxiom.UserID;
   cmbDept.EditValue := TableString('EMPLOYEE', 'CODE', dmAxiom.UserID, 'DEPT');
end;

procedure TfrmWriteOffsMatterDisbs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryEmployees.Close;
   qryDept.Close;
end;

end.
