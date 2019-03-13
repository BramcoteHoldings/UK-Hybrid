unit ISYSDocSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxProgressBar, cxGridCustomTableView,
  cxGridTableView, cxControls, cxGridCustomView, dxBar, cxClasses,
  cxGridLevel, cxGrid, cxPC, dxStatusBar, cxContainer, cxTextEdit,
  ISYS8, cxCheckBox, cxSpinEdit, FMXUtils, cxLabel, cxMaskEdit,
  cxDropDownEdit, ComCtrls, StdCtrls, cxGroupBox, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu;

type
  TfrmISYSSearch = class(TForm)
    dxBarManager1: TdxBarManager;
    btnClose: TdxBarButton;
    pagISYSSearch: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    grdISYSDocs: TcxGrid;
    tvISYSDocs: TcxGridTableView;
    tvISYSDocsTitle: TcxGridColumn;
    tvISYSDocsHits: TcxGridColumn;
    tvISYSDocsFilename: TcxGridColumn;
    tvISYSDocsRelevance: TcxGridColumn;
    grdISYSDocsLevel1: TcxGridLevel;
    statusBar: TdxStatusBar;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    edContains: TcxTextEdit;
    gbCreated: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    dtpCreatedSince: TDateTimePicker;
    dtpCreatedBefore: TDateTimePicker;
    edExclude: TcxTextEdit;
    cbConflate: TcxCheckBox;
    cbQueryExp: TcxCheckBox;
    Label3: TLabel;
    Label1: TLabel;
    edtFilenameLike: TcxTextEdit;
    edtFilenameUnlike: TcxTextEdit;
    tvISYSDocsRelevanceNo: TcxGridColumn;
    tvISYSDocsDocumentNo: TcxGridColumn;
    cmbConditionOne: TcxComboBox;
    cmbConditionEx: TcxComboBox;
    tvISYSDocsMatter: TcxGridColumn;
    procedure pagISYSSearchChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvISYSDocsColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure tvISYSDocsDblClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure tvISYSDocsDataControllerCompare(
      ADataController: TcxCustomDataController; ARecordIndex1,
      ARecordIndex2, AItemIndex: Integer; const V1, V2: Variant;
      var Compare: Integer);
    procedure tvISYSDocsRelevanceGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FISYSError: ECB_Type;
    FQuery: Query_Result_Block;
    FQueryFiltered: Query_Result_Block;
    FAnnotations: TList;
    FISYSHandle: SmallInt;
    FDocument: SmallInt;
    FLineCount: Integer;
    FCurLine: Integer;
    FSorted: boolean;
    procedure PopulateList(var qrb: Query_Result_Block);
    procedure SetFilter;
    function GetRelevanceValueIndex(ARelevance: integer): Integer;
    function GetGroupDisplayText(ARelevance: integer): string;
    procedure OnISYSMessage(var msg: TMessage); message $100;
    procedure DoSearch;
  public
    { Public declarations }
  end;

var
  frmISYSSearch: TfrmISYSSearch;

implementation

uses AxiomData, miscfunc, cxVariants;

const
  RelevanceIndexHigh = 4;
  RelevanceIndexMedium = 3;
  RelevanceIndexLow = 2;
  RelevanceIndexInterest = 1;

{$R *.dfm}

procedure TfrmISYSSearch.PopulateList(var qrb: Query_Result_Block);
   procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
   begin
      tvISYSDocs.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
   end;
var
  I, NumRecords, idx: Integer;
  filename: array[0..MAX_PATH] of char;
  filePath: array[0..MAX_PATH] of char;
  dcb: Document_Control_Block;
