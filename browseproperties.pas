unit browseproperties;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxContainer, cxEdit,
  cxGroupBox, cxPC, cxControls, cxLabel, cxTextEdit, ExtCtrls, ActnList,
  ActnMan, DB, MemDS, DBAccess, OracleUniProvider, Uni, Menus, cxGraphics, cxLookAndFeels,
  cxPCdxBarPopupMenu;

type
  TfrmBrowserProps = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    pbUseCurrent: TcxButton;
    pbUseDefault: TcxButton;
    pbUseBlank: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    pbApply: TcxButton;
    Image1: TImage;
    dfAddress: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    qryProperties: TUniQuery;
    procedure pbUseCurrentClick(Sender: TObject);
    procedure pbUseBlankClick(Sender: TObject);
    procedure pbUseDefaultClick(Sender: TObject);
    procedure dfAddressPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure pbApplyClick(Sender: TObject);
    procedure dfAddressKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FCurrentURL: string;
    FChanged: boolean;
    procedure SaveProperties;
  public
    { Public declarations }
    property CurrentURL : string read FCurrentURL write FCurrentURL;
  end;

var
  frmBrowserProps: TfrmBrowserProps;

implementation

uses browser, desktop, AxiomData;

{$R *.dfm}

procedure TfrmBrowserProps.pbUseCurrentClick(Sender: TObject);
begin
   dfAddress.Text := CurrentURL;
   pbApply.Enabled := True;
   FChanged := True;
end;

procedure TfrmBrowserProps.pbUseBlankClick(Sender: TObject);
begin
   dfAddress.Text := 'about:blank';
   pbApply.Enabled := True;
   FChanged := True;
end;

procedure TfrmBrowserProps.pbUseDefaultClick(Sender: TObject);
begin
   dfAddress.Text := dmAxiom.HomePageURL;
   pbApply.Enabled := True;
   FChanged := True;
end;

procedure TfrmBrowserProps.dfAddressPropertiesChange(Sender: TObject);
begin

end;

{ALTER TABLE AXIOM.EMPLOYEE
  ADD EMP_DEFAULT_URL VARCHAR2(255) }

procedure TfrmBrowserProps.FormCreate(Sender: TObject);
begin
   dfAddress.Text := dmAxiom.EmpDefaultURL;
   FChanged := False;
end;

procedure TfrmBrowserProps.SaveProperties;
var
   URL: string;
begin
   if FChanged then
   begin
      with qryProperties do
      begin
         if ((pos('http:',dfAddress.Text) = 0) and
            (pos('https:',dfAddress.Text) = 0)) and
            (pos('www', dfAddress.Text) > 0) then
            URL := 'http://'+ dfAddress.Text
         else
            URL := dfAddress.Text;
         ParamByName('EMP_DEFAULT_URL').AsString := URL;
         ParamByName('CODE').AsString := dmAxiom.UserID;
         ExecSQL;
         dmAxiom.EmpDefaultURL := URL;
      end;
      FChanged := False;
   end;
end;

procedure TfrmBrowserProps.cxButton4Click(Sender: TObject);
begin
   SaveProperties;
end;

procedure TfrmBrowserProps.pbApplyClick(Sender: TObject);
begin
   SaveProperties;
   dfAddress.Text := dmAxiom.EmpDefaultURL;
   FChanged := False;
   pbApply.Enabled := False;
end;

procedure TfrmBrowserProps.dfAddressKeyPress(Sender: TObject;
  var Key: Char);
begin
   pbApply.Enabled := True;
   FChanged := True;
end;

end.
