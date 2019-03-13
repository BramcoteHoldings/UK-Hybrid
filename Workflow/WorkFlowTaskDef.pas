unit WorkFlowTaskDef;
(*
  WorkFlow Task Definitions.

  Used for workflow tasks..

  Mathew Dredge, Aug-Sep 2002
 *)

interface

uses
   miscfunc;

const
  // declarations of strings used.
  C_DESC_DEFAULT                 = 'Default';

  C_DESC_PARENTSTARTS            = 'Parent Starts';
  C_DESC_SIBLINGSTARTS           = 'Prior Starts';
  C_DESC_RELATEDSTARTS           = 'Related Starts';
  C_DESC_NEXTSTARTS              = 'Next Starts';

  C_DESC_SIBLINGCOMPLETES        = 'Prior Completes';
  C_DESC_RELATEDCOMPLETES        = 'Related Completes';
  C_DESC_NEXTCOMPLETES           = 'Next Completes';

  C_DESC_SIBLINGSKIPPED          = 'Prior Skipped';
  C_DESC_RELATEDSKIPPED          = 'Related Skipped';
  C_DESC_NEXTSKIPPED             = 'Next Skipped';

  C_DESC_PARENTOVERDUE           = 'Parent Overdue';
  C_DESC_SIBLINGOVERDUE          = 'Prior Overdue';
  C_DESC_RELATEDOVERDUE          = 'Related Overdue';

  C_DESC_PARENT                  = 'Parent';
  C_DESC_SIBLING                 = 'Prior';
  C_DESC_NEXT                    = 'Next';
  C_DESC_RELATED                 = 'Related';

{ C_DESC_DAYSFROMPARENTSTART     = 'Days From Parent Start';
  C_DESC_DAYSFROMSIBLINGSTART    = 'Days From Prior Start';
  C_DESC_DAYSFROMRELATEDSTART    = 'Days From Related Start';

  C_DESC_DAYSFROMSIBLINGCOMPLETE = 'Days From Prior Complete';
  C_DESC_DAYSFROMRELATEDCOMPLETE = 'Days From Related Complete';}

  C_CODE_DEFAULT                 = 'DEF';

  C_CODE_PARENTSTARTS            = 'PS';
  C_CODE_SIBLINGSTARTS           = 'SS';
  C_CODE_RELATEDSTARTS           = 'RS';
  C_CODE_NEXTSTARTS              = 'NS';

  C_CODE_SIBLINGCOMPLETES        = 'SC';
  C_CODE_RELATEDCOMPLETES        = 'RC';
  C_CODE_NEXTCOMPLETES           = 'NC';

  C_CODE_SIBLINGSKIPPED          = 'SK';
  C_CODE_RELATEDSKIPPED          = 'RK';
  C_CODE_NEXTSKIPPED             = 'NK';

  C_CODE_PARENTOVERDUE           = 'PO';
  C_CODE_SIBLINGOVERDUE          = 'SO';
  C_CODE_RELATEDOVERDUE          = 'RO';

  C_CODE_PARENT                  = 'P';
  C_CODE_SIBLING                 = 'S';
  C_CODE_NEXT                    = 'N';
  C_CODE_RELATED                 = 'R';

{  C_CODE_DAYSFROMPARENTSTART     = 'PSN';
  C_CODE_DAYSFROMSIBLINGSTART    = 'SSN';
  C_CODE_DAYSFROMRELATEDSTART    = 'RSN';

  C_CODE_DAYSFROMSIBLINGCOMPLETE = 'CSN';
  C_CODE_DAYSFROMRELATEDCOMPLETE = 'RSN'; }


// declarations for task start when...
type
  // delphi types for when a task starts
  TTaskStartsWhen = (tswDEF,
    tswPS,  tswSS,  tswXS,   // parent starts, sibling starts, related starts
            tswSC,  tswXC,   // sibling completes, related completes
            tswSK,  tswXK,   // sibling skipped, related skipped
    tswPO,  tswSO,  tswXO{,   // parent overdue, sibling overdue, related overdue
    tswPSN, tswSSN, tswXSN,  // parent started x days, sibling started x days, related started x days
            tswSCN, tswXCN}); // sibling completed x days, related completed x days

