unit Axiommail;

// Oracle Package Wizard 1.0.3
// File Axiommail.pas generated by alexs on 09/10/2006 1:58:21 PM
// This unit contains interface objects for oracle package AXIOM.AXIOMMAIL
// WARNING: Modifications made to this file will be lost after regeneration!

interface

uses Classes, SysUtils, Oracle;

type
(*
PACKAGE axiommail
IS
   FUNCTION geterrormessage
      RETURN VARCHAR2;

   FUNCTION geterrorcode
      RETURN NUMBER;

   PROCEDURE CLEAR;

   PROCEDURE addto (sto VARCHAR2);

   PROCEDURE addcc (scc VARCHAR2);

   PROCEDURE setsubject (ssubject VARCHAR2);

   PROCEDURE setdata (sdata VARCHAR2);

   PROCEDURE setfrom (sfrom VARCHAR2);

   FUNCTION send (
      sfrom                    VARCHAR2,
      sto                      VARCHAR2,
      scc                      VARCHAR2,
      ssubject                 VARCHAR2,
      sdata                    VARCHAR2,
      ioracleerrorcode   OUT   NUMBER,
      soracleerror       OUT   VARCHAR2
   )
      RETURN BOOLEAN;

   FUNCTION send
      RETURN BOOLEAN;
END;
*)
  TAxiommail = class(TOracleCustomPackage)
  public
    procedure Addcc(const AScc: string);
    procedure Addto(const ASto: string);
    procedure Clear;
    function  Geterrorcode: Double;
    function  Geterrormessage: string;
    function  Send(const ASfrom: string; const ASto: string; 
      const AScc: string; const ASsubject: string; const ASdata: string; 
      out AIoracleerrorcode: Double; out ASoracleerror: string): Boolean; overload;
    function  Send: Boolean; overload;
    procedure Setdata(const ASdata: string);
    procedure Setfrom(const ASfrom: string);
    procedure Setsubject(const ASsubject: string);
  published
    property Name;
    property Session;
    property Cursor;
  end;

var
  DefaultPLSQLTableSize: Integer = 100; // Default size of a PL/SQL Table

implementation

// AXIOMMAIL.ADDCC
procedure TAxiommail.Addcc(const AScc: string);
begin
  GetQuery;
  OCPQuery.DeclareVariable('SCC', otString);
  OCPQuery.SetVariable('SCC', AScc);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "AXIOMMAIL"."ADDCC"(SCC => :SCC);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

// AXIOMMAIL.ADDTO
procedure TAxiommail.Addto(const ASto: string);
begin
  GetQuery;
  OCPQuery.DeclareVariable('STO', otString);
  OCPQuery.SetVariable('STO', ASto);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "AXIOMMAIL"."ADDTO"(STO => :STO);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

// AXIOMMAIL.CLEAR
procedure TAxiommail.Clear;
begin
  GetQuery;
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "AXIOMMAIL"."CLEAR";');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

// AXIOMMAIL.GETERRORCODE
function TAxiommail.Geterrorcode: Double;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otFloat);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "AXIOMMAIL"."GETERRORCODE";');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// AXIOMMAIL.GETERRORMESSAGE
function TAxiommail.Geterrormessage: string;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otString);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  :function_result := "AXIOMMAIL"."GETERRORMESSAGE";');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
end;

// AXIOMMAIL.SEND, overload 1
function TAxiommail.Send(const ASfrom: string; const ASto: string; 
  const AScc: string; const ASsubject: string; const ASdata: string; 
  out AIoracleerrorcode: Double; out ASoracleerror: string): Boolean;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otInteger);
  OCPQuery.DeclareVariable('SFROM', otString);
  OCPQuery.SetVariable('SFROM', ASfrom);
  OCPQuery.DeclareVariable('STO', otString);
  OCPQuery.SetVariable('STO', ASto);
  OCPQuery.DeclareVariable('SCC', otString);
  OCPQuery.SetVariable('SCC', AScc);
  OCPQuery.DeclareVariable('SSUBJECT', otString);
  OCPQuery.SetVariable('SSUBJECT', ASsubject);
  OCPQuery.DeclareVariable('SDATA', otString);
  OCPQuery.SetVariable('SDATA', ASdata);
  OCPQuery.DeclareVariable('IORACLEERRORCODE', otFloat);
  OCPQuery.DeclareVariable('SORACLEERROR', otString);
  OCPQuery.SQL.Add('declare');
  OCPQuery.SQL.Add('  function_result boolean;');
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  function_result := "AXIOMMAIL"."SEND"(');
  OCPQuery.SQL.Add('    SFROM => :SFROM,');
  OCPQuery.SQL.Add('    STO => :STO,');
  OCPQuery.SQL.Add('    SCC => :SCC,');
  OCPQuery.SQL.Add('    SSUBJECT => :SSUBJECT,');
  OCPQuery.SQL.Add('    SDATA => :SDATA,');
  OCPQuery.SQL.Add('    IORACLEERRORCODE => :IORACLEERRORCODE,');
  OCPQuery.SQL.Add('    SORACLEERROR => :SORACLEERROR);');
  OCPQuery.SQL.Add('  :function_result := sys.diutil.bool_to_int(function_result);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(IntToBool(OCPQuery.GetVariable('function_result')));
  AIoracleerrorcode := ConvertVariant(OCPQuery.GetVariable('IORACLEERRORCODE'));
  ASoracleerror := ConvertVariant(OCPQuery.GetVariable('SORACLEERROR'));
end;

// AXIOMMAIL.SEND, overload 2
function TAxiommail.Send: Boolean;
begin
  GetQuery;
  OCPQuery.DeclareVariable('function_result', otInteger);
  OCPQuery.SQL.Add('declare');
  OCPQuery.SQL.Add('  function_result boolean;');
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  function_result := "AXIOMMAIL"."SEND";');
  OCPQuery.SQL.Add('  :function_result := sys.diutil.bool_to_int(function_result);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
  Result := ConvertVariant(IntToBool(OCPQuery.GetVariable('function_result')));
end;

// AXIOMMAIL.SETDATA
procedure TAxiommail.Setdata(const ASdata: string);
begin
  GetQuery;
  OCPQuery.DeclareVariable('SDATA', otString);
  OCPQuery.SetVariable('SDATA', ASdata);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "AXIOMMAIL"."SETDATA"(SDATA => :SDATA);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

// AXIOMMAIL.SETFROM
procedure TAxiommail.Setfrom(const ASfrom: string);
begin
  GetQuery;
  OCPQuery.DeclareVariable('SFROM', otString);
  OCPQuery.SetVariable('SFROM', ASfrom);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "AXIOMMAIL"."SETFROM"(SFROM => :SFROM);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

// AXIOMMAIL.SETSUBJECT
procedure TAxiommail.Setsubject(const ASsubject: string);
begin
  GetQuery;
  OCPQuery.DeclareVariable('SSUBJECT', otString);
  OCPQuery.SetVariable('SSUBJECT', ASsubject);
  OCPQuery.SQL.Add('begin');
  OCPQuery.SQL.Add('  "AXIOMMAIL"."SETSUBJECT"(SSUBJECT => :SSUBJECT);');
  OCPQuery.SQL.Add('end;');
  OCPQuery.Execute;
end;

end.
