unit WorkFlowNoteEntryDialog;
(*
  WorkFlow Note Entry Dialog

  Called from workflow notes, to allow user to enter the note details.

  Mathew Dredge, Aug-Sep 2002
 *)

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, DBCtrls;

type
  TfmWorkFlowNoteEntryDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    lDate: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lBy: TLabel;
    mNote: TMemo;
  private
    function GetNote: String;
    procedure SetBy(const Value: String);
    procedure SetEntryDate(const Value: TDateTime);
    procedure SetNote(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property EntryDate: TDateTime write SetEntryDate;
    property By: String write SetBy;
    property Note: String read GetNote write SetNote;
  end;

var
  fmWorkFlowNoteEntryDialog: TfmWorkFlowNoteEntryDialog;

implementation

uses WorkFlowDataModule;

{$R *.dfm}

function TfmWorkFlowNoteEntryDialog.GetNote: String;
begin
  Result := mNote.Lines.Text;
end;

procedure TfmWorkFlowNoteEntryDialog.SetBy(const Value: String);
begin
  lBy.Caption := Value;
end;

procedure TfmWorkFlowNoteEntryDialog.SetEntryDate(const Value: TDateTime);
begin
  lDate.Caption := DateTimeToStr(Value);
end;

procedure TfmWorkFlowNoteEntryDialog.SetNote(const Value: String);
begin
  mNote.Lines.Text := Value;
end;

end.
