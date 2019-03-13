unit MatterNotesFrm;
{
  Description:  Using the original workflow notes system. The matter notes form
                will record all notes entered for the current matter. These
                notes will not be able to be altered or deleted.

  Programmer:   Brendan Jagtenberg

  Date:         25 November 2002

  Original Design:

    WorkFlow Task Notes.

    Task note entry and edit form.

    Mathew Dredge, Aug-Sep 2002

}

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, DBCtrls, Mask, ComCtrls, dbcgrids, DBActns, ActnList,
     ImgList, ActnMan, ActnCtrls, Grids, DBGrids,
     StdActns, AxiomData, MiscFunc, DB, OracleUniProvider, Uni, DBAccess, MemDS,
     WorkFlowNoteEntryDialog, MatterNotesRptFrm, dxBar, dxBarDBNav,
  cxControls, cxContainer, cxEdit, cxLabel, cxDBLabel,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxMemo, cxRichEdit, cxDBRichEdit,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, XPStyleActnCtrls, cxClasses,
  System.Actions;


type
  TNotesEvent = procedure(iMatter : Integer) of object;

  TfrmMatterNotes = class(TForm)
    ActionManager: TActionManager;
    ImageList: TImageList;
    aDataSetInsert: TDataSetInsert;
    dbgNotes: TDBCtrlGrid;
    Label1: TLabel;
    Label2: TLabel;
    aClose: TAction;
    aPrintNotes: TAction;
    qryTmp: TUniQuery;
    dsDebtorNotes: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    bbtnPrint: TdxBarButton;
    bbtnExit: TdxBarButton;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    qryDebtorNotes: TUniQuery;
    cxLabel1: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    dbmNote: TcxDBRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aDataSetInsertExecute(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure aPrintNotesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aDataSetInsertUpdate(Sender: TObject);
    procedure dxBarDBNavEdit1Click(Sender: TObject);
  private
    foSession      : TUniConnection;
    fiMatter       : Integer;
    fsMatterDesc   : String;
    fsLawyer       : String;
    fsPracticeArea : String;

    fOnNotesFormClose : TNotifyEvent;
    FFileID: String;
    FClient: String;

    procedure setSession(oSession : TUniConnection);
    procedure setMatter(iMatter : Integer);

  public
    property Session : TUniConnection write SetSession;
    property Matter : Integer read fiMatter write setMatter;
    property MatterDesc : String read fsMatterDesc write fsMatterDesc;
    property Lawyer : String read fsLawyer write fsLawyer ;
    property PracticeArea : String read fsPracticeArea write fsPracticeArea ;
    property FileID: String read FFileID write FFileID;
    property Client: String read FClient write FClient;

    property OnNotesFormClose: TNotifyEvent read FOnNotesFormClose write FOnNotesFormClose;

  end;

var
  fmMatterNotes: TfrmMatterNotes;

implementation

uses DebtorNotes;


{$R *.dfm}



procedure TfrmMatterNotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;

  if(Assigned(FOnNotesFormClose)) then
    FOnNotesFormClose(Self);

end;

procedure TfrmMatterNotes.aDataSetInsertExecute(Sender: TObject);
var
  LDate : TDateTime;
  lsUserName : String;
begin
  frmDebtorNotes := TfrmDebtorNotes.Create(Self);

  lsUserName := dmAxiom.GetUserName;

  try
    LDate := Now();
    frmDebtorNotes.EntryDate := LDate;
    frmDebtorNotes.By        := lsUserName;
    frmDebtorNotes.Note      := '';
    frmDebtorNotes.Refno     := '';
    frmDebtorNotes.NMemo     := 0;
    frmDebtorNotes.NMatter   := fiMatter;

    frmDebtorNotes.qryDebtorNotes.Open;
    frmDebtorNotes.qryDebtorNotes.Insert;

    if(frmDebtorNotes.ShowModal <> mrOk) then
      Exit;

{    qryTmp.Close;
    qryTmp.SQL.Clear();
    qryTmp.SQL.Add('INSERT INTO Debtornotes (nmatter, created, createdby, note, nmemo, refno)');
    qryTmp.SQL.Add(' VALUES (:nmatter, :created, :createdby, :note, :nmemo, :refno)');
    qryTmp.ParamByName('nmatter').AsInteger := fiMatter;
    qryTmp.ParamByName('created').AsDateTime := LDate;
    qryTmp.ParamByName('createdby').AsString := dmAxiom.UserID;
    qryTmp.ParamByName('note').AsString      := frmDebtorNotes.mlNote.Lines.Text;
    qryTmp.ParamByName('NMEMO').AsInteger    := frmDebtorNotes.NMemo;
    qryTmp.ParamByName('REFNO').AsString     := frmDebtorNotes.RefNo;
    qryTmp.ExecSQL(); }

    frmDebtorNotes.qryDebtorNotes.ApplyUpdates;

    qryDebtorNotes.Refresh;
  finally
    FreeAndNil(frmDebtorNotes);
  end;
end;

procedure TfrmMatterNotes.aCloseExecute(Sender: TObject);
begin
  Close();

end;

procedure TfrmMatterNotes.aPrintNotesExecute(Sender: TObject);
var
  loTfrmRptMatterNotes : TfrmRptMatterNotes;
begin
  loTfrmRptMatterNotes := TfrmRptMatterNotes.Create(Self);

  try
    loTfrmRptMatterNotes.Matter  := fiMatter;
    loTfrmRptMatterNotes.MatterDesc := fsMatterDesc;
    loTfrmRptMatterNotes.FileID := FileID;
    loTfrmRptMatterNotes.Client := Client;
    loTfrmRptMatterNotes.Session := foSession;
    loTfrmRptMatterNotes.Lawyer := Lawyer;
    loTfrmRptMatterNotes.PracticeArea := PracticeArea;
    loTfrmRptMatterNotes.ShowModal;

  finally
    FreeAndNil(loTfrmRptMatterNotes);

  end;    //  end try-finally

end;



procedure TfrmMatterNotes.setSession(oSession : TUniConnection);
begin
  foSession := oSession;
  qryDebtorNotes.Connection := oSession;
  qryTmp.Connection := oSession;
end;


procedure TfrmMatterNotes.FormShow(Sender: TObject);
begin
  qryDebtorNotes.Open;
end;

procedure TfrmMatterNotes.aDataSetInsertUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := TRUE;
end;

procedure TfrmMatterNotes.setMatter(iMatter : Integer);
begin
  fiMatter := iMatter;
  qryDebtorNotes.ParamByName('matter').AsInteger := iMatter;
end;

procedure TfrmMatterNotes.dxBarDBNavEdit1Click(Sender: TObject);
var
   lsUserName : String;
   LDate : TDateTime;
begin
   frmDebtorNotes := TfrmDebtorNotes.Create(Self);

   lsUserName := dmAxiom.GetUserName;

   try
      LDate := Now();
      frmDebtorNotes.EntryDate := LDate;
      frmDebtorNotes.By        := lsUserName;
      frmDebtorNotes.Note      := '';
      frmDebtorNotes.Refno     := '';
      frmDebtorNotes.NMemo     := Self.qryDebtorNotes.FieldByName('NMEMO').AsInteger;
      frmDebtorNotes.NMatter   := fiMatter;

      frmDebtorNotes.qryDebtorNotes.Close;
      frmDebtorNotes.qryDebtorNotes.SQL.Clear;
      frmDebtorNotes.qryDebtorNotes.SQL.Text := 'SELECT Debtornotes.*, Debtornotes.ROWID '+
                                                'FROM Debtornotes where nmatter = :nmatter '+
                                                'and sequence = :seqno';
      frmDebtorNotes.qryDebtorNotes.ParamByName('nmatter').AsInteger := fiMatter;
      frmDebtorNotes.qryDebtorNotes.ParamByName('seqno').AsInteger := Self.qryDebtorNotes.FieldByName('sequence').AsInteger;
      frmDebtorNotes.qryDebtorNotes.Open;
      frmDebtorNotes.qryDebtorNotes.Edit;

      if(frmDebtorNotes.ShowModal <> mrOk) then
         Exit;

      frmDebtorNotes.qryDebtorNotes.ApplyUpdates;

      qryDebtorNotes.Refresh;
   finally
      FreeAndNil(frmDebtorNotes);
   end;
end;

end.
