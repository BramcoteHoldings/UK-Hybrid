Unit Numwords;

{ Andy Preston, Apollo Developments, andy@anorak.org.uk, andy@apollod.omnia.co.uk

  Numbers in words - Version 4.3

  Copyright (C) 1999 Andy Preston

  Object-Pascal Units to express a number as words in various languages

  This library is free software; you can redistribute it and/or modify it under the terms of the GNU Library General Public
  License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later
  version.

  This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
  of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Library General Public License for more details.

  You should have received a copy of the GNU Library General Public License along with this library; if not, write to the
  Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA. }

Interface

Uses
  NumW;

Const
  noEuro : Boolean = False;
  useEuro : Boolean = True;

Type
  TNumWords = Class (TObject)
  Public
    Constructor Create;
    Destructor Destroy; Override;
  Private
    LanguageDriver : TNumWordsLangDriver;
    Procedure InitialiseNumWords;
    Function GetLocaleData (LocField : Integer) : String;
  Public
    Function HasGender (Gender : TGender) : Boolean;
    Function Number (TheNumber : Integer; Gender : TGender) : String;
    Function EMoney (TheAmount : Extended; EuroMode : Boolean) : String;
    { Major in Pounds/Dollars etc, Minor in Pence/Cents etc }
    Function IMoney (Major, Minor : Integer; EuroMode : Boolean) : String;
    { Call this procedure before all others to manually select your locale }
    { if you do not call it, the system's default locale will be used }
    Procedure SelectLocale (CountryCode, LanguageCode : Integer);
  End;

Var
  InWords : TNumWords;

Implementation

Uses
  Windows, SysUtils, NumW_Eng{, NumW_Deu, NumW_Esp, NumW_Ita, NumW_Fra, NumW_Trk};

Constructor TNumWords.Create;
Begin
  Inherited Create;
  LanguageDriver := Nil;
End;

Destructor TNumWords.Destroy;
Begin
  If LanguageDriver <> Nil Then LanguageDriver.Free;
  Inherited Destroy;
End;

Procedure TNumWords.InitialiseNumWords;
Var
  CountryCode, LanguageCode : Integer;
Begin
  CountryCode := StrToInt (GetLocaleData (LOCALE_ICOUNTRY));
  LanguageCode := StrToInt (Copy (GetLocaleData (LOCALE_ILANGUAGE), 3, 2));
  SelectLocale (CountryCode, LanguageCode);
End;

Function TNumWords.GetLocaleData (LocField : Integer) : String;
Var
  Buf : Array [0..255] Of Char;
  Len : Integer;
Begin
  Len := GetLocaleInfo (LOCALE_USER_DEFAULT, LocField, Buf, SizeOf (Buf));
  If Len > 0 Then SetString (Result, Buf, Len - 1) Else Result := '';
End;

Procedure TNumWords.SelectLocale (CountryCode, LanguageCode : Integer);
Begin
  If LanguageDriver <> Nil Then Begin
    LanguageDriver.Free;
    LanguageDriver := Nil;
  End;
  Case LanguageCode Of
    LANG_ENGLISH : LanguageDriver := TNumWordsEnglish.Create (CountryCode);
    {
    LANG_GERMAN : LanguageDriver := TNumWordsDeutch.Create (CountryCode);
    LANG_SPANISH : LanguageDriver := TNumWordsEspanol.Create (CountryCode);
    LANG_ITALIAN : LanguageDriver := TNumWordsItaliano.Create (CountryCode);
    LANG_FRENCH : LanguageDriver := TNumWordsFrancais.Create (CountryCode);
    LANG_TURKISH : LanguageDriver := TNumWordsTurkce.Create (CountryCode);
    }
  Else Raise EConvertError.Create ('Language not supported: ' + GetLocaleData (LOCALE_SNATIVELANGNAME));
  End;
End;

Function TNumWords.HasGender (Gender : TGender) : Boolean;
Begin
  If LanguageDriver = Nil Then InitialiseNumWords;
  Result:=LanguageDriver.HasGender (Gender);
End;

Function TNumWords.Number (TheNumber : Integer; Gender : TGender) : String;
Begin
  If LanguageDriver = Nil Then InitialiseNumWords;
  Result := LanguageDriver.NumberInWords (TheNumber, Gender);
End;

Function TNumWords.EMoney (TheAmount : Extended; EuroMode : Boolean) : String;
Begin
  If LanguageDriver = Nil Then InitialiseNumWords;
  Result := LanguageDriver.EMoneyInWords (TheAmount, EuroMode);
End;

Function TNumWords.IMoney (Major, Minor : Integer; EuroMode : Boolean) : String;
Begin
  If LanguageDriver = Nil Then InitialiseNumWords;
  Result := LanguageDriver.IMoneyInWords (Major, Minor, EuroMode);
End;

Initialization
  InWords := TNumWords.Create;

Finalization
  InWords.Free;
End.