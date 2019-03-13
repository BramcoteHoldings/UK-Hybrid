unit PrecedentSearchList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Vcl.ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit,
  Vcl.StdCtrls, Vcl.Menus, cxButtons;

type
  TfrmPrecedentSearch = class(TForm)
    tvPrecedentList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Label79: TLabel;
    edSearchFileName: TcxTextEdit;
    tmrSearch: TTimer;
    tvPrecedentListNPREC: TcxGridDBColumn;
    tvPrecedentListFILENAME: TcxGridDBColumn;
    tvPrecedentListPATH: TcxGridDBColumn;
    tvPrecedentListPREC: TcxGridDBColumn;
    tvPrecedentListDOCID: TcxGridDBColumn;
    tvPrecedentListCODE: TcxGridDBColumn;
    tvPrecedentListDOCTYPE: TcxGridDBColumn;
    tvPrecedentListNPRECCATEGORY: TcxGridDBColumn;
    tvPrecedentListNPRECCLASSIFICATION: TcxGridDBColumn;
    btnSelect: TcxButton;
    cxButton2: TcxButton;
    procedure edSearchFileNamePropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure tvPrecedentListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure MakePrecSQL;
  public
    { Public declarations }
  end;

var
  frmPrecedentSearch: TfrmPrecedentSearch;

implementation

{$R *.dfm}

uses
   axiomdata;

procedure TfrmPrecedentSearch.cxButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmPrecedentSearch.edSearchFileNamePropertiesChange(Sender: TObject);
begin
   tmrSearch.Enabled := true;
end;

procedure TfrmPrecedentSearch.MakePrecSQL;
begin
   dmAxiom.qryPrecedentList.Close;
   dmAxiom.qryPrecedentList.SQL.Clear;

   dmAxiom.qryPrecedentList.SQL.Add('SELECT DISTINCT p.nprec, p.descr AS filename, p.PATH, 1 AS prec, ');
   dmAxiom.qryPrecedentList.SQL.Add('        p.nprec AS docid, ''Precedents'' AS NAME, NULL AS descr,');
   dmAxiom.qryPrecedentList.SQL.Add('        NULL AS code, NULL AS doctype, NULL AS npreccategory,');
   dmAxiom.qryPrecedentList.SQL.Add('        NULL AS nprecclassification ');
   dmAxiom.qryPrecedentList.SQL.Add('   FROM prec p CROSS JOIN mattertype m ');
   dmAxiom.qryPrecedentList.SQL.Add('  WHERE p.nprec IN (SELECT workflowtypelink.nprec ');
   dmAxiom.qryPrecedentList.SQL.Add('                       FROM workflowtypelink ');
   dmAxiom.qryPrecedentList.SQL.Add('                      WHERE workflowtype = m.workflowtype) ');
//   dmAxiom.qryPrecedentList.SQL.Add('AND P.NPRECCATEGORY = ' + IntToStr(FPRECCATEGORY) );
   if edSearchFileName.Text <> '' then
      dmAxiom.qryPrecedentList.SQL.Add(' AND upper(P.descr) like '+ QuotedStr('%'+UpperCase(edSearchFileName.Text)+'%') );
   dmAxiom.qryPrecedentList.SQL.Add(' union ');
   dmAxiom.qryPrecedentList.SQL.Add(' SELECT   wdt.docid, wdt.documentname AS filename, ');
   dmAxiom.qryPrecedentList.SQL.Add(' workflowdocparties (wdt.docid), 2 AS prec, wdt.docid AS docid, NAME,');
   dmAxiom.qryPrecedentList.SQL.Add(' wt.descr, wt.code, wdt.doctype, wdt.npreccategory,');
   dmAxiom.qryPrecedentList.SQL.Add(' wdt.nprecclassification ');
   dmAxiom.qryPrecedentList.SQL.Add('FROM workflowdocgroups wdg RIGHT OUTER JOIN workflowdoctemplates wdt ');
   dmAxiom.qryPrecedentList.SQL.Add(' ON (wdg.groupid = wdt.groupid) ');
   dmAxiom.qryPrecedentList.SQL.Add(' JOIN workflowtype wt ON (wdt.workflowtypecode = wt.code) ');
   dmAxiom.qryPrecedentList.SQL.Add(' WHERE     wdt.workflow_only = ''N'' and active = ''Y'' ');
   dmAxiom.qryPrecedentList.SQL.Add(' AND wdt.workflowtypecode = NVL (:workflowtypecode, workflowtypecode) ');
   if edSearchFileName.Text <> '' then
      dmAxiom.qryPrecedentList.SQL.Add(' AND upper(wdt.documentname) like '+ QuotedStr('%'+UpperCase(edSearchFileName.Text)+'%') )
   else
   begin
      dmAxiom.qryPrecedentList.SQL.Add('ORDER BY 7, 2');
   end;
   dmAxiom.qryPrecedentList.Open;
end;

procedure TfrmPrecedentSearch.tmrSearchTimer(Sender: TObject);
begin
   tmrSearch.Enabled := false;
   MakePrecSQL;
end;

procedure TfrmPrecedentSearch.tvPrecedentListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   btnSelect.Click;
end;

end.


