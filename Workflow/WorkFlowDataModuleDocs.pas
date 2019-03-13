unit WorkFlowDataModuleDocs;

interface

uses
  SysUtils, Classes, DB, VirtualTable, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TdmWorkFlowDataModuleDocs = class(TDataModule)
    tbDocGroups: TUniTable;
    dsDocGroups: TDataSource;
    qDocTemplAdminDocs: TUniQuery;
    dsDocTemplAdminDocs: TDataSource;
    tbDocTemplates: TUniTable;
    dsDocTemplates: TDataSource;
    qPhoneGroupings: TUniQuery;
    dsPhoneGroupings: TDataSource;
    qAdminUsedGroups: TUniQuery;
    qCountOtherDocs: TUniQuery;
    qCountAdminDocs: TUniQuery;
    qCountGroupedOtherDocs: TUniQuery;
    qCountGroupedPartyDocs: TUniQuery;
    qCountPartyDocs: TUniQuery;
    qDocTemplMatterParty: TUniQuery;
    qDocTemplMatterOtherDocs: TUniQuery;
    qDocTemplMatterPartyDocs: TUniQuery;
    qDocTemplMatterGroupedParty: TUniQuery;
    qDocTemplMatterGroupedPartyDocs: TUniQuery;
    qDocTemplMatterGroupedOtherDocs: TUniQuery;
    qDocTemplOtherParties: TUniQuery;
    qDocTemplOtherPartiesInsert: TUniQuery;
    qDocTemplOtherPartiesUpdate: TUniQuery;
    qDocTemplOtherPartiesDelete: TUniQuery;
    vtDocTemplateReport: TVirtualTable;
    vtDocTemplateReportDocID: TIntegerField;
    vtDocTemplateReportDocumentName: TStringField;
    vtDocTemplateReportAddressee: TStringField;
    vtDocTemplateReportRefersTo: TStringField;
    qDocTemplWKAdminDocs: TUniQuery;
    dsDocTemplWKAdminDocs: TDataSource;
    tbDocTemplatesEdit: TUniTable;
    dsDocTemplatesEdit: TDataSource;
    qryTmp: TUniQuery;
    procedure tbDocTemplatesEditAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmWorkFlowDataModuleDocs: TdmWorkFlowDataModuleDocs;

implementation

uses AxiomData, WorkFlowDataModule, miscfunc;

{$R *.dfm}

procedure TdmWorkFlowDataModuleDocs.tbDocTemplatesEditAfterInsert(
  DataSet: TDataSet);
begin
     //DataSet.FieldByName('docid').AsInteger := GetSequenceNumber('seq_workflowdoctemplates');
   //DataSet.FieldByName('docid').AsInteger := GetSeqnum('seq_workflowtasktemplates');
end;

end.
