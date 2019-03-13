unit DebtorNotesEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxCheckBox, cxLabel, StdCtrls, cxButtons,
  cxMaskEdit, cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxRichEdit, cxDBRichEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DB,  OracleUniProvider, Uni,
  ActnList, ActnMan, Menus, cxGraphics, cxLookAndFeels, XPStyleActnCtrls,
  DBAccess, MemDS, System.Actions;

type
  TfrmDebtorNotesEntry = class(TForm)
    btnSave: TcxButton;
    btnClose: TcxButton;
    teNMemo: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cbCloseForm: TcxCheckBox;
    cmbMatterFind: TcxLookupComboBox;
    lblMatterDesc: TcxLabel;
    lblClient: TcxLabel;
    qryMRUList: TUniQuery;
    dsMRUList: TUniDataSource;
    dsDebtorNotes: TUniDataSource;
    qryMaxSequence: TUniQuery;
    qryMaxSequenceNEWSEQUENCE: TFloatField;
    ActionManager1: TActionManager;
    actSave: TAction;
    qryNmemo: TUniQuery;
    dsNMemo: TUniDataSource;
    cmbBillRef: TcxLookupComboBox;
    meDebtorNotes: TcxRichEdit;
    qryDebtorNotes: TUniQuery;
    qryTmp: TUniQuery;
    procedure cmbMatterFindPropertiesInitPopup(Sender: TObject);
    procedure cmbMatterFindPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure CRTemp_qryDebtorNotesAfterInsert(DataSet: TDataSet);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSaveUpdate(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure cmbMatterFindPropertiesCloseUp(Sender: TObject);
    procedure cmbBillRefPropertiesInitPopup(Sender: TObject);
  private
    { Private declarations }
    procedure DisplayMatter(sMatter: string);
  public
    { Public declarations }
  end;

var
  frmDebtorNotesEntry: TfrmDebtorNotesEntry;

implementation

uses MSearch, AxiomData, MiscFunc, CitFunc, InvoiceSearch, Desktop;

{$R *.dfm}

procedure TfrmDebtorNotesEntry.cmbMatterFindPropertiesInitPopup(
  Sender: TObject);
begin
   qryMRUList.Refresh;
end;

procedure TfrmDebtorNotesEntry.cmbMatterFindPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if DisplayValue <> '' then
   begin
      if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
      begin
         ErrorText := 'Matter has been archived.';
         Error := True;
      end
      else if MatterIsCurrent(DisplayValue) then
         DisplayMatter(DisplayValue)
      else
      begin
         MsgErr('Matter ' + DisplayValue + ' has been closed');
         Error := True;
      end;
   end else
   begin
      lblClient.Clear;
      lblMatterDesc.Clear;
   end;
end;

procedure TfrmDebtorNotesEntry.DisplayMatter(sMatter: string);
begin
{   if qryDebtorNotes.State = dsInsert then
      if MsgAsk('There are unsaved changes.  Save now?') = IDYES then
      begin
         qryDebtorNotes.ApplyUpdates;
         qryDebtorNotes.Insert;
      end
      else
         qryDebtorNotes.CancelUpdates;  }

{   if qryDebtorNotes.State <> dsInsert then
   begin
      if qryDebtorNotes.State = dsInactive then qryDebtorNotes.Open;
      qryDebtorNotes.Insert;
   end;
}

   cmbMatterFind.EditValue := sMatter;
   lblClient.Caption := MatterString(cmbMatterFind.EditText, 'TITLE');
   lblMatterDesc.Caption := MatterString(cmbMatterFind.EditText, 'SHORTDESCR');
   meDebtorNotes.SetFocus;

end;

procedure TfrmDebtorNotesEntry.FormCreate(Sender: TObject);
begin
   qryMRUList.Close();
   qryMRUList.ParamByName('P_TYPE').AsString := 'MATTER';
   qryMRUList.ParamByName('P_Author').AsString := dmAxiom.UserID;
   qryMRUList.Open();
end;

procedure TfrmDebtorNotesEntry.CRTemp_qryDebtorNotesAfterInsert(
  DataSet: TDataSet);
var
   ASequence: integer;
begin
   qryDebtorNotes.FieldByName('createdby').AsString := dmAxiom.UserID;
   qryDebtorNotes.FieldByName('created').AsDateTime := Now;
   qryDebtorNotes.FieldByName('nmatter').AsString  := MatterString(cmbMatterFind.Text,'NMATTER');

   qryMaxSequence.ParamByName('nmatter').AsString := MatterString(cmbMatterFind.Text,'NMATTER');
   qryMaxSequence.ExecSQL;
   ASequence := qryMaxSequence.FieldByName('newsequence').AsInteger;
   if ASequence = 0 then ASequence := 1;
   qryDebtorNotes.FieldByName('sequence').AsInteger  := ASequence;
end;

procedure TfrmDebtorNotesEntry.cxButtonEdit2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmInvoiceSearch) then
      frmInvoiceSearch := TfrmInvoiceSearch.Create(Self, False);
      
   if cmbMatterFind.Text <> '' then
   begin
      frmInvoiceSearch.tbMatterSearch.Text := cmbMatterFind.Text;
      frmInvoiceSearch.BillsForMatter := True;
   end;
   if frmInvoiceSearch.ShowModal = mrOk then
   begin
      if cmbMatterFind.Text = '' then
      begin
         cmbMatterFind.EditValue := frmInvoiceSearch.qryInvoices.FieldByName('FILEID').AsString;
         DisplayMatter(cmbMatterFind.Text);
      end;

      qryDebtorNotes.FieldByName('nmemo').AsInteger := frmInvoiceSearch.qryInvoices.FieldByName('NMEMO').AsInteger;
      teNMemo.Text := frmInvoiceSearch.qryInvoices.FieldByName('REFNO').AsString; 
   end;
