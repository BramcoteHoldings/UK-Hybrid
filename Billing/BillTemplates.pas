unit BillTemplates;

interface

{ By removing the 'x' which begins each of these compiler directives,
  you can enable different functionality within the end-user reporting
  solution.

  DADE - the data tab where queries can be created by the end-user

  BDE  - BDE support for the Query Tools

  ADO  - ADO support for the Query Tools

  IBExpress - Interbase Express support for the Query Tools


  RAP -  the calc tab, where calculations can be coded at run-time
         (You must download and install a copy of the RAP beta in order
         to enable this feature)

  CrossTab - adds the CrossTab component to the component palette in the
             report designer.

  CheckBox - adds a checkbox component to the component palette in the
         report designer.

  TeeChart - adds a teechart component to the report designer component
         palette. This component works with the TeeChart delivered
         with Delphi 3 and 4.  It does NOT work with TeeChart 4.01,
         which must be purchased from TeeMach.

  TeeChart401 - adds a teechart component for use with TeeChart 4.01 from
         TeeMach.

  UseDesignPath - determines whether the path used by the Database
         object on this form is replaced in the OnCreate event handler of
         this form with the current path.}

{$DEFINE DADE}            {remove the 'x' to enable DADE}
{x$DEFINE BDE}            {remove the 'x' to enable Borland Database Engine (BDE) }
{x$DEFINE ADO}            {remove the 'x' to enable ADO}
{x$DEFINE IBExpress}      {remove the 'x' to enable Interbase Express}
{$DEFINE ODAC}            {remove the 'x' to enable Oracle Data Access Components}
{$DEFINE CrossTab}        {remove the 'x' to enable CrossTab}
{$DEFINE RAP}            {remove the 'x' to enable RAP}
{$DEFINE CheckBox}       {remove the 'x' to enable CheckBox}
{x$DEFINE TeeChart}       {remove the 'x' to enable standard TeeChart}
{x$DEFINE TeeChart401}    {remove the 'x' to enable TeeChart 4.01}
{x$DEFINE UseDesignPath}  {remove the 'x' to use the design-time settings of Database object on this form}
{$DEFINE uniDAC}            {remove the 'x' to enable Oracle Data Access Components}

uses

{$IFDEF DADE}
  daDatMan,
{$ENDIF}

{$IFDEF BDE}
  daDBBDE,
{$ENDIF}

{$IFDEF ADO}
  daADO,
{$ENDIF}

{$IFDEF IBExpress}
  daIBExpress,
{$ENDIF}

{$IFDEF ODAC}
  daODAC,
{$ENDIF}

{$IFDEF CrossTab}
  ppCTDsgn,
{$ENDIF}

{$IFDEF RAP}
  raIDE,
{$ENDIF}

{$IFDEF CheckBox}
  myChkBox,
{$ENDIF}

{$IFDEF TeeChart}
  ppChrt, ppChrtDB,
{$ENDIF}

{$IFDEF TeeChart401}
  ppChrt, ppChrtDP,
{$ENDIF}

{$IFDEF uniDAC}
  daUniDac,
{$ENDIF}

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MaintAncestor, StdCtrls, Buttons, Mask, DBCtrls, Menus, Db,
  ImgList, ExtCtrls, ComCtrls, ToolWin, OracleUniProvider, Uni, DBAccess, MemDS,
  dxBarDBNav, dxBar, cxMaskEdit, cxButtonEdit,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel, cxCheckBox,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppDB, ppRelatv,
  ppDBPipe, ppComm, ppDsgnDB, cxGroupBox, cxRadioGroup, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, ppEndUsr, printers, ppCtrls,
  ppPrnabl, ppVar, ppParameter, cxClasses, ppDesignLayer, Ora, ppFormWrapper,
  ppRptExp, dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutControl, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, System.ImageList;

