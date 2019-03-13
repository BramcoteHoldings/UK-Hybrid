unit RelateNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, OracleUniProvider, Uni, DBAccess, MemDS,
  cxLookAndFeelPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxButtons, Menus, cxGraphics,
  cxLookAndFeels, cxLabel;

type
  TfrmRelateNew = class(TForm)
    lRelationship: TLabel;
    lPhonebookLabel: TLabel;
    lRelateTo: TLabel;
    bnTarget: TBitBtn;
    qryRelationshipInsert: TUniQuery;
    qryTmp: TUniQuery;
    qryRelateClue: TUniQuery;
    bnOk: TcxButton;
    bnCancel: TcxButton;
    gbLink: TcxGroupBox;
    cbRelationship: TcxComboBox;
    qRelationships: TUniQuery;
    dsRelationships: TUniDataSource;
    qryRelationshipUpdate: TUniQuery;
    lTarget: TcxLabel;
    lSource: TcxLabel;
    lLinkTable: TcxLabel;
    lLinkRef: TcxLabel;
    procedure bnOkClick(Sender: TObject);
    procedure bnTargetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    LinkTable: string;
    NUnique: Integer;
    ForwardCategory, BackwardCategory: string;
    ForwardSeq, BackwardSeq: Integer;
    FNMatter: Integer;
    FNName: Integer;
    FNChild: Integer;
    FNOldChild: Integer;
    FbEdit: Boolean;

    FBackward: TStringList;

    function OKtoSave: boolean;
  public
    { Public declarations }
    procedure DisplaySource(sSearch: string; NName: integer; bEdit: boolean = False; NCHILD: integer = 0); overload;
    procedure DisplaySource(sSearch: string; NName, NMatter: Integer; Category: string; Seq: Integer; bEdit: boolean = False; NCHILD: integer = 0); overload;
  end;

implementation

uses
  AxiomData, GenericSearch, MiscFunc, NSearch, citfunc, PhoneBook;

{$R *.DFM}


procedure TfrmRelateNew.DisplaySource(sSearch: string; NName, NMatter: Integer; Category: string; Seq: Integer; bEdit: boolean = False; NCHILD: integer = 0);
begin
  FNChild := 0;
  FNMatter := NMatter;
  LinkTable := 'MATTER';
  lLinkTable.Caption := LinkTable;
  NUnique := NMatter;
  ForwardCategory := Category;
  ForwardSeq := Seq;
  if LinkTable = 'MATTER' then
    lLinkRef.Caption := TableString(LinkTable, 'NMATTER', NUnique, 'FILEID');
  gbLink.Visible := True;
  DisplaySource(sSearch, NName);
  // See if we can find a relationship for this Forward category
  qryRelateClue.ParamByName('RelateClue').AsString := '%' + UpperCase(ForwardCategory) + '%';
  qryRelateClue.Open;
  if not qryRelateClue.IsEmpty then
    cbRelationship.ItemIndex := cbRelationship.Properties.Items.IndexOf(qryRelateClue.FieldByName('FORWARD_DESC').AsString);
  qryRelateClue.Close;
  Screen.Cursor := crDefault;
end;


procedure TfrmRelateNew.DisplaySource(sSearch : string; NName: integer; bEdit: boolean = False; NCHILD: integer = 0);
begin
   if(not gbLink.Visible) then
      Height := Height - gbLink.Height;
   lSource.Caption := sSearch;
   FNName := NName;
   FbEdit := bEdit;
   if FbEdit then
   begin
      qRelationships.ParamByName('search').AsString := IntToStr(FNName);
      qRelationships.ParamByName('nchild').AsInteger := NCHILD;
      qRelationships.Open();
      cbRelationship.EditValue := qRelationships.FieldByName('relationship').AsString;
      cbRelationship.Text := qRelationships.FieldByName('relationship').AsString;
      lTarget.Caption := qRelationships.FieldByName('backward').AsString;
      FNChild := qRelationships.FieldByName('nchild').AsInteger;
      FNOldChild := FNChild
   end;
   ShowModal();
   Screen.Cursor := crDefault;
end;


function TfrmRelateNew.OKtoSave: boolean;
var
  sTmp: String;
  bOKtoSave: boolean;
