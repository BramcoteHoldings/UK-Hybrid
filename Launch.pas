unit Launch;

interface

uses
  Windows, Messages, SysUtils, Classes,Feebasis,Jurisdiction,Graphics, Controls, Forms, Dialogs,
  signature,BatchReport,ComCtrls, ToolWin, Printer,Db, Menus, ImgList, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, DBAccess,
  OutlookIntegrator;


type
  TfrmLaunch = class(TForm)
    tbarToolbar: TToolBar;
    ilstToolbar: TImageList;
    lvShortcuts: TListView;
    tbtnShortcut: TToolButton;
    ToolButton1: TToolButton;
    tbtnLaunch: TToolButton;
    ToolButton3: TToolButton;
    tbtnLarge: TToolButton;
    tbtnSmall: TToolButton;
    tbtnList: TToolButton;
    tbtnReport: TToolButton;
    ToolButton7: TToolButton;
    tbtnHelp: TToolButton;
    qryEmpCuts: TUniQuery;
    popDesktop: TPopupMenu;
    popDesktopOpen: TMenuItem;
    popDesktopShortcut: TMenuItem;
    MenuItem5: TMenuItem;
    popDesktopColour: TMenuItem;
    MenuItem7: TMenuItem;
    popDesktopLarge: TMenuItem;
    popDesktopSmall: TMenuItem;
    popDesktopList: TMenuItem;
    popDesktopDetail: TMenuItem;
    cdlgColour: TColorDialog;
    popDesktopShortcutAll: TMenuItem;
    procedure tbtnShortcutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnLargeClick(Sender: TObject);
    procedure tbtnSmallClick(Sender: TObject);
    procedure tbtnListClick(Sender: TObject);
    procedure tbtnReportClick(Sender: TObject);
    procedure popDesktopColourClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnLaunchClick(Sender: TObject);
    procedure lvShortcutsClick(Sender: TObject);
    procedure popDesktopShortcutAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure popDesktopOpenClick(Sender: TObject);
    procedure tbtnHelpClick(Sender: TObject);
  private
    { Private declarations }
    FOutlookIntegrator: TOutlookIntegrator;
    function FindOrCreate(aformclass: TFormclass; Icon: integer): TForm;
  public
    { Public declarations }
    procedure Launch(iProgramID: integer);
    procedure DisplayIcons;
  end;

var
  frmLaunch: TfrmLaunch;

implementation

uses
  AutoCost, AutoGen, {AutoInv,} Archival, {ArchiveBatch,} ArchiveBoxMgmt, Archives,
  Archivesearch, Bank, BankDeposit, BankRec, BASGroups, BillCredit,
  BillCreditTypes, BillTemplates, Bills, CashPay, CashRcp, CheqReqNew, CheqReqs,
  Cheque, ChequePresent, Clients, ClientGroups,
  CodeRules, Creditors, Desktop, DataForm, Diary99,
  DiaryNew, DiaryLoc, DiaryJur, DiaryEvt, DocSearch, Employees,
  Entitys, {FeeBatch, FeeList,} FeeNew, FeeCodes, FeeType, FieldTypes, Genders,
  JournalBill, JournalMatter, Journals, Ledgers,
  Matters, MatterType, MatterReportBuilder, AxiomData, MiscFunc, MatterStatus,
  MonitorImport, OptionsUser, Overview, Password, PettyCash, PettyJournal,
  Phonebook, PhonebookGroups,                          
  PhoneBookNew, Postcode, PostcodeSearch, PrecCategories, Quickcodes, Receipt,
  RelateDict, Reports, ScaleCosts, Sounds, SoftlogImport, SundryNew,
  SundryBatch, SundryError, SundryList, SundryType, SystemFile,
  TaskExplorer, TaskTempNew, Tasks, TaxTypes,
  Timesht, TrustJournal, WriteOffs, BankDepositQuery, WriteOffDisb,
  WorkflowType,
  WorkFlowDocTemplates, WorkFlowTaskTemplates, WorkFlowAdminDocs,
  WorkFlowToDo, {OutlookDiary,} Budgets, NSearch, citfunc,
  DebtorStatusList, MarketEventEventTypes, documenttypelist, marketevent,
  marketeventparticipants, marketeventlist, SolicitorCode, CourtAddress,
  IndustryNew, InterestNew, FeeListNew, Toolkit,
  MarketReferralOther, TimeDiary,DebtorTaskTemplate,DebtorTaskDue,
  AccountPayable,DepositAccount,InvestmentTransactions, Teams, DebtorNotesEntry,
  Dashboard, Dashboard_Ind, Dashboard_Team, feeauthority, PrecClassifications;

