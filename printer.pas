unit printer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, Db, MemDS, DBAccess, OracleUniProvider, Uni, ImgList, Menus,
  ExtCtrls, ComCtrls, ToolWin, VirtualTable, DBCtrls,
  StdCtrls, Mask,MiscFunc, printers,MaintAncestorNoRep, Buttons,
  ExtDlgs, dxBarDBNav, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  System.ImageList;

type
  TfrmPrinter = class(TfrmMaintNoRep)
    dbeCode: TDBEdit;
    dbeTray: TDBEdit;
    dbeTemplate: TDBEdit;
    dbeFrom: TDBEdit;
    dbeTo: TDBEdit;
    dbeLast: TDBEdit;
    dblBranch: TDBLookupComboBox;
    qryBranch: TUniQuery;
    dsBranch: TUniDataSource;
    OpenTmp: TOpenDialog;
    vtType: TVirtualTable;
    dsType: TUniDataSource;
    dbeType: TDBLookupComboBox;
    qryCheckNum: TUniQuery;
    qryCheckCheque: TUniQuery;
    ckVal: TCheckBox;
    qryCheckReceipt: TUniQuery;
    dbcPrinter: TDBComboBox;
    dbimage: TDBImage;
    dsPrinterSignatures: TUniDataSource;
    qrySignature: TUniQuery;
    dsSignature: TUniDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    StatusBar1: TStatusBar;
    dbcBank: TcxDBLookupComboBox;
    qryBanks: TUniQuery;
    dsBanks: TUniDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure btnSelectTmpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditPrinter(sPrinter : String);
    procedure NewPrinter(sBank,sType : String);
    function CheckRange : Boolean;
    procedure tbtnPostClick(Sender: TObject);
    procedure dbeToExit(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcBankPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrinter: TfrmPrinter;

implementation

uses AxiomData;

{$R *.DFM}

function TfrmPrinter.CheckRange : Boolean;
begin
    if not ckVal.checked then
    begin
       CheckRange := True;
       exit;
    end;

    if (qrySource.FieldByName('NUM_LAST').AsString >
    qrySource.FieldByName('NUM_TO').AsString) OR
    (qrySource.FieldByName('NUM_LAST').AsString <
    qrySource.FieldByName('NUM_FROM').AsString) then
    begin
       MsgErr('The Last Number must be between "From" and "To"');
       CheckRange := False;
       exit;
    end;

    qryCheckNum.Close;
    qryCheckNum.ParamByName('BANK').AsString :=
          qrySource.FieldByName('BANK_ACCT').AsString;
    qryCheckNum.ParamByName('TYPE').AsString :=
          qrySource.FieldByName('TYPE').AsString;
    qryCheckNum.ParamByName('N_FROM').AsString:= qrySource.FieldByName('NUM_FROM').AsString;
    qryCheckNum.ParamByName('N_TO').AsString := qrySource.FieldByName('NUM_TO').AsString;
    qryCheckNum.ParamByName('CODE').AsString := qrySource.FieldByName('CODE').AsString;
    qryCheckNum.Open;

    if not qryCheckNum.IsEmpty then
    begin
       MsgErr('Number sequence used by printer ' + qryCheckNum.FieldByName('CODE').AsString);
       CheckRange := False;
       exit;
    end;

    if dbeType.Text = 'Cheque' then
    begin
    qryCheckCheque.Close;
    qryCheckCheque.ParamByName('BANK').AsString :=
       qrySource.FieldByName('BANK_ACCT').AsString;
    qryCheckCheque.ParamByName('N_LAST').AsString := qrySource.FieldByName('NUM_LAST').AsString;
    qryCheckCheque.ParamByName('N_TO').AsString := qrySource.FieldByName('NUM_TO').AsString;

    qryCheckCheque.Open;

    if not qryCheckCheque.isEmpty then
    begin
       MsgErr('Cheque  ' + qryCheckCheque.FieldByName('CHQNO').AsString + ' already exists');
       CheckRange := False;
       exit;

    end;
    end;

    if dbeType.Text = 'Receipt' then
    begin
    qryCheckReceipt.Close;
    qryCheckReceipt.ParamByName('BANK').AsString :=
       qrySource.FieldByName('BANK_ACCT').AsString;
    qryCheckReceipt.ParamByName('N_LAST').AsString := qrySource.FieldByName('NUM_LAST').AsString;
    qryCheckReceipt.ParamByName('N_TO').AsString := qrySource.FieldByName('NUM_TO').AsString;

    qryCheckReceipt.Open;

    if not qryCheckReceipt.isEmpty then
    begin
       MsgErr('Receipt  ' + qryCheckReceipt.FieldByName('RCPTNO').AsString + ' already exists');
       CheckRange := False;
       exit;

    end;
    end;
    CheckRange := True;
    exit;
end;

procedure TfrmPrinter.EditPrinter(sPrinter : String);
begin
   qrySource.Close;
   qrySource.ParamByName('CODE').AsString := sPrinter;
   qrySource.Open;

//  tbtnNew.Visible := False;
//  tbtnFirst.Visible := False;
//  tbtnPrior.Visible := False;
//  tbtnNext.Visible := False;
//  tbtnLast.Visible := False;
   dbcBank.Properties.ReadOnly := True;
   dbeType.ReadOnly := True;
end;

procedure TfrmPrinter.NewPrinter(sBank,sType : String);
begin
//  tbtnFirst.Visible := False;
//  tbtnPrior.Visible := False;
//    tbtnNext.Visible := False;
//    tbtnLast.Visible := False;
//    tbtnCancel.Visible := False;
//    tbtnDelete.Visible := False;
   dbcBank.Properties.ReadOnly := True;
   dbeType.ReadOnly := True;
   qrySource.Insert;

   qrySource.FieldByName('TYPE').AsString := sType;
   qrySource.FieldByName('BANK_ACCT').AsString := sBank;
end;

procedure TfrmPrinter.FormShow(Sender: TObject);
begin
   inherited;
//StringPopulate(dbcBank.Items, 'BANK', 'ACCT');
   qryBranch.ParamByName('ENTITY').AsString := dmAxiom.Entity;
   qryBranch.Open;
   qrySignature.Open;
end;

procedure TfrmPrinter.FormHide(Sender: TObject);
begin
  inherited;
  qryBranch.Close;
  qrySignature.Close;
end;

procedure TfrmPrinter.btnSelectTmpClick(Sender: TObject);
begin
  inherited;
  if (OpenTmp.Execute) then
      dbeTemplate.Text := OpenTmp.FileName;
end;

procedure TfrmPrinter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryBanks.Close;
  inherited;
end;

procedure TfrmPrinter.FormCreate(Sender: TObject);
var
FPrinters : TPrinter;
iCtr : integer;
begin
  vtType.Open;
  vtType.Insert;
  vtType.FieldByName('TYPE').AsString := 'C';
  vtType.FieldByName('DESCR').AsString := 'Cheque';
  vtType.Post;
  vtType.Insert;
  vtType.FieldByName('TYPE').AsString := 'R';
  vtType.FieldByName('DESCR').AsString := 'Receipt';
  vtType.Post;
  FPrinters := TPrinter.Create;
  dbcPrinter.Clear;
  for iCtr := 0 to FPrinters.Printers.Count-1 do
      dbcPrinter.Items.Add(FPrinters.Printers.Strings[iCtr]);

  dbcBank.Properties.OnChange := nil;
  qryBanks.Open;
  inherited;
end;

procedure TfrmPrinter.tbtnPostClick(Sender: TObject);
begin
  if CheckRange then
     inherited
end;

procedure TfrmPrinter.dbcBankPropertiesCloseUp(Sender: TObject);
begin
  inherited;
   if dbcBank.Text <> '' then
   begin
      if qrySource.State = dsBrowse then
         qrySource.Edit;
      qrySource.FieldByName('TRUST').AsString := qryBanks.FieldByName('TRUST').AsString;
   end;
end;

procedure TfrmPrinter.dbeToExit(Sender: TObject);
var iloop : integer;
begin
  inherited;
  if (length(qrySource.FieldByName('NUM_FROM').AsString) > 0)
     and (length(qrySource.FieldByName('NUM_TO').AsString) > length(qrySource.FieldByName('NUM_FROM').AsString)) then
  for iloop := 1 to length(qrySource.FieldByName('NUM_TO').AsString)-length(qrySource.FieldByName('NUM_FROM').AsString) do
     qrySource.FieldByName('NUM_FROM').AsString := '0' + qrySource.FieldByName('NUM_FROM').AsString;

     qrySource.FieldByName('NUM_LAST').AsString := qrySource.FieldByName('NUM_FROM').AsString;
end;

procedure TfrmPrinter.FormDblClick(Sender: TObject);
begin
  inherited;
  // show the image
end;

end.
