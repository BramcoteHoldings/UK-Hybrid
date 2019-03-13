unit MatterTaskNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ComCtrls, OracleUniProvider, Uni, DBAccess, MemDS;

type
  TfrmMatterTaskNew = class(TForm)
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
    qryFee: TUniQuery;
    qryScaleCost: TUniQuery;
    Label5: TLabel;
    dtpCommence: TDateTimePicker;
    qryScaleCostAMOUNT: TFloatField;
    qryScaleCostRATE: TFloatField;
    qryScaleCostDESCR: TStringField;
    qryScaleCostUNIT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnMatterFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DisplayMatter(sMatter: string);
  end;

var
  frmMatterTaskNew: TfrmMatterTaskNew;

implementation

uses
  AxiomData, MiscFunc, MSearch;

{$R *.DFM}

procedure TfrmMatterTaskNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryFee.Close;
  qryScaleCost.Close;
  
  Self.Release;
end;

procedure TfrmMatterTaskNew.FormShow(Sender: TObject);
begin
  dtpCommence.Date := Date;
  dtpDue.Date := Date;
  cbAuthor.Items := dmAxiom.Employees;
  cbAuthor.ItemIndex := cbAuthor.Items.IndexOf(dmAxiom.UserID);
  cbAuthor.OnClick(Self);
end;

procedure TfrmMatterTaskNew.btnMatterFindClick(Sender: TObject);
begin
  if frmMatterSearch.ShowModal = mrOK then
    DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
end;


procedure TfrmMatterTaskNew.DisplayMatter(sMatter: string);
begin
  lblMatter.Caption := sMatter;
  lblClient.Caption := MatterString(lblMatter.Caption, 'TITLE');
  lblMatterDesc.Caption := MatterString(lblMatter.Caption, 'SHORTDESCR');
  if Self.Visible then
    mmoDesc.SetFocus;
end;



end.