{$R *.DFM}

procedure TfrmLaunch.tbtnShortcutClick(Sender: TObject);
begin
   if lvShortcuts.Selcount > 0 then
      frmDesktop.AddShortcut(lvShortcuts.Selected.ImageIndex, lvShortcuts.Selected.Caption);
end;


procedure TfrmLaunch.FormShow(Sender: TObject);
begin
  lvShortcuts.Color := frmDesktop.lvDesktop.Color;
  case frmDesktop.lvDesktop.ViewStyle of
    vsIcon: tbtnLarge.Click;
    vsSmallIcon: tbtnSmall.Click;
    vsList: tbtnList.Click;
    vsReport: tbtnReport.Click;
  end;
  DisplayIcons;
  
  frmDesktop.dxBarWindowList.Items.AddObject(Self.Caption, Self);
end;


procedure TfrmLaunch.DisplayIcons;
var
  liNew: TListItem;
begin
  lvShortcuts.Items.Clear;
  qryEmpCuts.Close;
  qryEmpCuts.ParamByName('P_Emp').AsString := dmAxiom.UserID;
  qryEmpCuts.Open;
  while not qryEmpCuts.EOF do
  begin
    liNew := lvShortcuts.Items.Add;
    liNew.Caption := qryEmpCuts.FieldByName('NAME').AsString;
    liNew.ImageIndex := qryEmpCuts.FieldByName('IMAGEINDEX').AsInteger;
{      if qryEmpCuts.FieldByName('SHORTCUT').AsInteger = 1 then
      liNew.OverlayIndex := 0;
}
    liNew.SubItems.Add(ShortcutDesc(liNew.ImageIndex));
    qryEmpCuts.Next;
  end;
end;


procedure TfrmLaunch.Launch(iProgramID: integer);
var
  csrPrev: TCursor;
  LfmPBNew: TfrmPhoneBookNew;
  LfmClients: TfrmClients;
  LfmCheque: TfrmCheque;
  LfrmClients: TfrmClients;
begin
  frmDesktop.ShowWindows;
  csrPrev := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  case iProgramID of

    idxMATTERSTATUS: FindorCreate(TfrmMatterStatus, iProgramID).Show;

    IDXARCHIVAL: FindorCreate(TfrmArchival, iProgramID).Show;

    IDXARCHIVE:
      with TfrmArchive.Create(Self) do
      begin
        Tag := iProgramID;
        ChooseArchive;
      end;

//    IDXARCHIVEBATCH: FindorCreate(TfrmArchiveBatch, iProgramID).Show;

    IDXAUTOCOST: FindorCreate(TfrmAutoCost, iProgramID).Show;

    IDXAUTOGEN: FindorCreate(TfrmAutoGen, iProgramID).Show;