begin
   tvISYSDocs.BeginUpdate;
   if tvISYSDocs.DataController.RecordCount > 0 then
   begin
      for NumRecords := tvISYSDocs.DataController.RecordCount - 1 downto 0 do
         tvISYSDocs.DataController.DeleteRecord(0);
   end;

   I := 0;

   for idx := 1 to qrb.Num_Docs do
   begin
      Get_Document_Record(idx, dcb, FISYSError);
      dmAxiom.CheckForErrors;

      Get_Document_Long_FileName(idx, @filename, FISYSError);
      Get_Document_Fully_Qualified_FileName(idx, @filePath, FISYSError);
      tvISYSDocs.DataController.AppendRecord;
      begin
         SetRecordValue(I, tvISYSDocsTitle.Index, Trim(dcb.Document_Title));
         SetRecordValue(I, tvISYSDocsHits.Index, IntToStr(dcb.Num_Hits));
         SetRecordValue(I, tvISYSDocsFilename.Index, string(filePath));
         SetRecordValue(I, tvISYSDocsRelevance.Index, IntToStr(dcb.Relevance));
         SetRecordValue(I, tvISYSDocsRelevanceNo.Index, IntToStr(dcb.Relevance));
         SetRecordValue(I, tvISYSDocsDocumentNo.Index, IntToStr(idx));
         SetRecordValue(I, tvISYSDocsMatter.Index, TableString('DOC','path', string(filePath), 'fileid'));
      end;
      Inc(I);
    end;
    tvISYSDocs.EndUpdate;
end;

procedure TfrmISYSSearch.pagISYSSearchChange(Sender: TObject);
begin
   case pagISYSSearch.ActivePageIndex of
      0: DoSearch;
      1: FSorted := False;
   end;
end;

procedure TfrmISYSSearch.DoSearch;
var
   sTextSearch, sNewLine, sWord: string;
   Flags: Integer;
begin
   Self.Cursor := crHourGlass;
   Application.ProcessMessages;
   Flags := 0;

   if cbConflate.Checked then
      Flags := Flags OR ISYS_Query_Conflate;
   if cbQueryExp.Checked then
      Flags := Flags OR ISYS_Query_Synonym;
   Perform_Find(pchar(edContains.Text),
     Flags,
     Handle,
     FQuery,
     FISYSError );
   dmAxiom.CheckForErrors;


      if (edContains.Text <> '') then
      begin
         sNewline := edContains.Text;
         while getnextword(sNewline ,sWord) do
         begin
            case cmbConditionOne.ItemIndex of
               0: if sTextSearch <> '' then sTextSearch := sTextSearch + ' OR ';
               1: if sTextSearch <> '' then sTextSearch := sTextSearch + ' AND ';
            end;
            sTextSearch := sTextSearch + sWord;
         end;
      end;

   SetFilter;

   if not FSorted then
      Sort_Documents(8, FISYSError);

   PopulateList(FQuery);
   statusBar.Panels[0].Text := Format( 'Found %d reference(s) in %d documents.',
     [FQuery.Total_Hits, FQuery.Num_Docs] );

   Self.Cursor := crDefault;
   Application.ProcessMessages;
end;

procedure TfrmISYSSearch.FormCreate(Sender: TObject);
var
   isb: Instance_Status_Block;
   ISYSAppDir: string;
begin
   try
      if SystemString('ISYS_REG') = C_ISYSPASSWORD then
      begin
         dtpCreatedSince.DateTime := Trunc(Date);
         dtpCreatedSince.Checked := False;
         dtpCreatedBefore.DateTime := Trunc(Date);
         dtpCreatedBefore.Checked := False;
         FAnnotations := TList.Create;
         if Length(ISYSKey) = 0 then begin
            MessageDlg( 'Authorization key is not specified.', mtError, [mbOK], 0);
            exit;
         end;

         ISYSAppDir := ExtractFilePath(Application.EXEName);
         StrCopy(@isb.Licensee_ID1, ISYSKey);
         Init_Instance( Handle,
           pchar(ISYSAppDir),
           isb,
           FISYSHandle,
           FISYSError );
         dmAxiom.CheckForErrors;

         dmAxiom.OpenIndex(ExtractFilePath(SystemString('ISYS_Index_PATH')));
         FSorted := False;
      end
      else
      begin
         MsgInfo('This option is not registered.  If you would like to use it, please contact BHL Insight');
         Close;
      end;
   except
      Close;
   end;
end;

procedure TfrmISYSSearch.tvISYSDocsColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   FSorted := True;
  Sort_Documents(AColumn.Tag, FISYSError);
  PopulateList(FQuery);
end;

procedure TfrmISYSSearch.tvISYSDocsDblClick(Sender: TObject);
var
   idx: integer;
   doctype: smallint;
   temp: Integer;
   filename: array[0..MAX_PATH] of char;
   ARecord: TcxCustomGridRecord;
   AView: TcxCustomGridTableView;
