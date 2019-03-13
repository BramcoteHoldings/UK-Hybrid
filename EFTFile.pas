unit EFTFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxTextEdit, cxMaskEdit, cxButtonEdit, cxControls, cxContainer,
  cxEdit, cxLabel, cxLookAndFeelPainters, cxProgressBar, StdCtrls,
  cxButtons, cxDropDownEdit, cxCalendar, StrUtils, DB, OracleUniProvider, Uni, MemDS,
  DBAccess, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ImgList,
  ActnList, ActnMan, Menus, cxGraphics, XPStyleActnCtrls, cxLookAndFeels,
  ComCtrls, dxCore, cxDateUtils;

type
  TfrmEFTFileGeneration = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    beFileName: TcxButtonEdit;
    cxLabel3: TcxLabel;
    odBankfile: TOpenDialog;
    pbProcess: TcxButton;
    pbCancel: TcxButton;
    cxLabel4: TcxLabel;
    progressBar: TcxProgressBar;
    deProcessDate: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cmbBank: TcxLookupComboBox;
    qryBanks: TUniQuery;
    dsBanks: TUniDataSource;
    ActionManager1: TActionManager;
    actProcess: TAction;
    ImageList1: TImageList;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure actProcessUpdate(Sender: TObject);
  private
    { Private declarations }
    F: TextFile;
    FRefNo: string;
  public
    { Public declarations }
    AFileName: TFileName;
    FTotal_Amount: Currency;
    FTotal_Credit: Currency;
    FCreditor: integer;
    FRecord_Count: integer;
    EFT_Bank: string;
    property RefNo: string read FRefNo write FRefNo;
    function EFT_Header: string;
    function EFT_Detail: string;
    function EFT_Total: string;
    function EFT_Tail: string;
    procedure Open_File;
    procedure Close_File;
  end;

var
  frmEFTFileGeneration: TfrmEFTFileGeneration;

implementation

{$R *.dfm}

uses
   MiscFunc, AxiomData;

procedure TfrmEFTFileGeneration.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   odBankfile.Title := 'Create E.F.T. File';
   if odBankfile.Execute then
   begin
      AFileName := odBankfile.FileName + '.ASC';
      beFileName.Text := AFileName;
   end;
end;

function TfrmEFTFileGeneration.EFT_Header: string;
var
   line: string;
   tmpLine: string;
begin
   //* 1 Rec */
   line := '0';
   //* 2-18  blank /
   tmpLine := '';
   line := line + PadStr(tmpLine,17);
   //* 19-20 */
   line := line + '01';
   //*21-23 bank */
   line := line + PadStr(TableString('BANK','ACCT',EFT_Bank,'BANK_ABBREV'),3);
   //*24 - 30 blank */
   line := line + PadStr(tmpLine,7);
   //*31-56 Bank Account Name*/
//   line := line + Padstr(TableString('BANK','ACCT',EFT_Bank,'REMITTER'), 26);
   if TableString('BANK','ACCT',EFT_Bank,'BANK_ABBREV') = 'WBC' then
      line := line + Padstr(TableString('BANK','ACCT',EFT_Bank,'NAME'), 26,' ', false)
   else
      line := line + Padstr(TableString('BANK','ACCT',EFT_Bank,'NAME'), 26,' ', true);
   //*57- 62  ABA Number */
   line := line + PadStr(TableString('BANK','ACCT',EFT_Bank,'ABA_NUMBER'), 6);
   //*63-74  */
   line := line + 'CRED PAYMENT';
   //* 75-80  */
   line := line + FormatDateTime('ddmmyy',date);
   //* 81 - 120 blank */
   tmpLine := '';
   line := line + PadStr(tmpLine,40);
   Writeln(F, line);
   Result := line;

end;

function TfrmEFTFileGeneration.EFT_Detail: string;
var
   line: string;
   tmpLine: string;