//    IDXAUTOINV: FindorCreate(TfrmAutoInv, iProgramID).Show;

    IDXBANK: FindorCreate(TfrmBank, iProgramID).Show;

    IDXBANKREC: FindorCreate(TfrmBankRec, iProgramID).Show;

    IDXBANKDEPOSIT: FindorCreate(TfrmBankDeposit, iProgramID).Show;

    IDXBANKDEPOSITQUERY: FindorCreate(TfrmBankDepositQuery, iProgramID).Show;

    IDXBASGROUPS: FindorCreate(TfrmBASGroups, iProgramID).Show;

    IDXBILLCREDIT: FindorCreate(TfrmBillCredit, iProgramID).Show;

    IDXBILLCREDITTYPE: FindorCreate(TfrmBillCreditTypes, iProgramID).Show;

    IDXBILLTEMPLATES: FindorCreate(TfrmBillTemplates, iProgramID).Show;

    IDXJURISDICTION : FindorCreate(TfrmJurisdiction, iProgramID).Show;

    IDXBATCHREPORT : FindorCreate(TfrmBatchReport, iProgramID).Show;

    IDXFEEBASIS : FindorCreate(TfrmFeeBasis, iProgramID).Show;

    IDXCHEQREQ:
      with TfrmCheqReqNew.Create(Self) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXCHEQREQS: FindorCreate(TfrmCheqReqs, iProgramID).Show;


    IDXSIGNATURE : FindorCreate(TfrmSignature, iProgramID).Show;


    IDXCHEQUE:
      begin
        LfmCheque := TfrmCheque.Create(Self);
        LfmCheque.Tag := iProgramID;
        LfmCheque.Show;
      end;

    IDXCHEQUEPRESENT: FindorCreate(TfrmChequePresent, iProgramID).Show;

    IDXCHEQUES: FindorCreate(TfrmCashPay, iProgramID).Show;

    idxCLIENT:
      with TfrmClients.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        ChooseClient;
      end;

    IDXCLIENTGROUPS: FindorCreate(TfrmClientGroups, iProgramID).Show;

    IDXCLIENTNEW:
      begin
        if(SettingExists(C_EMP,C_OWNERCLIENT,C_LIMITCLIENTCREATE)) then
        begin
          if not FormExists(frmPhoneBookSearch) then
            Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
          frmPhoneBookSearch.SelectingClients := True;
          if(frmPhoneBookSearch.ShowModal() = mrOk) then
          begin
            LfrmClients := TfrmClients.Create(Application);
            LfrmClients.DisplayClient(frmPhoneBookSearch.NClient);
          end;
        end else
        begin
          LfmPBNew := TfrmPhoneBookNew.Create(frmDesktop);
          try
            LfmPBNew.Tag := iProgramID;
            LfmPBNew.SetupForClient(0);
            if(LfmPBNew.ShowModal() = mrOk) then
            begin
              LfmClients := TfrmClients.Create(frmDesktop);
              LfmClients.DisplayClient(LfmPBNew.NClient);
              LfmClients.Show();
            end;
          finally
            FreeAndNil(LfmPBNew);
          end;
        end;
      end;

    IDXCODERULES: FindorCreate(TfrmCodeRules, iProgramID).Show;

    IDXPRINTERS : FindorCreate(TfrmPrinter, iProgramID).Show;

    IDXCREDITORS:
      begin
        if dmAxiom.CreditorsExist then
         with TfrmCreditors.Create(frmDesktop) do
         begin
            Tag := iProgramID;
            ChooseCreditor;
//            Show;
          end
        else
         with TfrmPhoneBookNew.Create(frmDesktop) do
         begin
            Tag := iProgramID;
            SetupForCreditor(0);
            ShowModal;
         end;
      end;

    IDXENTITY:     FindorCreate(TfrmEntity, iProgramID).Show;

    IDXDATAFORM:   FindorCreate(TfrmDataForm, iProgramID).Show;

    IDXDATAREPORT: FindorCreate(TfrmMatterReportBuilder, iProgramID).Show;

    IDXDIARY:
      begin
//        if(Not Assigned(FOutlookIntegrator)) then
//          FOutlookIntegrator := TOutlookIntegrator.Create();
//        if(FOutlookIntegrator.UseOutlook) then
//          FindorCreate(TfmOutlookDiary,iProgramID).Show
//        else
          FindorCreate(TfrmDiary99,iProgramID).Show;
      end;

    IDXDIARYLOC: FindorCreate(TfrmDiaryLoc, iProgramID).Show;

    IDXDIARYJUR: FindorCreate(TfrmDiaryJur, iProgramID).Show;

    IDXDIARYEVT: FindorCreate(TfrmDiaryEvt, iProgramID).Show;

    IDXDIARYNEW:
      with TfrmDiaryNew.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXDOCSEARCH: FindorCreate(TfrmDocSearch, iProgramID).Show;

    idxEMPLOYEES: FindorCreate(TfrmEmployees, iProgramID).Show;

    idxEXPLORER: FindorCreate(TfrmOverview, iProgramID).Show;

//    IDXFEEBATCH: FindorCreate(TfrmFeeBatch, iProgramID).Show;

