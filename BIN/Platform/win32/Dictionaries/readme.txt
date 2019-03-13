This dictionary is being made available as freeware and was compiled by J.  Peter Mugaas from the follow:

1) Fifth Judicial District Court of New Mexico (http://www.fifthdistrictcourt.com)
2) Kansas City Real Estate (http://www.kcrealestate.to/ )
3) Clint Vannest & Tamia Vannest (http://www.selling-homes.com/ )
4) Old Republic Title Insurance Group ( http://www.oldrepublictitle.com/ )
5) Sutton Group - Select Realty Inc ( ttp://www.suttongroupselect.com/ )
6) Industry Canada ( http://strategis.ic.gc.ca/ )
7) Jerry R. Potts ( http://pw1.netcom.com/~patents2/ )
8) http://www.lectlaw.com/def.htm
9) Improve Your Latin Legal Terminology at UK Legal - The definitive guide to UK Law resources http://www.uklegal.com/articles/latin.htm
10) INS Website Glossery - http://www.ins.usdoj.gov/graphics/glossary.htm#A
11) International Law Dictionary & Directory - http://august1.com/pubs/dict/index.shtml
12) CRIMINAL JUSTICE TODAY GLOSSARY - http://www.prenhall.com/cjcentral/cj_glossary/glossary.html
13) Experian | Glossary of Credit Terms - http://www.experian.com/consumer/glossary.html
14) MyFICO glossary - http://www.myfico.com/myFICO/CreditCentral/Glossary.asp
15) TransUnion - Credit Terminology - http://www.transunion.com/content/page.jsp?id=/personalsolutions/general/data/Glossary.xml
16) aboutchecking.com - Glossary of checking terms - http://www.aboutchecking.com/yourcheckingacct/yca_slct_glossary.asp

Along with select words taken from documents available at the Virginia State Bar (http://www.vsb.org/), California State Bar (http://www.calbar.org/), the Department of Regulation and Licensing ( http://badger.state.wi.us/agencies/drl ), a few words I recalled and double checked with the Merriam Webster dictionary, a Workers Compensation judgment (forgot where that was), a U.S. Supreme Court opinion, and a few other places.

Some notes on construction

This dictionary was created by pasting words into a text file called legal.txt which I have included.  The file is then scanned with an internal process that removes specific characters, extracts words, sorts them alphabetically, and creates the file legalwords.txt.  I than used the add dictionary wizard included with Addict v3 PlusPack to make the (legalwords.adm) dictionary.

If you are curious about the internal application I mentioned, the source-code is below:

unit mainform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses IdGlobal;

{$R *.DFM}

procedure AddWords(AWord : String; s : TStrings);
var st : String;
begin
  repeat
    st := Fetch(AWord);
    if Length(Trim(st)) > 0 then
      s.Add(Trim(st));
  until Length(AWord) = 0;
end;

function StripChars(s : String) : String;
var i : Integer;
const
    chrs : set of char = [#$A0, 

#10,#13,#9,'(',')','&',',','/','*','1','2','3','4','5','6','7','7','8','9','0

'];
begin
  Result := '';
  if Length(s)>0 then
  begin
    for i := 1 to Length(s) do
    begin
      if not (s[i] in chrs) then
      begin
        Result := Result + s[i];
      end;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var s : TStringList;
    s2 : TStringList;
    i : Integer;
begin
  s := TStringList.Create;
  try
    s.Duplicates := dupIgnore;
    s.LoadFromFile('D:\Documents and Settings\*\My Documents\legaldict\legal.txt');
    s2 := TStringList.Create;
    try
      s2.Sorted := True;
      s2.Duplicates  := dupIgnore;
      for i := 0 to s.Count -1 do
      begin
        if Length(StripChars(Trim(s[i])))>0 then
          AddWords(Trim(StripChars(LowerCase(s[i]))),s2);
//          s2.Add(Trim(LowerCase(s[i])));
      end;
      s2.SaveToFile('D:\Documents and Settings\J. Peter Mugaas\My 

Documents\legaldict\legalwords.txt');
    finally
      s2.Free;
    end;
  finally
    s.Free;
  end;
end;

end.

Note that I did use the IdGlobal unit that is part of Internet Direct (Indy) 
which is available at http://www.nevrona.com/indy (Open Source).

Notes on the dictionary philosophy

The dictionary is intended to supplement the standard U.S. English dictionary 
included with Addict and not replace it.  However, there are a lot of English 
words which are used as part of legal terms, are often seen in legal documents, or are used differently than in standard English (e.g. a lemon is a noun meaning a specific sour citrus fruit while in legal contexts, it means an extremely faulty new car which is covered by a "lemon law"). In addition to legal terms, I also decided to add some terms from the real-estate industry because there is considerable overlap among the two fields.    

This dictionary is oriented primarily around U.S. law although it might be adaptable for jurisdictions that are based on common law.  This dictionary is not appropriate for some other legal traditions such as Islamic law.  

There are also a few acronyms and parts of abbreviations for some legal terms. 

Why I compiled this dictionary

I don't know.  I guess I was inspired by "something".

Disclaimer of Liability

By using this dictionary, you unequivocally agree that J. Peter Mugaas is not 
liable for any damages including consequential, punitive, pain and suffering, and plus waive any and all remedies you may have against the author  in consideration for the right to use, distribute, and broadcast this work without restrictions, royalties, or obligation to all parties mentioned herein.
