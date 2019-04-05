unit BillPotentialNotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxLabel, cxDBLabel, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, DBCtrls,
  cxMaskEdit, cxButtonEdit, cxDBRichEdit, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, cxGraphics, cxCalendar, cxLookAndFeels,
  ComCtrls, dxCore, cxDateUtils, cxCurrencyEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TfrmBillPotentialNotes = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cmbDate: TcxDateEdit;
    mlNote: TcxRichEdit;
    qrybilling_total_history: TUniQuery;
    qryTmp: TUniQuery;
    edAmountPromised: TcxCurrencyEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    cmbPeriod: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    qPeriod: TUniQuery;
    dsPeriod: TUniDataSource;
    ActionManager1: TActionManager;
    actOk: TAction;
    procedure CRTemp_qryDebtorNotesAfterInsert(DataSet: TDataSet);
    procedure edtBillRefPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actOkUpdate(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
    lRefNo: string;
    FEditing: boolean;
    FFromDraftBill: boolean;
    FBillTotal: double;
    FPromiseby: string;
    FSetFor: string;
    function GetNote: String;
    procedure SetFor(const Value: String);
    procedure SetEntryDate(const Value: TDateTime);
    procedure SetNote(const Value: String);
  public
    { Public declarations }
    property EntryDate: TDateTime write SetEntryDate;
    property PromiseFor: String write SetFor;
    property Note: String read GetNote write SetNote;
    property RefNo: string read lRefNo write lRefNo;
    property Editing: boolean read FEditing write FEditing ;
    property FromDraftBill: boolean read FFromDraftBill write FFromDraftBill;
    property BillTotal: double read FBillTotal write FBillTotal;
    property Promiseby: string read FPromiseby write FPromiseby;
  end;

var
  frmBillPotentialNotes: TfrmBillPotentialNotes;

implementation

uses AxiomData, CitFunc, InvoiceSearch, MiscFunc;

{$R *.dfm}

function TfrmBillPotentialNotes.GetNote: String;
begin
   Result := mlNote.Lines.Text;
end;

procedure TfrmBillPotentialNotes.SetFor(const Value: String);
begin
   FSetFor := Value;
end;

procedure TfrmBillPotentialNotes.SetEntryDate(const Value: TDateTime);
begin
   cmbDate.Date := Value;
//   lDate.Caption := DateTimeToStr(Value);
end;

procedure TfrmBillPotentialNotes.SetNote(const Value: String);
begin
   mlNote.Lines.Text := Value;
end;

procedure TfrmBillPotentialNotes.actOkExecute(Sender: TObject);
begin
   with qryTmp do
   begin
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      try
         SQL.Text := 'INSERT INTO BILLING_TOTAL_HISTORY '+
                     '  (EMP_CODE, REASON, PERIOD, AMOUNT_PROMISED)'+
                     'VALUES  '+
                     ' (:EMP_CODE, :REASON, :PERIOD, :AMOUNT_PROMISED)';
         ParamByName('EMP_CODE').AsString := FSetFor;
         ParamByName('PERIOD').AsString := cmbPeriod.EditValue;

         ParamByName('AMOUNT_PROMISED').AsFloat  := edAmountPromised.Value;
         ParamByName('REASON').AsString := mlNote.Text;
         ExecSQL;
      finally
         dmAxiom.uniInsight.Commit;
      end;
   end;
end;

procedure TfrmBillPotentialNotes.actOkUpdate(Sender: TObject);
begin
   actOk.Enabled := (cmbPeriod.Text <> '')  and (cmbDate.Text <> '') and
                     (edAmountPromised.Text <> '') and (mlNote.Text <> '');
end;

procedure TfrmBillPotentialNotes.CRTemp_qryDebtorNotesAfterInsert(DataSet: TDataSet);
var
   ASequence: integer;
begin
//   qrybilling_total_history.FieldByName('createdby').AsString := dmAxiom.UserID;
//   qrybilling_total_history.FieldByName('created').AsDateTime := Now;

end;

procedure TfrmBillPotentialNotes.edtBillRefPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   iNmemo: integer;
begin

end;

procedure TfrmBillPotentialNotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qrybilling_total_history.Close;
end;

procedure TfrmBillPotentialNotes.FormShow(Sender: TObject);
var
   myYear, myMonth, myDay : Word;
begin
   DecodeDate(Now, myYear, myMonth, myDay);
   qPeriod.ParamByName('pcal_year').AsInteger := myYear;
   qPeriod.Open;
end;

end.