//    IDXFEELIST: FindorCreate(TfrmFeeList, iProgramID).Show;

    IDXNEWFEELIST: FindorCreate(TfrmFeeListNew, iProgramID).Show;

    IDXFEENEW:
      with TfrmFeeNew.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXFEERATECODE: FindorCreate(TfrmFeeCode, iProgramID).Show;

    IDXFEETYPE: FindorCreate(TfrmFeeType, iProgramID).Show;

    IDXFIELDTYPE: FindorCreate(TfrmFieldTypes, iProgramID).Show;

    IDXGENDER: FindorCreate(TfrmGenders, iProgramID).Show;

    IDXINVOICES: FindorCreate(TfrmBills, iProgramID).Show;

    IDXLEDGER: FindorCreate(TfrmLedgers, iProgramID).Show;

    IDXJOURNAL: FindorCreate(TfrmJournals, iProgramID).Show;

    idxJOURNALBILL:
      with TfrmJournalBill.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    idxMATTER:
      with TfrmMatters.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        ChooseMatter;
      end;

    idxMATTERJOURNAL:
      with TfrmJournalMatter.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    idxMATTERTYPES: FindorCreate(TfrmMatterType, iProgramID).Show;

    idxMONITORIMPORT: FindorCreate(TfrmMonitorImport, iProgramID).Show;

    IDXOPTIONSUSER: FindorCreate(TfrmOptionsUser, iProgramID).Show;

    IDXPASSWORD:
      with TfrmPassword.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        LoadEmp(dmAxiom.UserID);
      end;

    IDXPETTYCASH: FindorCreate(TfrmPettyCash, iProgramID).Show;

    IDXPETTYJOURNAL: FindorCreate(TfrmPettyJournal, iProgramID).Show;

    idxPHONEBOOK:
      with TfrmPhonebook.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        ChoosePhonebook;
//        Show;
      end;

    IDXPHONEBOOKGROUP: FindorCreate(TfrmPhonebookGroups, iProgramID).Show;

    IDXPHONEBOOKNEW:
      with TfrmPhoneBookNew.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        ShowModal;
      end;

    IDXPOSTCODE: FindorCreate(TfrmPostcode, iProgramID).Show;

    IDXPOSTCODESEARCH: FindorCreate(TfrmPostcodeSearch, iProgramID).Show;

    IDXPRECS: FindorCreate(TfrmTaskExplorer, iProgramID).Show;

    IDXPRECCATEGORIES: FindorCreate(TfrmPrecCategories, iProgramID).Show;

    IDXQUICKCODES: FindorCreate(TfrmQuickCodes, iProgramID).Show;

    IDXRECEIPT:
      with TfrmReceipt.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXRECEIPTS: FindorCreate(TfrmCashRcp, iProgramID).Show;

    IDXRELATEDICT: FindorCreate(TfrmRelateDict, iProgramID).Show;

    IDXREPORTS: FindorCreate(TfrmReports, iProgramID).Show;

    idxSCALECOSTS: FindorCreate(TfrmScaleCosts, iProgramID).Show;

    idxSOUNDS: FindorCreate(TfrmSounds, iProgramID).Show;

    idxSOFTLOGIMPORT: FindorCreate(TfrmSoftlogImport, iProgramID).Show;

    idxSUNDRY:
      with TfrmSundryNew.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXSUNDRYBATCH: FindorCreate(TfrmSundryBatch, iProgramID).Show;

    IDXSUNDRYERROR: FindorCreate(TfrmSundryError, iProgramID).Show;

    idxSUNDRYLIST: FindorCreate(TfrmSundryList, iProgramID).Show;

    idxSUNDRYTYPES: FindorCreate(TfrmSundryType, iProgramID).Show;

    idxSYSTEMFILE: FindorCreate(TfrmSystemFile, iProgramID).Show;

    IDXTASKTEMPNEW:
      with TfrmTaskTempNew.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXTASKS: FindorCreate(TfrmTasks, iProgramID).Show;

    IDXTAXTYPES: FindorCreate(TfrmTaxTypes, iProgramID).Show;

    IDXTRUSTJOURNAL: FindorCreate(TfrmTrustJournal, iProgramID).Show;

    IDXTIMESHEET: FindorCreate(TfrmTimeSheet, iProgramID).Show;

    IDXWRITEOFF:
      with TfrmWriteOff.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXWRITEOFFDISB:
      with TfrmWriteOffDisb.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        Show;
      end;

    IDXWORKFLOWTYPE: FindorCreate(TfrmWorkflowType, iProgramID).Show;

//    IDXYEAREND1: FindorCreate(TfrmYearEnd1, iProgramID).Show;

//    IDXYEAREND2: FindorCreate(TfrmYearEnd2, iProgramID).Show;

    IDXWORKFLOWDOCTEMPLATE:  FindorCreate(TfmWorkFlowDocTemplates, iProgramID).Show;
    IDXWORKFLOWTASKTEMPLATE: FindorCreate(TfmWorkFlowTaskTemplates, iProgramID).Show;
    IDXWORKFLOWADMINDOCS:    FindorCreate(TfmWorkFlowAdminDocs, iProgramID).Show;
    IDXWORKFLOWTODO:         FindorCreate(TfmWorkFlowToDo, iProgramID).Show;
    IDXBUDGETS:              FindorCreate(TfmBudgets, iProgramID).Show;
