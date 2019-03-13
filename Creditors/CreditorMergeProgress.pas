unit CreditorMergeProgress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, OracleUniProvider, Uni, StdCtrls, ComCtrls;

type
  TfrmCreditorMergeProgress = class(TForm)
    pbProgress: TProgressBar;
    lblProgress: TLabel;
    qryMerge: TUniQuery;
    lblTitle: TLabel;
  private
    { Private declarations }
    procedure UpdateDisplay(AMsg: string; APosition: Integer);
  public
    { Public declarations }
    function DoCreditorMerge(const ATitle: string; const aMergee,
                             aMergeInto: Integer): Boolean;
  end;

var
  frmCreditorMergeProgress: TfrmCreditorMergeProgress;

implementation

uses AxiomData;

{$R *.dfm}

{ TfrmCreditorMergeProgress }

function TfrmCreditorMergeProgress.DoCreditorMerge(const ATitle: string; const aMergee,
  aMergeInto: Integer): Boolean;
begin
{
  Merge the creditor represented by aMergee into the creditor represented by aMergeInto
}
  try
    lblTitle.Caption:= ATitle;
    Show;
    try
      {
       there are 3 tables of interest here: CREDITOR, CREDITORNOTES and INVOICE.

       We don't need to do anything to CREDITOR, howvere in each of CREDITORNOTES and
       INVOICE, we need to update every occurrance of NCREDITOR with the value aMergeInto
       where NCREDITOR is already aMergee.

       Once done, return success.
      }
      if dmAxiom.uniInsight.InTransaction then
             dmAxiom.uniInsight.Commit;
      dmAxiom.uniInsight.StartTransaction;

      UpdateDisplay('Merging CREDITORNOTES records...', 1);
      // first do CREDITORNOTES
      qryMerge.Close;
      qryMerge.SQL.Clear;
      qryMerge.SQL.Add('UPDATE CREDITORNOTES SET NCREDITOR = :MERGEINTO WHERE NCREDITOR = :MERGEE');
      qryMerge.ParamByName('MERGEE').AsInteger:= aMergee;
      qryMerge.ParamByName('MERGEINTO').AsInteger:= aMergeInto;
      qryMerge.ExecSQL;
      qryMerge.Close;

      UpdateDisplay('CREDITORNOTES records merged', 2);

      UpdateDisplay('Merging INVOICE records...', 3);
      // now do INVOICE
      qryMerge.SQL.Clear;
      qryMerge.SQL.Add('UPDATE INVOICE SET NCREDITOR = :MERGEINTO WHERE NCREDITOR = :MERGEE');
      qryMerge.ParamByName('MERGEE').AsInteger:= aMergee;
      qryMerge.ParamByName('MERGEINTO').AsInteger:= aMergeInto;
      qryMerge.ExecSQL;
      qryMerge.Close;
      UpdateDisplay('INVOICE records merged', 4);

      UpdateDisplay('Posting updates...', 5);
      dmAxiom.uniInsight.Commit;

      result:= True;
    except
      dmAxiom.uniInsight.Rollback;

      result:= False;
    end
  finally
    Release;
  end
end;

procedure TfrmCreditorMergeProgress.UpdateDisplay(AMsg: string;
  APosition: Integer);
begin
  lblProgress.Caption:= AMsg;
  pbProgress.Position:= APosition;

  Application.ProcessMessages;

  // let the user digest what we have said
  sleep(1000);
end;

end.
