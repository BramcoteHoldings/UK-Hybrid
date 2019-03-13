unit ProjectNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit, Data.DB, MemDS,
  DBAccess, Uni, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls, cxButtons,
  cxListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBEdit, cxLabel, cxGroupBox, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxDataUtils,
  dxSkinscxPCPainter, dxflchrt, dxorgchr, dxdborgc,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxorgcedadv,
  cxSpinEdit, dxColorEdit, cxCurrencyEdit, dxStatusBar;



type
  TfrmProjectNew = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnLaunchAll: TcxButton;
    btnLaunchSelect: TcxButton;
    btnRemoveSelection: TcxButton;
    btnLaunchNone: TcxButton;
    pbSave: TcxButton;
    pbClose: TcxButton;
    cxButtonEdit1: TcxButtonEdit;
    qryProjectScaleLinks: TUniQuery;
    qryScalecost: TUniQuery;
    qryUpdate: TUniQuery;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dbteCode: TcxDBTextEdit;
    dbteDescr: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    btnSave: TcxButton;
    qryProjectNew: TUniQuery;
    dsProjectNew: TUniDataSource;
    btnCancel: TcxButton;
    qryWorkflowType: TUniQuery;
    dsWorkflowType: TUniDataSource;
    ActionManager1: TActionManager;
    actSaveClose: TAction;
    actSaveProject: TAction;
    grdAllScaleCostLevel1: TcxGridLevel;
    grdAllScaleCost: TcxGrid;
    tvAllScaleCost: TcxGridTableView;
    tvAllScaleCostCODE: TcxGridColumn;
    tvAllScaleCostDESCRIPTION: TcxGridColumn;
    tvAllScaleCostID: TcxGridColumn;
    grdSelScaleCostLevel1: TcxGridLevel;
    grdSelScaleCost: TcxGrid;
    tvSelScaleCost: TcxGridTableView;
    tvSelScaleCostCODE: TcxGridColumn;
    tvSelScaleCostDESCRIPTION: TcxGridColumn;
    tvSelScaleCostColumn3: TcxGridColumn;
    tvAllScaleCostEMPLOYEE_TYPE: TcxGridColumn;
    tvSelScaleCostEMPLOYEE_TYPE: TcxGridColumn;
    qryDisplayNames: TUniQuery;
    dsDisplayNames: TUniDataSource;
    tvAllScaleCostDAYS: TcxGridColumn;
    tvSelScaleCostDAYS: TcxGridColumn;
    dsProjectScaleLinks: TUniDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    tvSelScaleCostSEQ: TcxGridColumn;
    tvSelScaleCostPARENT: TcxGridColumn;
    tvAllScaleCostPARENT: TcxGridColumn;
    btnViewChart: TcxButton;
    actShowChart: TAction;
    cxButton4: TcxButton;
    actSave: TAction;
    ocWorkflowChart: TdxDbOrgChart;
    tvSelScaleCostCOLOUR: TcxGridColumn;
    tvSelScaleCostSHAPE: TcxGridColumn;
    qryProjectScaleLinksUpdate: TUniQuery;
    qryProjectScaleLinksInsert: TUniQuery;
    actCancelProject: TAction;
    tvAllScaleCost6: TcxGridColumn;
    tvAllScaleCost7: TcxGridColumn;
    qryScalecostFullList: TUniQuery;
    dsScalecostFullList: TUniDataSource;
    tvSelScaleCostID: TcxGridColumn;
    tvAllScaleCostPREC_ID: TcxGridColumn;
    tvSelScaleCostPREC_ID: TcxGridColumn;
    tvAllScaleCostempty1: TcxGridColumn;
    tvAllScaleCostempty2: TcxGridColumn;
    projStatusBar: TdxStatusBar;
    tvSelScaleCostBUDGET_LOW: TcxGridColumn;
    tvSelScaleCostBUDGET_HIGH: TcxGridColumn;
    tvSelScaleCostTIME_ESTIMATE: TcxGridColumn;
    tvSelScaleCostMAX_TIME_ESTIMATE: TcxGridColumn;
    tvAllScaleCostTIME_ESTIMATE: TcxGridColumn;
    tvAllScaleCostMAX_TIME_ESTIMATE: TcxGridColumn;
    tvAllScaleCostHIGH_BUDGET: TcxGridColumn;
    tvAllScaleCostlOW_BUDGET: TcxGridColumn;
    qryScalecostCODE: TStringField;
    qryScalecostTYPE: TStringField;
    qryScalecostCREATED: TDateTimeField;
    qryScalecostDESCR: TStringField;
    qryScalecostNOTES: TStringField;
    qryScalecostUNIT: TStringField;
    qryScalecostPARENT: TStringField;
    qryScalecostDAYS: TSmallintField;
    qryScalecostDEFAULTTIME: TLargeintField;
    qryScalecostAMOUNT: TFloatField;
    qryScalecostRATE: TFloatField;
    qryScalecostBILLTYPE: TStringField;
    qryScalecostZERO_FEE: TStringField;
    qryScalecostPAID_YN: TStringField;
    qryScalecostLEAVE_YN: TStringField;
    qryScalecostACTIVE: TStringField;
    qryScalecostAUTO_TIMER: TStringField;
    qryScalecostUTBMS_CODE: TStringField;
    qryScalecostORDER_BY: TLargeintField;
    qryScalecostITEM_UNIT: TStringField;
    qryScalecostTIME_CODE: TStringField;
    qryScalecostDFLT_TIME_UNITS: TFloatField;
    qryScalecostNSCALECOST: TFloatField;
    qryScalecostEMPLOYEE_TYPE: TStringField;
    qryScalecostBUDGET_LOW: TFloatField;
    qryScalecostBUDGET_HIGH: TFloatField;
    qryScalecostTIME_ESTIMATE: TFloatField;
    qryScalecostPARENT_ID: TFloatField;
    qryScalecostPREC_ID: TFloatField;
    qryScalecostMAX_TIME_ESTIMATE: TFloatField;
    qryScalecostEST_HOURLY_COST: TFloatField;
    qryScalecostPROJECT_TASK: TStringField;
    procedure pbCloseClick(Sender: TObject);
    procedure qryProjectNewNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSaveCloseUpdate(Sender: TObject);
    procedure actSaveProjectUpdate(Sender: TObject);
    procedure actSaveProjectExecute(Sender: TObject);
    procedure btnLaunchSelectClick(Sender: TObject);
    procedure btnLaunchAllClick(Sender: TObject);
    procedure btnRemoveSelectionClick(Sender: TObject);
    procedure btnLaunchNoneClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure actShowChartUpdate(Sender: TObject);
    procedure actShowChartExecute(Sender: TObject);
    procedure actSaveCloseExecute(Sender: TObject);
    procedure qryProjectScaleLinksNewRecord(DataSet: TDataSet);
    procedure ocWorkflowChartCreateNode(Sender: TObject; Node: TdxOcNode);
    procedure actCancelProjectUpdate(Sender: TObject);
    procedure actCancelProjectExecute(Sender: TObject);
    procedure tvSelScaleCostDataControllerDataChanged(Sender: TObject);
    procedure tvSelScaleCostPARENTPropertiesInitPopup(Sender: TObject);
    procedure dbteCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    TemplateSeq: integer;
    bGridChanged: boolean;

    procedure SetProjectDetails(AProjectID: integer);
    procedure ProjectScaleCost(AProjectID: integer);
    procedure ListBoxMoveSelected(lbFrom: TcxGridTableView; lbTo: TcxGridTableView);
    procedure ListBoxMoveAll(lbFrom: TcxGridTableView; lbTo: TcxGridTableView);

    function GetShape(const AShapeName: String): TdxOcShape;
    function GetNodeAlign(const AAlignName: string): TdxOcNodeAlign;
    function GetImageAlign(const AAlignName: string): TdxOcImageAlign;
    function CheckTaskExists(AProjTempl, AScaleCost: integer): boolean;
    procedure SetStatusBar;
  public
    { Public declarations }
    procedure AddProject;
    procedure EditProject(Anprojecttempl: integer);
  end;

