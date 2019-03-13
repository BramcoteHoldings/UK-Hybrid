unit WorkFlowCopyTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  StdCtrls,  Menus, Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCopyTemplate = class(TForm)
    cmbWorkflowType: TcxLookupComboBox;
    qryMaxCode: TUniQuery;
    qryCopyTemplateToTemp: TUniQuery;
    qryMinCode: TUniQuery;
    qryUpdateValuesInTemp: TUniQuery;
    qryCopyFromTemp: TUniQuery;
    procResetWkflowSEQ: TUniStoredProc;
    tbWorkflowType: TUniTable;
    tbWorkflowTypeCODE: TStringField;
    tbWorkflowTypeDESCR: TStringField;
    dsWorkflowType: TDataSource;
    qryWorkflowType: TUniQuery;
    Label1: TLabel;
    qryUpdateRelatedStart: TUniQuery;
    qryUpdateRelatedComplete: TUniQuery;
    qryUpdateRelatedSkip: TUniQuery;
    qryTmp: TUniQuery;
    qryUpdateRelatedLink: TUniQuery;
    qryTmp1: TUniQuery;
    qryTaskDatafields: TUniQuery;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    chkCopyDocuments: TCheckBox;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FWorkflowType: string;
  public
    { Public declarations }
    property WorkFlowType: string read FWorkflowType write FWorkflowType;
  end;

var
  frmCopyTemplate: TfrmCopyTemplate;

implementation

uses
    AxiomData, MiscFunc;

{$R *.dfm}



procedure TfrmCopyTemplate.cxButton1Click(Sender: TObject);
var
   MaxCode, MinCode: integer;
   MaxLineId: integer;