var
  // these group when a task starts into sets of like types..
  TTaskStartWhenParent:             set of TTaskStartsWhen = [tswPS,               tswPO{, tswPSN}];
  TTaskStartWhenSibling:            set of TTaskStartsWhen = [tswSS, tswSC, tswSK, tswSO{, tswSSN, tswSCN}];
  TTaskStartWhenRelated:            set of TTaskStartsWhen = [tswXS, tswXC, tswXK, tswXO{, tswXSN, tswXCN}];

  TTaskStartWhenStart:              set of TTaskStartsWhen = [tswPS  .. tswXS];
  TTaskStartWhenComplete:           set of TTaskStartsWhen = [tswSC  .. tswXC];
  TTaskStartWhenSkipped:            set of TTaskStartsWhen = [tswSK  .. tswXK];
  TTaskStartWhenDaysOverdue:        set of TTaskStartsWhen = [tswPO  .. tswXO];
{  TTaskStartWhenDaysFromStart:      set of TTaskStartsWhen = [tswPSN .. tswXSN];
  TTaskStartWhenDaysFromComplete:   set of TTaskStartsWhen = [tswSCN .. tswXCN];}

  // code that is stored in the database
  TTaskStartWhenCode: array [Low(TTaskStartsWhen) .. High(TTaskStartsWhen)] of String = (C_CODE_DEFAULT,
    C_CODE_PARENTSTARTS,         C_CODE_SIBLINGSTARTS,           C_CODE_RELATEDSTARTS,
                                 C_CODE_SIBLINGCOMPLETES,        C_CODE_RELATEDCOMPLETES,
                                 C_CODE_SIBLINGSKIPPED,          C_CODE_RELATEDSKIPPED,
    C_CODE_PARENTOVERDUE,        C_CODE_SIBLINGOVERDUE,          C_CODE_RELATEDOVERDUE{,
    C_CODE_DAYSFROMPARENTSTART,  C_CODE_DAYSFROMSIBLINGSTART,    C_CODE_DAYSFROMRELATEDSTART,
                                 C_CODE_DAYSFROMSIBLINGCOMPLETE, C_CODE_DAYSFROMRELATEDCOMPLETE});

  // what the user sees on the screen..
  TTaskStartWhenDescription: array [Low(TTaskStartsWhen) .. High(TTaskStartsWhen)] of String = (C_DESC_DEFAULT,
    C_DESC_PARENTSTARTS,         C_DESC_SIBLINGSTARTS,           C_DESC_RELATEDSTARTS,
                                 C_DESC_SIBLINGCOMPLETES,        C_DESC_RELATEDCOMPLETES,
                                 C_DESC_SIBLINGSKIPPED,          C_DESC_RELATEDSKIPPED,
    C_DESC_PARENTOVERDUE,        C_DESC_SIBLINGOVERDUE,          C_DESC_RELATEDOVERDUE{,
    C_DESC_DAYSFROMPARENTSTART,  C_DESC_DAYSFROMSIBLINGSTART,    C_DESC_DAYSFROMRELATEDSTART,
                                 C_DESC_DAYSFROMSIBLINGCOMPLETE, C_DESC_DAYSFROMRELATEDCOMPLETE});

// declaration for task completes when
type
  // delphi types for when a task completes
  TTaskCompletesWhen = (tcwDEF,
           tcwXS, tcwNS,  // related starts,    next starts
    tcwSC, tcwXC, tcwNC,  // sibling completes, related completes, next completes
    tcwSK, tcwXK, tcwNK); // sibling skipped,   related skipped,  next skipped

