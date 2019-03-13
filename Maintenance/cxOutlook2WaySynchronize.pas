unit cxOutlook2WaySynchronize;

{$I cxVer.inc}

interface

uses
  Variants,Classes, cxSchedulerStorage, ComObj, cxClasses, cxDateUtils,
  cxSchedulerOutlookExchange, ActiveX;

type
   TcxOutlook2WaySynchronize = class(TcxOutlookSynchronize)
   private
      FStorageCompareFieldName: String;
      FOutlookCompareFieldName: String;
   public
      property StorageCompareFieldName: String read FStorageCompareFieldName write FStorageCompareFieldName;
      property OutlookCompareFieldName: String read FOutlookCompareFieldName write FOutlookCompareFieldName;
      procedure TwoWaySynchronize(ADeleteUnsynchronized: Boolean = False);
   end;

   procedure cxSchedulerTwoWaySynchronize(
                     AStorage:                 TcxCustomSchedulerStorage;
                     AppointmentItemIDField:   TcxCustomSchedulerStorageField;
                     AStorageCompareFieldName: String;
                     AOutlookCompareFieldName: String;
                     ADeleteUnsynchronized:    Boolean = False;
                     AApptAcceptFunc:          TcxAcceptAppointmentItemImportFunc = nil;
                     AEventAcceptFunc:         TcxAcceptEventExportFunc = nil;
                     AApptConvertProc:         TcxAppointmentItemToEventProc = nil;
                     AEventConvertProc:        TcxEventToAppointmentItemProc = nil
                     );

implementation

uses
  Windows, SysUtils, cxSchedulerUtils, cxVariants, Forms;

procedure cxSchedulerTwoWaySynchronize(
                     AStorage:                 TcxCustomSchedulerStorage;
                     AppointmentItemIDField:   TcxCustomSchedulerStorageField;
                     AStorageCompareFieldName: String;
                     AOutlookCompareFieldName: String;
                     ADeleteUnsynchronized:    Boolean = False;
                     AApptAcceptFunc:          TcxAcceptAppointmentItemImportFunc = nil;
                     AEventAcceptFunc:         TcxAcceptEventExportFunc = nil;
                     AApptConvertProc:         TcxAppointmentItemToEventProc = nil;
                     AEventConvertProc:        TcxEventToAppointmentItemProc = nil
                     );
begin
   with TcxOutlook2WaySynchronize.Create(AStorage) do
   try
      EntryIDField                    := AppointmentItemIDField;
      OnAcceptAppointmentItem         := AApptAcceptFunc;
      OnConvertAppointmentItemToEvent := AApptConvertProc;
      OnAcceptEvent                   := AEventAcceptFunc;
      OnConvertEventToAppointmentItem := AEventConvertProc;
      StorageCompareFieldName         := AStorageCompareFieldName;
      OutlookCompareFieldName         := AOutlookCompareFieldName;
      TwoWaySynchronize(ADeleteUnsynchronized);
   finally
      Free;
   end;
end;

const
   EmptyDispParams: TDispParams = (rgvarg: nil; rgdispidNamedArgs: nil; cArgs: 0; cNamedArgs: 0);

var
   iLCID: Integer;

function GetDispId(const Obj: IDispatch; const Member: WideString; DispIdPtr: PInteger): Boolean;
begin
   Result := Succeeded(Obj.GetIdsOfNames(GUID_NULL, @Member, 1, iLCID, DispIdPtr));
end;

function InvokePropertyGet(const Obj: IDispatch; Name: WideString):Variant;
var
   intDispId, ArgErr: Integer;
   DispParams: TDispParams;
begin
   if GetDispId(Obj, Name, @intDispId) then
   begin
      DispParams := EmptyDispParams;
      OleCheck(Obj.Invoke(intDispId,
                          GUID_NULL,
                          iLCID,
                          DISPATCH_PROPERTYGET,
                          DispParams,
                          @Result,
                          nil,
                          @ArgErr));
    end;
end;

