unit JournalSplitFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB,  OracleUniProvider, Uni, DBAccess, MemDS,
  Grids, DBGrids, LSearch, citfunc, Menus;


const
  colSubChart = 0;


type
  TfrmJournalSplit = class(TForm)
    btnSave: TButton;
    btnCancel: TButton;
    dbgrChart: TDBGrid;
    dsChartBreakDown: TUniDataSource;
    lblChartCode: TLabel;
    lblChartDescr: TLabel;
    lblEntity: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryChartBreakDown: TUniQuery;
    qryChartBreakDownSUB_CHART: TStringField;
    qryChartBreakDownPERCENT: TFloatField;
    qryChartBreakDownENTITY: TStringField;
    qryChartBreakDownCHART: TStringField;
    qryChartBreakDownIS_ROUNDING: TStringField;
    mnuOptions: TPopupMenu;
    mnuDeleteRecord: TMenuItem;
    mnuDeleteAll: TMenuItem;
    mnuSep: TMenuItem;
    mnuRebuild: TMenuItem;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrChartEditButtonClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure dbgrChartColExit(Sender: TObject);
    procedure mnuDeleteRecordClick(Sender: TObject);
    procedure mnuRebuildClick(Sender: TObject);
    procedure mnuDeleteAllClick(Sender: TObject);
    procedure dbgrChartKeyPress(Sender: TObject; var Key: Char);
  private
    fsEntityName : String;
    fsEntityCode : String;
    fsChartCode  : String;
    fsChartDescr : String;
    fsMsgErr     : String;

    function IsSuiteValid : Boolean;

  public
    property EntityName : String write fsEntityName;
    property EntityCode : String write fsEntityCode;
    property ChartCode  : String write fsChartCode;
    property ChartDescr : String write fsChartDescr;

  end;

var
  frmJournalSplit: TfrmJournalSplit;

implementation


uses
  MiscFunc, AxiomData;




{$R *.dfm}

procedure TfrmJournalSplit.btnCancelClick(Sender: TObject);
begin
  Close;
  
end;

procedure TfrmJournalSplit.FormShow(Sender: TObject);
begin
  lblEntity.Caption :=     fsEntityName;
  lblChartCode.Caption :=  fsChartCode;
  lblChartDescr.Caption := fsChartDescr;

  qryChartBreakDown.Close;
  qryChartBreakDown.Connection := dmAxiom.uniInsight;
  qryChartBreakDown.ParamByName('CHART').AsString := fsChartCode;
  qryChartBreakDown.ParamByName('ENTITY').AsString := fsEntityCode;
  qryChartBreakDown.Open;

end;

procedure TfrmJournalSplit.dbgrChartEditButtonClick(Sender: TObject);
begin
  if (dbgrChart.SelectedIndex = colSubChart) then
    begin
      if not FormExists(frmLedgerSearch) then
        Application.CreateForm(TfrmLedgerSearch, frmLedgerSearch);

      if (frmLedgerSearch.ShowModal = mrOk) then
        begin
          qryChartBreakDown.Edit;

          qryChartBreakDown.FieldByName('SUB_CHART').AsString := frmLedgerSearch.qryLedgers.FieldByName('CODE').AsString;

        end;

    end;    //  end if

end;





procedure TfrmJournalSplit.btnSaveClick(Sender: TObject);
begin
  if (IsSuiteValid) then
    begin
      try
        qryChartBreakDown.CommitUpdates;          
        dmAxiom.uniInsight.Commit;

        Close;

        except
        on E: Exception do
        begin
          dmAxiom.uniInsight.Rollback;
          
          if (pos('parent key not found', E.Message) <> 0) then
            MsgErr('Posting failed' + #13 + #13 + 'A sub-chart does not exist for the current entity.')
          else
            if (pos('ORA-01407', E.Message) <> 0) then
              MsgErr('Posting failed' + #13 + #13 + 'You cannot post a journal split without a sub-chart.')
            else
              MsgErr('Posting failed' + #13 + #13 + E.Message);

        end;

     end;

    end
  else
     MsgErr('Posting failed' + #13 + #13 + fsMsgErr);

end;





function TfrmJournalSplit.IsSuiteValid : Boolean;
var
  lsSubChart : String;
  lsRounding : String;
  liPercent  : Double;
  liRounding : Integer;
begin
  Result := TRUE;
  
  if (not qryChartBreakDown.IsEmpty) then
    begin
      qryChartBreakDown.First;
      liPercent := 0;
      liRounding := 0;

      while (not qryChartBreakDown.Eof) do
        begin
          lsSubChart := qryChartBreakDown.FieldByName('SUB_CHART').AsString;
          lsRounding := qryChartBreakDown.FieldByName('IS_ROUNDING').AsString;
          liPercent := liPercent + qryChartBreakDown.FieldByName('PERCENT').AsFloat;

          if (not IsExisitingChart(lsSubChart, fsEntityCode)) then
            begin
              Result := FALSE;
              fsMsgErr := 'Sub-chart: ' + lsSubChart + ' does not exist for the current entity.';
              Break;

            end;    //  end if

          if (lsRounding = 'Y') then
            liRounding := liRounding + 1;

          qryChartBreakDown.Next;

        end;    //  end while

      if (Result) then
        begin
          if (liRounding = 0) then
            begin
              Result := FALSE;
              fsMsgErr := 'A sub-chart record must be designated to hold the rounding surplus.' + #13 + #13 +
                          'One sub-chart must be selected with a ''Y'' in the Rounding Error column.';

            end
          else
            if (liRounding <> 1) then
              begin
                Result := FALSE;
                fsMsgErr := 'Only one sub-chart can be designated for the rounding surplus, that is,' + #13 + #13 +
                            'within the Rounding Error column only one sub-chart can contain the value ''Y''.';

              end
            else
              begin
                if (liPercent <> 100) then
                  begin
                    Result := FALSE;
                    fsMsgErr := 'The total percentage must add up to 100%';

                  end;    //  end if

              end;    //  end  if-else

        end;    //  end if

    end;    //  end if

end;



procedure TfrmJournalSplit.dbgrChartColExit(Sender: TObject);
begin
  if (dbgrChart.SelectedIndex = colSubChart) then
    begin
      qryChartBreakDown.Edit;
      qryChartBreakDown.FieldByName('CHART').AsString := fsChartCode;
      qryChartBreakDown.FieldByName('ENTITY').AsString := fsEntityCode;

    end;    //  end if

end;

procedure TfrmJournalSplit.mnuDeleteRecordClick(Sender: TObject);
begin
  qryChartBreakDown.Delete;

end;

procedure TfrmJournalSplit.mnuRebuildClick(Sender: TObject);
begin
  qryChartBreakDown.Close;
  qryChartBreakDown.Open;
  
end;

procedure TfrmJournalSplit.mnuDeleteAllClick(Sender: TObject);
begin
  qryChartBreakDown.DisableControls;
  qryChartBreakDown.First;

  while (not qryChartBreakDown.IsEmpty) do
    begin
      qryChartBreakDown.Delete;      
      qryChartBreakDown.Next;

    end;    //  end while

  qryChartBreakDown.EnableControls;

end;

procedure TfrmJournalSplit.dbgrChartKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (dbgrChart.SelectedField.FieldName = 'IS_ROUNDING') then
    Key := UpCase(Key);

end;

end.