var
  // these group when a task completes into like types..
  TTaskCompleteWhenSibling:            set of TTaskCompletesWhen = [tcwSC, tcwSK];
  TTaskCompleteWhenRelated:            set of TTaskCompletesWhen = [tcwXS, tcwXC, tcwXK];
  TTaskCompleteWhenNext:               set of TTaskCompletesWhen = [tcwNS, tcwNC, tcwNK];

  TTaskCompleteWhenStart:              set of TTaskCompletesWhen = [tcwXS  .. tcwNS];
  TTaskCompleteWhenComplete:           set of TTaskCompletesWhen = [tcwSC  .. tcwNC];
  TTaskCompleteWhenSkipped:            set of TTaskCompletesWhen = [tcwSK  .. tcwNK];

  // the code that is stored in the database
  TTaskCompleteWhenCode: array [Low(TTaskCompletesWhen) .. High(TTaskCompletesWhen)] of String = (C_CODE_DEFAULT,
                             C_CODE_RELATEDSTARTS,    C_CODE_NEXTSTARTS,
    C_CODE_SIBLINGCOMPLETES, C_CODE_RELATEDCOMPLETES, C_CODE_NEXTCOMPLETES,
    C_CODE_SIBLINGSKIPPED,   C_CODE_RELATEDSKIPPED,   C_CODE_NEXTSKIPPED);

  // what the user sees is..
  TTaskCompleteWhenDescription: array [Low(TTaskCompletesWhen) .. High(TTaskCompletesWhen)] of String = (C_DESC_DEFAULT,
                             C_DESC_RELATEDSTARTS,    C_DESC_NEXTSTARTS,
    C_DESC_SIBLINGCOMPLETES, C_DESC_RELATEDCOMPLETES, C_DESC_NEXTCOMPLETES,
    C_DESC_SIBLINGSKIPPED,   C_DESC_RELATEDSKIPPED,   C_DESC_NEXTSKIPPED);

// when a task skips
type
  // delphi types for when a task is skipped.
  TTaskSkipsWhen = (tkwDEF,
    tkwSS, tkwXS, tkwNS,  // sibling starts, related starts, next starts
    tkwSC, tkwXC, tkwNC,  // sibling completes, related completes, next completes
    tkwSK, tkwXK, tkwNK); // sibling skipped, related skipped, next skipped

var
  // groups when a task is skipped into like types.
  TTaskSkipWhenSibling:            set of TTaskSkipsWhen = [tkwSS, tkwSK];
  TTaskSkipWhenRelated:            set of TTaskSkipsWhen = [tkwXS, tkwXC, tkwXK];
  TTaskSkipWhenNext:               set of TTaskSkipsWhen = [tkwNS, tkwNC, tkwNK];

  TTaskSkipWhenStart:              set of TTaskSkipsWhen = [tkwSS  .. tkwNS];
  TTaskSkipWhenComplete:           set of TTaskSkipsWhen = [tkwSC  .. tkwNC];
  TTaskSkipWhenSkipped:            set of TTaskSkipsWhen = [tkwSK  .. tkwNK];

var
  // code used in the database.
  TTaskSkipWhenCode: array [Low(TTaskSkipsWhen) .. High(TTaskSkipsWhen)] of String = (C_CODE_DEFAULT,
    C_CODE_SIBLINGSTARTS,    C_CODE_RELATEDSTARTS,    C_CODE_NEXTSTARTS,
    C_CODE_SIBLINGCOMPLETES, C_CODE_RELATEDCOMPLETES, C_CODE_NEXTCOMPLETES,
    C_CODE_SIBLINGSKIPPED,   C_CODE_RELATEDSKIPPED,   C_CODE_NEXTSKIPPED);

  // what the user sees.
  TTaskSkipWhenDescription: array [Low(TTaskSkipsWhen) .. High(TTaskSkipsWhen)] of String = (C_DESC_DEFAULT,
    C_DESC_SIBLINGSTARTS,    C_DESC_RELATEDSTARTS,    C_DESC_NEXTSTARTS,
    C_DESC_SIBLINGCOMPLETES, C_DESC_RELATEDCOMPLETES, C_DESC_NEXTCOMPLETES,
    C_DESC_SIBLINGSKIPPED,   C_DESC_RELATEDSKIPPED,   C_DESC_NEXTSKIPPED);


// relation on due date links.
type
  // delphi types for when a task is skipped.
  TTaskDueDateLinkTo = (dltDEF,
    dltP,  dltS,  dltN,  // Parent, Sibling, Next
    dltR); // related
var
  // code used in the database.
  TTaskDueDateLinkToCode: array[Low(TTaskDueDateLinkTo) .. High(TTaskDueDateLinkTo)] of String = (C_CODE_DEFAULT,
    C_CODE_PARENT, C_CODE_SIBLING, C_CODE_NEXT, C_CODE_RELATED);

  // what the users sees.
  TTaskDueDateLinkToDescription: array[Low(TTaskDueDateLinkTo) .. High(TTaskDueDateLinkTo)] of String = (C_DESC_DEFAULT,
    C_DESC_PARENT, C_DESC_SIBLING, C_DESC_NEXT, C_DESC_RELATED);

