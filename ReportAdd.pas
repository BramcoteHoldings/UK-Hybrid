unit ReportAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, ComCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxLookAndFeelPainters, cxButtons, DB, OracleUniProvider, Uni, DBAccess, MemDS, cxMemo,
  cxLabel, cxButtonEdit, ImgList, cxImageComboBox, cxRichEdit,
  cxDBRichEdit, Menus, cxGraphics, cxLookAndFeels, Vcl.Buttons;

type
  TfrmAddReport = class(TForm)
    Label1: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    odlgReports: TOpenDialog;
    ImageList1: TImageList;
    cxLabel5: TcxLabel;
    teDisplayName: TcxDBTextEdit;
    teReportName: TcxDBButtonEdit;
    qryAddReport: TUniQuery;
    cmbReportLevel: TcxDBComboBox;
    cmbReportType: TcxDBImageComboBox;
    edParameters: TcxDBTextEdit;
    mlDescr: TcxDBRichEdit;
    dsAddReport: TUniDataSource;
    cxButton1: TcxButton;
    OpenDialog1: TOpenDialog;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    cxLabel6: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    qryAddReportNAME: TStringField;
    qryAddReportREPORT: TStringField;
    qryAddReportDESCR: TStringField;
    qryAddReportACCESSLEVEL: TSmallintField;
    qryAddReportREPORT_TYPE: TStringField;
    qryAddReportPARAM_LIST: TStringField;
    qryAddReportREPORT_IMAGE: TBlobField;
    qryAddReportFREQUENCY: TStringField;
    procedure btnSaveClick(Sender: TObject);
    procedure trReportNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    FReportName: string;
    function OKtoPost : boolean;
    function RemovePath(FullReportName: string): string;
  public
    { Public declarations }
    property ReportName: string read FReportName write FReportName;
  end;

var
  frmAddReport: TfrmAddReport;

implementation

uses
   AxiomData, MiscFunc, GenericSearch;

{$R *.dfm}

function TfrmAddReport.OKtoPost : boolean;
var
  sTmp : String;
  bOk : boolean;
begin
   OKtoPost := True;
   sTmp := '';

   if (teDisplayName.Text = '') then
      sTmp := sTmp + '       Report Display Name' + Chr(13);
   if (teReportName.Text = '') then
      sTmp := '       Report Name' + Chr(13);
   if (cmbReportType.Text = '') then
      sTmp := sTmp + '       Report Type' + Chr(13);
   if (mlDescr.Text = '') then
      sTmp := sTmp + '       Description' + Chr(13);
   if sTmp <> '' then
   begin
      MsgInfo('Please complete the following details before posting:    ' + Chr(13) + Chr(13) + sTmp);
      OKtoPost := False
   end;
end;


procedure TfrmAddReport.btnSaveClick(Sender: TObject);
begin
   if OKtoPost then
   begin
      try
         dmAxiom.uniInsight.StartTransaction;
         with qryAddReport do
         begin
    {      ParamByName('disp_name').AsString := teDisplayName.Text;
          ParamByName('rpt_name').AsString := teReportName.Text;
          ParamByName('descr').AsString := mlDescr.Text;
          ParamByName('accesslevel').AsString := cmbReportLevel.Text;
          ParamByName('report_type').AsString := cmbReportType.EditValue;
          ParamByName('param_list').AsString := edParameters.Text;
          Execute;     }
          Post;
         end;
      finally
         dmAxiom.uniInsight.Commit;
         ModalResult := mrOk;
      end;
    end;
end;

procedure TfrmAddReport.trReportNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   ReportName, CleanReportName: string;
   frmGenericSearch : TfrmGenericSearch;
begin
   case AButtonIndex of
      0: begin
            if odlgReports.Execute then
            begin
               ReportName := odlgReports.FileName;
//               if (pos('.exe',ReportName) > 0) then
//                  cmbReportType.Text := 'R'
//               else
                  cmbReportType.Text := '';
               CleanReportName := RemovePath(ReportName);
               teReportName.EditValue := Copy(CleanReportName, 1, Length(CleanReportName)-4);
               qryAddReport.FieldByName('report').AsString := teReportName.EditValue;
            end;
         end;
      1: begin
            frmGenericSearch := TfrmGenericSearch.Create(Self);
            frmGenericSearch.SQL := 'SELECT T.item_id as code, T.item_NAME AS DESCR, ''N'' AS DEFAULTITEM  FROM RB_ITEM T';
            if frmGenericSearch.ShowModal = mrOK then
            begin
               teReportName.Text := frmGenericSearch.qrySource.FieldByName('descr').AsString;
               qryAddReport.FieldByName('report').AsString := teReportName.EditValue;
            end;
            frmGenericSearch.Free(); 
            cmbReportType.ItemIndex := 5;
         end;
   end;
end;

function TfrmAddReport.RemovePath(FullReportName: string): string;
var
   tmpName: string;
   CutLength: integer;
begin
   tmpName := FullReportName;
   while pos('\',tmpName) > 0 do
   begin
      CutLength := pos('\',tmpName);
      tmpName := copy(tmpName,CutLength + 1,length(tmpName) - CutLength);
   end;
   Result := tmpName;
end;

procedure TfrmAddReport.FormShow(Sender: TObject);
begin
   with qryAddReport do
   begin
      Close;
      ParamByName('name').AsString := ReportName;
      Open;
      if ReportName = '' then
         Insert
      else
         Edit;
   end;
end;

procedure TfrmAddReport.cxButton1Click(Sender: TObject);
var
      bStream, fStream: TStream;
      AFile: string;
begin
   if OpenDialog1.Execute then
   begin
      try
         AFile := OpenDialog1.FileName;
         bStream := qryAddReport.CreateBlobStream(qryAddReportREPORT_IMAGE, bmReadWrite);
         fStream := TFileStream.Create(AFile, fmOpenRead or fmShareDenyWrite);
         bStream.CopyFrom(fStream, fStream.Size);
         bStream.free;
         fStream.Free;
      except
        //
      end;
   end;
end;

end.