var
  frmProjectNew: TfrmProjectNew;

implementation

{$R *.dfm}

uses
   axiomdata, miscfunc, project_chart;



procedure TfrmProjectNew.btnLaunchAllClick(Sender: TObject);
begin
   ListBoxMoveAll(tvAllScaleCost, tvSelScaleCost);
   bGridChanged := True;
end;

procedure TfrmProjectNew.btnLaunchNoneClick(Sender: TObject);
begin
    if MsgAsk('This action will remove all entries and delete them from the Database.  Are you sure you want to continue?') = mrYes then
    begin
       ListBoxMoveAll(tvSelScaleCost, tvAllScaleCost);
       ProjectScaleCost(qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger);
       bGridChanged := True;
       qryProjectScaleLinks.CLose;
       qryProjectScaleLinks.Open;
    end;
end;

procedure TfrmProjectNew.btnLaunchSelectClick(Sender: TObject);
begin
   ListBoxMoveSelected(tvAllScaleCost, tvSelScaleCost);
   bGridChanged := True;
end;

type
  TcxDataControllerAccess = class(TcxCustomDataController);

procedure TfrmProjectNew.cxButton1Click(Sender: TObject);
var
   DC: TcxDataControllerAccess;
   Idx,
   rCount: Integer;
begin
   rCount := tvSelScaleCost.DataController.RecordCount;
   DC := TcxDataControllerAccess(tvSelScaleCost.DataController);
   Idx := DC.FocusedRecordIndex;
   if ((Idx -1) >= 0) then
   begin
      DC.DataStorage.Move(Idx, Idx - 1);
      DC.FocusedRecordIndex := Idx - 1;  // No error checking!
   end;
   bGridChanged := True;