type
  TfrmBillTemplates = class(TfrmMaint)
    odlgFile: TOpenDialog;
    qryDeleteDefault: TUniQuery;
    qryDefaultBill: TUniQuery;
    dbtbPath: TcxDBButtonEdit;
    dbtbCode: TcxDBButtonEdit;
    tbBillTemplate: TUniTable;
    dsBillTemplate: TUniDataSource;
    plBillTemplate: TppDBPipeline;
    tbBillTemplateROWID: TStringField;
    tbBillTemplateCODE: TStringField;
    tbBillTemplateDESCR: TStringField;
    tbBillTemplatePATH: TStringField;
    tbBillTemplateDEFAULTBILL: TStringField;
    tbBillTemplateTEMPLATE: TBlobField;
    BillReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesigner: TppDesigner;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dbcPrinter: TDBComboBox;
    dbcFinalPrinterPath: TDBComboBox;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppReportExplorer: TppReportExplorer;
    rgLEDESFormat: TcxDBRadioGroup;
    dbchkDefaultBill: TcxDBCheckBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbLedesFormat: TcxDBCheckBox;
    cbItemBased: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutItem13: TdxLayoutItem;
    cbEntity: TcxDBLookupComboBox;
    dxLayoutItem16: TdxLayoutItem;
    qryEntity: TUniQuery;
    dsEntity: TUniDataSource;
    dbtbParamList: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dbtbDescr: TcxDBTextEdit;
    cbBranch: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    qryBranch: TUniQuery;
    dsBranch: TUniDataSource;
    procedure btnCodeSearchClick(Sender: TObject);
    procedure qrySourceAfterInsert(DataSet: TDataSet);
    procedure qrySourceBeforePost(DataSet: TDataSet);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrySourceAfterScroll(DataSet: TDataSet);
    procedure dbtbPathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ppDesignerClose(Sender: TObject; var Action: TCloseAction);
    procedure dbtbCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ppDesignerCustomSaveDoc(Sender: TObject);
    procedure qrySourceBeforeInsert(DataSet: TDataSet);
    procedure qrySourceAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbLEDESFormatClick(Sender: TObject);
    procedure cbEntityPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FLastDefault : string;
  public
    { Public declarations }
  end;

var
  frmBillTemplates: TfrmBillTemplates;

implementation

{$R *.DFM}

uses
  GenericSearch, AxiomData, MiscFunc, ppIniStorage, ppFileUtils, Password;

procedure TfrmBillTemplates.btnCodeSearchClick(Sender: TObject);
begin
  with TfrmGenericSearch.Create(Self) do
  begin
    SQL := 'SELECT CODE, DESCR, DEFAULTBILL AS DEFAULTITEM, LEDES_TEMPLATE, '+
           'LEDES_TEMPLATE_FORMAT FROM BILLTEMPLATE ORDER BY CODE';
    if ShowModal = mrOK then
      Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
    Release;
  end;
end;


procedure TfrmBillTemplates.qrySourceAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('DEFAULTBILL').AsString := 'N';
   dbchkDefaultBill.checked := False;
   cbLEDESFormat.Enabled := True;
   inherited;
end;


procedure TfrmBillTemplates.qrySourceBeforePost(DataSet: TDataSet);
begin
   if (pos('.rtm',DataSet.FieldByName('PATH').AsString) > 0) then
      DataSet.FieldByName('REPORT_TYPE').AsString := 'A'
   else
   if (pos('.rpt',DataSet.FieldByName('PATH').AsString) > 0) then
      DataSet.FieldByName('REPORT_TYPE').AsString := 'C'
   else
   if (pos('.rpz',DataSet.FieldByName('PATH').AsString) > 0) then
      DataSet.FieldByName('REPORT_TYPE').AsString := 'C'
   else
   if (pos('.xls',DataSet.FieldByName('PATH').AsString) > 0) then
      DataSet.FieldByName('REPORT_TYPE').AsString := 'X'
   else
   if (pos('.rtf',DataSet.FieldByName('PATH').AsString) > 0) then
      DataSet.FieldByName('REPORT_TYPE').AsString := 'H'
   else
   if (cbLEDESFormat.Checked = True) then
      DataSet.FieldByName('REPORT_TYPE').AsString := 'L'
   else
      DataSet.FieldByName('REPORT_TYPE').AsString := 'W';

  if ((DataSet.FieldByName('DEFAULTBILL').AsString <> FLastDefault) and
      (FLastDefault <> '')) then
  begin
    if (DataSet.FieldByName('DEFAULTBILL').AsString = 'Y') then
      // Make sure that this is the only one checked
      qryDeleteDefault.ExecSQL
    else
    begin
      // If this was the default, don't let them change it
      with qryDefaultBill do
      begin
        Open;
        if IsEmpty or ((FieldByName('CODE').AsString = DataSet.FieldByName('CODE').AsString)) then
          DataSet.FieldByName('DEFAULTBILL').AsString := 'Y';
        Close;
      end;
    end;
  end;
  inherited;
end;

procedure TfrmBillTemplates.btnSaveClick(Sender: TObject);
begin
  if odlgFile.Execute then
  begin
    if not qrySource.Modified then
      qrySource.Edit;
    qrySource.FieldByName('PATH').AsString := odlgFile.FileName;
  end;
end;

procedure TfrmBillTemplates.cbEntityPropertiesChange(Sender: TObject);
begin
   inherited;
   if (cbEntity.Text <> '') then
   begin
      with qryBranch do
      begin
         Close;
         ParamByName('entity').AsString := cbEntity.EditValue;
         Open;
      end;
   end;
