unit CopyEventParticipants;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.Buttons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Data.DB, MemDS, DBAccess, Uni;

type
  TfrmCopyEventParticipants = class(TForm)
    Label1: TLabel;
    cmbEvents: TcxLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryCopyList: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FEventID: integer;
  public
    { Public declarations }
    property EventID: integer read FEventID write FEventID;
  end;

var
  frmCopyEventParticipants: TfrmCopyEventParticipants;

implementation

{$R *.dfm}

uses
   MarketEventDataModule, axiomdata, miscfunc;

procedure TfrmCopyEventParticipants.BitBtn1Click(Sender: TObject);
var
   AEventID: integer;
begin
   if (cmbEvents.Text <> '') then
   begin
      try
         with qryCopyList do
         begin
            AEventID := cmbEvents.EditValue;
            SQL.Clear;
            SQL.Text := 'INSERT INTO event_participant(event_id, nname, alt_name, notes, search, alt_search) '+
                        'SELECT '+ IntToStr(AEventID) +', e.nname, e.alt_name, e.notes, e.search,'+
                        '       e.alt_search '+
                        '  FROM event_participant e '+
                        ' WHERE e.event_id = :oldeventid ';
            ParamByName('oldeventid').AsInteger := EventID;
            Execute;
         end;
      finally
         MsgInfo('Event Copied!');
         Close;
      end;
   end;
end;

procedure TfrmCopyEventParticipants.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   with dmMarketEventDataModule.tbEvent do
   begin
      close;
      FilterSQL := '';
      Open;
   end;
end;

procedure TfrmCopyEventParticipants.FormShow(Sender: TObject);
begin
   with dmMarketEventDataModule.tbEvent do
   begin
      close;
      FilterSQL := 'event_id <> ' + IntToStr(EventID);
      Open;
   end;

end;

end.
