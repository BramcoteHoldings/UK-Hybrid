unit Archival;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  citfunc,StdCtrls, Buttons, Db, MemDS,  OracleUniProvider, Uni, DBAccess, DBCtrls,
  cxLookAndFeelPainters, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, cxControls, cxContainer, cxEdit, cxLabel, cxGroupBox,
  cxButtonEdit, cxCalendar, Variants, cxGraphics, Menus, cxLookAndFeels,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxMemo, cxRichEdit, DateUtils,
  ComCtrls, dxCore, ExtCtrls, cxDateUtils, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmArchival = class(TForm)
    Label1: TLabel;
    qryMatter: TUniQuery;
    qryArchiveType: TUniQuery;
    qryMatterDelete: TUniQuery;
    qryUnpresentedCheques: TUniQuery;
    qryCheqreq: TUniQuery;
    qryBills: TUniQuery;
    qryArchiveMatter: TUniQuery;
    qryMatterTotals: TUniQuery;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    dsMatterStatus: TUniDataSource;
    dsMatter: TUniDataSource;
    qryArchiveTypeDesc: TUniQuery;
    qryMatterStatus: TUniQuery;
    qryMatterStatusCODE: TStringField;
    qryMatterStatusDESCR: TStringField;
    lblDebtors: TcxLabel;
    lblWIP: TcxLabel;
    lblSundries: TcxLabel;
    lblDisbursements: TcxLabel;
    lblAnticipated: TcxLabel;
    lblTrust: TcxLabel;
    chkNewNumber: TcxCheckBox;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    tblArchiveType: TUniTable;
    dsArchiveType: TUniDataSource;
    cmbMatterStatus: TcxDBLookupComboBox;
    lblClient: TcxLabel;
    lblMatterDesc: TcxLabel;
    lblError: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    chkDocs: TcxCheckBox;
    cbDiary: TcxCheckBox;
    btnMatterFind: TcxButtonEdit;
    dtpReview: TcxDateEdit;
    dtpDestroy: TcxDateEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    lblArchiveRef: TLabel;
    Label16: TLabel;
    lblCreditors: TcxLabel;
    Label17: TLabel;
    lblControlled: TcxLabel;
    tvArchiveLocation: TcxGridDBTableView;
    lvArchiveLocation: TcxGridLevel;
    grdArchiveLocation: TcxGrid;
    qryArchiveLocation: TUniQuery;
    dsArchiveLocation: TUniDataSource;
    tvArchiveLocationNMATTER: TcxGridDBColumn;
    tvArchiveLocationARCHIVEBOX: TcxGridDBColumn;
    tvArchiveLocationARCHVLOCN: TcxGridDBColumn;
    tvArchiveLocationCREATED: TcxGridDBColumn;
    edNotes: TcxRichEdit;
    tvArchiveLocationFOLDER_DTLS: TcxGridDBColumn;
    tvArchiveLocationBARCODE: TcxGridDBColumn;
    tvArchiveLocationAUTHORISED_BY: TcxGridDBColumn;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    chkPrint: TcxCheckBox;
    tvArchiveLocationBOX_DESTROY_DATE: TcxGridDBColumn;
    pnlArchiveType: TPanel;
    Label8: TLabel;
    lblClosed: TcxLabel;
    Label9: TLabel;
    cbCode: TcxLookupComboBox;
    qryMatterWorkflowTasks: TUniQuery;
    tvArchiveLocationCHECKED_BY_1: TcxGridDBColumn;
    tvArchiveLocationCHECKED_BY_2: TcxGridDBColumn;
    procedure btnMatterFindClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbCodeChange(Sender: TObject);
    procedure cbCodeCloseUp(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure btnMatterFindPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnMatterFindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qryArchiveLocationAfterInsert(DataSet: TDataSet);
    procedure qryArchiveLocationAfterEdit(DataSet: TDataSet);
    procedure grdArchiveLocationEnter(Sender: TObject);
    procedure qryArchiveLocationBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    
    procedure DisplayMatter(sMatter: string);
    procedure PerformArchive();
    procedure SetErrorLabel(strMess: string; pFileId: string);
    procedure CompleteAllTasks;
  public
    { Public declarations }
    procedure ArchiveMatter(FileID: string);
    procedure ShowDetails(pFileId: string);
  end;

var
  frmArchival: TfrmArchival;

implementation

uses
  AxiomData, MiscFunc, MSearch, TableCache, Matters, MatterLabel, WorkFlowTask;

{$R *.DFM}

procedure TfrmArchival.DisplayMatter(sMatter: string);
begin
  btnMatterFind.Text := sMatter;
  lblClient.Caption := MatterString(btnMatterFind.Text, 'TITLE');
  lblMatterDesc.Caption := MatterString(btnMatterFind.Text, 'SHORTDESCR');
  btnOK.Enabled := ((not pnlArchiveType.Visible) or (cbCode.Enabled and (cbCode.text <> '')));
end;


procedure TfrmArchival.PerformArchive();
var
  iArchive : integer;
  iArchived : integer;
  sArchive: string;
  iCtr: integer;
  bFormUpdated: boolean;
  MatterLabel: TMatterLabel;
  sArchiveCode: variant;
begin
   try
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;

{    if qryMatter.FieldByName('CLOSED').AsInteger = 0 then
        with dmAxiom.qryTmp do
        begin
           Close;
           SQL.Clear;
           SQL.Add('UPDATE MATTER SET COMPLETED = trunc(sysdate),CLOSED = 1  WHERE FILEID = :FILEID');
           ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
           ExecSQL;
           Close;
        end;  }

    // TH 11/04/05 - Editing of archival matter
    // If archived then just save editable fields and exit
      iArchived := 0;
      with qryMatter do
      begin
         if (not FieldByName('ARCHIVED').IsNull)
            and (FieldByName('CLOSED').AsInteger = 1) then
         begin
            qryArchiveMatter.Close;
            qryArchiveMatter.ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
            qryArchiveMatter.ParamByName('ARCHIVENUM').AsString := qryMatter.FieldByname('ARCHIVENUM').AsString;
            if (not VarIsNull(cbCode.EditValue)) then
               qryArchiveMatter.ParamByName('CODE').AsString := cbCode.EditValue; //  qryMatter.FieldByName('ARCHIVETYPECODE').AsString;
            if (not VarIsNull(cmbMatterStatus.EditValue)) then
               qryArchiveMatter.ParamByName('P_STATUS').AsString := cmbMatterStatus.EditValue;  //  qryMatter.FieldByName('STATUS').AsString;

//              qryArchiveMatter.ParamByName('ARCHIVEBOX').AsString := edBoxNumber.Text;
//              qryArchiveMatter.ParamByName('ARCHVLOCN').AsString := edLocation.Text;

            if (not varIsNull(dtpReview.EditValue)) then
               qryArchiveMatter.ParamByName('ARCHIVEREVIEW').AsDate:= dtpReview.EditValue;
            if (not varIsNull(dtpDestroy.EditValue)) then
               qryArchiveMatter.ParamByName('ARCHIVEDEST').AsDate := dtpDestroy.EditValue;
            qryArchiveMatter.ParamByName('ARCHIVENOTES').AsString := edNotes.Text;
            qryArchiveMatter.ExecSql;
            qryArchiveMatter.Close;
            iArchived := 1;

            qryArchiveLocation.ApplyUpdates;
         end
         else if ((chknewnumber.Checked) or (not chknewnumber.visible)) then
         begin
            with qryArchiveType do
            begin
               sArchiveCode := cbCode.EditValue;
               Close;
               sql.Text := 'SELECT NVL(NEXTARCHIVE, 0) AS NEXTARCHIVE FROM ARCHIVETYPE WHERE CODE = :CODE';
               ParamByName('CODE').AsString := sArchiveCode;
               Open;
               iArchive := FieldByName('NEXTARCHIVE').AsInteger;
               Close;
               // AES 17/07/2014
               // if iArchive = -1 there was no archive type selected
               //need to find the default archive type and get value
               if (iArchive = 0) then
               begin
                  sql.Text := 'SELECT CODE, NVL(NEXTARCHIVE, -1) AS NEXTARCHIVE '+
                              'FROM ARCHIVETYPE WHERE DFLT_TYPE = ''Y'' ';
                  Open;
                  iArchive := FieldByName('NEXTARCHIVE').AsInteger;
                  sArchiveCode := FieldByName('CODE').AsString;
                  Close;
               end;
               SQL.Text := 'UPDATE ARCHIVETYPE SET NEXTARCHIVE = ' + IntToStr(iArchive + 1) + ' WHERE CODE = :CODE';
               ParamByName('CODE').AsString := sArchiveCode;

               ExecSQL;
               close;
            end;

            qryArchiveMatter.Close;
            qryArchiveMatter.ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
            qryArchiveMatter.ParamByName('ARCHIVENUM').AsString := IntToStr(iArchive);
            if (not VarIsNull(cbCode.EditValue)) then
               qryArchiveMatter.ParamByName('CODE').AsString := cbCode.EditValue; //  qryMatter.FieldByName('ARCHIVETYPECODE').AsString;
            if (not VarIsNull(cmbMatterStatus.EditValue)) then
               qryArchiveMatter.ParamByName('P_STATUS').AsString := cmbMatterStatus.EditValue;  //  qryMatter.FieldByName('STATUS').AsString;

//            qryArchiveMatter.ParamByName('ARCHIVEBOX').AsString := edBoxNumber.Text;
//            qryArchiveMatter.ParamByName('ARCHVLOCN').AsString := edLocation.Text;

            if (not varIsNull(dtpReview.EditValue)) then
               qryArchiveMatter.ParamByName('ARCHIVEREVIEW').AsDate := dtpReview.EditValue;
            if (not varIsNull(dtpDestroy.EditValue)) then
               qryArchiveMatter.ParamByName('ARCHIVEDEST').AsDate := dtpDestroy.EditValue;
            qryArchiveMatter.ParamByName('ARCHIVENOTES').AsString := edNotes.Text;
            qryArchiveMatter.ExecSql;
            qryArchiveMatter.Close;
            qryArchiveLocation.ApplyUpdates;
         end
         else
         begin
            sArchive := qryMatter.FieldByName('ARCHIVENUM').AsString;
            iArchive := StrtoInt(sArchive);
         end;
      end;
    // update the matter and set the archive date

    //iArchive := qryMatter.FieldByName('NARCHIVE').AsInteger;
    //if iArchive > 0 then
    //  qryArchive.ParamByName('NARCHIVE').AsInteger := iArchive
    //else
    //begin
      //iArchive := TableInteger('SYSTEMFILE','CODE',dmaxiom.entity,'NEXTARCHIVE');//SystemInteger('NEXTARCHIVE');


      //with qryArchiveType do
      //begin

        //CLOSE;
        //sql.Text := 'SELECT NEXTARCHIVE FROM SYSTEMFILE';
        //open;
        //        iArchive := FieldByName('NEXTARCHIVE').AsInteger;
        //
        //
        //Close;
        //SQL.Text := 'UPDATE SYSTEMFILE SET NEXTARCHIVE = ' + IntToStr(iArchive + 1);
        //ParamByName('ENTITY').AsString := dmAxiom.Entity;
        //ExecSQL;
      //end;
      //qryArchive.ParamByName('NARCHIVE').AsInteger := iArchive;
    //end;
    //qryArchive.ParamByName('NMATTER').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
    //qryArchive.ParamByName('OPENED').AsDateTime := qryMatter.FieldByName('OPENED').AsDateTime;
    //qryArchive.ParamByName('AUTHOR').AsString := qryMatter.FieldByName('AUTHOR').AsString;
    //qryArchive.ParamByName('PARTNER').AsString := qryMatter.FieldByName('PARTNER').AsString;
    //qryArchive.ParamByName('TYPE').AsString := qryMatter.FieldByName('TYPE').AsString;
    //qryArchive.ParamByName('RATE').AsFloat := qryMatter.FieldByName('RATE').AsFloat;
    //qryArchive.ParamByName('TITLE').AsString := qryMatter.FieldByName('TITLE').AsString;
    //qryArchive.ParamByName('FILEID').AsString := qryMatter.FieldByName('FILEID').AsString;
    //qryArchive.ParamByName('ACCT').AsString := qryMatter.FieldByName('ACCT').AsString;
    //qryArchive.ParamByName('TRUSTAUTH').AsString := qryMatter.FieldByName('TRUSTAUTH').AsString;
    //qryArchive.ParamByName('PARTY1').AsString := qryMatter.FieldByName('PARTY1').AsString;
    //qryArchive.ParamByName('PARTY2').AsString := qryMatter.FieldByName('PARTY2').AsString;
    //qryArchive.ParamByName('PARTY3').AsString := qryMatter.FieldByName('PARTY3').AsString;
    //qryArchive.ParamByName('SHORTDESCR').AsString := qryMatter.FieldByName('SHORTDESCR').AsString;
    //qryArchive.ParamByName('LONGDESCR').AsString := qryMatter.FieldByName('LONGDESCR').AsString;
    //qryArchive.ParamByName('OFFICE').AsString := qryMatter.FieldByName('OFFICE').AsString;
    //qryArchive.ParamByName('NCLIENT').AsInteger := qryMatter.FieldByName('NCLIENT').AsInteger;
    //qryArchive.ParamByName('BILL_TO').AsString := qryMatter.FieldByName('BILL_TO').AsString;
    //qryArchive.ParamByName('LASTTRANS').AsDateTime := qryMatter.FieldByName('LASTTRANS').AsDateTime;
    //qryArchive.ParamByName('LASTTRUST').AsDateTime := qryMatter.FieldByName('LASTTRUST').AsDateTime;
    //qryArchive.ParamByName('REFERREDBY').AsString := qryMatter.FieldByName('REFERREDBY').AsString;
    //qryArchive.ParamByName('ARCHIVED').AsDateTime := Now;
    //qryArchive.ParamByName('NOTES').AsString := qryMatter.FieldByName('NOTES').AsString;
    //qryArchive.ParamByName('LITIGATION').AsString := qryMatter.FieldByName('LITIGATION').AsString;
    //qryArchive.ParamByName('SPECULATION').AsString := qryMatter.FieldByName('SPECULATION').AsString;
    //qryArchive.ParamByName('AGENCY').AsString := qryMatter.FieldByName('AGENCY').AsString;
    //qryArchive.ParamByName('GRATIS').AsString := qryMatter.FieldByName('GRATIS').AsString;
    //qryArchive.ParamByName('BILLING_PLAN').AsString := qryMatter.FieldByName('BILLING_PLAN').AsString;
    //qryArchive.ParamByName('CONTACT').AsString := qryMatter.FieldByName('CONTACT').AsString;
    //qryArchive.ParamByName('OPREF').AsString := qryMatter.FieldByName('OPREF').AsString;
    //qryArchive.ParamByName('BILL_FEES').AsFloat := qryMatter.FieldByName('BILL_FEES').AsFloat;
    //qryArchive.ParamByName('RECVD_FEES').AsFloat := qryMatter.FieldByName('RECVD_FEES').AsFloat;
    //qryArchive.ParamByName('PREV_NCMAUDIT').AsInteger := qryMatter.FieldByName('PREV_NCMAUDIT').AsInteger;
    //qryArchive.ParamByName('PREV_NTRAUDIT').AsInteger := qryMatter.FieldByName('PREV_NTRAUDIT').AsInteger;
    //qryArchive.ParamByName('CONTROLLER').AsString := qryMatter.FieldByName('CONTROLLER').AsString;
    //qryArchive.ParamByName('COMPLETED').AsDateTime := qryMatter.FieldByName('COMPLETED').AsDateTime;
    //qryArchive.ParamByName('EXPECTED_VALUE').AsFloat := qryMatter.FieldByName('EXPECTED_VALUE').AsFloat;
    //qryArchive.ParamByName('FEECODE').AsString := qryMatter.FieldByName('FEECODE').AsString;
    //qryArchive.ParamByName('LABELCODE').AsString := qryMatter.FieldByName('LABELCODE').AsString;

    //qryArchive.ExecSQL;
    //with qryMatterDelete do
    //begin
    //  ParamByName('FILEID').AsString := lblMatter.Caption;
    //  ExecSQL;
    //end;

      if (SystemString('STOP_WKFLOW_TASKS_ARCHIVE') = 'Y') then
         CompleteAllTasks;

      dmAxiom.uniInsight.Commit;
      ReopenListDelete('MATTER', btnMatterFind.Text);

      if Self.Visible then
      begin
         if (iArchived = 0) then
            MsgInfo('Matter archived as ' + IntToStr(iArchive))
         else
            MsgInfo('Archived matter updated');
      end;

      try
         if chkPrint.Checked then
         begin
//            if not Assigned(MatterLabel) then
            try
               MatterLabel := TMatterLabel.Create(dmAxiom.uniInsight);
               MatterLabel.ArchiveMode := True;
               if not MatterLabel.Cancelled then
                  MatterLabel.Print(qryMatter.FieldByName('NMATTER').AsInteger,'ARCHIVELABEL');
            finally
               MatterLabel.Free;
            end;
         end
      except
       on E: Exception do
         MsgErr('Printing failed:' + #13 + E.Message + #13#13 + 'You may print this Label from the Matters screen');
      end;

      Screen.Cursor := crSQLWait;
{      iCtr := 0;
      bFormUpdated := False;
      while (iCtr < Screen.FormCount) and not bFormUpdated do
      begin
         if Screen.Forms[iCtr].ClassName = 'TfrmMatters' then
         begin
            try
               (Screen.Forms[iCtr] as TfrmMatters).dxbtnRefresh.Click;
               bFormUpdated := True;
            except
               //
            end;
         end;
         iCtr := iCtr + 1;
      end;     }

      // Reset fields
//      edBoxNumber.Text := '';
//      edLocation.Text := '';
      qryArchiveLocation.Close;

      dtpReview.EditValue := null;
      dtpDestroy.EditValue := null;
      edNotes.Text := '';
      lblArchiveRef.Caption := '';

      qryMatter.Close;
      btnMatterFind.Text := '';
      lblClient.Caption := '';
      lblMatterDesc.Caption := '';
      lblError.Caption := '';

      Screen.Cursor := crDefault;
   except
      on E: Exception do
      begin
         dmAxiom.uniInsight.Rollback;
         MsgErr('Archival failed:' + #13#13 + E.Message);
      end;
   end;
end;

procedure TfrmArchival.ArchiveMatter(FileID: string);
begin
  with qryMatter do
  begin
    Close;
    ParamByName('FILEID').AsString := FileID;
    Open;
  end;
  btnMatterFind.Text := FileID;
  PerformArchive();
end;


procedure TfrmArchival.btnMatterFindClick(Sender: TObject);
var
  frmSearchForMatter : TfrmMatterSearch;
begin
  //if not FormExists(frmMatterSearch) then
  //  Application.CreateForm(TfrmSearchForMatter, frmSearchForMatter);

   frmSearchForMatter := TfrmMatterSearch.Create(Self);
   frmSearchForMatter.rgMatterOptions.ItemIndex := 3;
//   frmSearchForMatter.chkOnlyCurrent.Checked := False;
   frmSearchForMatter.MatterArchiveInit;

   if frmSearchForMatter.ShowModal = mrOK then
   begin
      ShowDetails(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
   frmSearchForMatter.Free;
end;

procedure TfrmArchival.SetErrorLabel(strMess: string; pFileId: string);
begin
    DisplayMatter(pFileId);
    lblError.Caption := strMess;
    chkNewNumber.Visible := false;
    btnOK.Enabled := false;
    cbCode.Enabled := false;
    cmbMatterStatus.Enabled := false;
    cbCode.Text := SystemString('DEFAULT_ARCHIVETYPE');
    chkDocs.Enabled := False;
    cbDiary.Enabled := False;

//    edBoxNumber.Enabled := False;
//    edLocation.Enabled := False;

    grdArchiveLocation.Enabled := False;

    dtpReview.Enabled := False;
    dtpDestroy.Enabled := False;
    edNotes.Enabled := False;
end;

procedure TfrmArchival.ShowDetails(pFileId: string);
var
  sArchiveError : string;
  cUCheques: currency;
begin
//   btnOK.Enabled := (cbCode.Text <> '');
   btnOK.Enabled := ((not pnlArchiveType.Visible) or (cbCode.Enabled and (cbCode.text <> '')));
   cbCode.Enabled := True;
   cmbMatterStatus.Enabled := True;
   qryMatterStatus.Open;
   lblError.Caption := '';
   with qryMatter do
   begin
      Close;
      // this is really nmatter
      ParamByName('P_FILE').AsString := MatterString(pFileId,'NMATTER');  //pFileId;
      Open;
      chkNewNumber.Visible := (not FieldByName('ArchiveNum').IsNull);

      lblDebtors.Caption := FormatCurr('$#0.00', FieldByName('CAL_DEBTORS').AsFloat);
      lblWIP.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_FEES').AsFloat);
      lblSundries.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_SUND').AsFloat);
      lblDisbursements.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_DISB').AsFloat);
      lblAnticipated.Caption := FormatCurr('$#0.00', FieldByName('CAL_UNBILL_ANTD').AsFloat);
      lblTrust.Caption := FormatCurr('$#0.00', FieldByName('CAL_TRUST_BAL').AsFloat);
      lblCreditors.Caption := FormatCurr('$#0.00', FieldByName('CAL_CREDITORS').AsFloat);
      lblControlled.Caption := FormatCurr('$#0.00', FieldByName('CAL_CONTROLLED').AsFloat);
      cUCheques := FieldByName('UNPRESENTED_CHQ').AsCurrency;
      lblClosed.Caption := FieldByName('COMPLETED').AsString;

      sArchiveError := '';
      if FieldByName('CAL_DEBTORS').AsFloat <> 0.0 then
        sArchiveError := sArchiveError + #13 + '    Debtors';
      if FieldByName('CAL_UNBILL_FEES').AsFloat <> 0.0 then
        sArchiveError := sArchiveError + #13 + '    Work in Progress';
      if FieldByName('CAL_UNBILL_SUND').AsFloat <> 0.0 then
        sArchiveError := sArchiveError + #13 + '    Unbilled Sundries';
      if FieldByName('CAL_UNBILL_DISB').AsFloat <> 0.0 then
        sArchiveError := sArchiveError + #13 + '    Unbilled Disbursements';
      if FieldByName('CAL_UNBILL_ANTD').AsFloat <> 0.0 then
        sArchiveError := sArchiveError + #13 + '    Anticipated Disbursements';
      if FieldByName('CAL_TRUST_BAL').AsFloat <> 0.0 then
        sArchiveError := sArchiveError + #13 + '    Trust Monies';
      if FieldByName('CAL_CREDITORS').AsFloat <> 0.0 then
        sArchiveError := sArchiveError + #13 + '    Creditors';
      if FieldByName('CAL_CONTROLLED').AsFloat <> 0.0 then
        sArchiveError := sArchiveError + #13 + '    Controlled Monies'; 
//      if cUCheques<> 0 then
//        sArchiveError := sArchiveError + #13 + '    Unpresented Cheque(s)';
    end;

    // TH 11/04/05 - Added new fields
    if qryMatter.Active = True then
    begin
      lblArchiveRef.Caption := qryMatter.FieldByName('ARCHIVENUM').AsString;
//      edBoxNumber.Text := qryMatter.FieldByName('ARCHIVEBOX').AsString;
//      edLocation.Text := qryMatter.FieldByName('ARCHVLOCN').AsString;
      dtpReview.Text := qryMatter.FieldByName('ARCHIVEREVIEW').AsString;
      dtpDestroy.Text := qryMatter.FieldByName('ARCHIVEDEST').AsString;
      edNotes.Text := qryMatter.FieldByName('ARCHIVENOTES').AsString;
      with qryArchiveLocation do
      begin
         Close;
         ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
         Open;
      end;
    end;

//    edBoxNumber.Enabled := True;
//    edLocation.Enabled := True;
    grdArchiveLocation.Enabled := True;
    
    dtpReview.Enabled := True;
    dtpDestroy.Enabled := True;
    edNotes.Enabled := True;
    chkDocs.Enabled := True;
    cbDiary.Enabled := True;

    if sArchiveError <> '' then
       SetErrorLabel('You may not archive this Matter because the following have non-zero balances:' + #13 + sArchiveError,pFileId)
    else
    begin
      with qryMatter do
      begin
        Close;
        ParamByName('P_FILE').AsString := MatterString(pFileId,'NMATTER');
        Open;
        if (not FieldByName('ARCHIVED').IsNull) and (FieldByName('CLOSED').AsInteger = 1) then
        begin
           SetErrorLabel('This Matter has already been Archived!  Changes made will not be applied.',pFileId);
//           edBoxNumber.Enabled := True;
//           edLocation.Enabled := True;
           grdArchiveLocation.Enabled := True;

           dtpReview.Enabled := True;
           dtpDestroy.Enabled := True;
           edNotes.Enabled := True;
           btnOk.Enabled := True;
           chkDocs.Enabled := True;
           cbDiary.Enabled := True;
        end;

        if (FieldByName('CLOSED').AsInteger = 0) then
        begin
           if {(not SettingLoadBoolean('sys', 'MATTER', 'ARCHIVEUNCLOSED'))} (SystemString('ARCHIVEUNCLOSED') <> 'Y') then
              SetErrorLabel('You may not archive this Matter because it has not been closed!',pFileId)
        end
        else
           if {(not SettingLoadBoolean('sys', 'MATTER', 'ARCHIVEUNCLOSED'))} (SystemString('ARCHIVEUNCLOSED') <> 'Y') then
           begin
              qryUnpresentedCheques.ParamByName('FILEID').AsString := pFileId;
              qryUnpresentedCheques.Open;
              if (not qryUnpresentedCheques.IsEmpty) and
                 (SystemString('ALLOWCLOSEUNPRESENTED') = 'N') then { (not SettingLoadBoolean('sys', 'MATTER', 'ALLOWCLOSEUNPRESENTED')) then }
              begin
                 while not qryUnpresentedCheques.EOF do
                 begin
                    sArchiveError := sArchiveError + #13 + '    ' + FormatDateTime('ddddd', qryUnpresentedCheques.FieldByName('CREATED').AsDateTime) + ' ' + qryUnpresentedCheques.FieldByName('REFNO').AsString + ' ' + Format('%m', [qryUnpresentedCheques.FieldByName('AMOUNT').AsFloat]);
                    qryUnpresentedCheques.Next;
                 end;
                 SetErrorLabel('You may not archive this Matter because of the following unpresented cheque(s):' + sArchiveError, pFileId)
              end;
              qryUnpresentedCheques.Close;
           end;

           if cbCode.Enabled then
           begin
              with qryCheqreq do
              begin
                 Close;
                 ParamByName('FILEID').AsString := pFileId;
                 Open;
                 if FieldByName('Total').AsInteger > 0 then
                    SetErrorLabel('You may not archive this Matter due to outstanding Cheque Requisitions', pFileId)
                 else
                 begin
                    qryBills.Close;
                    qryBills.ParamByName('FILEID').AsString := pFileId;
                    qryBills.Open;
                    if not(qryBills.IsEmpty) then
                       SetErrorLabel('You may not archive this Matter as it contains DRAFT bills', pFileId)
                    else
                       DisplayMatter(pFileId);
                 end;
              end;
              qryCheqreq.Close;
           end;
      end;
      if (SystemInteger('ARCHIVE_REVIEW_PERIOD') > 0) then
      begin
        dtpReview.Date := IncYear(now, SystemInteger('ARCHIVE_REVIEW_PERIOD'));
        dtpDestroy.Date := IncYear(now, SystemInteger('ARCHIVE_REVIEW_PERIOD'));
      end;
   end;
end;

procedure TfrmArchival.btnOKClick(Sender: TObject);
begin
  {
    The system will not let you archive, if you have no fees, sundries,
    transactions etc.

    So, I have changed it to archive if you have a valid matter.

    BJ  15-01-2003

  }
  //if not(qryMatter.IsEmpty) and (lblMatter.caption <> '') then

  if (btnMatterFind.Text <> '') then
    PerformArchive()
  else
    MsgErr('Please select a Matter to Archive');

end;

procedure TfrmArchival.CompleteAllTasks;
var
   WFT : TWorkFlowTask;
   nWorkFlowTask: integer;
begin
   qryMatterWorkflowTasks.Close;
   qryMatterWorkflowTasks.ParamByName('nmatter').AsInteger := qryMatter.FieldByName('NMATTER').AsInteger;
   qryMatterWorkflowTasks.Open;

   while (not qryMatterWorkflowTasks.EOF) do
   begin
      if qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger <> 0 then
         nWorkFlowTask := qryMatterWorkflowTasks.FieldByName('workflowtask').AsInteger;

      try
         WFT := TWorkFlowTask.Create(nWorkFlowTask, qryMatter.FieldByName('NMATTER').AsInteger);

         if not WFT.Completed then
         begin
            WFT.CompleteTask(Now());
         end;
      finally
         WFT.Free;
      end;
      qryMatterWorkflowTasks.Next;
   end;
end;

procedure TfrmArchival.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SettingSaveStream(dmAxiom.UserID,'ARCHIVE_LOC',tvArchiveLocation);
   qryMatter.Close;
   qryArchiveType.Close;
   qryUnpresentedCheques.Close;
   qryEmployee.Close;
//  RemoveFromDesktop(Self);
   Action := caFree;
end;

procedure TfrmArchival.btnCancelClick(Sender: TObject);
begin
  Self.Close;
//  RemoveFromDesktop(Self);
end;


procedure TfrmArchival.FormCreate(Sender: TObject);
begin
    // TH 1/12/2004 - Using stored procedures to obtain ledger values
    //qryMatter.SQL.Text := SQL_MATTER;
{ShowMessage(SQL_MATTER);}
//   if dmAxiom.DictionaryInstalled then
//   begin
//      dmAxiom.AddictLiveSpell.AddControl(edNotes);
//   end;

   SettingLoadStream(dmAxiom.UserID,'ARCHIVE_LOC',tvArchiveLocation);

   qryMatterTotals.SQL.Text := SQL_MATTER;
   tblArchiveType.Active := True;
   qryEmployee.Open;
end;

procedure TfrmArchival.FormShow(Sender: TObject);
begin
//  StringPopulate(cbCode.Items, 'ARCHIVETYPE', 'CODE', 'ACTIVE = ''Y''');
//  cbCode.EditValue := 'OH';
//  cbCode.Enabled := false;

    tvArchiveLocationCREATED.Visible := (SystemString('HIDE_DATE_COL_ARCHIVE') = 'N');
    tvArchiveLocationARCHVLOCN.Visible := (SystemString('HIDE_LOCATION_COL_ARCHIVE') = 'N');
    pnlArchiveType.Visible := (SystemString('HIDE_ARCHIVE_TYPE') = 'N');

  // TH 11/04/05 - Added new fields
   if qryMatter.Active = True then
   begin
      lblArchiveRef.Caption := qryMatter.FieldByName('ARCHIVENUM').AsString;

//    edBoxNumber.Text := qryMatter.FieldByName('ARCHIVEBOX').AsString;
//    edLocation.Text := qryMatter.FieldByName('ARCHVLOCN').AsString;
      with qryArchiveLocation do
      begin
         close;
         ParamByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
         Open;
      end;
      dtpReview.Text := qryMatter.FieldByName('ARCHIVEREVIEW').AsString;
      dtpDestroy.Text := qryMatter.FieldByName('ARCHIVEDEST').AsString;
      edNotes.Text := qryMatter.FieldByName('ARCHIVENOTES').AsString; 
   end
   else
      lblArchiveRef.Caption := '';
end;

procedure TfrmArchival.cbCodeChange(Sender: TObject);
begin
   btnOK.Enabled := ((not pnlArchiveType.Visible) or (cbCode.Enabled and (cbCode.text <> '')));
end;

procedure TfrmArchival.cbCodeCloseUp(Sender: TObject);
begin
{   with qryArchiveTypeDesc do
   begin
      Close;
      ParamByName('P_Code').AsString := cbCode.Text;
      Prepare;
      Open;
      lblCode.Caption := qryArchiveTypeDesc.FieldByName('Description').AsString;
   end;   }
end;

procedure TfrmArchival.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
   btnOK.Enabled := ((not pnlArchiveType.Visible) or (cbCode.Enabled and (cbCode.text <> '')));
end;

procedure TfrmArchival.btnMatterFindPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   ShowDetails(UpperCase(string(DisplayValue)));  //MatterString(string(DisplayValue),'NMATTER'));
end;

procedure TfrmArchival.btnMatterFindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   frmSearchForMatter: TfrmMatterSearch;
begin
   frmSearchForMatter := TfrmMatterSearch.Create(Self);
   frmSearchForMatter.rgMatterOptions.ItemIndex := 1;
//   frmSearchForMatter.chkOnlyCurrent.Checked := False;
   frmSearchForMatter.MatterArchiveInit;

   if frmSearchForMatter.ShowModal = mrOK then
   begin
      btnMatterFind.Text := dmAxiom.qryMSearch .FieldByName('FILEID').AsString;
      ShowDetails(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
   end;
   frmSearchForMatter.Free;
end;

procedure TfrmArchival.qryArchiveLocationAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('nmatter').AsInteger := qryMatter.FieldByName('nmatter').AsInteger;
   DataSet.FieldByName('created').AsDateTime := Now();
   if (qryMatter.FieldByName('BARCODE').IsNull = False) then
      Dataset.FieldByName('BARCODE').AsString := qryMatter.FieldByName('BARCODE').AsString;

   btnOK.Enabled := (cbcode.Text <> '');
end;

procedure TfrmArchival.qryArchiveLocationBeforePost(DataSet: TDataSet);
begin
   DataSet.FieldByName('narch_loc').AsInteger := GetSequenceNumber('SEQ_ARCH_LOC');
end;

procedure TfrmArchival.qryArchiveLocationAfterEdit(DataSet: TDataSet);
begin
   btnOK.Enabled := (cbcode.Text <> '');
end;

procedure TfrmArchival.grdArchiveLocationEnter(Sender: TObject);
begin
//   qryArchiveLocation.Insert;
//   tvArchiveLocationARCHIVEBOX.Focused := True;
end;

end.