begin
   //* 1 Rec */
   line := '1';
   //* 2-8 */
   line := line + TableString('CREDITOR','NCREDITOR',FCreditor ,'BSB');
   //* 9-17 Account Num, 18 = blank */
   if TableString('BANK','ACCT',EFT_Bank,'BANK_ABBREV') = 'WBC' then
      line := line + PadStr(TableString('CREDITOR','NCREDITOR',FCreditor ,'ACCOUNT'),9,' ',true)
   else
      line := line + PadStr(TableString('CREDITOR','NCREDITOR',FCreditor ,'ACCOUNT'),9,' ',false);
   line := line + ' ';
   //* 19 - 20 tran code check */
   line := line + '50';
   //* 21 - 30  amount on cents*/
   line := line + PadStr(FloattoStrF((FTotal_Amount*100),ffFixed,10,0),10,'0');
   //* 31 - 62  account name*/
   line := line + PadStr(TableString('CREDITOR','NCREDITOR',FCreditor ,'ACCOUNT_NAME'),32,' ', false);
   //63 - 80 */
   if RefNo <> '' then
      line := line + PadStr(RefNo,18,' ', false)
   else
      line := line + PadStr('INVOICE PAYMENT',18,' ', false);
   //*81 - 87 TRACE REC = FIRM'S BSB  */
   line := line + TableString('BANK','ACCT',EFT_Bank,'BSB');
   //* 88 - 96 account num check*/
   line := line + PadStr(TableString('BANK','ACCT',EFT_Bank ,'ACCOUNTNUMBER'),9);
   //* 97 - 112  */
   line := line + PadStr(TableString('BANK','ACCT',EFT_Bank ,'REMITTER'),16,' ', false);
   //* 113 - 120 w/tax  */
   line := line + '00000000';
   Writeln(F, line);
   Result := line;
end;

function TfrmEFTFileGeneration.EFT_Total: string;
var
   line: string;
   tmpLine: string;
begin
   //* 1 Rec */
   line := '1';
   //* 2-8 */
   line := line + TableString('BANK','ACCT',EFT_Bank ,'BSB');
   //* 9-17 Account Num, 18 = blank */
   line := line + PadStr(TableString('BANK','ACCT',EFT_Bank ,'ACCOUNTNUMBER'),9);
   line := line + ' ';
   //* 19 - 20 tran code check */
   line := line + '13';
   //* 21 - 30  amount on cents*/
   line := line +  PadStr(FloattoStrF((FTotal_Amount * 100),ffFixed,10,0),10,'0');
   //* 31 - 62  account name*/
   line := line + PadStr(TableString('BANK','ACCT',EFT_Bank ,'NAME'),32,' ', False);
   //63 - 80 */
   line := line + PadStr('Invoice Payment',18,' ',False);
   //*81 - 87 TRACE REC = FIRM'S BSB  */
   line := line + TableString('BANK','ACCT',EFT_Bank ,'BSB');
   //* 88 - 96 account num check*/
   line := line + PadStr(TableString('BANK','ACCT',EFT_Bank ,'ACCOUNTNUMBER'),9);
   //* 97 - 112  */
   line := line + PadStr(TableString('BANK','ACCT',EFT_Bank ,'REMITTER'),16, ' ', false);
   //* 113 - 120 w/tax  */
   line := line + '00000000';
   Writeln(F, line);
   Result := line;
end;

function TfrmEFTFileGeneration.EFT_Tail: string;
var
   line: string;
   tmpLine: string;
begin
   //* 1 Rec */
   line := '7';
   //* 2 - 8 BSB all 9's  */
   line := line + '999-999';
   //* blank */
   tmpLine := '';
   line := line + PadStr(tmpLine,12);
   //* total amount in cents should be zero */
   line := line + PadStr(FloattoStrF((FTotal_Amount - FTotal_Credit),ffFixed,10,0),10,'0');
   //* total credits and debits
   line := line + PadStr(FloattoStrF((FTotal_Credit * 100),ffFixed,10,0),10,'0');
   line := line + PadStr(FloattoStrF((FTotal_Amount * 100),ffFixed,10,0),10,'0');
   tmpLine := '';
   line := line + PadStr(tmpLine,24);
   
   line := line + PadStr(IntToStr(FRecord_Count),6,'0');
   Writeln(F, line);
   Result := line;
end;

procedure TfrmEFTFileGeneration.FormCreate(Sender: TObject);
begin
   qryBanks.Open;
end;

procedure TfrmEFTFileGeneration.actProcessUpdate(Sender: TObject);
begin
   actProcess.Enabled := (cmbBank.Text <> '') and not VarIsNull(deProcessDate.EditValue) and
                         (beFileName.Text <> '');
end;

procedure TfrmEFTFileGeneration.Open_File;
var
   filename: string;
begin
	filename := 'CREFT' + PadStr(IntToStr(GetNextSequence('SEQ_EFTFILE')),4,'0') + '.ASC';

   filename := SystemString('EFT_FILE_DIR') + '\' + filename;

	AssignFile(F, filename);
   Rewrite(F);
end;

procedure TfrmEFTFileGeneration.Close_File;
begin
	CloseFile(F);
end;

end.
