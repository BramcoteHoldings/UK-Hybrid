unit DataFormOtherParties;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  OracleUniProvider, Uni, DBAccess, ExtCtrls, DBCtrls, Buttons, Db, MemDS, StdCtrls, Mask,
  ToolWin, ComCtrls, Grids, DBGrids, ImgList, Menus, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters;

const
  PARTY_MOVE_UP = 1;
  PARTY_MOVE_DOWN = 2;

type
  TfrmDataFormOtherParties = class(TForm)
    dsMatterParty: TUniDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    Panel3: TPanel;
    ilMain: TImageList;
    lbFileID: TLabel;
    lblCategory: TLabel;
    qryMatterParty: TUniQuery;
    dbtTitle: TDBText;
    dbtLongDescr: TDBText;
    dbtFileID: TDBText;
    qryMatterInfo: TUniQuery;
    lblActualCategory: TLabel;
    dsMatterInfo: TUniDataSource;
    qryOtherPartyDelete: TUniQuery;
    btnAddNew: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    qryMatterPartyUpdate: TUniQuery;
    qryPBGroup: TUniQuery;
    popPartyOrder: TPopupMenu;
    mnuMoveUp: TMenuItem;
    mnuMoveDown: TMenuItem;
    dbgMatterParty: TcxGrid;
    dbgMatterPartyLevel1: TcxGridLevel;
    tvMatterParty: TcxGridDBTableView;
    tvMatterPartyNAME1: TcxGridDBColumn;
    tvMatterPartyPREFIX1: TcxGridDBColumn;
    tvMatterPartyREFNO1: TcxGridDBColumn;
    tvMatterPartyACTING_FOR1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure btnAddNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgMatterPartyDblClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure mnuMoveClick(Sender: TObject);
    procedure popPartyOrderChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
  private
    FFileID: string;
    FFieldName: string;
    FCategory: string;
  public
    TotalParties: integer;
    procedure ShowOtherParties(FileId, FieldName, Category: string);
  end;

var
  frmDataFormOtherParties: TfrmDataFormOtherParties;

implementation

uses
  {OtherParty,} NSearch, SingleFieldEdit, citfunc;

{$R *.DFM}

procedure TfrmDataFormOtherParties.ShowOtherParties(FileId, FieldName, Category: string);
begin
  FFileID := FileId;
  FFieldName := FieldName;
  FCategory := Category;
  lblActualCategory.Caption := Category;
  with qryMatterParty do
  begin
    ParamByName('FILEID').AsString := FileID;
    ParamByName('FIELDNAME').AsString := FieldName;
    ParamByName('CATEGORY').AsString := Category;
    Open;
  end;
  with qryMatterInfo do
  begin
    ParamByName('FILEID').AsString := FileID;
    Open;
  end;
  with qryPBGroup do
  begin
    ParamByName('CATEGORY').AsString := lblActualCategory.Caption;
    Open;
    if (FieldByName('ACTINGFOR').AsString = 'N') or (FieldByName('ACTINGFOR').IsNull) then
//      dbgMatterParty.Columns[3].Visible := False;
      tvMatterPartyACTING_FOR1.Visible := False;
    Close;
  end;
  ShowModal;
end;

procedure TfrmDataFormOtherParties.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TotalParties := qryMatterParty.RecordCount;
  qryMatterParty.Close;
  qryMatterInfo.Close;
  Action := caFree;
end;

