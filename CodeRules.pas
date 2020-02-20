unit CodeRules;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ComCtrls, Db, NumberEdit, OracleUniProvider, Uni, MemDS,
  DBAccess, cxPC, cxControls, ExtCtrls, cxPCdxBarPopupMenu, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxBar, cxClasses, dxBarBuiltInMenu,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit, cxCheckBox;

type
  TfrmCodeRules = class(TForm)
    qryCodeRules: TUniQuery;
    dsCodeRules: TUniDataSource;
    pagTypes: TcxPageControl;
    tabClient: TcxTabSheet;
    tabCreditor: TcxTabSheet;
    tabMatter: TcxTabSheet;
    dbrgClientCode: TDBRadioGroup;
    gbClientName: TGroupBox;
    Label1: TLabel;
    dbtbClientLength: TDBEdit;
    dbchkClientAcronym: TDBCheckBox;
    Label2: TLabel;
    dbtbClientPad: TDBEdit;
    dbrgCreditorCode: TDBRadioGroup;
    gbCreditorName: TGroupBox;
    Label5: TLabel;
    dbtbCreditorLength: TDBEdit;
    Label6: TLabel;
    dbtbCreditorPad: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbtbMatterPad: TDBEdit;
    dbtbMatterSeperator: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnOk: TdxBarButton;
    btnCancel: TdxBarButton;
    DBCheckBox1: TDBCheckBox;
    grpbxEntityPrefix: TGroupBox;
    tdbchkUseEntityCode: TDBCheckBox;
    tdbUseEntityLength: TDBEdit;
    lblUseEntityLength: TLabel;
    DBEdit3: TDBEdit;
    lblEntitySeparator: TLabel;
    grpbxEntityGroupPrefix: TGroupBox;
    tdchkUseEntityGroupPrefix: TDBCheckBox;
    Label9: TLabel;
    tdbUseEntityGroupLength: TDBEdit;
    Label10: TLabel;
    tdbEGSeparator: TDBEdit;
    dbrgMatterCode: TcxDBRadioGroup;
    dbchkCreditorAcronym: TcxDBCheckBox;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbrgClientCodeChange(Sender: TObject);
    procedure dbrgCreditorCodeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  AxiomData, MiscFunc;

{$R *.DFM}

procedure TfrmCodeRules.btnOKClick(Sender: TObject);
begin
  if qryCodeRules.State = dsEdit then
  begin
    qryCodeRules.Post;
    qryCodeRules.ApplyUpdates;
  end;

  Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCodeRules.btnCancelClick(Sender: TObject);
begin
  if qryCodeRules.Modified then
    qryCodeRules.CancelUpdates;
    
  Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCodeRules.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryCodeRules.Close;
  RemoveFromDesktop(Self);
//  Action := caFree;
end;

procedure TfrmCodeRules.FormShow(Sender: TObject);
begin
  with qryCodeRules do
  begin
    ParamByName('ENTITY').AsString := dmAxiom.Entity;
    Open;
  end;
end;

procedure TfrmCodeRules.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if qryCodeRules.Modified then
    if MsgAsk('Do you want to save your changes?') = mrYes then
      qryCodeRules.ApplyUpdates;
end;

procedure TfrmCodeRules.dbrgClientCodeChange(Sender: TObject);
begin
   if dbrgClientCode.ItemIndex = 0 then
   begin
      gbClientName.Visible := False;
      grpbxEntityGroupPrefix.Enabled := False;
      grpbxEntityPrefix.Enabled := False;
   end
   else
   begin
      gbClientName.Visible := True;
      grpbxEntityGroupPrefix.Enabled := True;
      grpbxEntityPrefix.Enabled := True;
   end;
end;

procedure TfrmCodeRules.dbrgCreditorCodeChange(Sender: TObject);
begin
   if dbrgCreditorCode.ItemIndex = 0 then
      gbCreditorName.Enabled := False
   else
      gbCreditorName.Enabled := True;
end;

end.
