unit MatterNotesRptFrm;
       
interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     Db, ExtCtrls, ComCtrls, Buttons, StdCtrls, OracleUniProvider, Uni, MemDS,
     DateChangeButton, DBAccess, AxiomData, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppVar, ppCtrls,
  ppStrtch, ppMemo, ppPrnabl, ppBands, ppCache, ppDesignLayer, ppParameter;


type
  TfrmRptMatterNotes = class(TForm)
    btnPrint: TBitBtn;
    lblVersion: TLabel;
    grpPeriodRange: TGroupBox;
    lblDateFrom: TLabel;
    lblDateTo: TLabel;
    bToday: TDateChangeButton;
    bYesterday: TDateChangeButton;
    bThisWeek: TDateChangeButton;
    DateChangeButton3: TDateChangeButton;
    bThisMonth: TDateChangeButton;
    bLastMonth: TDateChangeButton;
    bYearToDate: TDateChangeButton;
    bLastYear: TDateChangeButton;
    dtpDateFrom: TDateTimePicker;
    dtpDateTo: TDateTimePicker;
    btnClose: TButton;
    ppReport1: TppReport;
    plMatterNotes: TppDBPipeline;
    dsMatterNotes: TUniDataSource;
    qryMatterNotes: TUniQuery;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    lblPractice: TppLabel;
    ppMatterNo: TppLabel;
    ppMatterDesc: TppLabel;
    ppLine2: TppLine;
    ppClient: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure lblPracticeGetText(Sender: TObject; var Text: String);
    procedure ppMatterNoGetText(Sender: TObject; var Text: String);
    procedure ppMatterDescGetText(Sender: TObject; var Text: String);
    procedure ppClientGetText(Sender: TObject; var Text: String);
  private
    foSession    : TUniConnection;
    fiMatter     : Integer;
    fsMatterDesc : String;
    fsLawyer     : String;
    fsPracticeArea : String;
    FFileID: String;
    FClient: String;

    procedure setSession(oSession : TUniConnection);
    procedure setMatter(iMatter : Integer);

  public
    property Session : TUniConnection write SetSession;
    property Matter : Integer read fiMatter write setMatter;
    property MatterDesc : String read fsMatterDesc write fsMatterDesc ;
    property Lawyer : String read fsLawyer write fsLawyer ;
    property PracticeArea : String read fsPracticeArea write fsPracticeArea ;
    property FileID: String read FFileID write FFileID;
    property Client: String read FClient write FClient;
  end;

var
  frmRptMatterNotes: TfrmRptMatterNotes;

implementation



{$R *.DFM}

uses
   miscfunc;


procedure TfrmRptMatterNotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Self.Release;

end;


procedure TfrmRptMatterNotes.btnPrintClick(Sender: TObject);
var
  lsSQL : String;
begin

   try
{    loTqrMatterNotesRpt.Matter  := fsMatterDesc;
    loTqrMatterNotesRpt.Session := foSession;
    loTqrMatterNotesRpt.MatterID := fiMatter;
    loTqrMatterNotesRpt.Lawyer := fsLawyer;
    loTqrMatterNotesRpt.PracticeArea := fsPracticeArea;
    loTqrMatterNotesRpt.FileID := FileID;
    loTqrMatterNotesRpt.Client := Client;   }
      lsSQL := qryMatterNotes.SQL.Text;

      if (dtpDateFrom.Checked) then
         lsSQL := lsSQL + ' AND TRUNC(M.CREATED) >= :FROMDATE ';

      if (dtpDateTo.Checked) then
         lsSQL := lsSQL + ' AND TRUNC(M.CREATED) <= :TODATE ';

      lsSQL := lsSQL + ' ORDER BY M.CREATED ';

      qryMatterNotes.SQL.Text := lsSQL;

      qryMatterNotes.ParamByName('matter').AsInteger := Matter;

      if (dtpDateFrom.Checked) then
         qryMatterNotes.ParamByName('FROMDATE').AsDateTime := Trunc(dtpDateFrom.Date);

      if (dtpDateTo.Checked) then
         qryMatterNotes.ParamByName('TODATE').AsDateTime := Trunc(dtpDateTo.Date);

      qryMatterNotes.Open;
  finally
     ppReport1.Print;

  end;    //  end try-finally

end;

procedure TfrmRptMatterNotes.FormShow(Sender: TObject);
begin
  Width:= 563;
  Height:= 166;

  lblVersion.Caption := '';
end;

procedure TfrmRptMatterNotes.FormCreate(Sender: TObject);
begin
  dtpDateFrom.DateTime := Now;
  dtpDateTo.DateTime := Now;

  dtpDateFrom.Checked := FALSE;
  dtpDateTo.Checked := FALSE;
end;

procedure TfrmRptMatterNotes.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRptMatterNotes.setSession(oSession : TUniConnection);
begin
  foSession := oSession;
end;

procedure TfrmRptMatterNotes.setMatter(iMatter : Integer);
begin
  fiMatter := iMatter;
end;

procedure TfrmRptMatterNotes.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
   Text := SystemString('COMPANY');
end;

procedure TfrmRptMatterNotes.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
   Text := Lawyer;
end;

procedure TfrmRptMatterNotes.lblPracticeGetText(Sender: TObject;
  var Text: String);
begin
   Text := PracticeArea;
end;

procedure TfrmRptMatterNotes.ppMatterNoGetText(Sender: TObject;
  var Text: String);
begin
   Text := FileID;
end;

procedure TfrmRptMatterNotes.ppMatterDescGetText(Sender: TObject;
  var Text: String);
begin
   Text := MatterDesc;
end;

procedure TfrmRptMatterNotes.ppClientGetText(Sender: TObject;
  var Text: String);
begin
   Text := Client;
end;

end.