end;

procedure TfrmProjectNew.cxButton2Click(Sender: TObject);
var
   DC: TcxDataControllerAccess;
   Idx,
   rCount: Integer;
begin
   rCount := tvSelScaleCost.DataController.RecordCount;
   DC := TcxDataControllerAccess(tvSelScaleCost.DataController);
   Idx := DC.FocusedRecordIndex;
   if ((Idx + 1) <= (rCount-1)) then
   begin
      DC.DataStorage.Move(Idx, Idx + 1);
      DC.FocusedRecordIndex := Idx + 1;  // No error checking!
   end;
   bGridChanged := True;
end;

procedure TfrmProjectNew.dbteCodePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if TableString('PROJECT_TEMPLATE','CODE',string(DisplayValue), 'CODE') = DisplayValue then
   begin
      MsgErr('This code already exists.  Please enter a new code for this Project template');
      DisplayValue := '';
   end;
end;

procedure TfrmProjectNew.btnRemoveSelectionClick(Sender: TObject);
begin
   ListBoxMoveSelected(tvSelScaleCost, tvAllScaleCost);
   bGridChanged := True;
end;

procedure TfrmProjectNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryWorkflowType.Close;
   qryProjectNew.Close;
   qryDisplayNames.Close;
   qryProjectScaleLinks.Close;
   qryScaleCost.Close;
   qryScalecostFullList.Close;
end;

procedure TfrmProjectNew.FormCreate(Sender: TObject);
begin
   qryWorkflowType.Open;
   qryDisplayNames.ParamByName('entity').AsString := dmAxiom.Entity;
   qryDisplayNames.Open;


 {  DBTree.WidthFieldName  := 'Width';
   DBTree.HeightFieldName := 'Height';
   DBTree.ChAlignFieldName := 'Align_num';
   DBTree.ImAlignFieldName := 'ImageAlign_num';
   DBTree.ShapeFieldName := 'Type_num';
   DBTree.ColorFieldName := 'Color';  }

end;

procedure TfrmProjectNew.pbCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmProjectNew.qryProjectNewNewRecord(DataSet: TDataSet);
begin
    DataSet.FieldByName('NPROJECTTEMPL').AsInteger := GetSequenceNumber('SQNC_PROJECT_TEMPLATE_ID');
   //DataSet.FieldByName('NPROJECTTEMPL').AsInteger := GetSeqNum('SQNC_PROJECT_TEMPLATE_ID');  Creelman strikes again
end;

procedure TfrmProjectNew.qryProjectScaleLinksNewRecord(DataSet: TDataSet);
begin
   TemplateSeq := GetSequenceNumber('SQNC_PROJ_TEMPLATE_LINK_ID');
   DataSet.FieldByName('ID').AsInteger := TemplateSeq;
end;

procedure TfrmProjectNew.SetProjectDetails(AProjectID: integer);
VAR
   I: integer;
