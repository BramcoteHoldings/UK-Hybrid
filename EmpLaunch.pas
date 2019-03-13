unit EmpLaunch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxListBox, OracleUniProvider, Uni, DBAccess, MemDS, DB, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxGraphics, cxLookAndFeels, Menus;


type
  TfrmEmpLaunch = class(TForm)
    lbLaunchAll: TcxListBox;
    btnLaunchAll: TcxButton;
    btnLaunchSelect: TcxButton;
    cxButton3: TcxButton;
    btnLaunchNone: TcxButton;
    lbLaunchSelected: TcxListBox;
    qryEmpCuts: TUniQuery;
    qryShortcuts: TUniQuery;
    qryUpdate: TUniQuery;
    pbSave: TcxButton;
    pbClose: TcxButton;
    cxButtonEdit1: TcxButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure cxButton3Click(Sender: TObject);
    procedure btnLaunchSelectClick(Sender: TObject);
    procedure btnLaunchAllClick(Sender: TObject);
    procedure btnLaunchNoneClick(Sender: TObject);
    procedure pbSaveClick(Sender: TObject);
    procedure pbCloseClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    EmpCode: string;
  public
    { Public declarations }
    procedure SetEmp(sCode : string);
    procedure EmpCutsDelete;
  end;

var
  frmEmpLaunch: TfrmEmpLaunch;

implementation

uses
  AxiomData, GenericSearch, MiscFunc;

{$R *.dfm}

procedure TfrmEmpLaunch.SetEmp(sCode : string);
begin
  if sCode <> TableString('EMPLOYEE', 'CODE', sCode, 'CODE') then
    Self.Close
  else
  begin
    EmpCode := sCode;
    // Load the shortcuts
    lbLaunchAll.Clear;
    if (qryShortcuts.Active = false) then
      qryShortcuts.Open;
    qryShortcuts.First;
    while not qryShortcuts.EOF do
    begin
      lbLaunchAll.Items.Add(qryShortcuts.FieldByName('NAME').AsString);
      qryShortcuts.Next;
    end;
    // Load this Employees shortcuts
    lbLaunchSelected.Clear;
    qryEmpCuts.ParamByName('P_Emp').AsString := EmpCode;
    qryEmpCuts.Open;
    while not qryEmpCuts.EOF do
    begin
      lbLaunchSelected.Items.Add(qryEmpCuts.FieldByName('NAME').AsString);
      lbLaunchAll.Items.Delete(lbLaunchAll.Items.IndexOf(qryEmpCuts.FieldByName('NAME').AsString));

      qryEmpCuts.Next;
    end;
    qryEmpCuts.Close;
    Self.Show;
  end;
end;

procedure TfrmEmpLaunch.cxButton3Click(Sender: TObject);
begin
     ListBoxMoveSelected(lbLaunchSelected, lbLaunchAll);
end;

procedure TfrmEmpLaunch.btnLaunchSelectClick(Sender: TObject);
begin
     ListBoxMoveSelected(lbLaunchAll, lbLaunchSelected);
end;

procedure TfrmEmpLaunch.btnLaunchAllClick(Sender: TObject);
begin
     ListBoxMoveAll(lbLaunchAll, lbLaunchSelected);
end;


procedure TfrmEmpLaunch.btnLaunchNoneClick(Sender: TObject);
begin
     ListBoxMoveAll(lbLaunchSelected, lbLaunchAll);
end;

procedure TfrmEmpLaunch.pbSaveClick(Sender: TObject);
var
  iCtr: integer;
begin
  // Delete the Employee's current shortcuts
  EmpCutsDelete;
  with qryEmpCuts do
  begin
    Open;
    for iCtr := 0 to lbLaunchSelected.Items.Count - 1 do
    begin
      if qryShortcuts.Locate('NAME', lbLaunchSelected.Items.Strings[iCtr], []) then
      begin
        Insert;
        FieldByName('EMP').AsString := EmpCode;
        FieldByName('NAME').AsString := lbLaunchSelected.Items.Strings[iCtr];
        FieldByName('IMAGEINDEX').AsInteger := qryShortcuts.FieldByName('IMAGEINDEX').AsInteger;
        FieldByName('SHORTCUT_GROUP').AsInteger := qryShortcuts.FieldByName('SHORTCUT_GROUP').AsInteger;
        Post;
      end;
    end;
  end;
  // Make sure there is nothing on the Desktop that shouldn't be there
  with qryUpdate do
  begin
    SQL.Clear;
    SQL.Add('delete from desktop');
    SQL.Add('where emp = ' + QuotedStr(EmpCode));
    SQL.Add('  and imageindex not in ');
    SQL.Add('      (select imageindex from empcuts where emp = ' + QuotedStr(EmpCode) + ')');
    ExecSQL;
  end;
  Self.Close;
end;

procedure TfrmEmpLaunch.pbCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmEmpLaunch.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  frmGenericSearch : TfrmGenericSearch;
begin
  frmGenericSearch := TfrmGenericSearch.Create(Self);
  with frmGenericSearch do
  begin
    SQL := 'SELECT CODE, NAME AS DESCR, ''N'' AS DEFAULTITEM FROM EMPLOYEE ORDER BY CODE';
    if ShowModal = mrOK then
    begin
      EmpCutsDelete;
      qryUpdate.SQL.Text := 'INSERT INTO EMPCUTS (EMP, NAME, IMAGEINDEX) SELECT ' + QuotedStr(EmpCode) + ', NAME, IMAGEINDEX FROM EMPCUTS WHERE EMP = ' + QuotedStr(qrySource.FieldByName('CODE').AsString);
      qryUpdate.ExecSQL;
      SetEmp(EmpCode);
    end;
    Release;
  end;
end;

procedure TfrmEmpLaunch.EmpCutsDelete;
begin
  qryUpdate.SQL.Text := 'DELETE FROM EMPCUTS WHERE EMP = ' + QuotedStr(EmpCode);
  qryUpdate.ExecSQL;
end;

end.
