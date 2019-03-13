unit Prac_num_process;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Data.DB, DBAccess, Uni,
  MemDS, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, cxGroupBox, Vcl.StdCtrls, cxButtons,
  cxRadioGroup;

type
  TfrmProcessPracNum = class(TForm)
    grpSetPracNum: TcxRadioGroup;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cbClearPrac_Num: TcxCheckBox;
    qryPracNum: TUniQuery;
    dsPracNum: TUniDataSource;
    procUpdatePracNum: TUniStoredProc;
    cmbPracNums: TcxLookupComboBox;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbClearPrac_NumPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcessPracNum: TfrmProcessPracNum;

implementation

{$R *.dfm}

uses
   axiomdata;

procedure TfrmProcessPracNum.cbClearPrac_NumPropertiesChange(Sender: TObject);
begin
//   cmbPraNums.Enabled := (cbClearPrac_Num.Checked = True);
end;

procedure TfrmProcessPracNum.cxButton1Click(Sender: TObject);
var
   bDoFees: boolean;
begin
   if (grpSetPracNum.ItemIndex <> -1) then
   begin
      with procUpdatePracNum do
      begin
         if grpSetPracNum.ItemIndex = 0 then
            bDoFees := True
         else
            bDoFees := False;
         ParamByName('P_BFEES').AsBoolean := bDoFees;
         ParamByName('P_PRAC_NUM').AsString := cmbPracNums.Text;
         if (cbClearPrac_Num.Checked = True) then
            ParamByName('P_BADDREMOVE').AsBoolean := False
         else
            ParamByName('P_BADDREMOVE').AsBoolean := True;
         ExecProc;
      end;
   end;
end;

procedure TfrmProcessPracNum.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   qryPracNum.Close;
end;

procedure TfrmProcessPracNum.FormShow(Sender: TObject);
begin
   qryPracNum.Open;
end;

end.
