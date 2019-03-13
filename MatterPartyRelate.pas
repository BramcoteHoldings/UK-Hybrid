unit MatterPartyRelate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleUniProvider, Uni, MemDS, ComCtrls, ImgList, ToolWin, Grids, DBGrids, StdCtrls,
  Buttons, DBAccess, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, ExtCtrls, cxPC, cxPCdxBarPopupMenu,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TRelationships = class(TCollection)
    public
      function Add(ForwardPerson, ForwardCategory: string; ForwardSeq: Integer; Relationship: string;
                   BackwardPerson, BackwardCategory: string; BackwardSeq: Integer): integer; overload;
      procedure Delete(RelateText: string); overload;
      function FindRelationship(RelateText: string): integer;
  end;

  TRelationshipItem = class(TCollectionItem)
    public
      RelateText: string;
      ForwardCategory, ForwardPerson, Relationship, BackwardCategory, BackwardPerson: string;
      ForwardSeq, BackwardSeq: Integer;
  end;

  TfrmMatterPartyRelate = class(TForm)
    qryRelate: TUniQuery;
    ilstToolbar: TImageList;
    dsRelate: TUniDataSource;
    pagRelate: TcxPageControl;
    tabRelationships: TcxTabSheet;
    tabRelateNew: TcxTabSheet;
    dbgrMatterParty: TcxGrid;
    tvMatterParty: TcxGridDBTableView;
    tvMatterPartyCATEGORY: TcxGridDBColumn;
    tvMatterPartySEQ: TcxGridDBColumn;
    tvMatterPartySEARCH: TcxGridDBColumn;
    tvMatterPartyWORKPHONE: TcxGridDBColumn;
    tvMatterPartyREFNO: TcxGridDBColumn;
    dbgrMatterPartyLevel1: TcxGridLevel;
    Panel1: TPanel;
    btnNew: TBitBtn;
    Panel2: TPanel;
    btnDelete: TBitBtn;
    btnPrint: TBitBtn;
    lbRelationships: TListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pagRelateChange(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgrMatterPartyDblClick(Sender: TObject);
  private
    { Private declarations }
    FNMatter: Integer;
    Relationships: TRelationships;
    procedure SetNMatter(Value: Integer);
  public
    { Public declarations }
    property NMatter: Integer Write SetNMatter;
  end;

implementation

{$R *.DFM}

uses
  AxiomData, MiscFunc, RelateNew;


function TRelationships.Add(ForwardPerson, ForwardCategory: string; ForwardSeq: Integer; Relationship: string;
                   BackwardPerson, BackwardCategory: string; BackwardSeq: Integer): integer;
// Adds a relationship to the collection. Passes back the index of the item added.
var
  itemRelationship: TRelationshipItem;
begin
  itemRelationship := TRelationshipItem.Create(Self);
  itemRelationship.RelateText := ForwardPerson + ' (' + ForwardCategory + ' ' + IntToStr(ForwardSeq) + ') '
                               + Relationship + ' ' + BackwardPerson + ' (' + BackwardCategory + ' ' + IntToStr(BackwardSeq) + ')';
  itemRelationship.ForwardPerson := ForwardPerson;
  itemRelationship.ForwardCategory := ForwardCategory;
  itemRelationship.ForwardSeq := ForwardSeq;
  itemRelationship.Relationship := Relationship;
  itemRelationship.BackwardPerson := BackwardPerson;
  itemRelationship.BackwardCategory := BackwardCategory;
  itemRelationship.BackwardSeq := BackwardSeq;
  Result := itemRelationship.Index;
end;


procedure TRelationships.Delete(RelateText: string);
// Deletes a Relationship
var
  iRelationship: Integer;
begin
  iRelationship := FindRelationship(RelateText);
  if iRelationship = -1 then
    Delete(iRelationship);
end;


function TRelationships.FindRelationship(RelateText: string): Integer;
// Finds a Relationship by Relationship, and if it exists, passes back the index of that Relationship
// Passes back -1 otherwise
var
  iIdx, iCtr: Integer;
begin
  iIdx := -1;
  iCtr := 0;
  while (iCtr < Count) and (iIdx = -1) do
  begin
    if RelateText = TRelationshipItem(Items[iCtr]).RelateText then
      iIdx := iCtr;
    Inc(iCtr);
  end;
  Result := iIdx;
end;


procedure TfrmMatterPartyRelate.SetNMatter(Value: Integer);
begin
  if MatterIsCurrent(TableString('MATTER', 'NMATTER', Value, 'FILEID')) then
  begin
    FNMatter := Value;
    pagRelate.OnChange(Self);
    Self.Show;
  end
  else
    Self.Close;
end;


procedure TfrmMatterPartyRelate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Self.Release;
end;

procedure TfrmMatterPartyRelate.FormCreate(Sender: TObject);
begin
   Screen.Cursor := crSQLWait;
   Relationships := TRelationships.Create(TRelationshipItem);
   Screen.Cursor := crDefault;
end;

procedure TfrmMatterPartyRelate.FormDestroy(Sender: TObject);
begin
  Relationships.Free;
end;

procedure TfrmMatterPartyRelate.pagRelateChange(Sender: TObject);
var
  iCtr: Integer;
begin
   Screen.Cursor := crSQLWait;
   if pagRelate.ActivePage = tabRelationships then
   begin
      with qryRelate do
      begin
         Relationships.Clear;
         Close;
         SQL.Clear;
         SQL.Add('SELECT FORWARDCATEGORY, FORWARDSEQ, FORWARD, RELATIONSHIP, BACKWARD, BACKWARDCATEGORY, BACKWARDSEQ');
         SQL.Add('FROM RELATIONSHIP');
         SQL.Add('WHERE LINKTABLE = ''MATTER''');
         SQL.Add('  AND NUNIQUE = ' + IntToStr(FNMatter));
         SQL.Add('ORDER BY FORWARDCATEGORY, FORWARDSEQ');
         Open;
         while not Eof do
         begin
           Relationships.Add(FieldByName('FORWARD').AsString, FieldByName('FORWARDCATEGORY').AsString, FieldByName('FORWARDSEQ').AsInteger,
                             FieldByName('RELATIONSHIP').AsString,
                             FieldByName('BACKWARD').AsString, FieldByName('BACKWARDCATEGORY').AsString, FieldByName('BACKWARDSEQ').AsInteger);
           Next;
         end;
         Close;
         // Populate the relationships listbox
         lbRelationships.Clear;
         for iCtr := 0 to Relationships.Count - 1 do
           lbRelationships.Items.Add(TRelationshipItem(Relationships.Items[iCtr]).RelateText);
       end;
   end
   else
   begin
      with qryRelate do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT MP.CATEGORY, MP.SEQ, MP.PREFIX, MP.REFNO, P.SEARCH, P.WORKPHONE, P.NNAME');
        SQL.Add('FROM MATTERPARTY MP, PHONEBOOK P');
        SQL.Add('WHERE MP.NMATTER = ' + IntToStr(FNMatter));
        SQL.Add('  AND MP.NNAME = P.NNAME');
        SQL.Add('ORDER BY 1, 2');
        Open;
      end;
   end;
   Screen.Cursor := crDefault;
end;


procedure TfrmMatterPartyRelate.btnNewClick(Sender: TObject);
var
  LfrmRelateNew: TfrmRelateNew;
begin
  LfrmRelateNew := TfrmRelateNew.Create(Self);
  try
    LfrmRelateNew.DisplaySource(qryRelate.FieldByName('SEARCH').AsString, qryRelate.FieldByName('NNAME').AsInteger, FNMatter, qryRelate.FieldByName('CATEGORY').AsString, qryRelate.FieldByName('SEQ').AsInteger);
  finally
    FreeAndNil(LfrmRelateNew);
  end;
end;

procedure TfrmMatterPartyRelate.btnDeleteClick(Sender: TObject);
var
  iRelationship: Integer;
  itemRelationship: TRelationshipItem;
begin
   Screen.Cursor := crSQLWait;
   if lbRelationships.ItemIndex >= 0 then
   begin
     if MsgAsk('Do you want to Delete this relationship? ') = mrYes then
     begin
       iRelationship := Relationships.FindRelationship(lbRelationships.Items[lbRelationships.ItemIndex]);
       if iRelationship >= 0 then
       begin
         itemRelationship := TRelationshipItem(Relationships.Items[iRelationship]);
         with qryRelate do
         begin
           SQL.Clear;
           SQL.Add('begin');
           SQL.Add('RELATIONSHIP_DELETE(');
           SQL.Add(QuotedStr(itemRelationship.ForwardPerson) + ',');
           SQL.Add(QuotedStr(itemRelationship.ForwardCategory) + ',');
           SQL.Add(IntToStr(itemRelationship.ForwardSeq) + ',');
           SQL.Add(QuotedStr(itemRelationship.Relationship) + ',');
           SQL.Add(QuotedStr(itemRelationship.BackwardPerson) + ',');
           SQL.Add(QuotedStr(itemRelationship.BackwardCategory) + ',');
           SQL.Add(IntToStr(itemRelationship.BackwardSeq) + ',');
           SQL.Add('''MATTER'',');
           SQL.Add(IntToStr(FNMatter) + ');');
           SQL.Add('end;');
           ExecSQL; // The other half gets deleted automatically by a trigger
         end;
         Relationships.Delete(iRelationship);
         pagRelate.OnChange(Self);
       end;
     end;
   end;
   Screen.Cursor := crDefault;
end;

procedure TfrmMatterPartyRelate.dbgrMatterPartyDblClick(Sender: TObject);
begin
  btnNew.Click;
end;

end.