end;

procedure TfrmDebtorNotesEntry.btnCloseClick(Sender: TObject);
begin
   Close();
end;

procedure TfrmDebtorNotesEntry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryNMemo.Close;
   if frmDesktop.pagMainControl.ActivePageIndex = 1 then
      Action := caFree
   else
      RemoveFromDesktop(Self);
end;

procedure TfrmDebtorNotesEntry.actSaveUpdate(Sender: TObject);
begin
   actSave.Enabled := (Trim(cmbMatterFind.Text) <> '') and (Trim(meDebtorNotes.Text) <> '')
end;

procedure TfrmDebtorNotesEntry.actSaveExecute(Sender: TObject);
begin
   with qryDebtorNotes do
   begin
      
      if dmAxiom.uniInsight.InTransaction then
         dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;
      try
         with qryTmp do
         begin
            SQL.Text := 'INSERT INTO DEBTORNOTES '+
                        '  (NMATTER, CREATED, CREATEDBY, NOTE, REVIEW_DATE, SEQUENCE, NMEMO, COLLECTION_CODE, NDEBTORTASK, REFNO, SYSTEM_DATE)'+
                        'VALUES  '+
                        ' (:NMATTER, sysdate, :CREATEDBY, :NOTE, :REVIEW_DATE, :SEQUENCE, :NMEMO, :COLLECTION_CODE, :NDEBTORTASK, :REFNO, :SYSTEM_DATE)';
            ParamByName('createdby').AsString := dmAxiom.UserID;

            ParamByName('nmatter').AsInteger  := StrToInt(MatterString(cmbMatterFind.Text, 'NMATTER'));

            if cmbBillRef.Visible then
            begin
               ParamByName('NMEMO').AsInteger := cmbBillRef.EditValue;
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


            ParamByName('note').AsString := meDebtorNotes.Text;
            ExecSQL;
         end;
{         cmbMatterFind.EditValue := null;
         lblClient.Caption := '';
         lblMatterDesc.Caption := '';
         meDebtorNotes.Clear;
         meDebtorNotes.Text := '';
         teNMemo.Text := '';  }
      except
         dmAxiom.uniInsight.Rollback;
         raise;
      end;
      dmAxiom.uniInsight.Commit;
   end;
   if not cbCloseForm.Checked then
      Close()
   else
   begin
      cmbMatterFind.EditValue := null;
      lblClient.Caption := '';
      lblMatterDesc.Caption := '';
      meDebtorNotes.Clear;
      meDebtorNotes.Text := '';
      teNMemo.Text := '';
      cmbBillRef.EditValue := null;
      cmbMatterFind.SetFocus;
   end;
end;

procedure TfrmDebtorNotesEntry.cmbMatterFindPropertiesCloseUp(
  Sender: TObject);
begin
   if (cmbMatterFind.Text <> '') then
   begin
      if cmbMatterFind.Text = 'SEARCH...' then
      begin
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);

         if frmMatterSearch.ShowModal = mrOK then
         begin
            if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
            begin
               MsgErr('Matter has been archived.');
               cmbMatterFind.Text := '';
            end
            else if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
            begin
               cmbMatterFind.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
               DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
            end
            else
               MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
         end;
      end
      else
         if (IsMatterArchived(cmbMatterFind.Text)) then
         begin
            MsgErr('Matter has been archived.');
            cmbMatterFind.Text := '';
         end
         else
            DisplayMatter(cmbMatterFind.Text);
   end;
end;

procedure TfrmDebtorNotesEntry.cmbBillRefPropertiesInitPopup(
  Sender: TObject);
begin
   if cmbMatterFind.Text <> '' then
   begin
      qryNMemo.Close;
      qryNMemo.ParamByName('nmatter').AsInteger := StrToInt(MatterString(string(cmbMatterFind.EditValue),'NMATTER'));
      qryNMemo.Open;
   end;
end;

end.