var
// who assigned to
  TAssignToList: array[1..4] of String = ('Partner','Controller','Author','Operator');
  TAssignToListCode: array[1..4] of String = ('P','C','A','O');
  
// some functions that help..
function AssignToToStr(AValue: String): String;

function GetTaskStartsWhenFromCode(ACode: String): TTaskStartsWhen;
function GetTaskStartsWhenFromDescription(ADesc: String): TTaskStartsWhen;
function GetTaskStartCodeFromDescription(ADesc: String): String;
function GetTaskStartDescriptionFromCode(ACode: String): String;

function GetTaskCompletesWhenFromCode(ACode: String): TTaskCompletesWhen;
function GetTaskCompletesWhenFromDescription(ADesc: String): TTaskCompletesWhen;
function GetTaskCompleteCodeFromDescription(ADesc: String): String;
function GetTaskCompleteDescriptionFromCode(ACode: String): String;

function GetTaskSkipsWhenFromCode(ACode: String): TTaskSkipsWhen;
function GetTaskSkipsWhenFromDescription(ADesc: String): TTaskSkipsWhen;
function GetTaskSkipCodeFromDescription(ADesc: String): String;
function GetTaskSkipDescriptionFromCode(ACode: String): String;

function GetTaskDueDateLinkToFromCode(ACode: String): TTaskDueDateLinkTo;
function GetTaskDueDateLinkToFromDescription(ADesc: String): TTaskDueDateLinkTo;
function GetTaskDueDateLinkToCodeFromDescription(ADesc: String): String;
function GetTaskDueDateLinkToDescriptionFromCode(ACode: String): String;

implementation

function AssignToToStr(AValue: String): String;
var
  imaxLength: Integer;
  AAssignTo: string;
begin
   AAssignTo := getLabelValueByCode('MATTER',AValue,imaxLength);
   if AAssignTo = '' then
      AAssignTo := AValue;
   Result := AAssignTo;

{  Result := '';
  if(AValue <> '') then
  begin
    for i := Low(TAssignToList) to High(TAssignToList) do
    begin
      if(TAssignToListCode[i] = AValue) then
      begin
        Result := TAssignToList[i];
        Exit;
      end;
    end;
  end;  }
end;

function GetTaskStartsWhenFromCode(ACode: String): TTaskStartsWhen;
var
  i: TTaskStartsWhen;
begin
  Result := tswDEF;
  for i := Low(TTaskStartsWhen) to High(TTaskStartsWhen) do
  begin
    if(ACode = TTaskStartWhenCode[i]) then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

function GetTaskStartsWhenFromDescription(ADesc: String): TTaskStartsWhen;
var
  i: TTaskStartsWhen;
begin
  Result := tswDEF;
  for i := Low(TTaskStartsWhen) to High(TTaskStartsWhen) do
  begin
    if(ADesc = TTaskStartWhenDescription[i]) then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

function GetTaskStartCodeFromDescription(ADesc: String): String;
var
  i: TTaskStartsWhen;
begin
  Result := TTaskStartWhenCode[tswDEF];
  for i := Low(TTaskStartsWhen) to High(TTaskStartsWhen) do
  begin
    if(ADesc = TTaskStartWhenDescription[i]) then
    begin
      Result := TTaskStartWhenCode[i];
      Exit;
    end;
  end;
end;

function GetTaskStartDescriptionFromCode(ACode: String): String;
var
  i: TTaskStartsWhen;
begin
  Result := TTaskStartWhenDescription[tswDEF];
  for i := Low(TTaskStartsWhen) to High(TTaskStartsWhen) do
  begin
    if(ACode = TTaskStartWhenCode[i]) then
    begin
      Result := TTaskStartWhenDescription[i];
      Exit;
    end;
  end;
end;

function GetTaskCompletesWhenFromCode(ACode: String): TTaskCompletesWhen;
var
  i: TTaskCompletesWhen;
begin
  Result := tcwDEF;
  for i := Low(TTaskCompletesWhen) to High(TTaskCompletesWhen) do
  begin
    if(ACode = TTaskCompleteWhenCode[i]) then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

function GetTaskCompletesWhenFromDescription(ADesc: String): TTaskCompletesWhen;
var
  i: TTaskCompletesWhen;
begin
  Result := tcwDEF;
  for i := Low(TTaskCompletesWhen) to High(TTaskCompletesWhen) do
  begin
    if(ADesc = TTaskCompleteWhenDescription[i]) then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