//    IDXWORKFLOWDATAFORM:     FindorCreate(TfmWorkFlowDataForms, iProgramID).Show;
    IDXDEBTORSTATUSLIST:     FindorCreate(TfmDebtorStatusList, iProgramID).Show;
    IDXEVENTTYPES:           FindorCreate(TfmMarketEventEventTypes, iProgramID).Show;
    IDXDOCUMENTTYPES:        FindorCreate(TfrmDocumentTypeList, iProgramID).Show;
    IDXEVENTS:               FindorCreate(TfrmMarketEvent, iProgramID).Show;
    IDXEVENTPARTICIPANTS:    FindorCreate(TfrmMarketEventParticipants, iProgramID).Show;
    {
         with TfrmMarketEventParticipants.Create(frmDesktop) do
         begin
            Tag := iProgramID;
            InitialiseScreen(True);
            Show;
         end;
         }
    IDXEVENTLIST:            FindorCreate(TfrmEventList, iProgramID).Show;
    IDXSOLICITORCODE:        FindorCreate(TfrmSolicitorCode, iProgramID).Show;
    IDXCOURTADDRESS:         FindorCreate(TfrmCourtAddress, iProgramID).Show;
    IDXINDUSTRY:             FindorCreate(TfrmIndustryNew, iProgramID).Show;
    IDXINTEREST:             FindorCreate(TfrmInterestNew, iProgramID).Show;
    IDXTOOLKIT:              //FindorCreate(TfrmToolkit, iProgramID).ShowModal;
      with TfrmToolkit.Create(frmDesktop) do
      begin
        Tag := iProgramID;
        ShowModal;
        frmToolkit.Free;
      end;

    IDXARCHIVESEARCH:        FindorCreate(TfrmArchiveSearch, iProgramID).Show;
    IDXMARKETREFERRAL:       FindorCreate(TfrmMarketReferralOther, iProgramID).Show;
    IDXTIMEDIARY:            FindorCreate(TfrmTimeDiary, iProgramID).Show;
    IDXDEBTORWORKTEMP:       FindorCreate(TfrmDebtorTaskTemplate,iProgramID).show;
    IDXDEBTORWORKDUE:       FindorCreate(TfrmDebtorTaskDue,iProgramID).show;
    IDXACCTPAYABLE:         FindorCreate(TfrmAcctPayable,iProgramID).show;
    IDXDEPOSITTRANS:        FindorCreate(TfrmInvestmentTransactions,iProgramID).show;
    IDXDEPOSITS:            FindorCreate(TfrmDepositAccount,iProgramID).show;
    IDXTEAMS:               FindorCreate(TfrmTeams,iProgramID).show;
    IDXEXPRESSDEBTORNOTES:  FindorCreate(TfrmDebtorNotesEntry,iProgramID).show;
    IDXDASHBOARD:           FindorCreate(TfrmDashboard,iProgramID).show;
    IDXDASHBOARD_TEAM:      FindorCreate(TfrmDashboard_Team,iProgramID).show;
    IDXDASHBOARD_IND:       FindorCreate(TfrmDashboard_Ind,iProgramID).show;
    IDXFEEAUTHORITY:        begin
                              with TfrmFeeAuthority.Create(frmDesktop) do
                              begin
                                 Tag := iProgramID;
                                 ShowModal;
                                 frmFeeAuthority.Free;
                              end;
                            end;
    IDXPRECCLASSIFICATION: FindorCreate(TfrmPrecClassifications, iProgramID).Show;
  end;
  Screen.Cursor := csrPrev;  // Restore cursor

end;


procedure TfrmLaunch.tbtnLargeClick(Sender: TObject);
begin
  tbtnLarge.Down := True;
  tbtnSmall.Down := False;
  tbtnList.Down := False;
  tbtnReport.Down := False;
  popDesktopLarge.Checked := True;
  lvShortcuts.ViewStyle := vsIcon;
  SettingSave('Desktop', 'ViewStyle', Ord(lvShortcuts.ViewStyle));
end;

procedure TfrmLaunch.tbtnSmallClick(Sender: TObject);
begin
  tbtnLarge.Down := False;
  tbtnSmall.Down := True;
  tbtnList.Down := False;
  tbtnReport.Down := False;
  popDesktopSmall.Checked := True;
  lvShortcuts.ViewStyle := vsSmallIcon;
  SettingSave('Desktop', 'ViewStyle', Ord(lvShortcuts.ViewStyle));
end;

