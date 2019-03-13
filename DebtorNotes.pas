unit DebtorNotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxLabel, cxDBLabel, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, DBCtrls,
  cxMaskEdit, cxButtonEdit, cxDBRichEdit, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, cxGraphics, cxCalendar, cxLookAndFeels,
  ComCtrls, dxCore, cxDateUtils, cxCurrencyEdit;

type
  TfrmDebtorNotes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    dsDebtorNotes: TUniDataSource;
    qryMaxSequence: TUniQuery;
    qryMaxSequenceNEWSEQUENCE: TFloatField;
    dsNMemo: TUniDataSource;
    qryNmemo: TUniQuery;
    edBillNo: TcxTextEdit;
    cmbDate: TcxDateEdit;
    lBy: TcxLabel;
    cmbBillRef: TcxLookupComboBox;
    mlNote: TcxRichEdit;
    qryDebtorNotes: TUniQuery;
    qryTmp: TUniQuery;
    edBillOwing: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    procedure edtBillRefPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CRTemp_qryDebtorNotesAfterInsert(DataSet: TDataSet);
    procedure edtBillRefPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cmbBillRefPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    lNMemo: integer;
    lRefNo: string;
    lNMatter: integer;
    FEditing: boolean;
    FSequence: integer;
    FFromDraftBill: boolean;
    FBillTotal: double;
    function GetNote: String;
    procedure SetBy(const Value: String);
    procedure SetEntryDate(const Value: TDateTime);
    procedure SetNote(const Value: String);
    procedure SetNmemo(const Value: integer);
  public
    { Public declarations }
    property EntryDate: TDateTime write SetEntryDate;
    property By: String write SetBy;
    property Note: String read GetNote write SetNote;
    property NMemo: integer read lNMemo write SetNmemo;
    property RefNo: string read lRefNo write lRefNo;
    property NMatter: integer read lNMatter write lNMatter;
    property Editing: boolean read FEditing write FEditing ;
    property Sequence: integer read FSequence write FSequence;
    property FromDraftBill: boolean read FFromDraftBill write FFromDraftBill;
    property BillTotal: double read FBillTotal write FBillTotal;
  end;

var
  frmDebtorNotes: TfrmDebtorNotes;

implementation

uses AxiomData, CitFunc, InvoiceSearch, MiscFunc;

{$R *.dfm}

function TfrmDebtorNotes.GetNote: String;
begin
   Result := mlNote.Lines.Text;
end;

procedure TfrmDebtorNotes.SetBy(const Value: String);
begin
   lBy.Caption := Value;
end;

procedure TfrmDebtorNotes.SetEntryDate(const Value: TDateTime);
begin
   cmbDate.Date := Value;
//   lDate.Caption := DateTimeToStr(Value);
end;

procedure TfrmDebtorNotes.SetNote(const Value: String);
begin
   mlNote.Lines.Text := Value;
end;

procedure TfrmDebtorNotes.SetNmemo(const Value: Integer);
begin
   if (Editing = True) or (FromDraftBill = True) then
   begin
      cmbBillRef.Visible := False;
      edBillNo.Visible := True;
      if (Editing = True) then
         edBillNo.Text := TableString('NMEMO','NMEMO',VALUE,'REFNO')
      else
      if (FromDraftBill = True) then
      begin
         edBillNo.Text     := Refno;
         edBillOwing.Value := BillTotal;
      end;
      lNMemo := Value;
   end;
end;

procedure TfrmDebtorNotes.edtBillRefPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if not FormExists(frmInvoiceSearch) then
      Application.CreateForm(TfrmInvoiceSearch, frmInvoiceSearch);

   if frmInvoiceSearch.ShowModal = mrOk then
   begin
      qryDebtorNotes.FieldByName('NMEMO').AsInteger := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger;
      qryDebtorNotes.FieldByName('REFNO').AsString := frmInvoiceSearch.qryInvoices.FieldByName('REFNO').AsString;
//      edtBillRef.Text := frmInvoiceSearch.qryInvoices.FieldByName('REFNO').AsString;
   end;
end;

procedure TfrmDebtorNotes.CRTemp_qryDebtorNotesAfterInsert(DataSet: TDataSet);
var
   ASequence: integer;
