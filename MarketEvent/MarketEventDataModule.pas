unit MarketEventDataModule;

interface

uses
  SysUtils, Classes, DB, OracleUniProvider, DBAccess, MemDS, Uni;

type
  TdmMarketEventDataModule = class(TDataModule)
    tbEventTypes: TUniTable;
    dsEventTypes: TUniDataSource;
    qryEvent: TUniQuery;
    dsEvent: TUniDataSource;
    qryEventParticipants: TUniQuery;
    dsEventParticipants: TUniDataSource;
    tbEvent: TUniTable;
    dstbEvent: TUniDataSource;
    dsParticipantEvents: TUniDataSource;
    qryParticipantEvents: TUniQuery;
    qryEventDetails: TUniQuery;
    dsEventDetails: TUniDataSource;
    qryEventDtls: TUniQuery;
    dsEventDtls: TUniDataSource;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    qryEventParticipantsList: TUniQuery;
    qryPartyDetails: TUniQuery;
    qryInsertParticipants: TUniQuery;
    procedure qryEventParticipantsBeforePost(DataSet: TDataSet);
    procedure tbEventTypesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
     FEvent_Id: integer;
  public
    { Public declarations }
    property Event_Id: integer read FEvent_Id write FEvent_Id;
  end;

var
  dmMarketEventDataModule: TdmMarketEventDataModule;

implementation

uses AxiomData, nsearch, miscfunc, Controls;

{$R *.dfm}

procedure TdmMarketEventDataModule.qryEventParticipantsBeforePost(
  DataSet: TDataSet);
begin
   DataSet.FieldByName('event_id').AsInteger := FEvent_Id;
end;

procedure TdmMarketEventDataModule.tbEventTypesNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('EVENT_TYPE_ID').AsInteger := StrToInt(dmAxiom.GetSeqNumber('SEQ_EVENT_TYPE_ID'));
end;

end.