begin
   // Load the scalecosts
   tvAllScaleCost.DataController.RecordCount := 0;

   qryScaleCost.Close;
   qryScaleCost.ParamByName('NPROJECTTEMPL').AsInteger := AProjectID;
   qryScaleCost.Open;
   qryScaleCost.Last;
   qryScaleCost.First;
   tvAllScaleCost.BeginUpdate();
   I := 0;
   tvAllScaleCost.DataController.RecordCount := qryScaleCost.RecordCount;
   while (qryScaleCost.EOF = False) do
   begin
      tvAllScaleCost.DataController.Values[I, 0] := qryScaleCost.FieldByName('CODE').AsString;
      tvAllScaleCost.DataController.Values[I, 1] := qryScaleCost.FieldByName('DESCR').AsString;
      tvAllScaleCost.DataController.Values[I, 2] := qryScaleCost.FieldByName('EMPLOYEE_TYPE').AsString;
      tvAllScaleCost.DataController.Values[I, 3] := qryScaleCost.FieldByName('NSCALECOST').AsInteger;
      tvAllScaleCost.DataController.Values[I, 4] := qryScaleCost.FieldByName('DAYS').AsInteger;
      if qryScaleCost.FieldByName('PARENT').IsNull = False then
         tvAllScaleCost.DataController.Values[I, 5] := qryScaleCost.FieldByName('PARENT').AsInteger
      else
         tvAllScaleCost.DataController.Values[I, 5] := 0;
      tvAllScaleCost.DataController.Values[I, 6] := qryScaleCost.FieldByName('BUDGET_LOW').AsCurrency;
      tvAllScaleCost.DataController.Values[I, 7] := qryScaleCost.FieldByName('BUDGET_HIGH').AsCurrency;
      if qryScaleCost.FieldByName('PREC_ID').IsNull = False then
         tvAllScaleCost.DataController.Values[I, 10]:= qryScaleCost.FieldByName('PREC_ID').AsInteger
      else
         tvAllScaleCost.DataController.Values[I, 10]:= 0;
      tvAllScaleCost.DataController.Values[I, 11] := qryScaleCost.FieldByName('BUDGET_LOW').AsCurrency;
      tvAllScaleCost.DataController.Values[I, 12] := qryScaleCost.FieldByName('BUDGET_HIGH').AsCurrency;
      tvAllScaleCost.DataController.Values[I, 13] := qryScaleCost.FieldByName('TIME_ESTIMATE').AsFloat;
      tvAllScaleCost.DataController.Values[I, 14] := qryScaleCost.FieldByName('MAX_TIME_ESTIMATE').AsFloat;
      qryScaleCost.Next;
      Inc(I);
   end;
   tvAllScaleCost.EndUpdate();
   qryScaleCost.Close;

   // Load this assigned scalecosts
   tvSelScaleCost.DataController.RecordCount := 0;
   qryProjectScaleLinks.Close;
   qryProjectScaleLinks.ParamByName('P_val').AsInteger := AProjectID;
   qryProjectScaleLinks.Open;
   qryProjectScaleLinks.Last;
   qryProjectScaleLinks.First;
   tvSelScaleCost.BeginUpdate();
   I := 0;
   tvSelScaleCost.DataController.RecordCount := qryProjectScaleLinks.RecordCount;
   while not qryProjectScaleLinks.EOF do
   begin
      tvSelScaleCost.DataController.Values[I, 0] := qryProjectScaleLinks.FieldByName('CODE').AsString;
      tvSelScaleCost.DataController.Values[I, 1] := qryProjectScaleLinks.FieldByName('DESCR').AsString;
      tvSelScaleCost.DataController.Values[I, 2] := qryProjectScaleLinks.FieldByName('EMPLOYEE_TYPE').AsString;
      tvSelScaleCost.DataController.Values[I, 3] := qryProjectScaleLinks.FieldByName('NSCALECOST').AsInteger;
      tvSelScaleCost.DataController.Values[I, 4] := qryProjectScaleLinks.FieldByName('DAYS').AsInteger;
      tvSelScaleCost.DataController.Values[I, 5] := qryProjectScaleLinks.FieldByName('PARENT_ID').AsInteger;
      tvSelScaleCost.DataController.Values[I, 6] := qryProjectScaleLinks.FieldByName('SEQ_ORDER').AsInteger;
      tvSelScaleCost.DataController.Values[I, 7] := qryProjectScaleLinks.FieldByName('COLOUR').AsInteger;
      tvSelScaleCost.DataController.Values[I, 8] := qryProjectScaleLinks.FieldByName('TYPE').AsString;
      tvSelScaleCost.DataController.Values[I, 9] := qryProjectScaleLinks.FieldByName('ID').AsString;
      tvSelScaleCost.DataController.Values[I, 10] := qryProjectScaleLinks.FieldByName('PREC_ID').AsInteger;

      tvSelScaleCost.DataController.Values[I, 11] := qryProjectScaleLinks.FieldByName('BUDGET_LOW').AsFloat;
      tvSelScaleCost.DataController.Values[I, 12] := qryProjectScaleLinks.FieldByName('BUDGET_HIGH').AsFloat;
      tvSelScaleCost.DataController.Values[I, 13] := qryProjectScaleLinks.FieldByName('TIME_ESTIMATE').AsFloat;
      tvSelScaleCost.DataController.Values[I, 14] := qryProjectScaleLinks.FieldByName('MAX_TIME_ESTIMATE').AsFloat;
      qryProjectScaleLinks.Next;
      Inc(I);
   end;
   tvSelScaleCost.EndUpdate;
//   qryProjectScaleLinks.Close;
end;
procedure TfrmProjectNew.tvSelScaleCostDataControllerDataChanged(
  Sender: TObject);
begin
   bGridChanged := True;
end;

procedure TfrmProjectNew.tvSelScaleCostPARENTPropertiesInitPopup(
  Sender: TObject);
begin
   qryScalecostFullList.Close;
   qryScalecostFullList.ParamByName('NPROJECTTEMPL').AsInteger := qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger;
   qryScalecostFullList.Open;
end;

procedure TfrmProjectNew.actCancelProjectExecute(Sender: TObject);
begin
   if qryProjectNew.State in [dsInsert, dsEdit] then
      qryProjectNew.Cancel;
end;

procedure TfrmProjectNew.actCancelProjectUpdate(Sender: TObject);
begin
   actCancelProject.Enabled := (qryProjectNew.State in [dsInsert, dsEdit]);
end;