end;

procedure TfrmBillTemplates.cbLEDESFormatClick(Sender: TObject);
begin
  inherited;
   if cbLEDESFormat.Checked = True then
   begin
      dbtbPath.Enabled := False;
      dbtbParamList.Enabled := False;
      rgLEDESFormat.Enabled := True;
   end
   else
   begin
      dbtbPath.Enabled := True;
      dbtbParamList.Enabled := True;
      rgLEDESFormat.Enabled := False;
   end;

end;

procedure TfrmBillTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dmAxiom.tbFolders.Close;
   dmAxiom.tbItems.Close;
   qryEntity.Close;
   qrySource.Close;
   tbBillTemplate.Close;
   dmAxiom.orsAxiom.Disconnect;
   inherited;
end;

procedure TfrmBillTemplates.FormCreate(Sender: TObject);
var
   lsStorageName: String;
   FPrinters : TPrinter;
   iCtr: integer;
begin
   { 20 Nov 2017 DW moved the inherited to the bottom of this routine to allow for the FormCreate
   to run prior to the Scroll routine}

   FLastDefault := 'N';

   lsStorageName := TppFileUtils.GetApplicationFilePath + '\RBuilder.ini';

   TppIniStoragePlugIn.SetStorageName(lsStorageName);

   FPrinters := TPrinter.Create;
   dbcPrinter.Clear;
   dbcFinalPrinterPath.Clear;
   for iCtr := 0 to FPrinters.Printers.Count-1 do
   begin
      dbcPrinter.Items.Add(FPrinters.Printers.Strings[iCtr]);
      dbcFinalPrinterPath.Items.Add(FPrinters.Printers.Strings[iCtr]);
   end;
   dmAxiom.tbFolders.Open;
   dmAxiom.tbItems.Open;
   qryEntity.Open;

   if not dmAxiom.orsAxiom.Connected then
   begin
      dmAxiom.orsAxiom.Options.Direct := (dmAxiom.uniInsight.SpecificOptions.Values['Direct'] = 'True');
      dmAxiom.orsAxiom.Username := dmAxiom.uniInsight.Username;
      dmAxiom.orsAxiom.Password := dmAxiom.uniInsight.Password;
      dmAxiom.orsAxiom.Server := dmAxiom.uniInsight.Server;
      dmAxiom.orsAxiom.Connect;
   end;
   inherited;
end;

procedure TfrmBillTemplates.FormShow(Sender: TObject);
begin
   inherited;

  // theses 2 rows, allow to share the existing connection in the report module.
  // Then avoid user to logon
{   FUniDacConnection := TUniConnection.Create(nil);
   FUniDacConnection.AssignConnect(dmAxiom.uniInsight);

   FUniDacConnection.SpecificOptions.Values['Direct'] := 'True';
}
   ppDesigner.DataSettings.UseDataDictionary := true;

   ppDesigner.DataSettings.SessionType:='ODACSession';
   ppDesigner.DataSettings.DatabaseName:='orsAxiom';
//   ppDesigner.DataSettings.DatabaseType := TdaUniDacSession.GetCnxDatabaseType(dmAxiom.uniInsight);
end;

procedure TfrmBillTemplates.qrySourceAfterScroll(DataSet: TDataSet);
begin
   inherited;
   FLastDefault := DataSet.FieldByName('DEFAULTBILL').AsString;
   if (qrySource.State = dsBrowse) then
      dbtbPath.Properties.Buttons.Items[1].Visible := (DataSet.FieldByName('REPORT_TYPE').AsString = 'A');
   dbcPrinter.Visible := (qrySource.FieldByName('REPORT_TYPE').AsString = 'A');
   dbcFinalPrinterPath.Visible := (qrySource.FieldByName('REPORT_TYPE').AsString = 'A');
//   lblPrinterPath.Visible := (qrySource.FieldByName('REPORT_TYPE').AsString = 'A');
//   cbUseAxiomCrysltalViewer.Visible := (qrySource.FieldByName('REPORT_TYPE').AsString = 'C');
   dbtbParamList.Visible := ((DataSet.FieldByName('REPORT_TYPE').AsString = 'C') or (DataSet.FieldByName('REPORT_TYPE').AsString = 'A'));
//   lblParamList.Visible := ((DataSet.FieldByName('REPORT_TYPE').AsString = 'C') or (DataSet.FieldByName('REPORT_TYPE').AsString = 'A'));
//   lblDefaultPrinterPath.Visible := (qrySource.FieldByName('REPORT_TYPE').AsString = 'A');
   if (qrySource.State <> dsInsert) then
      cbLEDESFormat.Enabled := False;

   if cbEntity.Text <> '' then
   begin
      with qryBranch do
      begin
         Close;
         ParamByName('entity').AsString := cbEntity.EditValue;
         Open;
      end;
   end;