begin
  bOKtoSave := True;
  sTmp := '';
  if lSource.Caption = '' then
    sTmp := '       Source Phonebook entry' + #13;
  if cbRelationship.Text = '' then
    sTmp := sTmp + '       Relationship' + #13;
  if lTarget.Caption = '' then
    sTmp := sTmp + '       Target Phonebook entry' + #13;
  if sTmp <> '' then
  begin
    MsgInfo('Please complete the following Relationship details before saving:    ' + #13#13 + sTmp);
    bOKtoSave := False
  end;
  OKtoSave := bOKtoSave;
end;


procedure TfrmRelateNew.bnOkClick(Sender: TObject);
var
   Relationship: string;
begin
   if OKtoSave then
   begin
      if FbEdit then
      begin
         qryRelationshipUpdate.ParamByName('FORWARD').AsString := lSource.Caption;
         if Pos(' - ', cbRelationship.Text) > 0 then
            Relationship := trim(Copy(cbRelationship.Text,1,Pos(' - ', cbRelationship.Text)))
         else
            Relationship := cbRelationship.Text;
         qryRelationshipUpdate.ParamByName('RELATIONSHIP').AsString := trim(Relationship);
         qryRelationshipUpdate.ParamByName('BACKWARD').AsString := lTarget.Caption;
         qryRelationshipUpdate.ParamByName('NPARENT').AsInteger := FNName;
         qryRelationshipUpdate.ParamByName('NCHILD').AsInteger := FNChild;
         qryRelationshipUpdate.ParamByName('NOLDPARENT').AsInteger := FNName;
         qryRelationshipUpdate.ParamByName('NOLDCHILD').AsInteger := FNOldChild;
         if LinkTable <> '' then
           qryRelationshipUpdate.ParamByName('LINKTABLE').AsString := LinkTable;
         if NUnique <> 0 then
           qryRelationshipUpdate.ParamByName('NUNIQUE').AsInteger := NUnique;
         if ForwardCategory <> '' then
           qryRelationshipUpdate.ParamByName('FORWARDCATEGORY').AsString := ForwardCategory;
         if ForwardSeq <> 0 then
           qryRelationshipUpdate.ParamByName('FORWARDSEQ').AsInteger := ForwardSeq;
         if BackwardCategory <> '' then
           qryRelationshipUpdate.ParamByName('BACKWARDCATEGORY').AsString := BackwardCategory;
         if BackwardSeq <> 0 then
           qryRelationshipUpdate.ParamByName('BACKWARDSEQ').AsInteger := BackwardSeq;
         qryRelationshipUpdate.ExecSQL();
         // Define the backward relationship
         qryRelationshipUpdate.ParamByName('FORWARD').AsString      := lTarget.Caption;
         qryRelationshipUpdate.ParamByName('RELATIONSHIP').AsString := FBackward[cbRelationship.ItemIndex];    //   trim(Copy(FBackward[cbRelationship.ItemIndex],1,Pos(' - ', FBackward[cbRelationship.ItemIndex]))); //FBackward[cbRelationship.ItemIndex];
         qryRelationshipUpdate.ParamByName('BACKWARD').AsString     := lSource.Caption;
         qryRelationshipUpdate.ParamByName('NPARENT').AsInteger := FNChild;
         qryRelationshipUpdate.ParamByName('NOLDPARENT').AsInteger := FNOldChild;
         qryRelationshipUpdate.ParamByName('NOLDCHILD').AsInteger := FNName;
         qryRelationshipUpdate.ParamByName('NCHILD').AsInteger := FNName;
         if BackwardCategory <> '' then
           qryRelationshipUpdate.ParamByName('FORWARDCATEGORY').AsString := BackwardCategory;
         if BackwardSeq <> 0 then
           qryRelationshipUpdate.ParamByName('FORWARDSEQ').AsInteger      := BackwardSeq;
         if ForwardCategory <> '' then
           qryRelationshipUpdate.ParamByName('BACKWARDCATEGORY').AsString := ForwardCategory;
         if ForwardSeq <> 0 then
           qryRelationshipUpdate.ParamByName('BACKWARDSEQ').AsInteger     := ForwardSeq;
         // Link params remain the same
         qryRelationshipUpdate.ExecSQL();
          ModalResult := mrOk;
      end
      else
      begin
         // Define the forward relationship
         qryRelationshipInsert.ParamByName('FORWARD').AsString := lSource.Caption;
         qryRelationshipInsert.ParamByName('RELATIONSHIP').AsString := trim(Copy(cbRelationship.Text,1,Pos(' - ', cbRelationship.Text)));
         qryRelationshipInsert.ParamByName('BACKWARD').AsString := lTarget.Caption;
         qryRelationshipInsert.ParamByName('NPARENT').AsInteger := FNName;
         qryRelationshipInsert.ParamByName('NCHILD').AsInteger := FNChild;
         if LinkTable <> '' then
           qryRelationshipInsert.ParamByName('LINKTABLE').AsString := LinkTable;
         if NUnique <> 0 then
           qryRelationshipInsert.ParamByName('NUNIQUE').AsInteger := NUnique;
         if ForwardCategory <> '' then
           qryRelationshipInsert.ParamByName('FORWARDCATEGORY').AsString := ForwardCategory;
         if ForwardSeq <> 0 then
           qryRelationshipInsert.ParamByName('FORWARDSEQ').AsInteger := ForwardSeq;
         if BackwardCategory <> '' then
           qryRelationshipInsert.ParamByName('BACKWARDCATEGORY').AsString := BackwardCategory;
         if BackwardSeq <> 0 then
           qryRelationshipInsert.ParamByName('BACKWARDSEQ').AsInteger := BackwardSeq;
         qryRelationshipInsert.ExecSQL();
         // Define the backward relationship
         qryRelationshipInsert.ParamByName('FORWARD').AsString      := lTarget.Caption;
         qryRelationshipInsert.ParamByName('RELATIONSHIP').AsString := FBackward[cbRelationship.ItemIndex];    //   trim(Copy(FBackward[cbRelationship.ItemIndex],1,Pos(' - ', FBackward[cbRelationship.ItemIndex]))); //FBackward[cbRelationship.ItemIndex];
         qryRelationshipInsert.ParamByName('BACKWARD').AsString     := lSource.Caption;
         qryRelationshipInsert.ParamByName('NPARENT').AsInteger := FNChild;
         qryRelationshipInsert.ParamByName('NCHILD').AsInteger := FNName;
         if BackwardCategory <> '' then
           qryRelationshipInsert.ParamByName('FORWARDCATEGORY').AsString := BackwardCategory;
         if BackwardSeq <> 0 then
           qryRelationshipInsert.ParamByName('FORWARDSEQ').AsInteger      := BackwardSeq;
         if ForwardCategory <> '' then
           qryRelationshipInsert.ParamByName('BACKWARDCATEGORY').AsString := ForwardCategory;
         if ForwardSeq <> 0 then
           qryRelationshipInsert.ParamByName('BACKWARDSEQ').AsInteger     := ForwardSeq;
         // Link params remain the same
         qryRelationshipInsert.ExecSQL();
         ModalResult := mrOk;
      end;
  end else
    ModalResult := mrNone;
end;


procedure TfrmRelateNew.bnTargetClick(Sender: TObject);
var
  iPos: Integer;
  LGenericSearch: TfrmGenericSearch;
begin
   Screen.Cursor := crSQLWait;
  if LinkTable = '' then
  begin
    if(not FormExists(frmPhoneBookSearch)) then
      Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);

    if(frmPhoneBookSearch.ShowModal() = mrOK) then
    begin
      lTarget.Caption := frmPhoneBookSearch.qryPhoneBook.FieldByName('SEARCH').AsString;
      FNOldChild := FNChild;
      FNChild := frmPhoneBookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger;
    end;
  end else
  begin
    LGenericSearch := TfrmGenericSearch.Create(Self);
    begin
      LGenericSearch.SQL := 'SELECT mp.category || '' '' || mp.seq AS code, p.search AS descr, ''N'' AS DEFAULTITEM FROM matterparty mp, phonebook p WHERE mp.nmatter = ' + IntToStr(FNMatter) + ' AND mp.nname <> ' + IntToStr(NUnique) + ' AND p.nname = mp.nname ORDER BY 1';
      if (LGenericSearch.ShowModal() = mrOK) then
      begin
        lTarget.Caption := LGenericSearch.qrySource.FieldByName('DESCR').AsString;
        iPos := Length(LGenericSearch.qrySource.FieldByName('CODE').AsString);
        repeat
          Dec(iPos);
        until Copy(LGenericSearch.qrySource.FieldByName('CODE').AsString, iPos, 1) = ' ';
        BackwardCategory := Copy(LGenericSearch.qrySource.FieldByName('CODE').AsString, 1, iPos - 1);
        BackwardSeq      := StrToInt(Copy(LGenericSearch.qrySource.FieldByName('CODE').AsString, iPos + 1, 1));
      end;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmRelateNew.FormCreate(Sender: TObject);
begin
   Screen.Cursor := crSQLWait;
  FBackward := TStringList.Create();

  LinkTable        := '';
  NUnique          := 0;
  ForwardCategory  := '';
  ForwardSeq       := 0;
  BackwardCategory := '';
  BackwardSeq      := 0;
  lTarget.Caption  := '';
  FNChild          := 0;

  qryTmp.SQL.Clear();
  qryTmp.SQL.Add('SELECT forward_desc ||'' - Parent'', backward_desc FROM relatedict');
  qryTmp.SQL.Add('UNION');
  qryTmp.SQL.Add('SELECT backward_desc||'' - Child'', forward_desc FROM relatedict');
  qryTmp.SQL.Add('ORDER BY 1');
  qryTmp.Open();
  try
    while(not qryTmp.Eof) do
    begin
      cbRelationship.Properties.Items.Add(qryTmp.Fields[0].AsString);
      FBackward.Add(qryTmp.Fields[1].AsString);
      qryTmp.Next();
    end;
  finally
    qryTmp.Close();
  end;
end;

procedure TfrmRelateNew.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FBackward);
end;

end.

