unit BulkCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, OracleUniProvider, Uni, DBAccess, MemDS,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit, cxCurrencyEdit,
  cxCheckBox, cxDropDownEdit, cxButtonEdit, cxLabel, cxContainer,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar,
  Menus, cxLookAndFeels, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type                                     
  TfrmBulkCheques = class(TForm)
    tvBulkCheques: TcxGridDBTableView;
    lvBulkCheques: TcxGridLevel;
    grdBulkCheques: TcxGrid;
    tvBulkChequesREFNO: TcxGridDBColumn;
    tvBulkChequesPAYEE: TcxGridDBColumn;
    tvBulkChequesAMOUNT: TcxGridDBColumn;
    tvBulkChequesTAX: TcxGridDBColumn;
    pbOk: TcxButton;
    pbCancel: TcxButton;
    tvBulkChequesNCHEQREQ_LIST: TcxGridDBColumn;
    cmbPrinter: TcxComboBox;
    cxLabel2: TcxLabel;
    cbAuthBy: TcxLookupComboBox;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    tvBulkChequesPROCESS: TcxGridDBColumn;
    tvBulkChequesDBUNIQUEID: TcxGridDBColumn;
    cbPrint: TcxCheckBox;
    bmBulkCheque: TdxBarManager;
    bbSelectAll: TdxBarButton;
    pbSelect: TcxButton;
    popMenu: TdxBarPopupMenu;
    lblEFTBank: TcxLabel;
    cmbEFTBank: TcxLookupComboBox;
    qryEFTBank: TUniQuery;
    dsEFTBank: TUniDataSource;
    teRefNo: TcxTextEdit;
    lblReference: TcxLabel;
    lblPrinter: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tvBulkChequesDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvBulkChequesPROCESSHeaderClick(Sender: TObject);
    procedure pbOkClick(Sender: TObject);
    procedure bbSelectAllClick(Sender: TObject);
    procedure pbSelectClick(Sender: TObject);
    procedure cmbEFTBankPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    FDefaultBank: string;
    FCreateCheque: Boolean;
    bOkToPost: Boolean;
    EFTBank: string;
    procedure SetProcessFlag;
  public
    { Public declarations }
    EFTBankCode: string;
    property DefaultBank: string read FDefaultBank write FDefaultBank;
    property CreateCheque: boolean read FCreateCheque write FCreateCheque;
  end;

var
  frmBulkCheques: TfrmBulkCheques;

implementation

uses
   AxiomData, Cheque, MiscFunc, cxLookupGrid;

{$R *.dfm}

procedure TfrmBulkCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if (bOkToPost) then
   begin
      qryEmployee.Close;
      qryEFTBank.Close;
   end
   else
   begin
      Action := caNone;
      bOkToPost := True;
   end;
end;

procedure TfrmBulkCheques.FormCreate(Sender: TObject);
begin
   qryEmployee.Open;
   bOkToPost := True;
   cbAuthBy.EditValue := dmAxiom.UserID;
end;

procedure TfrmBulkCheques.tvBulkChequesDblClick(Sender: TObject);
var
   LfrmCheque: TfrmCheque;
begin
   LfrmCheque := TfrmCheque.Create(frmBulkCheques);
   try
      LfrmCheque.Show;
      LfrmCheque.ChequePrinter := cmbPrinter.Text;
      LfrmCheque.AutoChequeFromCheqReq(string(tvBulkChequesNCHEQREQ_LIST.EditValue));
   except
    //
   end;
end;

