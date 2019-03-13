unit Projects;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxPCdxBarPopupMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, dxBar, cxClasses,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBAccess, Uni, MemDS, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  dxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxLabel;

type
  TfrmProjects = class(TForm)
    dxBarManager1: TdxBarManager;
    cxPageControl1: TcxPageControl;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    tabProjectList: TcxTabSheet;
    tabFilter: TcxTabSheet;
    tvProjects: TcxGridDBTableView;
    gridProjectsLevel1: TcxGridLevel;
    gridProjects: TcxGrid;
    qryProjects: TUniQuery;
    dsProjects: TUniDataSource;
    dxBarButton2: TdxBarButton;
    tvProjectsNPROJECTTEMPL: TcxGridDBColumn;
    tvProjectsCODE: TcxGridDBColumn;
    tvProjectsDESCR: TcxGridDBColumn;
    tvProjectsWORKFLOWTYPE: TcxGridDBColumn;
    ActionManager1: TActionManager;
    actEditProject: TAction;
    dxBarButton3: TdxBarButton;
    bbtnDeleteProject: TdxBarButton;
    actDeleteProject: TAction;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edtCode: TcxTextEdit;
    edtDescription: TcxTextEdit;
    cmbWorkflow: TcxLookupComboBox;
    qryWorkflowType: TUniQuery;
    dsWorkflowType: TUniDataSource;
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure tabProjectListShow(Sender: TObject);
    procedure actEditProjectUpdate(Sender: TObject);
    procedure actEditProjectExecute(Sender: TObject);
    procedure actDeleteProjectUpdate(Sender: TObject);
    procedure actDeleteProjectExecute(Sender: TObject);
    procedure qryProjectsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure MakeSQL;
  public
    { Public declarations }
  end;

var
  frmProjects: TfrmProjects;

implementation

{$R *.dfm}

uses
   axiomdata, miscfunc, projectnew;

procedure TfrmProjects.actDeleteProjectExecute(Sender: TObject);
begin
   if MsgAsk('Delete selected Project?') = mrYes then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'select 1 from PROJECT_TEMPLATE_MATTER where NPROJECTTEMPL = :NPROJECTTEMPL';
         ParamByName('NPROJECTTEMPL').AsInteger := tvProjectsNPROJECTTEMPL.EditValue;
         Open;
         if (EOF = False) then
         begin
            MsgErr('Project cannot be deleted. It is currently attached to matter(s)');
            Exit;
         end
         else
         begin
            try
               tvProjects.BeginUpdate;
               qryProjects.Delete;
            finally
               qryProjects.Close;
               qryProjects.Open;
               tvProjects.EndUpdate;
            end;
         end;
         Close;
      end;
   end;
end;

procedure TfrmProjects.actDeleteProjectUpdate(Sender: TObject);
begin
   actDeleteProject.Enabled := (tvProjects.Controller.SelectedRowCount = 1);
end;

procedure TfrmProjects.actEditProjectExecute(Sender: TObject);
var
   frmProjectNew: TfrmProjectNew;
begin
   try
      tvProjects.BeginUpdate;
      frmProjectNew := TfrmProjectNew.Create(self);
      frmProjectNew.EditProject(tvProjectsNPROJECTTEMPL.EditValue);
      frmProjectNew.ShowModal;
   finally
      qryProjects.Close;
      qryProjects.Open;
      tvProjects.EndUpdate;
   end;

end;

procedure TfrmProjects.actEditProjectUpdate(Sender: TObject);
begin
   actEditProject.Enabled := (tvProjects.Controller.SelectedRowCount > 0);
end;

procedure TfrmProjects.dxBarButton1Click(Sender: TObject);
var
   frmProjectNew: TfrmProjectNew;
begin
   try
      tvProjects.BeginUpdate;
      frmProjectNew := TfrmProjectNew.Create(self);
      frmProjectNew.AddProject;
      frmProjectNew.ShowModal;
   finally
      qryProjects.Close;
      qryProjects.Open;
      tvProjects.EndUpdate;
   end;
end;

procedure TfrmProjects.dxBarButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmProjects.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryProjects.Close;
   RemoveFromDesktop(Self);
end;

procedure TfrmProjects.MakeSQL;
var
   sSQL,
   sWhere: string;
begin
   sSQL := 'select project_template.*, '+
           ' project_template.rowid '+
           ' from project_template';

   if edtCode.Text <> '' then
   begin
      sWhere := sWhere + ' where code = ' + quotedstr(edtCode.Text);
   end;
   if edtDescription.Text <> '' then
   begin
      if sWhere <> '' then sWhere := sWhere + ' and'
      else
         sWhere := ' where ';

      sWhere := sWhere + ' descr = ' + quotedstr(edtDescription.Text);
    end;
   if cmbWorkflow.Text <> '' then
   begin
      if sWhere <> '' then sWhere := sWhere + ' and'
      else
         sWhere := ' where ';
      sWhere := sWhere + ' workflowtype = ' + quotedstr(cmbWorkflow.EditValue);
   end;

   sSQL := sSQL + sWhere;
   qryProjects.Close;
   qryProjects.SQL.Text := sSQL;

   qryProjects.Open;
end;

procedure TfrmProjects.qryProjectsBeforeDelete(DataSet: TDataSet);
begin
//
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'delete from PROJ_TEMPL_SCALECOST_LINK where NPROJECTTEMPL = :NPROJECTTEMPL';
      ParamByName('NPROJECTTEMPL').AsInteger := DataSet.FieldByName('NPROJECTTEMPL').AsInteger;
      ExecSQL;
   end;
end;

procedure TfrmProjects.tabProjectListShow(Sender: TObject);
begin
   MakeSQL;
end;

end.
