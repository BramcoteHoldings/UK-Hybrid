unit SecureMatters;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, OracleUniProvider, Uni,
  DBAccess, StdCtrls, cxButtons, cxContainer, cxListBox, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, dxBar, cxSplitter,
  ExtCtrls, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxLookAndFeels, MemDS;

type
  TfrmSecureMatters = class(TForm)
    qryMatters: TUniQuery;
    dsMatters: TUniDataSource;
    qryEmployees: TUniQuery;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    qryEmployeesAttached: TUniQuery;
    Panel1: TPanel;
    Label4: TLabel;
    lbAllEmployees: TcxListBox;
    Label5: TLabel;
    lbSelectedEmployees: TcxListBox;
    btnLaunchAll: TcxButton;
    btnLaunchSelect: TcxButton;
    btnRemove: TcxButton;
    btnLaunchNone: TcxButton;
    dxBarButton2: TdxBarButton;
    qryUpdate: TUniQuery;
    qryMatterSecurity: TUniQuery;
    qryMatterSecEmps: TUniQuery;
    btnMatter: TcxButtonEdit;
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btnLaunchAllClick(Sender: TObject);
    procedure btnLaunchNoneClick(Sender: TObject);
    procedure btnLaunchSelectClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnMatterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
    LaunchChanged: boolean;

    procedure SaveMatters(sCode : string);
    procedure SecureMatterDelete(sCode : string);
//    procedure EmpCutsDelete(sCode : string);
    procedure LoadSecureMatters(sCode : string);
  public
    { Public declarations }
  end;

var
  frmSecureMatters: TfrmSecureMatters;

implementation

uses AxiomData, miscfunc, MSearch, citfunc;

{$R *.dfm}

procedure TfrmSecureMatters.FormCreate(Sender: TObject);
begin
{   qryMatters.Open;
   lbAllEmployees.Clear;
   if (qryEmployees.Active = false) then
      qryEmployees.Open;
   qryEmployees.First;
   while not qryEmployees.EOF do
   begin
      lbAllEmployees.Items.Add(qryEmployees.FieldByName('code').AsString + ' - ' + qryEmployees.FieldByName('NAME').AsString);
      qryEmployees.Next;
   end;

   lbSelectedEmployees.Clear;
   if (qryEmployeesAttached.Active = false) then
      qryEmployeesAttached.Open;
   qryEmployeesAttached.First;
   while not qryEmployeesAttached.EOF do
   begin
      lbSelectedEmployees.Items.Add(qryEmployeesAttached.FieldByName('NAME').AsString);
      qryEmployeesAttached.Next;
   end;    }
end;

procedure TfrmSecureMatters.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryMatters.Close;
   qryEmployees.Close;
end;

procedure TfrmSecureMatters.dxBarButton1Click(Sender: TObject);
begin
   RemoveFromDesktop(Self);
end;

procedure TfrmSecureMatters.btnLaunchAllClick(Sender: TObject);
begin
   ListBoxMoveAll(lbAllEmployees, lbSelectedEmployees);
   LaunchChanged := True;
end;

procedure TfrmSecureMatters.btnLaunchNoneClick(Sender: TObject);
begin
   ListBoxMoveAll(lbSelectedEmployees, lbAllEmployees);
   LaunchChanged := True;
end;

procedure TfrmSecureMatters.btnLaunchSelectClick(Sender: TObject);
begin
  ListBoxMoveSelected(lbAllEmployees, lbSelectedEmployees);
  LaunchChanged := True;
end;

procedure TfrmSecureMatters.btnRemoveClick(Sender: TObject);
begin
   ListBoxMoveSelected(lbSelectedEmployees, lbAllEmployees);
   LaunchChanged := True;
end;

procedure TfrmSecureMatters.dxBarButton2Click(Sender: TObject);
begin
  SaveMatters(btnMatter.Text);
  LaunchChanged := False;
end;

procedure TfrmSecureMatters.SaveMatters(sCode : string);
var
  iCtr: integer;
begin
  SecureMatterDelete(TableString('matter','fileid', sCode, 'nmatter'));
  with qryMatterSecEmps do
  begin
    Open;
    for iCtr := 0 to lbSelectedEmployees.Items.Count - 1 do
    begin
//      if qryMatterSecurity.Locate('NAME', lbSelectedEmployees.Items.Strings[iCtr], []) then
//      begin
        Insert;
        FieldByName('NMATTER').AsString := TableString('matter','fileid', sCode, 'nmatter');
        FieldByName('EMPLOYEE_CODE').AsString := trim(Copy(lbSelectedEmployees.Items.Strings[iCtr], 1, pos('-', lbSelectedEmployees.Items.Strings[iCtr]) - 1));
        Post;
//      end;
    end;
  end;
end;

procedure TfrmSecureMatters.SecureMatterDelete(sCode : string);
begin
  qryUpdate.SQL.Text := 'DELETE FROM matter_doc_security WHERE NMATTER = ' + QuotedStr(sCode);
  qryUpdate.ExecSQL;
end;

procedure TfrmSecureMatters.LoadSecureMatters(sCode : string);
begin
   lbSelectedEmployees.Clear;
   lbAllEmployees.Clear;
   qryEmployees.Close;
   qryEmployees.ParamByName('nmatter').AsString := TableString('matter','fileid', sCode, 'nmatter');
   if (qryEmployees.Active = false) then
      qryEmployees.Open;
   qryEmployees.First;
   while not qryEmployees.EOF do
   begin
      lbAllEmployees.Items.Add(qryEmployees.FieldByName('code').AsString + ' - ' + qryEmployees.FieldByName('NAME').AsString);
      qryEmployees.Next;
   end;
   // Load this Employees shortcuts
   lbSelectedEmployees.Clear;
   qryEmployeesAttached.Close;
   qryEmployeesAttached.ParamByName('nmatter').AsString := TableString('matter','fileid', sCode, 'nmatter');
   qryEmployeesAttached.Open;
   while not qryEmployeesAttached.EOF do
   begin
      lbSelectedEmployees.Items.Add(qryEmployeesAttached.FieldByName('code').AsString + ' - ' +qryEmployeesAttached.FieldByName('NAME').AsString);
//      lbAllEmployees.Items.Delete(lbAllEmployees.Items.IndexOf(qryEmployeesAttached.FieldByName('NAME').AsString));

      qryEmployeesAttached.Next;
   end;
   qryEmployeesAttached.Close;
end;

procedure TfrmSecureMatters.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOK then
   begin
      btnMatter.Text := dmAxiom.qryMSearch.FieldByName('FILEID').AsString;
      LoadSecureMatters(btnMatter.Text);
   end;
end;

procedure TfrmSecureMatters.btnMatterPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if MatterExists(UpperCase(string(DisplayValue))) then
      begin
         if (IsMatterArchived(UpperCase(string(DisplayValue)))) then
         begin
             ErrorText := 'Matter that is archived.';
             Error := True;
         end
         else if MatterIsCurrent(UpperCase(string(DisplayValue))) then
         begin
            LoadSecureMatters(UpperCase(string(DisplayValue)));
         end
         else
         begin
            MsgErr('Matter ' + UpperCase(string(DisplayValue)) + ' has been closed');
            Error := True;
         end;
      end
      else
      begin
         ErrorText := 'The selected Matter is not valid.  Please check and re-try.';
         Error := True;
      end;
end;

end.