procedure TfrmBulkCheques.FormShow(Sender: TObject);
begin
   if CreateCheque then
      StringPopulate(cmbPrinter.Properties.Items, 'PRINTER', 'CODE', 'TYPE = ''C'' AND BANK_ACCT = ''' + FDefaultBank + '''')
   else
      qryEFTBank.Open;
   cmbEFTBank.Visible := (not CreateCheque);
   lblEFTBank.Visible := (not CreateCheque);
   lblReference.Visible := (not CreateCheque);
   teRefNo.Visible := (not CreateCheque);
//   cbPrint.Visible := CreateCheque;
   lblPrinter.Visible := CreateCheque;
   cmbPrinter.Visible := CreateCheque;
end;

procedure TfrmBulkCheques.tvBulkChequesPROCESSHeaderClick(Sender: TObject);
begin
   SetProcessFlag;
end;

procedure TfrmBulkCheques.pbOkClick(Sender: TObject);
var
   msg: string;
   ProcessSelected: Boolean;
   Row: Integer;
begin
   bOkToPost := True;
   ProcessSelected := False;
   if cmbEFTBank.Visible = True then
   begin
      if (cmbEFTBank.Text = '') then
      begin
         MsgInfo('EFT payments require a Bank to be selected. Please select a Bank prior to processing.');

      end;
   end;

   if (bOkToPost = True) then
   begin
      if (((EFTBank <> 'NAB') and (EFTBank <> 'MBL') and (EFTBank <> 'WBC')) and (not CreateCheque)) then
      begin
         MsgInfo('This functionality is currently not supported for the Bank that you use.' + #13 +
                 'If you require this functionality, please call BHL Insight.');
         bOkToPost := False;
      end
      else
      begin
         msg := '';
         if ((teRefNo.Text = '') and (not CreateCheque)) then
            msg := '           A Reference number is required for E.F.T. transactions.' + #13;
         if ((cmbPrinter.Text = '') and (CreateCheque)) then
            msg := '           Printer' + #13;
         if ((cmbEFTBank.Text = '') and (not CreateCheque)) then
            msg := '           Bank' + #13;
         if (cbAuthBy.Text = '') then
            msg := msg + '           Authorised By';

         for Row := 0 to tvBulkCheques.DataController.RecordCount - 1 do
         begin
            tvBulkCheques.DataController.FocusedRowIndex := Row;
            if tvBulkCheques.DataController.GetValue(Row, tvBulkChequesPROCESS.Index) = 'Y' then
               ProcessSelected := True;
         end;

         if (not ProcessSelected) then
            msg := msg + '           Select Cheque(s) to process.';

         if msg <> '' then
         begin
            MsgInfo('Please complete the following details before posting:    ' + #13 + #13 + msg);
            bOkToPost := False;
         end;
      end;
   end;
end;

procedure TfrmBulkCheques.bbSelectAllClick(Sender: TObject);
begin
   SetProcessFlag;
end;

procedure TfrmBulkCheques.SetProcessFlag;
var
  Idx, I: Integer;
  ABookmark: TBookmark;
  DC: TcxDBDataController;
  GV: TcxGridDBTableView;
  bitmap: TBitmap;
begin
   GV := tvBulkCheques;
   DC := GV.DataController;
   DC.BeginUpdate;
   Idx := DC.FocusedRowIndex;

   Bitmap:= TBitmap.Create;
   if pbSelect.Caption = 'Select All' then
   begin
      pbSelect.Caption := 'DeSelect All';
      bbSelectAll.Caption := 'DeSelect All';
      Bitmap.LoadFromResourceName(HInstance,'CHECKBOXUNTICK');
      pbselect.Glyph.Assign(Bitmap);
      bbSelectAll.Glyph.Assign(Bitmap);
      with DC.DataSet do
      begin
         ABookmark := GetBookmark;
         GV.ViewData.Records[0].Focused := True;
         for I := 0 to GV.ViewData.RowCount - 1 do
         begin
            GV.ViewData.Records[I].Focused := True;
            Edit;
            FieldByName('Process').AsString := 'Y';
            Post;
         end;
         if BookmarkValid(ABookmark) then
            GotoBookmark(ABookmark);
         FreeBookmark(ABookmark);
      end;
   end
   else
   begin
      pbSelect.Caption := 'Select All';
      bbSelectAll.Caption := 'Select All';
      Bitmap.LoadFromResourceName(HInstance,'CHECKBOXTICK');
      pbselect.Glyph.Assign(Bitmap);
      bbSelectAll.Glyph.Assign(Bitmap);
      with DC.DataSet do
      begin
         ABookmark := GetBookmark;
         GV.ViewData.Records[0].Focused := True;
         for I := 0 to GV.ViewData.RowCount - 1 do
         begin
            GV.ViewData.Records[I].Focused := True;
            Edit;
            FieldByName('Process').AsString := 'N';
            Post;
         end;
         if BookmarkValid(ABookmark) then
            GotoBookmark(ABookmark);
         FreeBookmark(ABookmark);
      end;
   end;
   Bitmap.Free;
   DC.FocusedRowIndex := Idx;
   DC.EndUpdate;
end;

procedure TfrmBulkCheques.pbSelectClick(Sender: TObject);
var
   Idx, I: integer;
   ABookmark: TBookmark;
begin
   SetProcessFlag;
   {
   tvBulkCheques.DataController.BeginUpdate;
   Idx := tvBulkCheques.DataController.FocusedRowIndex;
   with tvBulkCheques.DataController.DataSet do
   begin
//      DisableControls;
      ABookmark := GetBookmark;
      tvBulkCheques.ViewData.Records[0].Focused := True;
      for I := 0 to tvBulkCheques.DataController.RowCount - 1 do
      begin
         tvBulkCheques.ViewData.Records[I].Focused := True;
         Edit;
         if FieldByName('Process').AsString = 'N' then
            FieldByName('Process').AsString := 'Y'
         else
            FieldByName('Process').AsString := 'N';
         Post;
      end;
      if BookmarkValid(ABookmark) then
         GotoBookmark(ABookmark);
      FreeBookmark(ABookmark);
//      EnableControls;
   end;
   tvBulkCheques.DataController.FocusedRowIndex := Idx;
   tvBulkCheques.DataController.EndUpdate;  }
end;

procedure TfrmBulkCheques.cmbEFTBankPropertiesCloseUp(Sender: TObject);
begin
   with cmbEFTBank.Properties.DataController do
   begin
      EFTBank := Values[FocusedRecordIndex, 1];
      EFTBankCode := Values[FocusedRecordIndex, 2];
   end;
end;

end.
