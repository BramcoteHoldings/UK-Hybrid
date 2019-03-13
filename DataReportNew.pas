unit DataReportNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Buttons, OracleUniProvider, Uni, MemDS, DBAccess, DBCtrls, Mask;

type
  TfrmDataReportNew = class(TForm)
    qryDataReportInsert: TUniQuery;
    lblName: TLabel;
    Label1: TLabel;
    tbName: TEdit;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    mmoDescr: TMemo;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataReportNew: TfrmDataReportNew;

implementation

{$R *.DFM}

uses
  AxiomData, MiscFunc, MatterReportBuilder;

procedure TfrmDataReportNew.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmDataReportNew.btnSaveClick(Sender: TObject);
begin
  if (tbName.Text <> '') and (mmoDescr.Text <> '') then
  begin
    try
      with qryDataReportInsert do
      begin
        ParamByName('NAME').AsString := tbName.Text;
        ParamByName('DESCR').AsString := mmoDescr.Text;
        ExecSQL;
      end;
//      Self.Close;  
    except
      on E: Exception do
        MsgErr('Error creating report: ' + chr(13) + chr(13) + E.Message);
    end;
  end
  else
    MsgErr('Please complete DataForm Report details');
end;

procedure TfrmDataReportNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Self.Release;
end;

end.