procedure TfrmProjectNew.actSaveCloseExecute(Sender: TObject);
var
  iCtr: integer;
begin
   try
      if tvSelScaleCost.DataController.RowCount = 0 then
         ProjectScaleCost(qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger);

      with qryProjectScaleLinks do
      begin
         Open;
         for iCtr := 0 to tvSelScaleCost.DataController.RowCount - 1 do
         begin
//         if qryProjectScaleLinks.Locate('nprojecttempl;NSCALECOST', VarArrayOf([qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger, tvSelScaleCost.DataController.GetValue(iCtr,2)]), []) then
//         begin
            if CheckTaskExists(qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger,
                              integer(tvSelScaleCost.DataController.GetValue(iCtr,3))) = True then
            begin
               with qryProjectScaleLinksUpdate do
               begin
                  if ((VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr,9)) = False) and
                     (tvSelScaleCost.DataController.GetValue(iCtr,9) <> 0)) then
                     ParamByName('ID').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr,9)
                  else
                  begin
                     TemplateSeq := GetSequenceNumber('SQNC_PROJ_TEMPLATE_LINK_ID');
                     ParamByName('ID').AsInteger := TemplateSeq;
                  end;

                  if (not VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr, 2))) then
                     ParamByName('EMPLOYEE_TYPE').AsString := tvSelScaleCost.DataController.GetValue(iCtr, 2);
                  if (not VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr, 4))) or
                     (tvSelScaleCost.DataController.GetValue(iCtr, 4) <> '') then
                     ParamByName('DAYS').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr, 4)
                  else
                     ParamByName('DAYS').AsInteger := 1;
                  ParamByName('SEQ_ORDER').AsInteger := (iCtr + 1);
                  ParamByName('COLOUR').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr, 7);
                  ParamByName('TYPE').AsString := tvSelScaleCost.DataController.GetValue(iCtr, 8);
                  ParamByName('nprojecttempl').AsInteger := qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger;
                  ParamByName('NSCALECOST').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr,3);
                  if ((VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr,5)) = False) and
                     (tvSelScaleCost.DataController.GetValue(iCtr,5) <> 0)) then
                     ParamByName('PARENT_ID').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr,5)
                  else
                     ParamByName('PARENT_ID').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr,9);

                  if VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr,11)) = false then
                     ParamByName('BUDGET_LOW').AsFloat := tvSelScaleCost.DataController.GetValue(iCtr,11)
                  else
                     ParamByName('BUDGET_LOW').AsFloat := 0;

                  if VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr,12)) = false then
                     ParamByName('BUDGET_HIGH').AsFloat := tvSelScaleCost.DataController.GetValue(iCtr,12)
                  else
                     ParamByName('BUDGET_HIGH').AsFloat := 0;

                  if VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr,13)) = false then
                     ParamByName('TIME_ESTIMATE').AsFloat := tvSelScaleCost.DataController.GetValue(iCtr,13)
                  else
                     ParamByName('TIME_ESTIMATE').AsFloat := 0;

                  if VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr,14)) = false then
                     ParamByName('MAX_TIME_ESTIMATE').AsFloat := tvSelScaleCost.DataController.GetValue(iCtr,14)
                  else
                     ParamByName('MAX_TIME_ESTIMATE').AsFloat := 0;

                  ExecSQL;
               end;
            end
            else
            begin
               with qryProjectScaleLinksInsert do
               begin
                  TemplateSeq := GetSequenceNumber('SQNC_PROJ_TEMPLATE_LINK_ID');

                  ParamByName('nprojecttempl').AsInteger := qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger;
                  ParamByName('NSCALECOST').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr,3);
                  ParamByName('ID').AsInteger := TemplateSeq;

                  tvSelScaleCost.DataController.Values[iCtr, 9] := TemplateSeq;

                  if (not VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr, 2))) then
                     ParamByName('EMPLOYEE_TYPE').AsString := tvSelScaleCost.DataController.GetValue(iCtr, 2);
                  if (not VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr, 4))) or
                     (tvSelScaleCost.DataController.GetValue(iCtr, 4) <> '') then
                     ParamByName('DAYS').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr, 4)
                  else
                     ParamByName('DAYS').AsInteger := 1;
                  ParamByName('SEQ_ORDER').AsInteger := (iCtr + 1);

                  if VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr, 7)) then
                  begin
                     ParamByName('COLOUR').AsInteger := clWhite;
                     tvSelScaleCost.DataController.Values[iCtr, 7] := clWhite;
                  end
                  else
                     ParamByName('COLOUR').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr, 7);

                  if VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr, 8)) then
                  begin
                     ParamByName('TYPE').AsString := 'Rectangle';
                     tvSelScaleCost.DataController.Values[iCtr, 8] := 'Rectangle';
                  end
                  else
                     ParamByName('TYPE').AsString := tvSelScaleCost.DataController.GetValue(iCtr, 8);

                  if ((VarIsNull(tvSelScaleCost.DataController.GetValue(iCtr,5)) = False) and
                     (tvSelScaleCost.DataController.GetValue(iCtr,5) <> 0)) then
                     ParamByName('PARENT_ID').AsInteger := tvSelScaleCost.DataController.GetValue(iCtr,5)
                  else
                     ParamByName('PARENT_ID').AsInteger := TemplateSeq;

                  ParamByName('BUDGET_LOW').AsFloat := tvSelScaleCost.DataController.GetValue(iCtr,11);
                  ParamByName('BUDGET_HIGH').AsFloat := tvSelScaleCost.DataController.GetValue(iCtr,12);
                  ParamByName('TIME_ESTIMATE').AsFloat := tvSelScaleCost.DataController.GetValue(iCtr,13);
                  ParamByName('MAX_TIME_ESTIMATE').AsFloat := tvSelScaleCost.DataController.GetValue(iCtr,14);

                  ExecSQL;
               end;
            end;