function GetTaskCompleteCodeFromDescription(ADesc: String): String;
var
  i: TTaskCompletesWhen;
begin
  Result := TTaskCompleteWhenCode[tcwDEF];
  for i := Low(TTaskCompletesWhen) to High(TTaskCompletesWhen) do
  begin
    if(ADesc = TTaskCompleteWhenDescription[i]) then
    begin
      Result := TTaskCompleteWhenCode[i];
      Exit;
    end;
  end;
end;

function GetTaskCompleteDescriptionFromCode(ACode: String): String;
var
  i: TTaskCompletesWhen;
begin
  Result := TTaskCompleteWhenDescription[tcwDEF];
  for i := Low(TTaskCompletesWhen) to High(TTaskCompletesWhen) do
  begin
    if(ACode = TTaskCompleteWhenCode[i]) then
    begin
      Result := TTaskCompleteWhenDescription[i];
      Exit;
    end;
  end;
end;

function GetTaskSkipsWhenFromCode(ACode: String): TTaskSkipsWhen;
var
  i: TTaskSkipsWhen;
begin
  Result := tkwDEF;
  for i := Low(TTaskSkipsWhen) to High(TTaskSkipsWhen) do
  begin
    if(ACode = TTaskSkipWhenCode[i]) then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

function GetTaskSkipsWhenFromDescription(ADesc: String): TTaskSkipsWhen;
var
  i: TTaskSkipsWhen;
begin
  Result := tkwDEF;
  for i := Low(TTaskSkipsWhen) to High(TTaskSkipsWhen) do
  begin
    if(ADesc = TTaskSkipWhenDescription[i]) then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

function GetTaskSkipCodeFromDescription(ADesc: String): String;
var
  i: TTaskSkipsWhen;
begin
  Result := TTaskSkipWhenCode[tkwDEF];
  for i := Low(TTaskSkipsWhen) to High(TTaskSkipsWhen) do
  begin
    if(ADesc = TTaskSkipWhenDescription[i]) then
    begin
      Result := TTaskSkipWhenCode[i];
      Exit;
    end;
  end;
end;

function GetTaskSkipDescriptionFromCode(ACode: String): String;
var
  i: TTaskSkipsWhen;
begin
  Result := TTaskSkipWhenDescription[tkwDEF];
  for i := Low(TTaskSkipsWhen) to High(TTaskSkipsWhen) do
  begin
    if(ACode = TTaskSkipWhenCode[i]) then
    begin
      Result := TTaskSkipWhenDescription[i];
      Exit;
    end;
  end;
end;

function GetTaskDueDateLinkToFromCode(ACode: String): TTaskDueDateLinkTo;
var
  i: TTaskDueDateLinkTo;
begin
  Result := dltDEF;
  for i := Low(TTaskDueDateLinkTo) to High(TTaskDueDateLinkTo) do
  begin
    if(ACode = TTaskDueDateLinkToCode[i]) then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

function GetTaskDueDateLinkToFromDescription(ADesc: String): TTaskDueDateLinkTo;
var
  i: TTaskDueDateLinkTo;
begin
  Result := dltDEF;
  for i := Low(TTaskDueDateLinkTo) to High(TTaskDueDateLinkTo) do
  begin
    if(ADesc = TTaskDueDateLinkToDescription[i]) then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

function GetTaskDueDateLinkToCodeFromDescription(ADesc: String): String;
var
  i: TTaskDueDateLinkTo;
begin
  Result := C_CODE_DEFAULT;
  for i := Low(TTaskDueDateLinkTo) to High(TTaskDueDateLinkTo) do
  begin
    if(ADesc = TTaskDueDateLinkToDescription[i]) then
    begin
      Result := TTaskDueDateLinkToCode[i];
      Exit;
    end;
  end;
end;

function GetTaskDueDateLinkToDescriptionFromCode(ACode: String): String;
var
  i: TTaskDueDateLinkTo;
begin
  Result := C_DESC_DEFAULT;
  for i := Low(TTaskDueDateLinkTo) to High(TTaskDueDateLinkTo) do
  begin
    if(ACode = TTaskDueDateLinkToCode[i]) then
    begin
      Result := TTaskDueDateLinkToDescription[i];
      Exit;
    end;
  end;
end;


end.
