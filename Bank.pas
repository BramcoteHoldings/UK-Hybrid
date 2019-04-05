unit Bank;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DBCtrls, Vcl.StdCtrls, Db, Vcl.Buttons,
  Mask, Spin, Vcl.ComCtrls, ToolWin, ImgList, Printers,
  DBAccess, MemDS, Menus, Printer, Variants, cxTextEdit,
  cxMaskEdit, cxDBEdit, cxControls, cxContainer, cxEdit, cxLabel, dxBarDBNav,
  dxBar, cxPC, cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, vcl.Themes,
  OracleUniProvider, Uni, cxNavigator, DBDateTimePicker,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  dxDateRanges, System.ImageList;



type
  TfrmBank = class(TForm)
    qryBank: TUniQuery;
    dsBank: TUniDataSource;
    lblType: TLabel;
    ilstToolbar: TImageList;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    dbeCode: TDBEdit;
    Label12: TLabel;
    dblblLongType: TDBText;
    Label13: TLabel;
    lblEntityName: TLabel;
    dbtbAbbrev: TDBEdit;
    Label14: TLabel;
    dbtbCAB: TDBEdit;
    Label15: TLabel;
    cdlgColour: TColorDialog;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    qryPrinter: TUniQuery;
    dsPrinter: TUniDataSource;
    PrinterMenu: TPopupMenu;
    New1: TMenuItem;
    Edit1: TMenuItem;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    edtStatDepMat: TDBEdit;
    lblStatDepMat: TLabel;
    DBEdit7: TDBEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxBarManager1: TdxBarManager;
    tbtnNew: TdxBarButton;
    tbtnDelete: TdxBarButton;
    dxBarDBNavigator1: TdxBarDBNavigator;
    tbtnFirst: TdxBarDBNavButton;
    tbtnLast: TdxBarDBNavButton;
    tbtnPrev: TdxBarDBNavButton;
    tbtnNext: TdxBarDBNavButton;
    tbtnColour: TdxBarButton;
    tbtnPrint: TdxBarButton;
    btnExit: TdxBarButton;
    cxDBCheckBox1: TcxDBCheckBox;
    cbEnforceBSBDD: TcxDBCheckBox;
    Label20: TLabel;
    DBText1: TDBText;
    cmbAcctType: TDBComboBox;
    cbDefault: TcxDBCheckBox;
    dxBarDBNavPost1: TdxBarDBNavButton;
    DBCheckBox1: TDBCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblBPayCode: TLabel;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    edBPayCode: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    lblBANK_RECEIPT_SEQ: TLabel;
    edtBANK_RECEIPT_SEQ: TDBEdit;
    DBDateTimePicker1: TDBDateTimePicker;
    Label6: TLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    pagDocs: TcxPageControl;
    tabCheque: TcxTabSheet;
    tabReceipt: TcxTabSheet;
    dbgChPrinter: TcxGrid;
    tvChPrinter: TcxGridDBTableView;
    tvChPrinterCODE: TcxGridDBColumn;
    tvChPrinterBRANCH_DESCR: TcxGridDBColumn;
    tvChPrinterNUM_FROM: TcxGridDBColumn;
    tvChPrinterNUM_TO: TcxGridDBColumn;
    tvChPrinterNUM_LAST: TcxGridDBColumn;
    dbgChPrinterLevel1: TcxGridLevel;
    dbgRePrinter: TcxGrid;
    tvRePrinter: TcxGridDBTableView;
    tvRePrinterCODE: TcxGridDBColumn;
    tvRePrinterBRANCH_DESCR: TcxGridDBColumn;
    tvRePrinterNUM_FROM: TcxGridDBColumn;
    tvRePrinterNUM_TO: TcxGridDBColumn;
    tvRePrinterNUM_LAST: TcxGridDBColumn;
    dbgRePrinterLevel1: TcxGridLevel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    Label8: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    procedure qryBankBeforePost(DataSet: TDataSet);
    procedure qryBankAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure tbtnFirstClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnLastClick(Sender: TObject);
    procedure tbtnNewClick(Sender: TObject);
    procedure tbtnDeleteClick(Sender: TObject);
    procedure qryBankCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnColourClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbChequePrintChange(Sender: TObject);
    procedure PrinterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pagDocsChange(Sender: TObject);
    procedure dsBankDataChange(Sender: TObject; Field: TField);
    procedure Edit1Click(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure edtStatDepMatChange(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure cxDBMaskEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fdefaultStyleName:  String;
  public
    { Public declarations }
  end;


var
  frmBank: TfrmBank;

implementation

uses
  AxiomData, BankNew, MSearch, MiscFunc, Vcl.Styles,
  Vcl.Styles.FormStyleHooks;


{$R *.DFM}

procedure TfrmBank.qryBankBeforePost(DataSet: TDataSet);
begin
  if not qryBank.Modified then
    qryBank.Edit;
end;

procedure TfrmBank.qryBankAfterScroll(DataSet: TDataSet);
begin
   lblEntityName.Caption := TableString('ENTITY', 'CODE', qryBank.FieldByName('ENTITY').AsString, 'NAME');
   lblStatDepMat.Caption := TableString('MATTER', 'NMATTER', edtStatDepMat.Text, 'FILEID');

//   cbEnforceBSBDD.Enabled := (qryBank.FieldByName('TRUST').AsString = 'T');
   cbDefault.Visible := (qryBank.FieldByName('TRUST').AsString = 'T');

   edtBANK_RECEIPT_SEQ.Visible := (qryBank.FieldByName('TRUST').AsString = 'I');
   lblBANK_RECEIPT_SEQ.Visible := (qryBank.FieldByName('TRUST').AsString = 'I');

  //cbChequePrint.Text := qryBank.FieldByName('CHEQUEPRINTER').AsString;
  //cbReceiptPrint.Text := qryBank.FieldByName('RECEIPTPRINTER').AsString;
   if (qryBank.BOF = True) then
   begin
      tbtnFirst.Enabled := False;
      tbtnPrev.Enabled := False;
   end
   else
   begin
      tbtnFirst.Enabled := True;
      tbtnPrev.Enabled := True;
   end;
   if qryBank.EOF then
   begin
      tbtnNext.Enabled := False;
      tbtnLast.Enabled := False;
   end
   else
   begin
      tbtnNext.Enabled := True;
      tbtnLast.Enabled := True;
   end;

   TFormStyleHookBackground.BackGroundSettings.Enabled := True;
   TFormStyleHookBackground.BackGroundSettings.UseColor := True;
   TFormStyleHookBackground.BackGroundSettings.Color := BankColour(qryBank.FieldByName('ACCT').AsString);
   Self.Invalidate;
   Self.Perform(WM_PAINT, 0, 0);

   cbEnforceBSBDD.Style.Color := BankColour(qryBank.FieldByName('ACCT').AsString);
   cbEnforceBSBDD.StyleDisabled.Color := BankColour(qryBank.FieldByName('ACCT').AsString);
end;


procedure TfrmBank.FormShow(Sender: TObject);
begin
//  qryBank.AfterScroll := nil;
  with qryBank do
  begin
    Close;
    ParamByName('ENTITY').AsString := dmAxiom.Entity;
    Open;
  end;
  //with cbChequePrint do
  //     Items:=Printer.Printers;
  //with cbReceiptPrint do
  //     Items:=Printer.Printers;
//  qryBank.AfterScroll :=  qryBankAfterScroll;
end;

procedure TfrmBank.tbtnFirstClick(Sender: TObject);
begin
  if qryBank.Modified then
    qryBank.Post;
  qryBank.First;
end;

procedure TfrmBank.tbtnPrevClick(Sender: TObject);
begin
  if qryBank.Modified then
    qryBank.Post;
  qryBank.Prior;
end;

procedure TfrmBank.tbtnNextClick(Sender: TObject);
begin
  if qryBank.Modified then
    qryBank.Post;
  qryBank.Next;
end;

procedure TfrmBank.tbtnLastClick(Sender: TObject);
begin
  if qryBank.Modified then
    qryBank.Post;
  qryBank.Last;
end;

procedure TfrmBank.tbtnNewClick(Sender: TObject);
begin
   if qryBank.Modified then
      qryBank.Post;
   try
      with TfrmBankNew.Create(Self) do
      begin
         ShowModal;
         Destroy;
      end;
   finally
      if qryBank.Active then
         qryBank.Refresh;
   end;
end;

procedure TfrmBank.tbtnDeleteClick(Sender: TObject);
begin
  if MsgAsk('Are you sure you want to delete this BANK?') = IDYES then
  begin
    if qryBank.Modified then
      qryBank.Post;
    qryBank.Delete;
//    MsgErr('You may not delete this Bank Account.');
  end;
end;


procedure TfrmBank.qryBankCalcFields(DataSet: TDataSet);
begin
//  if qryBank.FieldByName('TRUST').AsString = 'C' then
//    qryBank.FieldByName('LongType').AsString := 'Company'
//  else if qryBank.FieldByName('TRUST').AsString = 'G' then
//    qryBank.FieldByName('LongType').AsString := 'General'
//  else if qryBank.FieldByName('TRUST').AsString = 'T' then
//    qryBank.FieldByName('LongType').AsString := 'Trust';
end;


procedure TfrmBank.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryBank.Close;
  RemoveFromDesktop(Self);
//  Self.Release;
end;


procedure TfrmBank.tbtnColourClick(Sender: TObject);
begin
  cdlgColour.Color := qryBank.FieldByName('COLOUR').AsInteger;
  if cdlgColour.Execute then
  begin
    if not qryBank.Modified then
      qryBank.Edit;
    qryBank.FieldByName('COLOUR').AsInteger := cdlgColour.Color;
    Self.Color := cdlgColour.Color;
  end;
end;

procedure TfrmBank.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if qryBank.Modified then
    if MsgAsk('Do you want to save your changes?') = mrYes then
      qryBank.Post;
end;

procedure TfrmBank.FormCreate(Sender: TObject);
begin
   if Assigned(TStyleManager.ActiveStyle) then
      fdefaultStyleName := TStyleManager.ActiveStyle.Name;

   if SystemString('LOCALE_NAME') <> '' then
   begin
      lblBPayCode.Visible := False;
      edBPayCode.Visible := False;
   end;
end;

procedure TfrmBank.cbChequePrintChange(Sender: TObject);
begin
  if not qryBank.Modified then
    qryBank.Edit;        //put dataset in edit mode
  //if pagDocs.ActivePage = tabCheque then  //save selected printer for Cheque into DB
    //qryBank.FieldByName('CHEQUEPRINTER').AsString := cbChequePrint.Items[cbChequePrint.ItemIndex];
  //if pagDocs.ActivePage = tabReceipt then  //save selected printer for Receipt into DB
  //  qryBank.FieldByName('RECEIPTPRINTER').AsString := cbReceiptPrint.Items[cbReceiptPrint.ItemIndex];
end;


procedure TfrmBank.PrinterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    if not qryBank.Modified then
      qryBank.Edit;
    if pagDocs.ActivePage = tabCheque then
    begin
      // Clear printer setting for Cheque
      qryBank.FieldByName('CHEQUEPRINTER').Value := Null;
     // cbChequePrint.Text := '';
    end
    else if pagDocs.ActivePage = tabReceipt then
    begin
      // Clear printer setting for Receipt
      qryBank.FieldByName('RECEIPTPRINTER').Value := Null;
    //  cbReceiptPrint.Text := '';
    end;
  end;
end;

procedure TfrmBank.pagDocsChange(Sender: TObject);
begin
     qryPrinter.Close;

     if pagDocs.ActivePage = tabCheque then
     begin
        qryPrinter.ParamByName('TYPE').AsString := 'C';
        qryPrinter.ParamByName('BANK').AsString := dbeCode.Text;
        qryPrinter.Open;

     end;

     if pagDocs.ActivePage = tabReceipt then
     begin
        qryPrinter.ParamByName('TYPE').AsString := 'R';
        qryPrinter.ParamByName('BANK').AsString := dbeCode.Text;
        qryPrinter.Open;

     end;
end;

procedure TfrmBank.dsBankDataChange(Sender: TObject; Field: TField);
begin
  pagDocsChange(Self);
end;

procedure TfrmBank.Edit1Click(Sender: TObject);
begin
  with TfrmPrinter.Create(Self) do
  begin
    EditPrinter(qryPrinter.FieldByName('CODE').AsString);
    ShowModal;
    Destroy;
  end;
  qryPrinter.Refresh;
end;

procedure TfrmBank.New1Click(Sender: TObject);
  var sTmp : string;
begin
  sTmp := dbeCode.Text;
  with TfrmPrinter.Create(Self) do
  begin
    NewPrinter(sTmp,qryPrinter.ParamByName('TYPE').AsString);
    ShowModal;
//    Destroy;
  end;
  qryPrinter.Refresh;
end;

procedure TfrmBank.edtStatDepMatChange(Sender: TObject);
begin
  lblStatDepMat.Caption := TableString('MATTER', 'NMATTER', edtStatDepMat.Text, 'FILEID');
end;

procedure TfrmBank.btnExitClick(Sender: TObject);
begin
   Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmBank.cxDBMaskEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   ErrorText := 'A valid B.S.B. format is 999-999. Please re-enter.';
end;

initialization
 TStyleManager.Engine.RegisterStyleHook(TfrmBank, TFormStyleHookBackground);

finalization
 TStyleManager.Engine.UnRegisterStyleHook(TfrmBank, TFormStyleHookBackground);


end.