end;

procedure TfrmBillTemplates.dbtbPathPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   tmpPath,
   OriginalPath: string;
begin
   inherited;
   OriginalPath := GetCurrentDir;
   case AButtonIndex of
      0: begin
            if odlgFile.Execute then
            begin
               if not qrySource.Modified then
                  qrySource.Edit;
                  qrySource.FieldByName('PATH').AsString := odlgFile.FileName;
                  if (pos('.rtm',qrySource.FieldByName('PATH').AsString) > 0) then
                     qrySource.FieldByName('REPORT_TYPE').AsString := 'A'
                  else
                     qrySource.FieldByName('REPORT_TYPE').AsString := 'W'
            end;
         end;
      1: begin
            if (pos('.rtm',qrySource.FieldByName('PATH').AsString) = 0) and
                (qrySource.FieldByName('PATH').AsString <> '') then
               MessageDlg('This is not a valid Insight Bill Template.',mtError, [mbOk], 0)
            else
            begin
               tmpPath := qrySource.FieldByName('PATH').AsString;
               if not qrySource.Modified then
                  qrySource.Edit;
               try
                  if (qrySource.FieldByName('PATH').AsString <> '') then
                  begin
                     BillReport.Template.FileName := '';
                     BillReport.Template.FileName := qrySource.FieldByName('PATH').AsString;
                     try
                        BillReport.Template.LoadFromFile;
                     except
                     //
                     end;
                  end;
                  try
                    ppDesigner.ShowModal;
                  except
                  //
                  end;
   //             qrySource.FieldByName('PATH').AsString := ppDesigner.CurrentReport.TextFileName;
                  if qrySource.FieldByName('REPORT_TYPE').AsString <> 'A' then
                     qrySource.FieldByName('REPORT_TYPE').AsString := 'A';

                  qrySource.FieldByName('PATH').AsString := tmpPath;
               finally
//                  ppDesigner.Free;
               end;
            end;
         end;
      2: begin
            ppReportExplorer.Execute;
         end;
   end;
   SetCurrentDir(OriginalPath)
end;

procedure TfrmBillTemplates.ppDesignerClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
//   qrySource.FieldByName('PATH').AsString := ppDesigner.CurrentReport.Template.FileName;
end;

procedure TfrmBillTemplates.dbtbCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   inherited;
   with TfrmGenericSearch.Create(Self) do
   begin
      SQL := 'SELECT CODE, DESCR, DEFAULTBILL AS DEFAULTITEM FROM BILLTEMPLATE ORDER BY CODE';
      if ShowModal = mrOK then
         Self.qrySource.Locate('CODE', qrySource.FieldByName('CODE').AsString, []);
      Release;
   end;
end;

procedure TfrmBillTemplates.ppDesignerCustomSaveDoc(Sender: TObject);
var
   ReportName: string;
begin
   inherited;
   ReportName := ppDesigner.CurrentReport.Template.FileName;
   qrySource.FieldByName('PATH').AsString := ReportName;
//   BillReport.Template.FileName := qrySource.FieldByName('PATH').AsString;
   BillReport.Template.SaveToFile;
   qrySource.FieldByName('PATH').AsString := ReportName;
end;

procedure TfrmBillTemplates.qrySourceBeforeInsert(DataSet: TDataSet);
begin
   inherited;
   dbtbPath.Properties.Buttons.Items[1].Visible := True;
end;

procedure TfrmBillTemplates.qrySourceAfterPost(DataSet: TDataSet);
begin
   inherited;
   dbtbPath.Properties.Buttons.Items[1].Visible := (qrySource.FieldByName('REPORT_TYPE').AsString = 'A');
   dbcPrinter.Visible := (qrySource.FieldByName('REPORT_TYPE').AsString = 'A');
//   lblPrinterPath.Visible := (qrySource.FieldByName('REPORT_TYPE').AsString = 'A');
//   cbUseAxiomCrysltalViewer.Visible := (qrySource.FieldByName('REPORT_TYPE').AsString = 'C');
   dbtbParamList.Visible := ((DataSet.FieldByName('REPORT_TYPE').AsString = 'C') or (DataSet.FieldByName('REPORT_TYPE').AsString = 'A'));
//   lblParamList.Visible := ((DataSet.FieldByName('REPORT_TYPE').AsString = 'C') or (DataSet.FieldByName('REPORT_TYPE').AsString = 'A'));
   cbLEDESFormat.Enabled := False;
end;

end.
