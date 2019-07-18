unit billfeelist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBAccess, Uni, MemDS, cxRichEdit, ppIniStorage, ppFileUtils,
  cxCalendar, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids, cxMemo, cxDBRichEdit,
  Vcl.Menus, cxButtons, cxCurrencyEdit, Vcl.Buttons,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSpellCheckerCore,
  dxSpellChecker, dxDateRanges ;

type
  TfrmBillFeeList = class(TForm)
    qryFees: TUniQuery;
    dsFees: TUniDataSource;
    tvFeeList: TcxGridDBTableView;
    gridFeeListLevel1: TcxGridLevel;
    gridFeeList: TcxGrid;
    tvFeeListCREATED: TcxGridDBColumn;
    tvFeeListDESCR: TcxGridDBColumn;
    tvFeeListAMOUNT: TcxGridDBColumn;
    tvFeeListAUTHOR: TcxGridDBColumn;
    tvFeeListUNIQUEID: TcxGridDBColumn;
    tvFeeListTAX: TcxGridDBColumn;
    tvFeeListPAYEE: TcxGridDBColumn;
    tvFeeListUNITS: TcxGridDBColumn;
    tvFeeListTASK: TcxGridDBColumn;
    pbCheckSpelling: TBitBtn;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    btnSkip: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure tvFeeListInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure AddictBeforeChange(Sender: TObject);
    procedure pbCheckSpellingClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TSSpellCheckerSpellingComplete(Sender: TdxCustomSpellChecker;
      var AHandled: Boolean);
  private
    { Private declarations }
    FLastLiveEdit: TcxCustomEdit;
    FFromBills: boolean;
  public
    { Public declarations }
    procedure DisplayFees(iNmemo : integer);
    property FromBills: boolean read FFromBills write FFromBills default False;
  end;

var
  frmBillFeeList: TfrmBillFeeList;

implementation

uses
   axiomdata, miscfunc;

{$R *.dfm}

type
   TcxCustomRichEditAccess = class(TcxCustomRichEdit);
   TcxCustomDataProviderAccess = class(TcxCustomDataProvider);

procedure TfrmBillFeeList.FormCreate(Sender: TObject);
var
   lsStorageName: String;
begin
   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';
   TppIniStoragePlugIn.SetStorageName(lsStorageName);
   // 14 Sept 2018
//   TdxUserSpellCheckerDictionary(dmAxiom.TSSpellChecker.Dictionaries[1]).DictionaryPath := '.\Spelling\USER_' + dmAxiom.UserID + '.DIC';
   dmAxiom.TSSpellChecker.Check(TcxRichEdit(tvFeeListDESCR));

end;

procedure TfrmBillFeeList.FormShow(Sender: TObject);
begin
   btnSkip.Visible := (FromBills = True);

   pbCheckSpelling.SetFocus;
end;

procedure TfrmBillFeeList.AddictBeforeChange(Sender: TObject);
begin
   // We hook Addict's OnBeforeChange and OnBeginEditing events to set the
   // record as modified by the user when Addict makes a change.
   if  Assigned(FLastLiveEdit) and
       Assigned(FLastLiveEdit.Parent) and
       (IsWindow(FLastLiveEdit.Handle)) then
   begin
//        TcxCustomDataProviderAccess(cxGrid1DBTableView1.DataController.Provider).SetChanging;
      (FLastLiveEdit as TcxRichEdit).ModifiedAfterEnter := True;
   end;
end;

procedure TfrmBillFeeList.tvFeeListInitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
   // In this example, we'll do LiveSpelling in any in-place editing control
   // that comes up as a RichEdit.
{   if (AEdit is TcxRichEdit) then
   begin
      // Tell Addict to do LiveSpelling for this control... simply remove the
      // last control and Add the new control.

      dmAxiom.Addict.RemoveControl( FLastLiveEdit );
      dmAxiom.Addict.AddControl(AEdit);
      FLastLiveEdit := AEdit;
   end; }
end;

procedure TfrmBillFeeList.pbCheckSpellingClick(Sender: TObject);
var
   I:     Integer;
   AView: TcxGridDBTableView;
begin
   AView := tvFeeList;
//   Aview.BeginUpdate();
   try
      AView.ViewData.Records[0].Focused := True;
 //     dmAxiom.TSSpellChecker.OnSpellingComplete := dmAxiom.TSSpellCheckerSpellingComplete;
      for I := 0 to tvFeeList.ViewData.RecordCount - 1 do
      begin
           // First we give the grid focus, as it will not bring up the editor unless
           // it actually has focus.  Next we give the appropriate field in the
           // grid focus and then bring up the in-place editor.

         gridFeeList.SetFocus;
         tvFeeList.ViewData.GridView.Focused := True;
         AView.ViewData.Records[I].Focused := True;
         tvFeeList.Controller.EditingController.ShowEdit(tvFeeListDESCR);

         if (not Assigned(tvFeeList.Controller.EditingController.Edit)) then
         begin
            break;
         end;

         if (AView.Controller.EditingController.Edit is TcxMemo) then
         begin
            (AView.Controller.EditingController.Edit as TcxMemo).Properties.HideSelection := False;
         end
         else if (AView.Controller.EditingController.Edit is TcxRichEdit) then
         begin
            (AView.Controller.EditingController.Edit as TcxRichEdit).Properties.HideSelection := False;
            TcxCustomRichEditAccess(tvFeeList.Controller.EditingController.Edit).InnerRich.HideSelection  := False;
         end;

  //               dmAxiom.Addict.CheckWinControl(AView.Controller.EditingController.Edit, ctAll );
         dmAxiom.TSSpellChecker.Check(AView.Controller.EditingController.Edit);

         TcxCustomDataProviderAccess(AView.DataController.Provider).SetChanging;
         AView.Controller.EditingController.Edit.ModifiedAfterEnter := True;
      //     end;

           // Now we hide the edit to move on the next record.

         AView.Controller.EditingController.HideEdit(True);
      end;
//   dmAxiom.TSSpellChecker.OnSpellingComplete := nil;
   finally
//      Aview.EndUpdate;
      MsgInfo('Spell Check of Fee entries is complete');
   end;
end;

procedure TfrmBillFeeList.TSSpellCheckerSpellingComplete(
  Sender: TdxCustomSpellChecker; var AHandled: Boolean);
begin
 //  AHandled := True;
end;

procedure TfrmBillFeeList.btnSaveClick(Sender: TObject);
begin
   qryFees.ApplyUpdates;
   if FromBills = True then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'update nmemo set spell_chk_done = ''Y'' where nmemo = '+ qryFees.FieldByName('NMEMO').AsString;
         ExecSQL;
      end;
   end;
end;

procedure TfrmBillFeeList.BitBtn2Click(Sender: TObject);
begin
   qryFees.CancelUpdates;
end;

procedure TfrmBillFeeList.DisplayFees(iNmemo : integer);
var
   lblDesc: string;
begin
   with qryFees do
   begin
      Close;
      ParamByName('nmemo').AsInteger := iNmemo;
      Open;
   end;
end;

end.