begin
  AView := TcxCustomGridTableView(grdISYSDocs.FocusedView);

   with AView.Controller do
      if FocusedRecord is TcxGridGroupRow then
        // do nothing
      else
      begin
         if FDocument <> 0 then
            Close_Document(FDocument, FISYSError);

         idx := tvISYSDocsDocumentNo.EditValue; //  tvISYSDocs.Controller.FocusedRecordIndex;
         FDocument := Open_Document(idx,
           0,
           Flinecount,
           doctype,
           @filename,
           FISYSError);
         dmAxiom.CheckForErrors;

         if FDocument = -2 then
            Raise Exception.Create('Document has changed since indexed.')
         else if FDocument = -1 then
            Raise Exception.Create('Failed to open document.');

         ExecuteFile(filename, '', '.', SW_SHOW);
      end;
end;

procedure TfrmISYSSearch.SetFilter;
var
  fb: Filter_Block;

  procedure copyto(var dest: array of char; src: String);
  begin
    StrLCopy(@dest, pchar(src), length(dest) - 1);
  end;
begin
  ZeroMemory(@fb, sizeof(fb));
//  copyto(fb.Path_Contains, edtPathContains.Text);
//  copyto(fb.Path_Omits, edtPathOmits.Text);
  copyto(fb.Name_Like, edtFilenameLike.Text);
  copyto(fb.Name_Unlike, edtFilenameUnlike.Text);
  if dtpCreatedSince.Checked then
     DecodeDate( dtpCreatedSince.DateTime,
        fb.Date_Before.Year,
        fb.Date_Before.Month,
        fb.Date_Before.Day );
  if dtpCreatedBefore.Checked then
      DecodeDate( dtpCreatedBefore.DateTime,
        fb.Date_After.Year,
        fb.Date_After.Month,
        fb.Date_After.Day );
  FileName_Filter(ISYS_Filter_This,
      fb,
      FQuery,
      FISYSError );
//  PopulateList(FQuery);
end;

procedure TfrmISYSSearch.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmISYSSearch.tvISYSDocsDataControllerCompare(
  ADataController: TcxCustomDataController; ARecordIndex1, ARecordIndex2,
  AItemIndex: Integer; const V1, V2: Variant; var Compare: Integer);
begin
   if (AItemIndex <> tvISYSDocsRelevance.Index) then
      Compare := VarCompare(V1, V2)
   else
      Compare := VarCompare(GetRelevanceValueIndex(V1),GetRelevanceValueIndex(V2));
end;

function TfrmISYSSearch.GetRelevanceValueIndex(ARelevance: integer): Integer;
begin
   case ARelevance of
      100: Result := RelevanceIndexHigh;
      80..99: Result := RelevanceIndexMedium;
      50..79: Result := RelevanceIndexLow;
      0..49: Result := RelevanceIndexInterest;
   end;
end;

function TfrmISYSSearch.GetGroupDisplayText(ARelevance: integer): string;
begin
   case ARelevance of
      100: Result := 'Relevance: Most Relevant';
      80..99: Result := 'Relevance: Medium Relevance';
      50..79: Result := 'Relevance: Low Relevance';
      0..49: Result := 'Relevance: May be of interest';
   end;
end;

procedure TfrmISYSSearch.tvISYSDocsRelevanceGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
   if ARecord is TcxGridGroupRow then
      AText :=  GetGroupDisplayText(ARecord.Values[Sender.Index]);
end;

procedure TfrmISYSSearch.OnISYSMessage(var msg: TMessage);
var
   mem: pchar;
   str: string;
begin
   mem := GlobalLock(msg.WParam);
   if mem[0] = 'H' then begin
      str := StringReplace(mem+1, #9, ' ', [rfReplaceAll, rfIgnoreCase] );
      if (pos('Final Result',str) > 0) and not FSorted then
      begin
         Sort_Documents(8, FISYSError);
         PopulateList(FQuery);
      end;
  end;
  GlobalUnlock(msg.WParam);
end;

procedure TfrmISYSSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Close_Database(FISYSError);
   Close_Instance(FISYSError);
   RemoveFromDesktop(Self);
end;

end.