//         end;
         end;
      end;
   finally
      bGridChanged := False;
      if TAction(Sender).Name = 'actSaveClose' then
         Close
      else if TAction(Sender).Name = 'actSave' then
      begin
         qryProjectScaleLinks.Close;
         qryProjectScaleLinks.Open;
//         SetProjectDetails(qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger);
      end;
   end;
end;

procedure TfrmProjectNew.actSaveProjectExecute(Sender: TObject);
begin
   qryProjectNew.Post;
   SetProjectDetails(qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger);
//   btnSave.Enabled := False;
end;

procedure TfrmProjectNew.actSaveProjectUpdate(Sender: TObject);
begin
   actSaveProject.Enabled := (qryProjectNew.State <> dsBrowse) and (dbteCode.Text <> '') and
                             (dbteDescr.Text <> '') ;
end;

procedure TfrmProjectNew.actSaveCloseUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := (tvSelScaleCost.DataController.RecordCount > 0) and
                              (bGridChanged = True);
end;

procedure TfrmProjectNew.actShowChartExecute(Sender: TObject);
var
   frmProjectChart: TfrmProjectChart;
begin
   try
      frmProjectChart := TfrmProjectChart.Create(Self);
      frmProjectChart.Display_chart(qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger);
      frmProjectChart.ShowModal;
   finally
      frmProjectChart.Free;
   end;
end;

procedure TfrmProjectNew.actShowChartUpdate(Sender: TObject);
begin
   actShowChart.Enabled := (tvSelScaleCost.DataController.RecordCount > 0);
end;

procedure TfrmProjectNew.AddProject;
begin
   qryProjectNew.Open;
   qryProjectNew.Insert;
end;

procedure TfrmProjectNew.ProjectScaleCost(AProjectID: integer);
begin
  qryUpdate.SQL.Text := 'DELETE FROM proj_templ_scalecost_link WHERE nprojecttempl = :nprojecttempl';
  qryUpdate.ParamByName('nprojecttempl').AsInteger :=  AProjectID;
  qryUpdate.ExecSQL;
end;

procedure TfrmProjectNew.EditProject(Anprojecttempl: integer);
begin
   qryProjectNew.Close;
   qryProjectNew.ParamByName('nprojecttempl').AsInteger := Anprojecttempl;
   qryProjectNew.Open;
   qryProjectScaleLinks.Close;
   qryProjectScaleLinks.ParamByName('p_val').AsInteger := Anprojecttempl;
   qryProjectScaleLinks.Open;
   SetProjectDetails(Anprojecttempl);
   Self.Caption := 'Edit Project Template';
   qryScalecostFullList.Close;
   qryScalecostFullList.ParamByName('NPROJECTTEMPL').AsInteger := qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger;
   qryScalecostFullList.Open;
   SetStatusBar;
end;

procedure TfrmProjectNew.ListBoxMoveSelected(lbFrom: TcxGridTableView; lbTo: TcxGridTableView);
var
  iCtr,
  iSel,
  I: integer;
