unit MarketEventParticipants;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, ToolWin, ImgList, DBActns, ActnList,
  ActnMan, cxStyles,cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxButtonEdit, cxCheckBox, cxMemo, cxMaskEdit, cxCalendar,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid, cxTextEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBEdit, cxContainer, dxBar, dxBarDBNav, cxLookAndFeelPainters,
  cxButtons, Menus, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxCommon, dxPScxGridLnk, dxPSContainerLnk, cxGridExportLink,
  cxLookAndFeels, XPStyleActnCtrls, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLayoutViewLnk, dxPSDBTCLnk,
  dxPScxDBEditorLnks, dxPSTextLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxSchedulerLnk, cxNavigator, System.Actions,
  ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, MemDS, DBAccess,
  Uni, cxDataControllerConditionalFormattingRulesManagerDialog, cxLabel,
  cxCurrencyEdit;

type
  TfrmMarketEventParticipants = class(TForm)
    ActionManager1: TActionManager;
    actEventPrior: TDataSetPrior;
    actEventNext: TDataSetNext;
    actEventInsert: TDataSetInsert;
    actEventDelete: TDataSetDelete;
    actEventPost: TDataSetPost;
    actEventCancel: TDataSetCancel;
    ilstToolbar: TImageList;
    actEventEdit: TDataSetEdit;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarButton8: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    Panel3: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    tbEvent: TcxDBTextEdit;
    cbEvent: TcxLookupComboBox;
    tbEventDate: TcxDBTextEdit;
    tbEventTime: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    dxComponentPrinter1Link1: TdxCustomContainerReportLink;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    btnMultipleParticipants: TdxBarButton;
    btnBulkEmails: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    btnFilter: TdxBarButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    dsClientReport: TUniDataSource;
    qryClientReport: TUniQuery;
    plClientReport: TppDBPipeline;
    rptClient: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    lblEntity: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    lblSelection: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    Panel1: TPanel;
    grdParticipants: TcxGrid;
    tvParticipants: TcxGridDBTableView;
    tvParticipantsNNAME: TcxGridDBColumn;
    tvParticipantsSEARCH: TcxGridDBColumn;
    tvParticipantsACCEPTED: TcxGridDBColumn;
    tvParticipantsATTENDED: TcxGridDBColumn;
    tvParticipantsDECLINED: TcxGridDBColumn;
    tvParticipantsPRINTED: TcxGridDBColumn;
    tvParticipantsALT_SEARCH: TcxGridDBColumn;
    tvParticipantsTITLE: TcxGridDBColumn;
    tvParticipantsGIVENNAMES: TcxGridDBColumn;
    tvParticipantsLASTNAME: TcxGridDBColumn;
    tvParticipantsEMAIL: TcxGridDBColumn;
    tvParticipantsNOTES: TcxGridDBColumn;
    tvParticipantsALT_NAME: TcxGridDBColumn;
    tvParticipantsEVENT_ID: TcxGridDBColumn;
    tvParticipantsEVENT_PART_ID: TcxGridDBColumn;
    tvParticipantsCREATED: TcxGridDBColumn;
    tvParticipantsWORKPHONE: TcxGridDBColumn;
    grdParticipantsLevel1: TcxGridLevel;
    dxBarDockControl2: TdxBarDockControl;
    Panel5: TPanel;
    Label2: TLabel;
    Bevel2: TBevel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel1: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxLabel2: TcxLabel;
    qryEventParticipants: TUniQuery;
    dsEventParticipants: TUniDataSource;
    lblInviteeCost: TcxLabel;
    actRefresh: TDataSetRefresh;
    lblTotalCost: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure grdParticipantsNNAMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure grdParticipantsALT_SEARCHButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure cxGrid1DBTableView1SEARCHPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1ALT_SEARCHPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cbEventChange(Sender: TObject);
    procedure actEventInsertExecute(Sender: TObject);
    procedure btnLetterClick(Sender: TObject);
    procedure btnOpenPBClick(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure btnMultipleParticipantsClick(Sender: TObject);
    procedure btnBulkEmailsClick(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure rptClientBeforePrint(Sender: TObject);
    procedure lblSelectionGetText(Sender: TObject; var Text: string);
    procedure qryEventParticipantsAfterDelete(DataSet: TDataSet);
    procedure qryEventParticipantsAfterPost(DataSet: TDataSet);
    procedure qryEventParticipantsAfterOpen(DataSet: TDataSet);
    procedure qryEventParticipantsAfterRefresh(DataSet: TDataSet);
    procedure actRefreshExecute(Sender: TObject);
    procedure grdParticipantsACCEPTEDPropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
   FEvent_Id: integer;
   sSQL: string;
   FAttendeeCount: integer;
  public
    { Public declarations }
    property AttendeeCount: integer read FAttendeeCount write FAttendeeCount;
    procedure InitialiseScreen(bShowList: boolean = True);

  end;

var
  frmMarketEventParticipants: TfrmMarketEventParticipants;

implementation

uses MarketEventDataModule, NSearch, citfunc,
  cxGridDBDataDefinitions, WriteMerge, WorkFlowDataModule,
  WorkFlowDataModuleMerge, miscfunc, Phonebook, GenericFileName,
  BulkMailer, AxiomData, CopyEventParticipants, MarketEventFilter;

{$R *.dfm}


procedure TfrmMarketEventParticipants.FormCreate(Sender: TObject);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if(not Assigned(dmMarketEventDataModule)) then
      dmMarketEventDataModule := TdmMarketEventDataModule.Create(Application);

   dmMarketEventDataModule.qryEvent.Open();
   dmMarketEventDataModule.tbEvent.Open();
//   dmMarketEventDataModule.qryParticipantEvents.Open();
//   InitialiseScreen(True);
end;

procedure TfrmMarketEventParticipants.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose := dmMarketEventDataModule.dsEvent.State = dsBrowse;
   if(not CanClose) then
      MessageDlg('You must commit or cancel your changes before closing', mtInformation, [mbOK], 0);
end;

procedure TfrmMarketEventParticipants.FormShow(Sender: TObject);
begin
  sSQL := qryEventParticipants.SQL.Text;
  // Refresh
  // 05/07/2004 TH: Since this form does not get destroyed after being close,
  // but being hidden, the data needs to be refreshed each time its opened
  if dmMarketEventDataModule.tbEvent.Active = True then
    dmMarketEventDataModule.tbEvent.Refresh()
  else
    dmMarketEventDataModule.tbEvent.Open();
 
  if (cbEvent.Text <> '') then
  begin
     dmMarketEventDataModule.Event_Id := cbEvent.EditValue;
     qryEventParticipants.Open();
  end;
end;

// 10/12/04 TH - Note: this event procedure is no longer used
procedure TfrmMarketEventParticipants.grdParticipantsNNAMEButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      if qryEventParticipants.State <> dsEdit then
         qryEventParticipants.Edit;

      qryEventParticipants.FieldByName('SEARCH').AsString :=
              frmPhoneBookSearch.qPhoneBook.FieldByName('NAME').AsString;

      qryEventParticipants.FieldByName('NNAME').AsString :=
               frmPhoneBookSearch.qPhoneBook.FieldByName('NNAME').AsString;

      grdParticipants.SetFocus;
   end;
end;

procedure TfrmMarketEventParticipants.InitialiseScreen(bShowList: boolean);
begin
   cbEvent.Visible := bShowList;
   tbEvent.Visible := not bShowList;
   if cbEvent.Visible then
   begin
      qryEventParticipants.Close();

      // 5/07/2004 TH: Add check for dataset
      // Also changed referencing to Fields[0] of tbEvent to Fields[1] as 0 was giving the rowid
      if not dmMarketEventDataModule.tbEvent.IsEmpty then
      begin
        // Set the event to the first one in list
        cbEvent.EditValue := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
        //cbEvent.LookupKeyValue := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;

        // Set the Participant Event ID for the query to retrieve the participants
        qryEventParticipants.ParamByName('event_id').AsInteger := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
        //dmMarketEventDataModule.qryEventParticipants.ParamByName('event_id').AsInteger := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;

        // Set event ID
        try
          dmMarketEventDataModule.Event_Id := cbEvent.EditValue; //  dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
          // FEvent_Id := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
        except
          ;
        end;
      end;

      qryEventParticipants.Open();
   end
   else
   begin
      qryEventParticipants.Close();

      // 5/07/2004 TH: Add check for dataset
      if not dmMarketEventDataModule.tbEvent.IsEmpty then
      begin
         dmMarketEventDataModule.qryEventDtls.ParamByName('event_id').AsInteger := dmMarketEventDataModule.tbEvent.FieldByName('event_id').AsInteger;
         dmMarketEventDataModule.qryEventDtls.oPEN;
         qryEventParticipants.ParamByName('event_id').AsInteger := dmMarketEventDataModule.tbEvent.FieldByName('event_id').AsInteger;
         qryEventParticipants.Open();
         dmMarketEventDataModule.Event_Id := dmMarketEventDataModule.tbEvent.FieldByName('event_id').AsInteger;
      end;
   end;

   with dmMarketEventDataModule.qryEventDtls do
   begin
      Close();
      ParamByName('event_id').AsInteger := dmMarketEventDataModule.Event_Id;
      Open();
   end;
end;


procedure TfrmMarketEventParticipants.lblSelectionGetText(Sender: TObject;
  var Text: string);
begin
   Text := cbEvent.Text;
end;

procedure TfrmMarketEventParticipants.qryEventParticipantsAfterDelete(
  DataSet: TDataSet);
begin
   AttendeeCount := DataSet.RecordCount;
   lblTotalCost.Caption := IntToStr(AttendeeCount)+' invitee''s @ ' + FloatToStrF(dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2) +' = '+ FloatToStrF(AttendeeCount*dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2);
end;

procedure TfrmMarketEventParticipants.qryEventParticipantsAfterOpen(
  DataSet: TDataSet);
var
   i,
   AcceptCount: integer;
   Accepted: string;
begin
   AttendeeCount := DataSet.RecordCount;
   lblTotalCost.Caption := IntToStr(AttendeeCount)+' invitee''s @ ' + FloatToStrF(dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2) +' = '+ FloatToStrF(AttendeeCount*dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2);

   AcceptCount := 0;
   with tvParticipants do
   begin
      try
         BeginUpdate;
         for I := 0 to DataController.RecordCount -1 do
         begin
            ViewData.Records[I].Focused  := True;
            Accepted := ViewData.GetRecordByIndex(I).Values[tvParticipantsACCEPTED.Index];
            if (Accepted = 'Y') then
               Inc(AcceptCount);
         end;
      finally
         EndUpdate;
      end;
   end;
   lblInviteeCost.Caption := IntToStr(AcceptCount)+' attending @ ' + FloatToStrF(dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2) +' = '+ FloatToStrF(AcceptCount * dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2);

end;

procedure TfrmMarketEventParticipants.qryEventParticipantsAfterPost(
  DataSet: TDataSet);
begin
   AttendeeCount := DataSet.RecordCount;
   lblTotalCost.Caption := IntToStr(AttendeeCount)+' invitee''s @ ' + FloatToStrF(dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2) +' = '+ FloatToStrF(AttendeeCount*dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2);
end;

procedure TfrmMarketEventParticipants.qryEventParticipantsAfterRefresh(
  DataSet: TDataSet);
begin
   AttendeeCount := DataSet.RecordCount;
   lblTotalCost.Caption := IntToStr(AttendeeCount)+' invitee''s @ ' + FloatToStrF(dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2) +' = '+ FloatToStrF(AttendeeCount*dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2);
end;

procedure TfrmMarketEventParticipants.rptClientBeforePrint(Sender: TObject);
begin
   lblEntity.Caption := dmAxiom.EntityName;
end;

procedure TfrmMarketEventParticipants.grdParticipantsACCEPTEDPropertiesEditValueChanged(
  Sender: TObject);
var
   i,
   AcceptCount: integer;
   Accepted: string;
begin
   AcceptCount := 0;
   with tvParticipants do
   begin
      try
         BeginUpdate;
         for I := 0 to DataController.RecordCount -1 do
         begin
            ViewData.Records[I].Focused  := True;
            Accepted := ViewData.GetRecordByIndex(I).Values[tvParticipantsACCEPTED.Index];
            if (Accepted = 'Y') then
               Inc(AcceptCount);
         end;
      finally
         EndUpdate;
      end;
   end;
   lblInviteeCost.Caption := IntToStr(AcceptCount)+' attending @ ' + FloatToStrF(dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2) +' = '+ FloatToStrF(AcceptCount * dmMarketEventDataModule.qryEventDtls.FieldByName('cost_per_person').AsFloat, ffCurrency, 10, 2);
end;

procedure TfrmMarketEventParticipants.grdParticipantsALT_SEARCHButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      if qryEventParticipants.State <> dsEdit then
         qryEventParticipants.Edit;

      qryEventParticipants.FieldByName('ALT_SEARCH').AsString :=
              frmPhoneBookSearch.qPhoneBook.FieldByName('NAME').AsString;
      qryEventParticipants.FieldByName('ALT_NAME').AsString :=
               frmPhoneBookSearch.qPhoneBook.FieldByName('NNAME').AsString;
      grdParticipants.SetFocus;
   end;
end;

procedure TfrmMarketEventParticipants.cxGrid1DBTableView1SEARCHPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      if qryEventParticipants.State <> dsEdit then
         qryEventParticipants.Edit;

      // 10/12/04 TH - Instead of populating Search field of event with the name,
      // using phonebook.search instead

//      dmMarketEventDataModule.qryEventParticipants.FieldByName('p_SEARCH').AsString :=
//              frmPhoneBookSearch.qPhoneBook.FieldByName('NAME').AsString;
      

      qryEventParticipants.FieldByName('SEARCH').AsString :=
              frmPhoneBookSearch.qPhoneBook.FieldByName('SEARCH').AsString;

//      tvParticipantsSEARCH.Text := frmPhoneBookSearch.qPhoneBook.FieldByName('SEARCH').AsString;

      qryEventParticipants.FieldByName('NNAME').AsString :=
               frmPhoneBookSearch.qPhoneBook.FieldByName('NNAME').AsString;

      grdParticipants.SetFocus;
  end;
end;


procedure TfrmMarketEventParticipants.cxGrid1DBTableView1ALT_SEARCHPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
      if qryEventParticipants.State <> dsEdit then
         qryEventParticipants.Edit;

      // 10/12/04 TH - Instead of populating Search field of event with the name,
      // using phonebook.search instead
      {
      dmMarketEventDataModule.qryEventParticipants.FieldByName('ALT_SEARCH').AsString :=
              frmPhoneBookSearch.qPhoneBook.FieldByName('NAME').AsString;
      }
      qryEventParticipants.FieldByName('ALT_SEARCH').AsString :=
              frmPhoneBookSearch.qPhoneBook.FieldByName('SEARCH').AsString;

      qryEventParticipants.FieldByName('ALT_NAME').AsString :=
               frmPhoneBookSearch.qPhoneBook.FieldByName('NNAME').AsString;
      grdParticipants.SetFocus;
   end;
end;

procedure TfrmMarketEventParticipants.cbEventChange(Sender: TObject);
begin
               {
   with dmMarketEventDataModule.qryEventDtls do
   begin
      if dmMarketEventDataModule.qryEventDtls.State <> dsInactive then
        Close();
      ParamByName('event_id').AsInteger := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
      Open();
   end;

   with dmMarketEventDataModule.qryEventParticipants do
   begin
      Close();
      ParamByName('event_id').AsInteger := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
      Open();
   end;
   FEvent_Id := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
             }
end;

procedure TfrmMarketEventParticipants.actEventInsertExecute(
  Sender: TObject);
begin
   with qryEventParticipants do
   begin
      Insert();
      FieldByName('event_id').AsInteger := dmMarketEventDataModule.Event_Id;
   end;
end;

procedure TfrmMarketEventParticipants.btnLetterClick(Sender: TObject);
var
   LfrmWriteMerge: TfrmWriteMerge;
   LSql, LSqlList: TStringList;
   i: integer;
begin
   if (cbEvent.Text <> '') then
   begin
      if(not Assigned(dmWorkflowDataModule)) then
         dmWorkFlowDataModule := TdmWorkFlowDataModule.Create(Application);
      LSql := TStringList.Create();
      LSqlList := TStringList.Create();
      try
         LSql.Assign(dmWorkFlowDataModuleMerge.qPartyDetails.SQL);

         // get rid of blank lines..
         while(LSql[LSql.Count - 1] = '') do
            LSql.Delete(LSql.Count - 1);
         // delete the where clause.
         LSql.Delete(LSql.Count - 1);

         // delete party type
         LSql.Delete(1);

         try
            Screen.Cursor := crSQLWait;
      //         LSql.Add('p.nname = ' + dmMarketEventDataModule.qryEventParticipants.FieldByName('NNAME').AsString);
            LSqlList.Assign(dmMarketEventDataModule.qryEventParticipantsList.SQL);
            LSqlList.Add('ep.event_id = ''' + string(cbEvent.EditValue) + '''');

            LSql.Add('p.nname in ('+ LSqlList.Text + ')');
         except
            on E: Exception do
            begin
               MsgErr('Error retrieving Phonebook details:' + #13#13 + E.Message);
               Screen.Cursor := crDefault;
               Exit;
            end;
         end;
         Screen.Cursor := crDefault;

      //       LSQL.SaveToFile('c:\tmp\market.sql');

         LfrmWriteMerge := TfrmWriteMerge.Create(Self);
         LfrmWriteMerge.FromPhoneBook := True;
         LfrmWriteMerge.SQL := LSQL.Text;
      finally
         LSql.Free();
      end;
      LfrmWriteMerge.Show;
   end
   else
      MsgInfo('Please select an event');
end;

procedure TfrmMarketEventParticipants.btnOpenPBClick(Sender: TObject);
var
  LfrmPhonebook: TfrmPhonebook;
begin
   if tvParticipants.Controller.SelectedRowCount = 1 then
   begin
      LfrmPhonebook := TfrmPhonebook.Create(Self);
      //LfrmPhonebook.Tag := imgPHONEBOOK;
      LfrmPhonebook.Search := qryEventParticipants.FieldByName('NNAME').AsString;
//     LfrmPhonebook.Search := ReplaceAndAnd((Sender as TMenuItem).Caption);
      LfrmPhonebook.Show();
     //dxBarWindowList.Items.AddObject(LfrmPhonebook.Caption, LfrmPhonebook);
   end;
end;

procedure TfrmMarketEventParticipants.cxLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  // 05/07/2004 TH: Added a check to determine if empty dataset
  // Also changed referencing to Fields[0] of tbEvent to Fields[1] as 0 was giving the rowid
   try
     if not dmMarketEventDataModule.tbEvent.IsEmpty then
     begin
       with dmMarketEventDataModule.qryEventDtls do
       begin
         Close();
         ParamByName('event_id').AsInteger := cbEvent.EditValue; //  dmMarketEventDataModule.tbEvent.Fields[1].AsInteger;
         //ParamByName('event_id').AsInteger := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
         Open();
       end;

       with qryEventParticipants do
       begin
         Close();
         ParamByName('event_id').AsInteger := cbEvent.EditValue;  //dmMarketEventDataModule.tbEvent.Fields[1].AsInteger;
         //ParamByName('event_id').AsInteger := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
         Open();
       end;
       dmMarketEventDataModule.Event_Id := cbEvent.EditValue;  // dmMarketEventDataModule.tbEvent.Fields[1].AsInteger;
       //FEvent_Id := dmMarketEventDataModule.tbEvent.Fields[0].AsInteger;
     end;
   except
   //
   end;
end;

procedure TfrmMarketEventParticipants.btnCloseClick(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmMarketEventParticipants.btnFilterClick(Sender: TObject);
var
   frmFilter: TfrmFilter;
   sWhereList: string;
   i,
   x: integer;
begin
   frmFilter := TfrmFilter.Create(Self);
   try
      with frmFilter do
      begin
         if ShowModal = mrOK then
         begin
            try
               dmAxiom.uniInsight.StartTransaction;
               dmAxiom.qryTmp.SQL.Text := 'delete from EVENT_PART_FILTER';
               dmAxiom.qryTmp.Execute;
            finally
               dmAxiom.uniInsight.Commit;
            end;

            try
               dmAxiom.uniInsight.StartTransaction;
               for I := 0 to MemoList.Lines.Count - 1 do
               begin
                  dmAxiom.qryTmp.SQL.Text := 'insert into EVENT_PART_FILTER values ( '+quotedstr(MemoList.Lines.Strings[i]) + ')';
                  dmAxiom.qryTmp.Execute;
               end;
            finally
               dmAxiom.uniInsight.Commit;
            end;

            case rgFilter.ItemIndex of
                0: sWhereList := ' in (select nname from phonebook where email in (select * from EVENT_PART_FILTER))';
                1: sWhereList := ' not in (select nname from phonebook where email in (select * from EVENT_PART_FILTER))';
            end;
            try
               dmAxiom.uniInsight.StartTransaction;
               dmAxiom.qryTmp.SQL.Text := 'delete from event_participant where event_id = '+
                                           dmMarketEventDataModule.tbEvent.FieldByName('event_id').AsString + ' and nname ' + sWhereList;
               dmAxiom.qryTmp.Execute;
            finally
               dmAxiom.uniInsight.Commit;
            end;
         end;
      end;
   finally
      frmFilter.Free;
      qryEventParticipants.Refresh;
   end;
end;

procedure TfrmMarketEventParticipants.dxBarButton4Click(Sender: TObject);
begin
   with qryEventParticipants do
   begin
      FieldByName('event_id').AsInteger := dmMarketEventDataModule.Event_Id;
      Post;
   end;
end;

procedure TfrmMarketEventParticipants.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmMarketEventParticipants.dxBarButton8Click(Sender: TObject);
var
  sClientSQL,
  sTablesSQL: string;
begin
   if cbEvent.Text <> '' then
   begin
      try
         with qryClientReport do
         begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT * FROM PHONEBOOK ');
            SQL.Add('WHERE NNAME IN (');
            SQL.Add('select nname from event_participant where event_participant.event_id = :event_id ');
            SQL.Add(')');
            SQL.Add('ORDER BY SEARCH');
            ParamByName('event_id').AsInteger := cbEvent.EditValue;
            Open;
         end;
      finally
         rptClient.Print;
      end;
   end;
  //   dxComponentPrinter1.Preview();
//   tvParticipants.
end;

procedure TfrmMarketEventParticipants.dxBarButton9Click(Sender: TObject);
var
   frmGenericFileName: TfrmGenericFileName;
   FileName: string;
begin
   frmGenericFileName := TfrmGenericFileName.Create(Self);
   try
      with frmGenericFileName do
      begin
         if ShowModal = mrOK then
         begin
            FileName := edFilePath.Text +'\'+ eFileName.Text;
            ExportGridToExcel( FileName,grdParticipants);
         end;
      end;
   finally
       frmGenericFileName.Free;
   end;
end;

procedure TfrmMarketEventParticipants.dxBarButton10Click(Sender: TObject);
var
   frmGenericFileName: TfrmGenericFileName;
   FileName: string;
begin
   frmGenericFileName := TfrmGenericFileName.Create(Self);
   try
      with frmGenericFileName do
      begin
         if ShowModal = mrOK then
         begin
            FileName := edFilePath.Text +'\'+ eFileName.Text;
            ExportGridToText( FileName,grdParticipants);
         end;
      end;
   finally
       frmGenericFileName.Free;
   end;
end;


procedure TfrmMarketEventParticipants.dxBarButton11Click(Sender: TObject);
var
   frmGenericFileName: TfrmGenericFileName;
   FileName: string;
begin
   frmGenericFileName := TfrmGenericFileName.Create(Self);
   try
      with frmGenericFileName do
      begin
         if ShowModal = mrOK then
         begin
            FileName := edFilePath.Text +'\'+ eFileName.Text;
            ExportGridToHTML( FileName,grdParticipants);
         end;
      end;
   finally
       frmGenericFileName.Free;
   end;
end;

procedure TfrmMarketEventParticipants.dxBarButton12Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmMarketEventParticipants.dxBarButton13Click(Sender: TObject);
var
   fmCopyEventParticipants: TfrmCopyEventParticipants;
begin
   try
      fmCopyEventParticipants := TfrmCopyEventParticipants.Create(Self);
      fmCopyEventParticipants.EventID := cbEvent.EditValue;
      fmCopyEventParticipants.ShowModal;
   finally
      fmCopyEventParticipants.Free;
   end;
end;

procedure TfrmMarketEventParticipants.btnMultipleParticipantsClick(
  Sender: TObject);
var
   iCtr,
   ARowIndex: integer;
   AView: TcxGridDBTableView;
   ARow: TcxCustomGridRow;
   bkm: TBookmark;
   ADataSet: TDataset;
begin
   if (FormExists(frmPhoneBookSearch) = False) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

   try
      AView := TcxGridDBTableView(frmPhoneBookSearch.dbgrPhoneBook.FocusedView);
      AView.OptionsSelection.MultiSelect := True;

      if frmPhoneBookSearch.ShowModal = mrOk then
      begin
         dmAxiom.ShowOraError := False;
         try
            AView.BeginUpdate();
            AView.DataController.BeginLocate;
            ADataSet := AView.DataController.DataSet;

            for iCtr := 0 to (AView.DataController.GetSelectedCount - 1) do
            begin
               try
                  Bkm := AView.DataController.GetSelectedBookmark(iCtr);
                  if ADataSet.BookmarkValid(TBookmark(Bkm)) then
                  begin
                     ADataset.GotoBookmark(Bkm);
                     dmMarketEventDataModule.qryInsertParticipants.Prepare;
                     with dmMarketEventDataModule.qryInsertParticipants do
                     begin
                        ParamByName('EVENT_ID').AsInteger := cbEvent.EditValue;
                        ParamByName('SEARCH').AsString := ADataSet.FieldByName('SEARCH').AsString;
                        ParamByName('NNAME').AsInteger := ADataSet.FieldByName('NNAME').AsInteger;

                        try
                           Execute();
                        except
                           //
                        end;
                        ParamByName('EVENT_ID').Clear;
                        ParamByName('SEARCH').Clear;
                        ParamByName('NNAME').Clear;
                     end;
                  end;
               finally
                  //
               end;
            end;
         finally
            ADataset.FreeBookmark(Bkm);
            AView.DataController.EndLocate;
            AView.EndUpdate;
         end;
         qryEventParticipants.Refresh;
     end;
     dmAxiom.ShowOraError := True;
   finally
      AView.Controller.ClearSelection;
      Aview.OptionsSelection.MultiSelect := False;
      AView.Free;
      frmPhoneBookSearch.Free;
   end;
end;

procedure TfrmMarketEventParticipants.actRefreshExecute(Sender: TObject);
begin
   qryEventParticipants.Close;
   qryEventParticipants.Open;
end;

procedure TfrmMarketEventParticipants.btnBulkEmailsClick(Sender: TObject);
var
   LfrmBulkMailer: TfrmBulkMailer;
   LSql: TStringList;
   ssql: string;
begin 
   if (cbEvent.Text <> '') then
   begin
      LfrmBulkMailer := TfrmBulkMailer.Create(Self);
      LfrmBulkMailer.EventID := cbEvent.EditValue;
      LfrmBulkMailer.EmailSQL := dmMarketEventDataModule.qryPartyDetails.SQL.Text;
      LfrmBulkMailer.ShowModal;
   end
   else
      MsgInfo('Please select an event');
end;

end.
