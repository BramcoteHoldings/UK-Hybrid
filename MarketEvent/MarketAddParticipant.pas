unit MarketAddParticipant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, OracleUniProvider, Uni, DBAccess, MemDS,
  cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxMaskEdit,
  cxButtonEdit, cxContainer, cxTextEdit, cxMemo, cxLookAndFeelPainters,
  cxButtons, Menus, cxLookAndFeels, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmMarketAddParticipant = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label6: TLabel;
    lblParticipant: TLabel;
    Bevel2: TBevel;
    qryUpdateEventParticipant: TUniQuery;
    Label7: TLabel;
    Label8: TLabel;
    grdActivity: TcxGrid;
    grdActivityLevel1: TcxGridLevel;
    grdActivityDBTableView1: TcxGridDBTableView;
    grdActivityACCEPTED: TcxGridDBColumn;
    grdActivityATTENDED: TcxGridDBColumn;
    grdActivityDECLINED: TcxGridDBColumn;
    grdActivityPRINTED: TcxGridDBColumn;
    mmoNotes: TcxMemo;
    tbAdditionalAdd: TcxButtonEdit;
    cmbEvent: TcxLookupComboBox;
    btnSave: TcxButton;
    cxButton1: TcxButton;
    Label3: TLabel;
    Label5: TLabel;
    tbEventDate: TcxDBTextEdit;
    tbEventAddress: TcxDBMemo;
    Label4: TLabel;
    tbEventTime: TcxDBTextEdit;
    qryEvent: TUniQuery;
    dsEvent: TUniDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure tbAdditionalAddButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure tbAdditionalAddChange(Sender: TObject);
    procedure grdActivityAcceptedChange(Sender: TObject);
    procedure cmbEventPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    FNName: integer;
    FAddNName: integer;
    FEventPartID: integer;
    FInsert: boolean;
    procedure PopulateDetails;
  published
    constructor Create(AOwner: TComponent; NName,EventPartID: integer; bInsert: boolean); reintroduce; overload;
  public
    { Public declarations }
  end;

var
  frmMarketAddParticipant: TfrmMarketAddParticipant;

implementation

uses
   miscfunc,MarketEventDataModule, NSearch, citfunc, axiomdata;

{$R *.dfm}

constructor TfrmMarketAddParticipant.Create(AOwner: TComponent; NName,EventPartID: integer; bInsert: boolean);
begin
   inherited Create(AOwner);
   if(not Assigned(dmMarketEventDataModule)) then
      dmMarketEventDataModule := TdmMarketEventDataModule.Create(Application);
   dmMarketEventDataModule.tbEvent.Open();
   FNName := NName;
   FInsert := bInsert;
   FEventPartID := EventPartID;
   lblParticipant.Caption := TableString('PHONEBOOK', 'NNAME', FNName, 'SEARCH');
   if FInsert then
   begin
      dmMarketEventDataModule.qryEventDetails.Close();
      dmMarketEventDataModule.qryEventDetails.ParamByName('EVENT_PART_ID').AsInteger := FEventPartID;
      dmMarketEventDataModule.qryEventDetails.Open();
      dmMarketEventDataModule.qryEventDetails.Insert;
   end
   else
      PopulateDetails();
end;

procedure TfrmMarketAddParticipant.PopulateDetails;
begin
   with dmMarketEventDataModule.qryEventDetails do
   begin
      Close();
      ParamByName('EVENT_PART_ID').AsInteger := FEventPartID;
      Open();
      cmbEvent.EditValue := FieldByName('EVENT_ID').AsInteger;
      qryEvent.Close;
      qryEvent.ParamByName('EVENT_ID').AsInteger := FieldByName('EVENT_ID').AsInteger;
      qryEvent.Open;
      mmoNotes.Text := FieldByName('NOTES').AsString;
      tbAdditionalAdd.Text := FieldByName('ALT_NAMESEARCH').AsString;
      FAddNName := FieldByName('ALT_NAME').AsInteger;
   end;
end;

procedure TfrmMarketAddParticipant.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmMarketAddParticipant.FormShow(Sender: TObject);
begin
//   dmMarketEventDataModule.tbEvent.Open();
end;

