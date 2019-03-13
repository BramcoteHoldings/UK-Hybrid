unit WorkflowAddAdminDocTemplateDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, DBCtrls, cxGraphics, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Mask, Dialogs,
  JvExMask, JvToolEdit, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters, cxClasses,
  dxLayoutControl;

type
  TfmWorkFlowAddAdminDocTemplateDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    dbeDocName: TDBEdit;
    beDataForm: TcxButtonEdit;
    dbcGrouping: TcxDBLookupComboBox;
    feTemplatePath: TJvFilenameEdit;
    feDataFilePath: TJvFilenameEdit;
    feDocumentName: TJvFilenameEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    liTemplatePath: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    cmbTemplateType: TDBComboBox;
    dxLayoutItem3: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure bnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWorkFlowAddAdminDocTemplateDialog: TfmWorkFlowAddAdminDocTemplateDialog;

implementation

uses
   WorkFlowDataModule, Variants, WorkFlowDataModuleDocs, GenericSearch;

{$R *.dfm}

procedure TfmWorkFlowAddAdminDocTemplateDialog.FormCreate(Sender: TObject);
begin
  feDocumentName.Text := '';
  feTemplatePath.Text := '';
  feDataFilePath.Text := '';
  dmWorkFlowDataModuleDocs.tbDocGroups.Open();
end;

procedure TfmWorkFlowAddAdminDocTemplateDialog.bnOkClick(Sender: TObject);
begin
  ActiveControl := bnOk; // ensures data back to table.
  ModalResult := mrNone;

  if(VarIsNull(dbcGrouping.EditValue)) then
  begin
    ActiveControl := dbcGrouping;
    MessageDlg('Please select a group',mtError,[mbOk],0);
    Exit;
  end;

  if(dbeDocName.Text = '') then
  begin
    ActiveControl := dbeDocName;
    MessageDlg('Please enter the document name',mtError,[mbOk],0);
    Exit;
  end;

  if(feTemplatePath.Enabled and (feTemplatePath.FileName = '')) then
  begin
    ActiveControl := feTemplatePath;
    MessageDlg('Please enter the template filename',mtError,[mbOk],0);
    Exit;
  end;

  if(feDataFilePath.Enabled and (feDataFilePath.FileName = '')) then
  begin
    ActiveControl := feDataFilePath;
    MessageDlg('Please enter the data filename',mtError,[mbOk],0);
    Exit;
  end;

  if(feDocumentName.Enabled and (feDocumentName.FileName = '')) then
  begin
    ActiveControl := feDocumentName;
    MessageDlg('Please enter the document filename',mtError,[mbOk],0);
    Exit;
  end;

  if(feDocumentName.Enabled) then
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTPATH').AsString := feDocumentName.Text;   //feDocumentName.FileName;
  if(feTemplatePath.Enabled) then
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString := feTemplatePath.Text;   //feTemplatePath.FileName;
  if(feDataFilePath.Enabled) then
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFILEPATH').AsString := feDataFilePath.Text;   //feDataFilePath.FileName;
  if(beDataform.Enabled) then
    dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFORM').AsString := beDataform.Text;

  ModalResult := mrOk;
end;

procedure TfmWorkFlowAddAdminDocTemplateDialog.FormShow(Sender: TObject);
begin
  if(feDocumentName.Enabled) then
    feDocumentName.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DOCUMENTPATH').AsString;
  if(feTemplatePath.Enabled) then
    feTemplatePath.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('TEMPLATEPATH').AsString;
  if(feDataFilePath.Enabled) then
    feDataFilePath.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFILEPATH').AsString;
  if(beDataform.Enabled) then
    beDataform.Text := dmWorkFlowDataModuleDocs.tbDocTemplatesEdit.FieldByName('DATAFORM').AsString;

//  lTemplatePath.Enabled     := feTemplatePath.Enabled;
//  lDataFilePath.Enabled     := feDataFilePath.Enabled;
//  lDocumentFilePath.Enabled := feDocumentName.Enabled;

  if(VarIsNull(dbcGrouping.EditValue)) then
    dbcGrouping.EditValue := dmWorkFlowDataModuleDocs.tbDocGroups.FieldByName('GROUPID').AsInteger;
end;

procedure TfmWorkFlowAddAdminDocTemplateDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmWorkFlowDataModuleDocs.tbDocGroups.Close();
end;

procedure TfmWorkFlowAddAdminDocTemplateDialog.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   with TfrmGenericSearch.Create(Self) do
   begin
      SQL := 'SELECT CODE, DESCR, ''N'' AS DEFAULTITEM FROM DATAFORM WHERE CODE <> ''SINGLEFIELDFORM'' ORDER BY CODE';
      if ShowModal = mrOK then
      begin
         beDataForm.Text := qrySource.FieldByName('CODE').AsString;
      end;
   end;
end;

end.