procedure TcxOutlook2WaySynchronize.TwoWaySynchronize(ADeleteUnsynchronized: Boolean = False);
var
   i, AIndex: Integer;
   AOutlookAppointmentItem: OleVariant;
   AEvent: TcxSchedulerEvent;
   AStorageEntryIDs: TcxEventEntryIDList;
   AOutlookEntryIDs: TcxAppointmentEntryIDList;
   ATempStorageEntryIDs: TcxEventEntryIDList;
   ATempOutlookEntryIDs: TcxAppointmentEntryIDList;
   AEventCompareFieldValue: Variant;
   AApptCompareFieldValue: Variant;
begin
   if not IsValid then Exit;
   AStorageEntryIDs := TcxEventEntryIDList.Create;
   AOutlookEntryIDs := TcxAppointmentEntryIDList.Create;
   iLCID := LOCALE_USER_DEFAULT;
   try
      AStorageEntryIDs.Populate(Storage, EntryIDField);
      AOutlookEntryIDs.Populate(CalendarFolder);
      for i := 1 to CalendarFolder.Items.Count do
      begin
         AOutlookAppointmentItem := CalendarFolder.Items(I);
         if not VarIsNull(AOutlookAppointmentItem) then
         begin
            if AStorageEntryIDs.FindEntryID(AOutlookAppointmentItem.EntryID, AIndex) then
            begin
               AEvent := AStorageEntryIDs.ExtractEvent(AIndex);
               AEventCompareFieldValue := AEvent.GetCustomFieldValueByName(StorageCompareFieldName);
               AApptCompareFieldValue  := InvokePropertyGet(AOutlookAppointmentItem, OutlookCompareFieldName);
               if AApptCompareFieldValue > AEventCompareFieldValue then
                  UpdateExistingEvent(AEvent, AOutlookAppointmentItem, AStorageEntryIDs)
               else if AEventCompareFieldValue > AApptCompareFieldValue then
                  UpdateExistingAppointmentItem(AOutlookAppointmentItem, AEvent);
            end
         else
            ImportAppointmentItemFromOutlook(AOutlookAppointmentItem);
         end;
         Application.ProcessMessages;
      end;

      // Now do the Storage items that haven't yet been updated.
      while AStorageEntryIDs.Count > 0 do
      begin
         // Here getting the item by index from the remaining storageEntryIDs .vs
         // from the Storage itself, otherwise, you may not get the correct Event.
         AEvent := AStorageEntryIDs.ExtractEvent(0);
         if Assigned(AEvent) then
         begin
            Storage.BeginUpdate;
            try
               if CanAcceptEvent(AEvent) then
               begin
                  AEventCompareFieldValue := AEvent.GetCustomFieldValueByName(StorageCompareFieldName);
                  if AOutlookEntryIDs.FindEntryID(GetEntryIDFromEvent(AEvent), AIndex) then
                  begin
                     AOutlookAppointmentItem := AOutlookEntryIDs.ExtractAppointmentItem(AIndex);
                     AApptCompareFieldValue  := InvokePropertyGet(AOutlookAppointmentItem, OutlookCompareFieldName);
                    if AEventCompareFieldValue > AApptCompareFieldValue then
                        UpdateExistingAppointmentItem(AOutlookAppointmentItem, AEvent)
                    else if AApptCompareFieldValue > AEventCompareFieldValue then
                        UpdateExistingEvent(AEvent, AOutlookAppointmentItem, AStorageEntryIDs);
                  end
               else
                  ExportEventToOutlook(AEvent)
               end;
               Application.ProcessMessages;
            finally
               Storage.EndUpdate;
            end;
         end;
      end;

      // I'm not sure if this will work here after the items have already been processed
      if ADeleteUnsynchronized then
      begin
         DeleteUnsynchronizedEvents(AStorageEntryIDs);
         DeleteUnsynchronizedAppointments(AOutlookEntryIDs);
      end;
   finally
      AOutlookEntryIDs.Free;
      AStorageEntryIDs.Free;
   end;
end;

end.