procedure TfrmLaunch.tbtnListClick(Sender: TObject);
begin
  tbtnLarge.Down := False;
  tbtnSmall.Down := False;
  tbtnList.Down := True;
  tbtnReport.Down := False;
  popDesktopList.Checked := True;
  lvShortcuts.ViewStyle := vsList;
  SettingSave('Desktop', 'ViewStyle', Ord(lvShortcuts.ViewStyle));
end;

procedure TfrmLaunch.tbtnReportClick(Sender: TObject);
begin
  tbtnLarge.Down := False;
  tbtnSmall.Down := False;
  tbtnList.Down := False;
  tbtnReport.Down := True;
  popDesktopDetail.Checked := True;
  lvShortcuts.ViewStyle := vsReport;
  SettingSave('Desktop', 'ViewStyle', Ord(lvShortcuts.ViewStyle));
end;


procedure TfrmLaunch.popDesktopColourClick(Sender: TObject);
begin
  cdlgColour.Color := lvShortcuts.Color;
  if cdlgColour.Execute then
    lvShortcuts.Color := cdlgColour.Color;
  SettingSave('Desktop', 'Colour', lvShortcuts.Color);
end;

procedure TfrmLaunch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FOutlookIntegrator);
  frmDesktop.lvDesktop.Color := lvShortcuts.Color;
  case lvShortcuts.ViewStyle of
    vsIcon: frmDesktop.popDesktopLarge.Click;
    vsSmallIcon: frmDesktop.popDesktopSmall.Click;
    vsList: frmDesktop.popDesktopList.Click;
    vsReport: frmDesktop.popDesktopDetail.Click;
  end;

  qryEmpcuts.Close;
  Action := caFree;
end;

procedure TfrmLaunch.tbtnLaunchClick(Sender: TObject);
begin
  lvShortcuts.OnDblClick(Self);
end;

procedure TfrmLaunch.lvShortcutsClick(Sender: TObject);
begin
  if lvShortcuts.SelCount > 0 then
    Launch(lvShortcuts.Selected.ImageIndex);
end;

procedure TfrmLaunch.popDesktopShortcutAllClick(Sender: TObject);
var
  iCtr: integer;
begin
  for iCtr := 0 to lvShortcuts.Items.Count - 1 do
    frmDesktop.AddShortcut(lvShortcuts.Items[iCtr].ImageIndex, lvShortcuts.Items[iCtr].Caption);
end;

procedure TfrmLaunch.FormCreate(Sender: TObject);
var
  iTmp: Integer;
begin
  frmLaunch := Self;
  if SettingLoadBoolean(dmAxiom.UserID, 'LAUNCH', 'MAXIMIZED') then
    Self.WindowState := wsMaximized
  else
  begin
    iTmp := SettingLoadInteger(dmAxiom.UserID, 'LAUNCH', 'WIDTH');
    if iTmp <> 0 then
      Self.Width := iTmp;
    iTmp := SettingLoadInteger(dmAxiom.UserID, 'LAUNCH', 'HEIGHT');
    if iTmp <> 0 then
      Self.Height := iTmp;
  end;
end;

procedure TfrmLaunch.FormDestroy(Sender: TObject);
begin
   if Self.WindowState = wsMaximized then
      SettingSave('LAUNCH', 'MAXIMIZED', True)
   else
   begin
      SettingDelete('LAUNCH', 'MAXIMIZED');
      SettingSave('LAUNCH', 'WIDTH', Self.Width);
      SettingSave('LAUNCH', 'HEIGHT', Self.Height);
   end;

   try
      with frmDesktop.dxBarWindowList.Items do
         Delete(IndexOfObject(Self));
   except
     // do nothing
   end;
   frmLaunch := nil;
end;

procedure TfrmLaunch.popDesktopOpenClick(Sender: TObject);
begin
  lvShortcuts.OnClick(Self);
end;

procedure TfrmLaunch .tbtnHelpClick(Sender: TObject);
begin
  MessageDlg('There are ' + InttoStr(lvShortcuts.items.count) + ' shortcut items', mtInformation, [mbOK], 0);
end;

function TfrmLaunch.FindOrCreate(aformclass: TFormclass; Icon: integer): TForm;
var
  i: Integer;
begin
   for i:= 0 to Screen.Formcount-1 do
      if Screen.Forms[i].ClassnameIs(aFormclass.Classname) then
      begin
         Result := Screen.forms[i];
         Result.Tag := Icon;
         Exit;
      end;

  Result := aFormclass.Create(frmDesktop);
  Result.Tag := Icon;
end;

end.

