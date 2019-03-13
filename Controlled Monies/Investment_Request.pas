unit Investment_Request;

interface
   const
      CREATE_ACCOUNT = 1;
      CREATE_TRANSACTION = 2;

   function Request_Acct_Create_File(ANMatter, ANName: integer): string;
   function Request_TX_Create_File(ANMatter, ANName: integer): string;
   procedure Open_File(AType: integer);
   procedure Close_File;

implementation

uses
   miscfunc, System.SysUtils, AxiomData;

var
   F: TextFile;

function Request_Acct_Create_File(ANMatter, ANName: integer): string;
var
   line,
   tmpLine,
   tmpvalue,
   tmpmatterno: string;
begin
   //* API Version */
   line := '"1",';
   //* Account ID */
   line := line + ',';
   //* Account holder ref */
   tmpvalue := MatterString(ANMatter, 'FILEID');
   if (length(tmpvalue) < 14) then
      tmpmatterno := PadStr(tmpvalue,14,'0')
   else
      tmpmatterno := tmpvalue;
   line := line + '"'+TableString('ENTITY','CODE',dmAxiom.Entity ,'CMA_FIRM_ID')+
                  tmpmatterno +'",';
   //* Account Holder name
   line := line + '"'+TableString('ENTITY','CODE',dmAxiom.Entity ,'CMA_FIRM_ID')+'CMA'+
                  TableString('PHONEBOOK', 'NNAME', ANName, 'SEARCH')+'",';
   //* Account holder type */
   line := line + '"CLI",';
   //* Account holder surname */
   tmpvalue := PhoneBookString(ANName,'lastname');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* telephone*/
   tmpvalue := PhoneBookString(ANName,'PHONE');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line +',';
   //* Fax*/
   tmpvalue := PhoneBookString(ANName,'FAX');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* Email */
   tmpvalue := PhoneBookString(ANName,'email');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* DOB  */
   tmpvalue := PhoneBookString(ANName,'DOB');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* TFN*/
   tmpvalue := PhoneBookString(ANName, 'taxno');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* Non-Resident  */
   line := line + '"N",';
   //* ABN  */
   tmpline := PhoneBookString(ANName,'ABN');
   if tmpline <> '' then
      line := line + '"' + tmpline + '",'
   else
      line := line + ',';
   //* contact code - blank*/
   line := line + ',';
   //* currency */
   line := line + '"AUD",';
   //* address */
   tmpvalue := PhoneBookString(ANName,'address');
   if tmpvalue <> '' then
      line := line + '"' + tmpvalue + '",'
   else
      line := line + ',';
   //* city */
   tmpvalue := PhoneBookString(ANName,'suburb');
   if tmpvalue <> '' then
      line := line + '"' + tmpvalue + '",'
   else
      line := line +',';
   //* state */
   tmpvalue := PhoneBookString(ANName,'state');
   if tmpvalue <> '' then
      line := line + '"' + tmpvalue + '",'
   else
      line := line + ',';
   //* postcode */
   tmpvalue := PhoneBookString(ANName, 'postcode');
   if tmpvalue <> '' then
      line := line + '"'+ tmpvalue + '",'
   else
      line := line + ',';
   //* country ISO 2 character code AUS for Australia */
   line := line + '"' + TableString('country_list','UPPER(NAME)', PhoneBookString(ANName, 'UPPER(COUNTRY)'), 'iso_code')+ '",';
   //* alternative address */
   line := line + ',';
   //* alternative city */
   line := line + ',';
   //* alternative state */
   line := line + ',';
   //* alternative postcode */
   line := line + ',';
   //* allocation rule flag */
   line := line + ',';
   //* closure flag */
   line := line + '';
   line := line + chr(13) + chr(10);
   Open_file(CREATE_ACCOUNT);
   Writeln(F, line);
   Result := line;
   Close_File;
end;

function Request_TX_Create_File(ANMatter, ANName: integer): string;
var
   line,
   tmpLine,
   tmpvalue,
   tmpmatterno: string;