begin
   if MsgAsk('This will create a new Workflow Template based on '+WorkFlowtype+'. Continue?') = mrYes
   then
   begin
       try
          dmAxiom.uniInsight.StartTransaction;
          // copy existing template to a temp table
          with qryCopyTemplateToTemp do
          begin
             ParamByName('new_WORKFLOWTYPECODE').AsString := cmbWorkFlowType.EditValue;
             ParamByName('WORKFLOWTYPECODE').AsString := WorkFlowtype;
             ExecSQL;
          end;
          // work out the max template line id
          qryMaxCode.Open;
          MaxCode := qryMaxCode.Fields.Fields[0].AsInteger;
          qryMaxCode.Close;
          // work out the min templatelineid
          qryMinCode.Open;
          MinCode := qryMinCode.Fields.Fields[0].AsInteger;
          qryMinCode.Close;
          // renumber the new temp template
          with qryUpdateValuesInTemp do
          begin
             ParamByName('LineID_Diff').AsInteger := MaxCode - MinCode;
             ExecSQL;
          end;

          with qryUpdateRelatedStart do
          begin
             qryTmp.SQL.Clear;
             qryTmp.SQL.Text := 'select distinct STARTWHENRELATED from WORKFLOWTASKTEMPLATES_TEMP WHERE STARTWHENRELATED is not null order by 1';
             qryTmp.Open;
             while not qryTmp.Eof do
             begin
                qryTmp1.Close;
                qryTmp1.SQL.Clear;
                qryTmp1.SQL.Text := 'select lineid from WORKFLOWTASKTEMPLATES_TEMP WHERE ORIG_LINEID = ' + qryTmp.FieldByName('STARTWHENRELATED').AsString;
                qryTmp1.Open;
                ParamByName('olineid').AsInteger := qryTmp.FieldByName('STARTWHENRELATED').AsInteger;
                ParamByName('lineid').AsInteger := qryTmp1.FieldByName('LINEID').AsInteger;
                ExecSQL;
                qryTmp.Next;
             end;
             qryTmp.Close;
          end;

          with qryUpdateRelatedComplete do
          begin
             qryTmp.SQL.Clear;
             qryTmp.SQL.Text := 'select distinct COMPLETEWHENRELATED from WORKFLOWTASKTEMPLATES_TEMP WHERE COMPLETEWHENRELATED is not null';
             qryTmp.Open;
             while not qryTmp.Eof do
             begin
                 qryTmp1.Close;
                qryTmp1.SQL.Clear;
                qryTmp1.SQL.Text := 'select lineid from WORKFLOWTASKTEMPLATES_TEMP WHERE ORIG_LINEID = ' + qryTmp.FieldByName('COMPLETEWHENRELATED').AsString;
                qryTmp1.Open;
                ParamByName('olineid').AsInteger := qryTmp.FieldByName('COMPLETEWHENRELATED').AsInteger;
                ParamByName('lineid').AsInteger := qryTmp1.FieldByName('lineid').AsInteger;
                ExecSQL;
                qryTmp.Next;
             end;
             qryTmp.Close;
          end;

          with qryUpdateRelatedSkip do
          begin
             qryTmp.SQL.Clear;
             qryTmp.SQL.Text := 'select distinct SKIPWHENRELATED from WORKFLOWTASKTEMPLATES_TEMP WHERE SKIPWHENRELATED is not null';
             qryTmp.Open;
             while not qryTmp.Eof do
             begin
                qryTmp1.Close;
                qryTmp1.SQL.Clear;
                qryTmp1.SQL.Text := 'select lineid from WORKFLOWTASKTEMPLATES_TEMP WHERE ORIG_LINEID = ' + qryTmp.FieldByName('SKIPWHENRELATED').AsString;
                qryTmp1.Open;
                ParamByName('olineid').AsInteger := qryTmp.FieldByName('SKIPWHENRELATED').AsInteger;
                ParamByName('lineid').AsInteger := qryTmp1.FieldByName('LINEID').AsInteger;
                ExecSQL;
                qryTmp.Next;
             end;
             qryTmp.Close;
          end;

          with qryUpdateRelatedLink do
          begin
             qryTmp.SQL.Clear;
             qryTmp.SQL.Text := 'select distinct LINKDATETORELATED from WORKFLOWTASKTEMPLATES_TEMP WHERE LINKDATETORELATED is not null';
             qryTmp.Open;
             while not qryTmp.Eof do
             begin
                qryTmp1.Close;
                qryTmp1.SQL.Clear;
                qryTmp1.SQL.Text := 'select lineid from WORKFLOWTASKTEMPLATES_TEMP WHERE ORIG_LINEID = ' + qryTmp.FieldByName('LINKDATETORELATED').AsString;
                qryTmp1.Open;
                ParamByName('olineid').AsInteger := qryTmp.FieldByName('LINKDATETORELATED').AsInteger;
                ParamByName('lineid').AsInteger := qryTmp1.FieldByName('LINEID').AsInteger;
                ExecSQL;
                qryTmp.Next;
             end;
             qryTmp.Close;
          end;
          //copy the new template from temp to workflowtasks
          qryCopyFromTemp.ExecSQL;

          with qryTaskDatafields do
          begin
              qryTmp.SQL.Clear;
             qryTmp.SQL.Text := 'select LINEID, orig_LINEID from WORKFLOWTASKTEMPLATES_TEMP wt WHERE exists (select 1 from WORKFLOW_DATAFORMFIELD wd where wd.WKFLOW_LINEID = wt.orig_lineid)';
             qryTmp.Open;
             while not qryTmp.Eof do
             begin
                qryTmp1.Close;
                qryTmp1.SQL.Clear;
                qryTmp1.SQL.Text := 'select * from WORKFLOW_DATAFORMFIELD WHERE WKFLOW_LINEID = ' + qryTmp.FieldByName('orig_LINEID').AsString;
                qryTmp1.Open;
                ParamByName('DATAFORM').AsString := qryTmp1.FieldByName('DATAFORM').AsString;
                ParamByName('FIELDNAME').AsString := qryTmp1.FieldByName('FIELDNAME').AsString;
                ParamByName('SEQ').AsString := qryTmp1.FieldByName('SEQ').AsString;
                ParamByName('WORKFLOWTYPECODE').AsString := qryTmp1.FieldByName('WORKFLOWTYPECODE').AsString;
                ParamByName('WKFLOW_LINEID').AsInteger := qryTmp.FieldByName('LINEID').AsInteger;
                ParamByName('CAPTION').AsString := qryTmp1.FieldByName('CAPTION').AsString;
                ExecSQL;
                qryTmp.Next;
             end;
             qryTmp.Close;
          end;

          //copy any documents from old workflow to new one
          if chkCopyDocuments.checked then
          begin
             with qryTmp do
             begin
                qryTmp1.SQL.Clear;
                qryTmp1.SQL.Text := 'insert into workflowtaskdoclink (docid, tasklineid) '+
                                    'values (:docid, :tasklineid)';
                Close;
                SQL.Clear;
                SQL.Text := 'select docid,orig_lineid, lineid  from workflowtaskdoclink, workflowtasktemplates_temp where orig_lineid = tasklineid';
                Open;
                while (qryTmp.Eof = False) do
                begin
                   qryTmp1.Close;
                   qryTmp1.ParamByName('DOCID').AsInteger := qryTmp.FieldByName('DOCID').ASInteger;
                   qryTmp1.ParamByName('TASKLINEID').AsInteger := qryTmp.FieldByName('LINEID').ASInteger;
                   qryTmp1.ExecSQL;
                   qryTmp.Next;
                end;
             end;
          end;

          with dmAxiom.qryTmp do
          begin
             Close;
             SQL.Clear;
             SQL.Text := 'Delete from WORKFLOWTASKTEMPLATES_TEMP';
             ExecSQL;
          end;

          with dmAxiom.qryTmp do
          begin
             Close;
             SQL.Clear;
             SQL.Text := 'select max(lineid) from WORKFLOWTASKTEMPLATES';
             Open;
             MaxLineId := Fields.Fields[0].AsInteger;
          end;

          with procResetWkflowSEQ do
          begin
             ParamByName('p_newSeq').AsInteger := MaxLineId;
             Execute;
          end;
          dmAxiom.uniInsight.Commit;
          MsgInfo('New WorkFlow Template created successfully.');
          Self.Close;
       except
           dmAxiom.uniInsight.Rollback;
           MsgErr('There was an error in creating the New WorkFlow Template.');
       end;
   end;
end;

procedure TfrmCopyTemplate.FormCreate(Sender: TObject);
begin
//   if not assigned(dmWorkFlowDataModule) then
//      FWorkFlowDataModule := TdmWorkFlowDataModule.Create(Self);
   qryWorkflowType.Open;
end;

procedure TfrmCopyTemplate.cxButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmCopyTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryWorkflowType.Close;
end;

end.
