unit SolicitorCodeNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, DBCtrls,
  OracleUniProvider, Uni, DBAccess, MemDS, StdCtrls,
  DBActns, ActnList, ActnMan, ComCtrls, ToolWin, ImgList,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxNavigator, cxDBNavigator, cxLookAndFeelPainters, cxButtons, cxLabel,
  cxGraphics, cxLookAndFeels, Vcl.Menus;

type
  TfrmSolicitorCodeNew = class(TForm)
    qryBranchSubJurisdiction: TUniQuery;
    dsBranchSubJurisdiction: TUniDataSource;
    qryBranchSubJurisdictionCODE: TFloatField;
    qryBranchSubJurisdictionBRANCH: TStringField;
    qryBranchSubJurisdictionSUBJURISDICTION: TStringField;
    qryBranchSubJurisdictionSOLICITOR_CODE: TStringField;
    qryBranchSubJurisdictionCOURT_ADDRESS_CODE: TFloatField;
    qryBranchSubJurisdictionROWID: TStringField;
    qryBranch: TUniQuery;
    qrySubJurisdiction: TUniQuery;
    Panel1: TPanel;
    Bevel1: TBevel;
    StaticText1: TStaticText;
    dsBranch: TUniDataSource;
    dsSubJurisdiction: TUniDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qryCourtList: TUniQuery;
    dsCourtList: TUniDataSource;
    ilstToolbar: TImageList;
    qryCourtDetails: TUniQuery;
    dsCourtDetails: TUniDataSource;
    pbCancel: TcxButton;
    pbSave: TcxButton;
    dbtbSolicitorCode: TcxTextEdit;
    cmbBranch: TcxLookupComboBox;
    cbSubJurisdiction: TcxLookupComboBox;
    cmbCourt: TcxLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lblState: TcxLabel;
    cxLabel4: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cmbCourtPropertiesCloseUp(Sender: TObject);
    procedure cbSubJurisdictionPropertiesChange(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cbSubJurisdictionPropertiesCloseUp(Sender: TObject);
    procedure pbSaveClick(Sender: TObject);
    procedure pbCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FNewSolicitorCode: boolean;
    FSolicitorCode: Integer;
  public
    { Public declarations }
    procedure OpenSolicitorCode(nSolCode: integer; bNewCode: boolean);
  end;

var
  frmSolicitorCodeNew: TfrmSolicitorCodeNew;

implementation

{$R *.dfm}

uses
   Axiomdata,MiscFunc;

procedure TfrmSolicitorCodeNew.FormShow(Sender: TObject);
begin
//    qryBranchSubJurisdiction.Open;
    qryBranch.Open;
    qrySubJurisdiction.Open;
{    if qryBranchSubJurisdiction.RecordCount > 0 then
    begin
      qryCourtList.Close;
      qryCourtList.ParamByName('subjurisdiction').AsString := cbSubJurisdiction.EditValue ;
      qryCourtList.Open;
      qryCourtDetails.ParamByName('subjurisdiction').AsString := cbSubJurisdiction.EditValue;
      qryCourtDetails.Open;
    end;   }
end;

procedure TfrmSolicitorCodeNew.cmbCourtPropertiesCloseUp(Sender: TObject);
begin
   qryCourtDetails.Close;
   if cbSubJurisdiction.Text <> '' then
   begin
      qryCourtDetails.ParamByName('court_address_code').AsString := cbSubJurisdiction.EditValue ;
      qryCourtDetails.Open;
   end;
end;

procedure TfrmSolicitorCodeNew.cbSubJurisdictionPropertiesChange(
  Sender: TObject);
begin
   if not (qryBranchSubJurisdiction.State in [dsInsert]) then
   begin
      qryCourtList.Close;
      qryCourtList.ParamByName('subjurisdiction').AsString := cbSubJurisdiction.EditValue ;
      qryCourtList.Open;
   end;
end;

procedure TfrmSolicitorCodeNew.cxDBNavigator1ButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
   case AButtonIndex of
      6: begin
            qryCourtList.Close;
            qryCourtDetails.Close;
         end;
      7: begin
            qryCourtList.Close;
            qryCourtDetails.Close;
         end;
   end;
end;

procedure TfrmSolicitorCodeNew.cbSubJurisdictionPropertiesCloseUp(
  Sender: TObject);
begin
   qryCourtList.Close;
   qryCourtList.ParamByName('subjurisdiction').AsString := cbSubJurisdiction.EditValue ;
   qryCourtList.Open;
end;

procedure TfrmSolicitorCodeNew.OpenSolicitorCode(nSolCode: integer; bNewCode: boolean);
begin
   FNewSolicitorCode := bNewCode;
   FSolicitorCode := nSolCode;
   if not FNewSolicitorCode then
   begin
      qryBranch.Open;
      qrySubJurisdiction.Open;
      qryBranchSubJurisdiction.ParamByName('code').AsInteger := FSolicitorCode;
      qryBranchSubJurisdiction.Open;
      if qryBranchSubJurisdiction.RecordCount > 0 then
      begin
         with qryBranchSubJurisdiction do
         begin
            dbtbSolicitorCode.Text := FieldByName('solicitor_code').AsString;
            cmbBranch.EditValue := FieldByName('branch').AsString;
            cbSubJurisdiction.EditValue := FieldByName('subjurisdiction').AsString;
            cmbCourt.EditValue := FieldByName('court_address_code').AsString;
         end;
         qryCourtList.Close;
         qryCourtList.ParamByName('subjurisdiction').AsString := qryBranchSubJurisdiction.FieldByName('subjurisdiction').AsString;
         qryCourtList.Open;
         qryCourtDetails.Close;
         qryCourtDetails.ParamByName('court_address_code').AsString := qryBranchSubJurisdiction.FieldByName('court_address_code').AsString;
         qryCourtDetails.Open;
      end;
   end;
end;

procedure TfrmSolicitorCodeNew.pbSaveClick(Sender: TObject);
begin
   if FNewSolicitorCode then
   begin
      qryBranchSubJurisdiction.Open;
      qryBranchSubJurisdiction.Insert;
      qryBranchSubJurisdiction.FieldByName('solicitor_code').AsString := dbtbSolicitorCode.Text;
      qryBranchSubJurisdiction.FieldByName('branch').AsString := cmbBranch.EditValue;
      qryBranchSubJurisdiction.FieldByName('subjurisdiction').AsString := cbSubJurisdiction.EditValue;
      qryBranchSubJurisdiction.FieldByName('court_address_code').AsString := cmbCourt.EditValue;
   end
   else
   begin
      qryBranchSubJurisdiction.Edit;
      qryBranchSubJurisdiction.FieldByName('solicitor_code').AsString := dbtbSolicitorCode.Text;
      qryBranchSubJurisdiction.FieldByName('branch').AsString := cmbBranch.EditValue;
      qryBranchSubJurisdiction.FieldByName('subjurisdiction').AsString := cbSubJurisdiction.EditValue;
      qryBranchSubJurisdiction.FieldByName('court_address_code').AsString := cmbCourt.EditValue;
   end;

   qryBranchSubJurisdiction.Post;
   qryBranchSubJurisdiction.ApplyUpdates;
   dmAxiom.uniInsight.Commit;
   close();
end;

procedure TfrmSolicitorCodeNew.pbCancelClick(Sender: TObject);
begin
   Close();
end;

procedure TfrmSolicitorCodeNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryCourtList.Close;
   qryCourtDetails.Close;
   qryBranch.Close;
   qrySubJurisdiction.Close;
   qryBranchSubJurisdiction.Close;
end;

procedure TfrmSolicitorCodeNew.FormCreate(Sender: TObject);
begin
   if SystemString('LOCALE_NAME') <> '' then
   begin
      lblState.Caption := 'County';
   end;
end;

end.