procedure TfrmDataFormOtherParties.btnOKClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDataFormOtherParties.btnAddNewClick(Sender: TObject);
var
  iSeq: Integer;
  sRefNumber, sActingFor: string;
  bmPreviousPos: TBookmark;
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  frmPhonebookSearch.SelectOtherParty(lblActualCategory.Caption);
  if frmPhonebookSearch.ShowModal = mrOK then
  begin
    bmPreviousPos := qryMatterParty.GetBookmark;
    with TfrmSingleFieldEdit.Create(Self) do
    begin
      lbFieldDesc.Caption := 'Enter the Client Reference No';
      edFieldValue.Text := frmPhonebookSearch.qryPhoneBook.FieldByName('DEFAULT_REF').AsString;
      // check if we need to show the "Acting For" flag
      with qryPBGroup do
      begin
        ParamByName('CATEGORY').AsString := lblActualCategory.Caption;
        Open;
        if (FieldByName('ACTINGFOR').AsString = 'N') or (FieldByName('ACTINGFOR').IsNull) then
          pnFlag.Height := 0
        else
          cbFlag.Caption := 'Acting for Party?';
        Close;
      end;
      if ShowModal = mrOk then
      begin
        sRefNumber := edFieldValue.Text;
        if cbFlag.Checked then
          sActingFor := 'Y'
        else
          sActingFor := 'N';
      end
      else
      begin
        sRefNumber := '';
        sActingFor := 'N';
      end;
    end;
    with qryMatterPartyUpdate do
    begin
      SQL.Clear;
      SQL.Add('SELECT MAX(SEQ) AS NEXTSEQ FROM MATTERPARTY');
      SQL.Add('WHERE FILEID = '+QuotedStr(FFileID)+' AND CATEGORY = '+QuotedStr(FCategory));
      Open;
      if IsEmpty then
        iSeq := 1
      else
        iSeq := FieldByName('NEXTSEQ').AsInteger + 1;
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO MATTERPARTY (FILEID, CATEGORY, FIELDNAME, PREFIX, NNAME, SEQ, REFNO, ACTING_FOR)');
      SQL.Add('VALUES ('+QuotedStr(FFileID)+', '+
        QuotedStr(FCategory)+', '+QuotedStr(FFieldName)+', '+QuotedStr(UpperCase(FCategory)+
        IntToStr(iSeq))+', '+
        IntToStr(frmPhonebookSearch.qryPhoneBook.FieldByName('NNAME').AsInteger)+', '+
        IntToStr(iSeq)+', '+QuotedStr(sRefNumber)+', '+QuotedStr(sActingFor)+')');
      ExecSQL;

      (* if the Acting_For flag is set reset all other party flags *)
      if (sActingFor = 'Y') then
      begin
        SQL.Clear;
        SQL.Add('UPDATE MATTERPARTY');
        SQL.Add('SET ACTING_FOR = ''N''');
        SQL.Add('WHERE FILEID = '+QuotedStr(FFileID));
        SQL.Add('  AND FIELDNAME = '+QuotedStr(FFieldName));
        SQL.Add('  AND NNAME <> '+frmPhonebookSearch.qryPhonebook.FieldByName('NNAME').AsString);
        ExecSQL;
      end;
    end;
    qryMatterParty.Refresh;
    qryMatterParty.GotoBookmark(bmPreviousPos);
    qryMatterParty.FreeBookmark(bmPreviousPos);
  end;
end;

procedure TfrmDataFormOtherParties.btnDeleteClick(Sender: TObject);
var
  iCtr: Integer;