begin
   qryDebtorNotes.FieldByName('createdby').AsString := dmAxiom.UserID;
   qryDebtorNotes.FieldByName('created').AsDateTime := Now;
   qryDebtorNotes.FieldByName('nmatter').AsInteger  := lNMatter;

   if (edBillNo.Visible = True) then
   begin
      qryDebtorNotes.FieldByName('NMEMO').AsInteger := NMemo;
   end;

   qryMaxSequence.Close;
   qryMaxSequence.ParamByName('nmatter').AsInteger := lNMatter;
   qryMaxSequence.ExecSQL;
   ASequence := qryMaxSequence.FieldByName('newsequence').AsInteger;
   if ASequence = 0 then ASequence := 1;
   qryDebtorNotes.FieldByName('sequence').AsInteger  := ASequence;
end;

procedure TfrmDebtorNotes.edtBillRefPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
   iNmemo: integer;
begin
   iNmemo := TableInteger('NMEMO','REFNO',string(DisplayValue),'NMEMO');
   if (Nmemo > 0) then
   begin
      qryDebtorNotes.FieldByName('NMEMO').AsInteger := iNMemo;
      qryDebtorNotes.FieldByName('REFNO').AsString := DisplayValue;
   end
   else
   begin
      MsgWarn(string(DisplayValue) + ' is not valid.');
      DisplayValue := '';
   end;
end;

procedure TfrmDebtorNotes.cmbBillRefPropertiesEditValueChanged(
  Sender: TObject);
begin
//   qryDebtorNotes.FieldByName('REFNO').AsString := cmbBillRef.Text;
   if cmbBillRef.Text <> '' then
      edBillOwing.Value := TableCurrency('nmemo','nmemo',integer(cmbBillRef.EditValue),'owing');

end;

procedure TfrmDebtorNotes.cxButton1Click(Sender: TObject);
begin
   if Editing then
   begin
      with qryTmp do
      begin
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
         dmAxiom.uniInsight.StartTransaction;
         try
            SQL.Text := 'UPDATE DEBTORNOTES SET '+
                        ' CREATED=:CREATED, NOTE=:NOTE, REVIEW_DATE=:REVIEW_DATE,NMEMO=:NMEMO, COLLECTION_CODE=:COLLECTION_CODE, NDEBTORTASK=:NDEBTORTASK, REFNO=:REFNO '+
                        ' where NMATTER = :NMATTER AND SEQUENCE = :SEQUENCE';
//            ParamByName('createdby').AsString := dmAxiom.UserID;
            ParamByName('created').AsDateTime := cmbDate.Date;
            ParamByName('nmatter').AsInteger  := lNMatter;

            if (edBillNo.Visible = True) then
            begin
               ParamByName('NMEMO').AsInteger := NMemo;
            end;

            ParamByName('sequence').AsInteger  := Sequence;
            ParamByName('note').AsString := mlNote.Text;
            ExecSQL;
         finally
            dmAxiom.uniInsight.Commit;
         end;
      end;
   end
   else
   begin
      with qryTmp do
      begin
         if dmAxiom.uniInsight.InTransaction then
            dmAxiom.uniInsight.Commit;
         dmAxiom.uniInsight.StartTransaction;
         try
            SQL.Text := 'INSERT INTO DEBTORNOTES '+
                        '  (NMATTER, CREATED, CREATEDBY, NOTE, REVIEW_DATE, SEQUENCE, NMEMO, COLLECTION_CODE, NDEBTORTASK, REFNO, SYSTEM_DATE)'+
                        'VALUES  '+
                        ' (:NMATTER, :CREATED, :CREATEDBY, :NOTE, :REVIEW_DATE, :SEQUENCE, :NMEMO, :COLLECTION_CODE, :NDEBTORTASK, :REFNO, :SYSTEM_DATE)';
            ParamByName('createdby').AsString := dmAxiom.UserID;
            ParamByName('created').AsDateTime := cmbDate.Date;
            ParamByName('nmatter').AsInteger  := lNMatter;

            if (edBillNo.Visible = True) then
            begin
               ParamByName('NMEMO').AsInteger := NMemo;
            end
            else
            begin
               try
                  if (cmbBillRef.Text <> '')  then
                     ParamByName('NMEMO').AsInteger := cmbBillRef.EditValue;
               except
               //
               end;
            end;

            qryMaxSequence.Close;
            qryMaxSequence.ParamByName('nmatter').AsInteger := lNMatter;
            qryMaxSequence.ExecSQL;
            Sequence := qryMaxSequence.FieldByName('newsequence').AsInteger;
            if Sequence = 0 then Sequence := 1;
            ParamByName('sequence').AsInteger  := Sequence;
            ParamByName('note').AsString := mlNote.Text;
            ExecSQL;
         finally
            dmAxiom.uniInsight.Commit;
         end;
      end;
   end;
end;

procedure TfrmDebtorNotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryNmemo.Close;
end;

end.