begin
{ Note - MultiSelect must be true for this to work }
   if lbFrom.Controller.SelectedRowCount > 0 then
      case lbFrom.Controller.SelectedRowCount of
         1: // Only one selected - do it the simple way
            begin
               // RecordIndex provides the absolute index
               iSel := lbFrom.Controller.SelectedRecords[iCtr].RecordIndex;
               I := lbTo.DataController.AppendRecord;
               lbTo.DataController.Values[I, 0] := lbFrom.DataController.GetValue(iSel,0);
               lbTo.DataController.Values[I, 1] := lbFrom.DataController.GetValue(iSel,1);
               lbTo.DataController.Values[I, 2] := lbFrom.DataController.GetValue(iSel,2);
               lbTo.DataController.Values[I, 3] := lbFrom.DataController.GetValue(iSel,3);
               lbTo.DataController.Values[I, 4] := lbFrom.DataController.GetValue(iSel,4);
               lbTo.DataController.Values[I, 5] := lbFrom.DataController.GetValue(iSel,5);  //Parent
               lbTo.DataController.Values[I, 10] := lbFrom.DataController.GetValue(iSel,10);  //prec_id
               lbTo.DataController.Values[I, 11] := lbFrom.DataController.GetValue(iSel,11);  //BUDGET_LOW
               lbTo.DataController.Values[I, 12] := lbFrom.DataController.GetValue(iSel,12);  //BUDGET_HIGH

               lbTo.DataController.Values[I, 13] := lbFrom.DataController.GetValue(iSel,13);  //TIME_ESTIMATE
               lbTo.DataController.Values[I, 14] := lbFrom.DataController.GetValue(iSel,14);  //MAX_TIME_ESTIMATE
               lbFrom.DataController.DeleteRecord(iSel);
            end;
         else  // Multiple selected items
         begin
            for iCtr := (lbFrom.Controller.SelectedRecordCount - 1) downto 0 do
            begin
               iSel := lbFrom.Controller.SelectedRecords[iCtr].RecordIndex;
               // Move this one
               I := lbTo.DataController.AppendRecord;
               lbTo.DataController.Values[I, 0] := lbFrom.DataController.GetValue(iSel,0);
               lbTo.DataController.Values[I, 1] := lbFrom.DataController.GetValue(iSel,1);
               lbTo.DataController.Values[I, 2] := lbFrom.DataController.GetValue(iSel,2);
               lbTo.DataController.Values[I, 3] := lbFrom.DataController.GetValue(iSel,3);
               lbTo.DataController.Values[I, 4] := lbFrom.DataController.GetValue(iSel,4);
               lbTo.DataController.Values[I, 5] := lbFrom.DataController.GetValue(iSel,5);      // pARENT
               lbTo.DataController.Values[I, 10] := lbFrom.DataController.GetValue(iSel,10);  //prec_id

               lbTo.DataController.Values[I, 11] := lbFrom.DataController.GetValue(iSel,11);  //prec_id
               lbTo.DataController.Values[I, 12] := lbFrom.DataController.GetValue(iSel,12);  //BUDGET_LOW
               lbTo.DataController.Values[I, 13] := lbFrom.DataController.GetValue(iSel,13);  //TIME_ESTIMATE
               lbTo.DataController.Values[I, 14] := lbFrom.DataController.GetValue(iSel,14);  //MAX_TIME_ESTIMATE
            end;
            lbFrom.DataController.DeleteSelection;
         end;
   end;
   SetStatusBar;
end;

procedure TfrmProjectNew.ListBoxMoveAll(lbFrom: TcxGridTableView; lbTo: TcxGridTableView);
var
  iCtr, iSel, i: integer;
begin
{ Note - MultiSelect must be true for this to work }
   iSel := -1;
   lbTo.BeginUpdate();
   lbFrom.BeginUpdate();
///   lbTo.DataController.RecordCount := lbFrom.DataController.RecordCount + lbTo.DataController.RecordCount;
   for iCtr := 0 to lbFrom.DataController.RowCount - 1 do
   begin
      i := lbTo.DataController.AppendRecord;
      lbTo.DataController.Values[i, 0] := lbFrom.DataController.GetValue(iCtr,0);
      lbTo.DataController.Values[i, 1] := lbFrom.DataController.GetValue(iCtr,1);
      lbTo.DataController.Values[i, 2] := lbFrom.DataController.GetValue(iCtr,2);
      lbTo.DataController.Values[i, 3] := lbFrom.DataController.GetValue(iCtr,3);
      lbTo.DataController.Values[i, 4] := lbFrom.DataController.GetValue(iCtr,4);
      lbTo.DataController.Values[i, 5] := lbFrom.DataController.GetValue(iCtr,5);      // pARENT
      lbTo.DataController.Values[i, 10] := lbFrom.DataController.GetValue(iCtr,10);  //prec_id

      lbTo.DataController.Values[i, 11] := lbFrom.DataController.GetValue(iSel,11);  //prec_id
      lbTo.DataController.Values[i, 12] := lbFrom.DataController.GetValue(iSel,12);  //BUDGET_LOW
      lbTo.DataController.Values[i, 13] := lbFrom.DataController.GetValue(iSel,13);  //TIME_ESTIMATE
      lbTo.DataController.Values[i, 14] := lbFrom.DataController.GetValue(iSel,14);  //MAX_TIME_ESTIMATE
   end;
   lbFrom.DataController.RecordCount := 0;
   lbTo.EndUpdate;
   lbFrom.EndUpdate;
   SetStatusBar;
end;