begin
   //* API Version */
   line := '"1",';
   //* Account ID */
   line := line + ',';
   //* Account holder ref */
   tmpvalue := MatterString(ANMatter, 'FILEID');
   if (length(tmpvalue) < 14) then
      tmpmatterno := PadStr(tmpvalue,14,'0')
   else
      tmpmatterno := tmpvalue;
   line := line + '"'+TableString('ENTITY','CODE',dmAxiom.Entity ,'CMA_FIRM_ID')+
                  tmpmatterno +'",';
   //* Account Holder name
   line := line + '"'+TableString('ENTITY','CODE',dmAxiom.Entity ,'CMA_FIRM_ID')+'CMA'+
                  TableString('PHONEBOOK', 'NNAME', ANName, 'SEARCH')+'",';
   //* Account holder type */
   line := line + '"CLI",';
   //* Account holder surname */
   tmpvalue := PhoneBookString(ANName,'lastname');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* telephone*/
   tmpvalue := PhoneBookString(ANName,'PHONE');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line +',';
   //* Fax*/
   tmpvalue := PhoneBookString(ANName,'FAX');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* Email */
   tmpvalue := PhoneBookString(ANName,'email');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* DOB  */
   tmpvalue := PhoneBookString(ANName,'DOB');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* TFN*/
   tmpvalue := PhoneBookString(ANName, 'taxno');
   if tmpvalue <> '' then
      line := line + '"'+tmpvalue+'",'
   else
      line := line + ',';
   //* Non-Resident  */
   line := line + '"N",';
   //* ABN  */
   tmpline := PhoneBookString(ANName,'ABN');
   if tmpline <> '' then
      line := line + '"' + tmpline + '",'
   else
      line := line + ',';
   //* contact code - blank*/
   line := line + ',';
   //* currency */
   line := line + '"AUD",';
   //* address */
   tmpvalue := PhoneBookString(ANName,'address');
   if tmpvalue <> '' then
      line := line + '"' + tmpvalue + '",'
   else
      line := line + ',';
   //* city */
   tmpvalue := PhoneBookString(ANName,'suburb');
   if tmpvalue <> '' then
      line := line + '"' + tmpvalue + '",'
   else
      line := line +',';
   //* state */
   tmpvalue := PhoneBookString(ANName,'state');
   if tmpvalue <> '' then
      line := line + '"' + tmpvalue + '",'
   else
      line := line + ',';
   //* postcode */
   tmpvalue := PhoneBookString(ANName, 'postcode');
   if tmpvalue <> '' then
      line := line + '"'+ tmpvalue + '",'
   else
      line := line + ',';
   //* country ISO 2 character code AUS for Australia */
   line := line + '"' + TableString('country_list','UPPER(NAME)', PhoneBookString(ANName, 'UPPER(COUNTRY)'), 'iso_code')+ '",';
   //* alternative address */
   line := line + ',';
   //* alternative city */
   line := line + ',';
   //* alternative state */
   line := line + ',';
   //* alternative postcode */
   line := line + ',';
   //* allocation rule flag */
   line := line + ',';
   //* closure flag */
   line := line + '';
   line := line + chr(13) + chr(10);
   Open_file(CREATE_TRANSACTION);
   Writeln(F, line);
   Result := line;
   Close_File;
end;

procedure Open_File(AType: integer);
var
   filename
   ,sDate
   ,sType: string;
begin
   if (SystemString('EFT_FILE_DIR') <> '') then
   begin
      DateTimeToString(sDate,'YYYYMMDDHHnnss',Now());
      case AType of
         1: sType := 'ACCOUNTS';
         2: sType := 'TRANSACTIONS';
      end;
	   filename := sType + '_' + TableString('ENTITY','CODE',dmAxiom.Entity ,'CMA_FIRM_ID') + '_' + sDate + '_' + IntToStr(GetNextSequence('SEQ_EFTFILE'))+'.csv';

      filename := SystemString('CONTROLLED_MONEY_FILE_DIR') + '\' + filename;

	   AssignFile(F, filename);
      Rewrite(F);
   end
   else
   begin
      MsgErr('Directory for the creation of the Controlled Money output file is not set.  File not created!');
   end;
end;
procedure Close_File;
begin
	CloseFile(F);
end;

end.
