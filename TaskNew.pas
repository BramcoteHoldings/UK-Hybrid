unit TaskNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ComCtrls, OraSmart, MemDS, Ora, OracleUniProvider, Uni, DBAccess, MemDS, DBAccess;

type
  TfrmTaskNew = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblMatter: TLabel;
    lblClient: TLabel;
    lblMatterDesc: TLabel;
    lblAuthor: TLabel;
    btnMatterFind: TSpeedButton;
    dtpDue: TDateTimePicker;
    mmoDesc: TMemo;
    cbAuthor: TComboBox;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    btnTaskTemp: TBitBtn;
    qryTaskInsert: TUniQuery;
    Label5: TLabel;
    dtpCommence: TDateTimePicker;
    qryTask: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMatterFindClick(Sender: TObject);
    procedure cbAuthorClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTaskTempClick(Sender: TObject);
  private
    { Private declarations }
    TaskCode : string;
    NTask: integer;
  public
    { Public declarations }
    procedure FindTask(iTaskNumber: Integer);
    procedure DisplayMatter(sMatter: string);
  end;

implementation

uses
  AxiomData, MiscFunc, MSearch, TaskSearch, citfunc;

{$R *.DFM}

procedure TfrmTaskNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmTaskNew.btnMatterFindClick(Sender: TObject);
begin
  if not FormExists(frmMatterSearch) then
    Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
  if frmMatterSearch.ShowModal = mrOK then
    DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
end;

procedure TfrmTaskNew.FindTask(iTaskNumber: Integer);
begin
  NTask := iTaskNumber;
  qryTask.ParamByName('NTASK').AsInteger := iTaskNumber;
  qryTask.Open;
  if not qryTask.IsEmpty then
  begin
    cbAuthor.Items := dmAxiom.Employees;
    cbAuthor.ItemIndex := cbAuthor.Items.IndexOf(qryTask.FieldByName('AUTHOR').AsString);
    dtpCommence.DateTime := qryTask.FieldByName('COMMENCE').AsDateTime;
    dtpDue.DateTime := qryTask.FieldByName('DUE').AsDateTime;
    mmoDesc.Text := qryTask.FieldByName('DESCR').AsString;
    Self.Caption := 'Task Edit';
    DisplayMatter(qryTask.FieldByName('FILEID').AsString);
  end
  else
    Self.Close;
end;


procedure TfrmTaskNew.DisplayMatter(sMatter: string);
begin
  lblMatter.Caption := sMatter;
  lblClient.Caption := MatterString(lblMatter.Caption, 'TITLE');
  lblMatterDesc.Caption := MatterString(lblMatter.Caption, 'SHORTDESCR');
  Show();
end;


procedure TfrmTaskNew.cbAuthorClick(Sender: TObject);
begin
  lblAuthor.Caption := TableString('EMPLOYEE', 'CODE', cbAuthor.Text, 'NAME');
end;


procedure TfrmTaskNew.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;


procedure TfrmTaskNew.btnOKClick(Sender: TObject);
begin
  if NTask <> 0 then
  begin
    with qryTask do
    begin
      SQL.Text := 'UPDATE TASK SET CODE = :CODE, FILEID = :FILEID, DESCR = :DESCR, AUTHOR = :AUTHOR, COMMENCE = :COMMENCE, DUE = :DUE WHERE NTASK = :NTASK';
      ParamByName('CODE').AsString := TaskCode;
      ParamByName('FILEID').AsString := lblMatter.Caption;
      ParamByName('AUTHOR').AsString := cbAuthor.Text;
      ParamByName('DESCR').AsString := mmoDesc.Text;
      ParamByName('COMMENCE').AsDateTime := dtpCommence.Date;
      ParamByName('DUE').AsDateTime := dtpDue.Date;
      ParamByName('NTASK').AsInteger := NTask;
      ExecSQL;
    end;
  end
  else
  begin
    with qryTaskInsert do
    begin
      ParamByName('CODE').AsString := TaskCode;
      ParamByName('FILEID').AsString := lblMatter.Caption;
      ParamByName('AUTHOR').AsString := cbAuthor.Text;
      ParamByName('DESCR').AsString := mmoDesc.Text;
      ParamByName('COMMENCE').AsDateTime := dtpCommence.Date;
      ParamByName('DUE').AsDateTime := dtpDue.Date;
      ExecSQL;
    end;
  end;
  RefreshMatter(lblMatter.Caption);
  Self.Close;
end;

procedure TfrmTaskNew.FormCreate(Sender: TObject);
begin
  NTask := 0;
  TaskCode := '';
  dtpCommence.Date := Date;
  dtpDue.Date := Date;
  StringPopulate(cbAuthor.Items, 'EMPLOYEE', 'CODE');
  cbAuthor.ItemIndex := cbAuthor.Items.IndexOf(dmAxiom.UserID);
  cbAuthor.OnClick(Self);
end;

procedure TfrmTaskNew.btnTaskTempClick(Sender: TObject);
begin
  if not FormExists(frmTaskSearch) then
    Application.CreateForm(TfrmTaskSearch, frmTaskSearch);
  if frmTaskSearch.ShowModal = mrOK then
  begin
    TaskCode := frmTaskSearch.qryTasks.FieldByName('CODE').AsString;
    mmoDesc.Text := frmTaskSearch.qryTasks.FieldByName('DESCR').AsString;
  end;
end;

end.
