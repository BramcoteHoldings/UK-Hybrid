unit citfunc;

interface

uses Forms, Classes, Dialogs, Uni;

function FormExists(frmInput : TForm):boolean;
procedure ActiveSmartQuery(frmInput : TForm);

implementation

function FormExists(frmInput : TForm):boolean;
var
  iCount : integer;
  bResult : boolean;
begin
  bResult := false;
  for iCount := 0 to (Application.ComponentCount - 1) do
    if Application.Components[iCount] is TForm then
      if Application.Components[iCount] = frmInput then
        bResult:=true;
  FormExists := bResult;
end;

procedure ActiveSmartQuery(frmInput : TForm);
var
  iCount : integer;
  sQueryNames : string;
begin
  for iCount := 0 to (frmInput.ComponentCount - 1) do
    if frmInput.Components[iCount] is TUniQuery then
      if (frmInput.Components[iCount] As TUniQuery).Active then
        sQueryNames := sQueryNames + ' ' + (frmInput.Components[iCount] As TUniQuery).Name;
  if sQueryNames <> '' then
    MessageDlg('Open = ' + sQueryNames, mtInformation, [mbOK], 0);
end;


end.
 