begin
  if MessageDlg('Are you sure you want to delete this party?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with qryOtherPartyDelete do
    begin
      ParamByName('FILEID').AsString := qryMatterParty.FieldByName('FILEID').AsString;
      ParamByName('CATEGORY').AsString := qryMatterParty.FieldByName('CATEGORY').AsString;
      ParamByName('PREFIX').AsString := qryMatterParty.FieldByName('PREFIX').AsString;
      ParamByName('NNAME').AsString := qryMatterParty.FieldByName('NNAME').AsString;
      ParamByName('FIELDNAME').AsString := qryMatterParty.FieldByName('FIELDNAME').AsString;
      ExecSQL;
    end;
    qryMatterParty.Refresh;

    (* reorder the matter party list *)
    iCtr := 1;
    qryMatterparty.First;
    while not(qryMatterParty.EOF) do
    begin
      with qryMatterPartyUpdate do
      begin
        SQL.Clear;
        SQL.Add('UPDATE MATTERPARTY');
        SQL.Add('SET PREFIX = :PREFIX, SEQ = :SEQ');
        SQL.Add('WHERE FILEID = :FILEID');
        SQL.Add('  AND FIELDNAME = :FIELDNAME');
        ParamByName('PREFIX').AsString := UpperCase(qryMatterParty.FieldByName('CATEGORY').AsString)+
                                          IntToStr(iCtr);
        ParamByName('SEQ').AsInteger := iCtr;
        ParamByName('FILEID').AsString := qryMatterParty.FieldByName('FILEID').AsString;
        ParamByName('FIELDNAME').AsString := qryMatterParty.FieldByName('FIELDNAME').AsString;
        ExecSQL;
      end;
      Inc(iCtr);
      qryMatterParty.Next;
    end;
    qryMatterParty.Refresh;
  end;
end;

procedure TfrmDataFormOtherParties.dbgMatterPartyDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TfrmDataFormOtherParties.btnEditClick(Sender: TObject);
var
  sRefNumber, sActingFor: string;
  bmPreviousPos: TBookmark;
begin
  if not FormExists(frmPhoneBookSearch) then
    Application.CreateForm(TfrmPhoneBookSearch, frmPhoneBookSearch);
  frmPhonebookSearch.GotoName(qryMatterParty.FieldByName('SEARCH').AsString);
  if frmPhonebookSearch.ShowModal = mrOK then
  begin
    bmPreviousPos := qryMatterParty.GetBookmark;
    with TfrmSingleFieldEdit.Create(Self) do
    begin
      lbFieldDesc.Caption := 'Enter the Client Reference No';
      edFieldValue.Text := qryMatterParty.FieldByName('REFNO').AsString;
      // check if we need to show the "Acting For" flag
      with qryPBGroup do
      begin
        ParamByName('CATEGORY').AsString := lblActualCategory.Caption;
        Open;
        if FieldByName('ACTINGFOR').AsString = 'N' then
          pnFlag.Height := 0
        else
          cbFlag.Caption := 'Acting for Party?';
        Close;
      end;
      if qryMatterParty.FieldByName('ACTING_FOR').AsString = 'Y' then
        cbFlag.Checked := True
      else
        cbFlag.Checked := False;
      if ShowModal = mrOk then
      begin
        sRefNumber := edFieldValue.Text;
        if cbFlag.Checked then
          sActingFor := 'Y'
        else
          sActingFor := 'N';
      end
      else
      begin
        sRefNumber := qryMatterParty.FieldByName('REFNO').AsString;
        sActingFor := qryMatterParty.FieldByName('ACTING_FOR').AsString;
      end;
    end;
    with qryMatterPartyUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE MATTERPARTY');
      SQL.Add('SET NNAME = '+frmPhonebookSearch.qryPhonebook.FieldByName('NNAME').AsString);
      SQL.Add(', REFNO = '+QuotedStr(sRefNumber));
      SQL.Add(', ACTING_FOR = '+QuotedStr(sActingFor));
      SQL.Add('WHERE FILEID = '+QuotedStr(FFileID));
      SQL.Add('  AND FIELDNAME = '+QuotedStr(FFieldName));
      SQL.Add('  AND PREFIX = '+QuotedStr(qryMatterParty.FieldByName('PREFIX').AsString));
      ExecSQL;

      (* if the Acting_For flag is set reset all other party flags *)
      if (sActingFor = 'Y') then
      begin
        SQL.Clear;
        SQL.Add('UPDATE MATTERPARTY');
        SQL.Add('SET ACTING_FOR = ''N''');
        SQL.Add('WHERE FILEID = '+QuotedStr(FFileID));
        SQL.Add('  AND FIELDNAME = '+QuotedStr(FFieldName));
        SQL.Add('  AND NNAME <> '+frmPhonebookSearch.qryPhonebook.FieldByName('NNAME').AsString);
        ExecSQL;
      end;
    end;
    qryMatterParty.Refresh;
    qryMatterParty.GotoBookmark(bmPreviousPos);
    qryMatterParty.FreeBookmark(bmPreviousPos);
  end;
end;

procedure TfrmDataFormOtherParties.mnuMoveClick(Sender: TObject);
var
  iPreviousSeq: Integer;
  bmPreviousPos: TBookmark;
begin
  bmPreviousPos := qryMatterParty.GetBookmark;

  (* set the base SQL statement for updating the Matter Party order *)
  with qryMatterPartyUpdate.SQL do
  begin
    Clear;
    Add('UPDATE MATTERPARTY');
    Add('SET PREFIX = :PREFIX, SEQ = :SEQSET');
    Add('WHERE FILEID = :FILEID');
    Add('  AND FIELDNAME = :FIELDNAME');
    Add('  AND SEQ = :SEQ');
  end;

  (* execute the reorder *)
  case TMenuItem(Sender).Tag of
    PARTY_MOVE_UP:
    begin
      with qryMatterPartyUpdate do
      begin
        iPreviousSeq := qryMatterParty.FieldByName('SEQ').AsInteger;
        (* need to set SEQ to 0 arbitarily to avoid unique index violation *)
        ParamByName('PREFIX').AsString := UpperCase(qryMatterParty.FieldByName('CATEGORY').AsString)+'0';
        ParamByName('SEQSET').AsInteger := 0;
        ParamByName('FILEID').AsString := qryMatterParty.FieldByName('FILEID').AsString;
        ParamByName('FIELDNAME').AsString := qryMatterParty.FieldByName('FIELDNAME').AsString;
        ParamByName('SEQ').AsInteger := qryMatterParty.FieldByName('SEQ').AsInteger;
        ExecSQL;

        qryMatterParty.Prior;
        ParamByName('PREFIX').AsString := UpperCase(qryMatterParty.FieldByName('CATEGORY').AsString)+
                                          IntToStr(qryMatterParty.FieldByName('SEQ').AsInteger+
                                          1);
        ParamByName('SEQSET').AsInteger := qryMatterParty.FieldByName('SEQ').AsInteger + 1;
        ParamByName('FILEID').AsString := qryMatterParty.FieldByName('FILEID').AsString;
        ParamByName('FIELDNAME').AsString := qryMatterParty.FieldByName('FIELDNAME').AsString;
        ParamByName('SEQ').AsInteger := qryMatterParty.FieldByName('SEQ').AsInteger;
        ExecSQL;

        (* set SEQ to to what it should be *)
        qryMatterParty.Next;
        ParamByName('PREFIX').AsString := UpperCase(qryMatterParty.FieldByName('CATEGORY').AsString)+
                                          IntToStr(iPreviousSeq - 1);
        ParamByName('SEQSET').AsInteger := iPreviousSeq - 1;
        ParamByName('FILEID').AsString := qryMatterParty.FieldByName('FILEID').AsString;
        ParamByName('FIELDNAME').AsString := qryMatterParty.FieldByName('FIELDNAME').AsString;
        ParamByName('SEQ').AsInteger := 0;
        ExecSQL;
      end;

      qryMatterParty.Refresh;
      qryMatterParty.GotoBookmark(bmPreviousPos);
      qryMatterParty.Prior;
    end;
    PARTY_MOVE_DOWN:
    begin
      with qryMatterPartyUpdate do
      begin
        iPreviousSeq := qryMatterParty.FieldByName('SEQ').AsInteger;
        (* need to set SEQ to 0 arbitarily to avoid unique index violation *)
        ParamByName('PREFIX').AsString := UpperCase(qryMatterParty.FieldByName('CATEGORY').AsString)+'0';
        ParamByName('SEQSET').AsInteger := 0;
        ParamByName('FILEID').AsString := qryMatterParty.FieldByName('FILEID').AsString;
        ParamByName('FIELDNAME').AsString := qryMatterParty.FieldByName('FIELDNAME').AsString;
        ParamByName('SEQ').AsInteger := qryMatterParty.FieldByName('SEQ').AsInteger;
        ExecSQL;

        qryMatterParty.Next;
        ParamByName('PREFIX').AsString := UpperCase(qryMatterParty.FieldByName('CATEGORY').AsString)+
                                          IntToStr(qryMatterParty.FieldByName('SEQ').AsInteger-
                                          1);
        ParamByName('SEQSET').AsInteger := qryMatterParty.FieldByName('SEQ').AsInteger - 1;
        ParamByName('FILEID').AsString := qryMatterParty.FieldByName('FILEID').AsString;
        ParamByName('FIELDNAME').AsString := qryMatterParty.FieldByName('FIELDNAME').AsString;
        ParamByName('SEQ').AsInteger := qryMatterParty.FieldByName('SEQ').AsInteger;
        ExecSQL;

        (* set SEQ to to what it should be *)
        qryMatterParty.Prior;
        ParamByName('PREFIX').AsString := UpperCase(qryMatterParty.FieldByName('CATEGORY').AsString)+
                                          IntToStr(iPreviousSeq + 1);
        ParamByName('SEQSET').AsInteger := iPreviousSeq + 1;
        ParamByName('FILEID').AsString := qryMatterParty.FieldByName('FILEID').AsString;
        ParamByName('FIELDNAME').AsString := qryMatterParty.FieldByName('FIELDNAME').AsString;
        ParamByName('SEQ').AsInteger := 0;
        ExecSQL;
      end;
      qryMatterParty.Refresh;
      qryMatterParty.GotoBookmark(bmPreviousPos);
      qryMatterParty.Next;
      qryMatterParty.FreeBookmark(bmPreviousPos);
    end;
  end;
end;

procedure TfrmDataFormOtherParties.popPartyOrderChange(Sender: TObject;
  Source: TMenuItem; Rebuild: Boolean);
begin
  if (qryMatterParty.RecNo = 1) then
  begin
    mnuMoveUp.Enabled := False;
    mnuMoveDown.Enabled := True;
  end
  else if (qryMatterParty.recNO = qryMatterParty.RecordCount) then
  begin
    mnuMoveUp.Enabled := True;
    mnuMoveDown.Enabled := False;
  end
  else
  begin
    mnuMoveUp.Enabled := True;
    mnuMoveDown.Enabled := True;
  end;
end;

end.