procedure TfrmProjectNew.ocWorkflowChartCreateNode(Sender: TObject;
  Node: TdxOcNode);
begin
   with Node, qryProjectScaleLinks do
   begin
{      if FindField('width').AsInteger > 50 then
         Width := FindField('width').AsInteger;
      if FindField('height').AsInteger > 50 then
         Height := FindField('height').AsInteger;}
      Shape := GetShape(FindField('type').AsString);
      Color := FindField('colour').AsInteger;
//      Node.ChildAlign := GetNodeAlign(FindField('Align').AsString);
//      Node.ImageAlign := GetImageAlign(FindField('ImageAlign').AsString);
   end;
end;

function TfrmProjectNew.GetShape(const AShapeName: String): TdxOcShape;
const
  ShapeMap: array[TdxOcShape] of string = ('Rectangle', 'Round Rect', 'Ellipse', 'Diamond');
var
   AIndex: TdxOcShape;
begin
   Result := Low(TdxOcShape);
   for AIndex := Low(TdxOcShape) to High(TdxOcShape) do
      if SameText(ShapeMap[AIndex], AShapeName) then
      begin
         Result := AIndex;
         Break;
      end;
end;

function TfrmProjectNew.GetNodeAlign(const AAlignName: string): TdxOcNodeAlign;
const
   AlignMap: array[TdxOcNodeAlign] of string = ('Left', 'Center', 'Right');
var
   AIndex: TdxOcNodeAlign;
begin
   Result := Low(TdxOcNodeAlign);
   for AIndex := Low(TdxOcNodeAlign) to High(TdxOcNodeAlign) do
      if SameText(AlignMap[AIndex], AAlignName) then
      begin
         Result := AIndex;
         Break;
      end;
end;

function TfrmProjectNew.GetImageAlign(const AAlignName: string): TdxOcImageAlign;
const
  AlignMap: array[TdxOcImageAlign] of string = (
   'None',
   'Left-Top', 'Left-Center', 'Left-Bottom',
   'Right-Top', 'Right-Center', 'Right-Bottom',
   'Top-Left', 'Top-Center', 'Top-Right',
   'Bottom-Left', 'Bottom-Center', 'Bottom-Right');
var
   AIndex: TdxOcImageAlign;
begin
   Result := Low(TdxOcImageAlign);
   for AIndex := Low(TdxOcImageAlign) to High(TdxOcImageAlign) do
      if SameText(AlignMap[AIndex], AAlignName) then
      begin
         Result := AIndex;
         Break;
      end;
end;

function TfrmProjectNew.CheckTaskExists(AProjTempl, AScaleCost: integer): boolean;
begin
   with dmAxiom.qryTmp do
   begin
      Close;
      SQL.Text := 'select 1 from PROJ_TEMPL_SCALECOST_LINK where NPROJECTTEMPL = :NPROJECTTEMPL and NSCALECOST = :NSCALECOST';
      ParamByName('NPROJECTTEMPL').AsInteger := AProjTempl;
      ParamByName('NSCALECOST').AsInteger := AScaleCost;
      Open;
      Result := (EOF = False);
   end;
end;

procedure TfrmProjectNew.SetStatusBar;
var
   i: integer;
   lCodeList: string;
begin
   try
      tvSelScaleCost.BeginUpdate();
      for I := 0 to (tvSelScaleCost.DataController.RecordCount - 1) do
      begin
         if lCodeList <> '' then
            lCodeList := lCodeList + ',';
         lCodeList := lCodeList + QuotedStr(tvSelScaleCost.DataController.GetValue(i, 0));
      end;
   finally
      tvSelScaleCost.EndUpdate();
      if (lCodeList <> '') then
         lCodeList := '('+lCodeList+')';
   end;


   // get project totals to display
   if (lCodeList <> '') then
   begin
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'SELECT SUM (proj_templ_scalecost_link.budget_low) as low_budget, SUM (proj_templ_scalecost_link.budget_high) as high_budget, sum(proj_templ_scalecost_link.time_estimate) as time_estimate '+
                     'FROM scalecost, proj_templ_scalecost_link  '+
                     'WHERE '+
                     'nprojecttempl = :nprojecttempl '+
                     'AND scalecost.nscalecost = proj_templ_scalecost_link. nscalecost '+
                     'AND scalecost.code in '+ lCodeList ;
         ParamByName('NPROJECTTEMPL').AsInteger := qryProjectNew.FieldByName('NPROJECTTEMPL').AsInteger;
         Open;
         projStatusBar.Panels.Items[0].Text := 'Total Value From: '+ CurrToStrF(FieldByName('low_budget').AsCurrency, ffCurrency, 2) +
                                      ' To: '+ CurrToStrF(FieldByName('high_budget').AsCurrency, ffCurrency, 2) + '  Units: ' +FieldByName('time_estimate').asstring;
         Close;
      end;
   end;
end;

end.