procedure TfrmMarketAddParticipant.btnSaveClick(Sender: TObject);
begin
   if cmbEvent.Text <> '' then
   begin
      with qryUpdateEventParticipant do
      begin
         if FInsert then
         begin
            SQL.Clear;
            SQL.Text := 'insert into event_participant (event_id,nname,notes,alt_name,'+
                        'attended,accepted,declined,printed) '+
                        'values (:event_id,:nname,:notes,:alt_name,:attended,'+
                        ':accepted,:declined,:printed ) ';
            ParamByName('EVENT_ID').AsInteger := cmbEvent.EditValue; //  dmMarketEventDataModule.tbEvent.FieldByName('EVENT_ID').AsInteger;
            ParamByName('NNAME').AsInteger := FNName;
            ParamByName('NOTES').AsString := mmoNotes.Text;
            ParamByName('ALT_NAME').AsInteger := FAddNName;

            // Perform check on checkbox values
            if dmMarketEventDataModule.qryEventDetails.FieldByName('accepted').AsString = '' then
              dmMarketEventDataModule.qryEventDetails.FieldByName('accepted').AsString := 'N';
            if dmMarketEventDataModule.qryEventDetails.FieldByName('ATTENDED').AsString = '' then
              dmMarketEventDataModule.qryEventDetails.FieldByName('ATTENDED').AsString := 'N';
            if dmMarketEventDataModule.qryEventDetails.FieldByName('DECLINED').AsString = '' then
              dmMarketEventDataModule.qryEventDetails.FieldByName('DECLINED').AsString := 'N';
            if dmMarketEventDataModule.qryEventDetails.FieldByName('PRINTED').AsString = '' then
              dmMarketEventDataModule.qryEventDetails.FieldByName('PRINTED').AsString := 'N';

            ParamByName('ACCEPTED').AsString := dmMarketEventDataModule.qryEventDetails.FieldByName('accepted').AsString;
            ParamByName('ATTENDED').AsString := dmMarketEventDataModule.qryEventDetails.FieldByName('ATTENDED').AsString;
            ParamByName('DECLINED').AsString := dmMarketEventDataModule.qryEventDetails.FieldByName('DECLINED').AsString;
            ParamByName('PRINTED').AsString := dmMarketEventDataModule.qryEventDetails.FieldByName('PRINTED').AsString;

            execute;
         end
         else
         begin
            SQL.Clear;
            SQL.Text := 'update event_participant set '+
                        'event_id = :event_id, '+
                        'notes = :notes,alt_name = :alt_name, '+
                        'attended = :attended, accepted = :accepted,'+
                        'declined = :declined, printed = :printed'+
                        ' where event_part_id = :event_part_id';
            ParamByName('EVENT_PART_ID').AsInteger := FEventPartID;
   //         ParamByName('NNAME').AsInteger := FNName;
            ParamByName('EVENT_ID').AsInteger := cmbEvent.EditValue;
            ParamByName('NOTES').AsString := mmoNotes.Text;
            ParamByName('ALT_NAME').AsInteger := FAddNName;
            ParamByName('ACCEPTED').AsString := dmMarketEventDataModule.qryEventDetails.FieldByName('accepted').AsString;
            ParamByName('ATTENDED').AsString := dmMarketEventDataModule.qryEventDetails.FieldByName('ATTENDED').AsString;;
            ParamByName('DECLINED').AsString := dmMarketEventDataModule.qryEventDetails.FieldByName('DECLINED').AsString;;
            ParamByName('PRINTED').AsString := dmMarketEventDataModule.qryEventDetails.FieldByName('PRINTED').AsString;;

            execute;
         end;
      end;
      close;
   end
   else
   begin
      Application.MessageBox('An event is needed.','Insight',MB_OK+MB_ICONSTOP);
      btnSave.ModalResult := mrCancel;
   end;
end;

procedure TfrmMarketAddParticipant.tbAdditionalAddButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
   if not FormExists(frmPhoneBookSearch) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
   if frmPhoneBookSearch.ShowModal = mrOk then
   begin
     tbAdditionalAdd.Text := frmPhoneBookSearch.qPhoneBook.FieldByName('SEARCH').AsString;
     FAddNName := frmPhoneBookSearch.qPhoneBook.FieldByName('NNAME').AsInteger;
     tbAdditionalAdd.SetFocus;
   end;
end;

procedure TfrmMarketAddParticipant.tbAdditionalAddChange(Sender: TObject);
begin
   if tbAdditionalAdd.Text = '' then
      FAddNName := 0;
end;

procedure TfrmMarketAddParticipant.grdActivityAcceptedChange(
  Sender: TObject);
begin
    showmessage('click');
end;

procedure TfrmMarketAddParticipant.cmbEventPropertiesCloseUp(
  Sender: TObject);
begin
   try
      qryEvent.Close;
      qryEvent.ParamByName('EVENT_ID').AsInteger := cmbEvent.EditValue;
      qryEvent.Open;
   except
     //
   end;
end;

end.
