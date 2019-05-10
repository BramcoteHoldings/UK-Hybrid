unit MatterNotesAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxLabel, cxDBLabel, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, DBCtrls,
  cxMaskEdit, cxButtonEdit, cxDBRichEdit, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, cxGraphics, cxCalendar, cxLookAndFeels,
  ppParameter, ppDesignLayer, ppBands, ppStrtch, ppRegion, ppMemo, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppRichTx;

type
  TfrmMatterNotesAdd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    lBy: TcxDBLabel;
    qryMatterNotes: TUniQuery;
    dsMatterNotes: TUniDataSource;
    mlNote: TcxDBRichEdit;
    qryMaxSequence: TUniQuery;
    qryMaxSequenceNEWSEQUENCE: TFloatField;
    dsMatterNotesType: TUniDataSource;
    qryMatterNotesType: TUniQuery;
    cmbNoteType: TcxDBLookupComboBox;
    cmbDate: TcxDBDateEdit;
    Label4: TLabel;
    btnNotePrint: TcxButton;
    ppMatterNoteRpt: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    pplblTransTitle: TppLabel;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    pplblMatter: TppLabel;
    pplblMatterDesc: TppLabel;
    pplblClient: TppLabel;
    ppLabel8: TppLabel;
    ppMemoNotes: TppRichText;
    ppSummaryBand1: TppSummaryBand;
    pplblFooter: TppLabel;
    ppLine1: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure qryMatterNotesAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnNotePrintClick(Sender: TObject);
    procedure ppMatterNoteRptBeforePrint(Sender: TObject);
  private
    { Private declarations }
    lNoteType: string;
    lNMatter: integer;
    function GetNote: String;
    procedure SetBy(const Value: String);
    procedure SetEntryDate(const Value: TDateTime);
    procedure SetNote(const Value: String);
  public
    { Public declarations }
    property EntryDate: TDateTime write SetEntryDate;
    property By: String write SetBy;
    property Note: String read GetNote write SetNote;
    property NoteType: string read lNoteType write lNoteType;
    property NMatter: integer read lNMatter write lNMatter;
  end;

var
  frmMatterNotesAdd: TfrmMatterNotesAdd;

implementation

uses AxiomData, CitFunc, InvoiceSearch, MiscFunc;

{$R *.dfm}

function TfrmMatterNotesAdd.GetNote: String;
begin
   Result := mlNote.Lines.Text;
end;

procedure TfrmMatterNotesAdd.ppMatterNoteRptBeforePrint(Sender: TObject);
begin
   pplblMatter.Caption := MatterString(lNMatter, 'FILEID');
   pplblMatterDesc.Caption := MatterString(lNMatter, 'SHORTDESCR');
   pplblClient.Caption := MatterString(lNMatter, 'TITLE');
   pplblFooter.Caption := 'Matter note entry dated ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', cmbDate.Date) +
                         ' entered by ' + dmAxiom.UserID;
   pplblTransTitle.Caption := dmAxiom.EntityName;
   ppMemoNotes.RichText := mlNote.Text;
end;

procedure TfrmMatterNotesAdd.SetBy(const Value: String);
begin
   lBy.Caption := Value;
end;

procedure TfrmMatterNotesAdd.SetEntryDate(const Value: TDateTime);
begin
   cmbDate.Date := Value;
//   lDate.Caption := DateTimeToStr(Value);
end;

procedure TfrmMatterNotesAdd.SetNote(const Value: String);
begin
   mlNote.Lines.Text := Value;
end;

procedure TfrmMatterNotesAdd.qryMatterNotesAfterInsert(DataSet: TDataSet);
var
   ASequence: integer;
begin
   qryMatterNotes.FieldByName('createdby').AsString := dmAxiom.UserID;
   qryMatterNotes.FieldByName('created').AsDateTime := Now;
   qryMatterNotes.FieldByName('nmatter').AsInteger  := lNMatter;


   qryMaxSequence.Close;
   qryMaxSequence.ParamByName('nmatter').AsInteger := lNMatter;
   qryMaxSequence.ExecSQL;
   ASequence := qryMaxSequence.FieldByName('newsequence').AsInteger;
   if ASequence = 0 then ASequence := 1;
   qryMatterNotes.FieldByName('sequence').AsInteger  := ASequence;
end;

procedure TfrmMatterNotesAdd.btnNotePrintClick(Sender: TObject);
begin
   ppMatterNoteRpt.Print;
end;

procedure TfrmMatterNotesAdd.FormShow(Sender: TObject);
begin
   qryMatterNotesType.Open;
end;

end.
