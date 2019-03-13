unit MarketEventList;
                                                          
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, DBActns, ComCtrls,
  ToolWin, ActnList, ActnMan, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxMaskEdit, cxMemo, cxCalendar, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid, cxButtonEdit, cxCheckBox, cxFilterControl, cxDBFilterControl,
  dxBarDBNav, dxBar, cxDBLookupComboBox, cxLookAndFeels,
  cxLookAndFeelPainters, XPStyleActnCtrls, cxNavigator, System.Actions,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxCurrencyEdit;

type
  TfrmEventList = class(TForm)
    ilstToolbar: TImageList;
    ActionManager1: TActionManager;
    actEventPrior: TDataSetPrior;
    actEventNext: TDataSetNext;
    actEventInsert: TDataSetInsert;
    actEventDelete: TDataSetDelete;
    actEventPost: TDataSetPost;
    actEventCancel: TDataSetCancel;
    actEventEdit: TDataSetEdit;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    tvEventList: TcxGridDBTableView;
    tvEventListEVENT: TcxGridDBColumn;
    tvEventListEVENT_TYPE: TcxGridDBColumn;
    tvEventListCOORDINATOR: TcxGridDBColumn;
    tvEventListEVENT_LOCATION: TcxGridDBColumn;
    tvEventListEVENT_TIME: TcxGridDBColumn;
    tvEventListDESCRIPTION: TcxGridDBColumn;
    tvEventListEVENT_ID: TcxGridDBColumn;
    tvEventListEVENT_TYPE_DESCR: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarButton3: TdxBarButton;
    tvEventListEVENT_DATE: TcxGridDBColumn;
    tvEventListEVENT_BUDGET: TcxGridDBColumn;
    tvEventListCOST_PER_PERSON: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tbtnInsertClick(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure tbtnParticipantsClick(Sender: TObject);
    procedure actEventInsertExecute(Sender: TObject);
    procedure tbtnExportAsciiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarDBNavEdit1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEventList: TfrmEventList;

implementation

uses MarketEventDataModule, MarketEvent, MarketEventParticipants,
  MarketEventExportFile, citfunc, MiscFunc;

{$R *.dfm}

procedure TfrmEventList.FormCreate(Sender: TObject);
begin
   if(not Assigned(dmMarketEventDataModule)) then
      dmMarketEventDataModule := TdmMarketEventDataModule.Create(Application);
//   dmMarketEventDataModule.qryEvent.Open();
   dmMarketEventDataModule.tbEventTypes.Open();
   dmMarketEventDataModule.tbEvent.Open();
end;

procedure TfrmEventList.tbtnInsertClick(Sender: TObject);
begin
   if(not Assigned(frmMarketEvent)) then
      frmMarketEvent := TfrmMarketEvent.Create(Application);
   dmMarketEventDataModule.qryEvent.Insert;
   frmMarketEvent.Show;
end;

procedure TfrmEventList.ToolButton9Click(Sender: TObject);
begin
   if(not Assigned(frmMarketEvent)) then
      frmMarketEvent := TfrmMarketEvent.Create(Application);
   dmMarketEventDataModule.qryEvent.Edit;
   frmMarketEvent.Show;
end;

procedure TfrmEventList.tbtnParticipantsClick(Sender: TObject);
begin
   if(not Assigned(frmMarketEventParticipants)) then
      frmMarketEventParticipants := TfrmMarketEventParticipants.Create(Application);
   frmMarketEventParticipants.InitialiseScreen(False);
   frmMarketEventParticipants.Show;
end;

procedure TfrmEventList.actEventInsertExecute(Sender: TObject);
begin
//   if(not Assigned(frmMarketEvent)) then
   frmMarketEvent := TfrmMarketEvent.Create(Application);
   try
      dmMarketEventDataModule.tbEvent.Insert;
      frmMarketEvent.ShowModal;
   finally
      frmMarketEvent.Free;
   end;
end;

procedure TfrmEventList.tbtnExportAsciiClick(Sender: TObject);
begin
  if not FormExists(frmMarketEventExportFile) then
    frmMarketEventExportFile := TfrmMarketEventExportFile.Create(self);
  frmMarketEventExportFile.Show;
end;

procedure TfrmEventList.FormShow(Sender: TObject);
begin
  // Refresh
  // 05/07/2004 TH: Since this form does not get destroyed after being close,
  // but being hidden, the data needs to be refreshed each time its opened
//   if dmMarketEventDataModule.qryEvent.Active = True then
//      dmMarketEventDataModule.qryEvent.Close();
//   dmMarketEventDataModule.qryEvent.Open();

   if dmMarketEventDataModule.tbEvent.Active = True then
      dmMarketEventDataModule.tbEvent.Close();
   dmMarketEventDataModule.tbEvent.Open();
   dmMarketEventDataModule.tbEventTypes.Open;
end;

procedure TfrmEventList.dxBarButton1Click(Sender: TObject);
begin
//  if(not Assigned(frmMarketEventParticipants)) then
   try
      frmMarketEventParticipants := TfrmMarketEventParticipants.Create(Application);
      frmMarketEventParticipants.InitialiseScreen(False);
      frmMarketEventParticipants.ShowModal;
   finally
      frmMarketEventParticipants.Free;
   end;
end;

procedure TfrmEventList.dxBarButton2Click(Sender: TObject);
begin
  if not FormExists(frmMarketEventExportFile) then
    frmMarketEventExportFile := TfrmMarketEventExportFile.Create(self);
  frmMarketEventExportFile.Show;
end;

procedure TfrmEventList.dxBarDBNavEdit1Click(Sender: TObject);
begin
//   if(not Assigned(frmMarketEvent)) then
      frmMarketEvent := TfrmMarketEvent.Create(Application);
   try
      dmMarketEventDataModule.tbEvent.Edit;
//      dmMarketEventDataModule.qryEvent.Edit;
      frmMarketEvent.ShowModal;
   finally
      frmMarketEvent.Free;
   end;
end;

procedure TfrmEventList.dxBarButton3Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmEventList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;


end.
