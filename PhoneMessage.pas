unit PhoneMessage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, OracleUniProvider, Uni, MemDS, DBCtrls, ExtCtrls, DBAccess;

type
  TfrmPhoneMessage = class(TForm)
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    qryEmployee: TUniQuery;
    dsEmployee: TUniDataSource;
    Label1: TLabel;
    btnEmployees: TBitBtn;
    qryPhoneMessage: TUniQuery;
    dsPhoneMessage: TUniDataSource;
    Label2: TLabel;
    dbmMessage: TDBMemo;
    cbEmployee: TComboBox;
    tmQuickCode: TTimer;
    qryPhoneMessageEMPCODEFOR: TStringField;
    qryPhoneMessageCREATED: TDateTimeField;
    qryPhoneMessageMESSAGE: TStringField;
    qryPhoneMessageEMPCODEBY: TStringField;
    qryPhoneMessageROWID: TStringField;
    procedure btnEmployeesClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbmMessageChange(Sender: TObject);
    procedure tmQuickCodeTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPhoneMessage: TfrmPhoneMessage;

implementation

{$R *.DFM}

uses
  AxiomData, GenericSearch, MiscFunc;

procedure TfrmPhoneMessage.btnEmployeesClick(Sender: TObject);
begin
   with TfrmGenericSearch.Create(Self) do
   begin
      SQL := 'SELECT CODE, NAME AS DESCR, ''N'' AS DEFAULTITEM FROM EMPLOYEE WHERE ACTIVE = ''Y'' ORDER BY CODE';
      if ShowModal = mrOK then
         cbEmployee.ItemIndex := cbEmployee.Items.IndexOf(qrySource.FieldByName('CODE').AsString);
   end;
end;

procedure TfrmPhoneMessage.btnSaveClick(Sender: TObject);
begin
   qryPhoneMessage.FieldByName('EMPCODEFOR').AsString := cbEmployee.Text;
   qryPhoneMessage.FieldByName('EMPCODEBY').AsString := dmAxiom.UserID;
   qryPhoneMessage.FieldByName('CREATED').AsDateTime := Now;
   qryPhoneMessage.Post;
   Close;
end;

procedure TfrmPhoneMessage.btnCancelClick(Sender: TObject);
begin
   qryPhoneMessage.Cancel;
   Close;
end;

procedure TfrmPhoneMessage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryEmployee.Close;
   qryPhoneMessage.Close;
   Action := caFree;
end;

procedure TfrmPhoneMessage.FormShow(Sender: TObject);
begin
   qryEmployee.Open;
   qryPhoneMessage.Open;

   StringPopulate(cbEmployee.Items, 'EMPLOYEE', 'CODE');

   qryPhoneMessage.Insert;
end;

procedure TfrmPhoneMessage.dbmMessageChange(Sender: TObject);
begin
   tmQuickCode.Enabled := True;
end;

procedure TfrmPhoneMessage.tmQuickCodeTimer(Sender: TObject);
begin
   tmQuickCode.Enabled := False;
   QuickCode(dbmMessage);
end;

end.
