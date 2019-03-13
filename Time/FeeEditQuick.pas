unit FeeEditQuick;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, cxDBLookupComboBox,
  DB, OracleUniProvider, Uni, DBAccess, MemDS, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxControls, cxContainer, cxEdit, cxLabel,
  StdCtrls, cxButtons, ComCtrls, DBCtrls,
  cxCalendar, cxDBEdit, cxButtonEdit, cxLookAndFeels, cxMemo, cxRichEdit,
  cxDBRichEdit;

type
  TfrmFeeEditQuick = class(TForm)
    cxButton1: TcxButton;
    btnCancel: TcxButton;
    Label1: TLabel;
    lblMatterDesc: TcxLabel;
    lblClient: TcxLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmbCreated: TcxDBDateEdit;
    cmbTemplate: TcxDBLookupComboBox;
    qryFee: TUniQuery;
    dsFee: TUniDataSource;
    qryScaleCostsList: TUniQuery;
    dsScaleCostsList: TUniDataSource;
    cmbMatterFind: TcxDBButtonEdit;
    Label5: TLabel;
    lblAuthor: TLabel;
    mmoDesc: TcxDBRichEdit;
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure mmoDescKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure DisplayAuthor(AAuthor: string);
  public
    { Public declarations }
    procedure DisplayMatter(sMatter: string; AIsEditing: Boolean = False; AMatterChanged: Boolean = False);
    procedure DisplayFee(iFee : integer; AIsEditing: Boolean = False);
  end;

var
  frmFeeEditQuick: TfrmFeeEditQuick;

implementation

uses MSearch, AxiomData, MiscFunc, citfunc;

{$R *.dfm}

procedure TfrmFeeEditQuick.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
var
   bMatterChanged: boolean;
begin
   bMatterChanged := False;
   if (cmbMatterFind.Text <> '') then
   begin
      if cmbMatterFind.Text = 'SEARCH...' then
      begin
         if not FormExists(frmMatterSearch) then
            Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
         if frmMatterSearch.ShowModal = mrOK then
         begin
            if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
            begin
               MsgErr('You may not post Fees to a matter that is archived.');
               cmbMatterFind.Text := '';
            end
            else if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
            begin
               DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
            end
            else
               MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
         end;
      end
      else
      begin
         if MatterExists(cmbMatterFind.Text) then
         begin
            if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
            begin
               MsgErr('You may not post Fees to a matter that is archived.');
               cmbMatterFind.Text := '';
            end
            else
            begin
               DisplayMatter(cmbMatterFind.Text);
            end;
         end
         else
         begin
            MsgErr('The selected Matter is not valid.  Please check and re-try.');
            cmbMatterFind.Text := '';
         end;
      end;
   end;
end;

procedure TfrmFeeEditQuick.FormCreate(Sender: TObject);
begin
   if dmAxiom.DictionaryInstalled then
   begin
//      mmodesc.AddictSpell := dmAxiom.Addict;
//      mmoDesc.LiveSpelling := True;
   end;
   qryScaleCostsList.Open;
end;

procedure TfrmFeeEditQuick.DisplayMatter(sMatter: string; AIsEditing: Boolean; AMatterChanged: Boolean);
var
  lsAuthor : String;
begin
   lblClient.Caption := MatterString(cmbMatterFind.EditText, 'TITLE');
   lblMatterDesc.Caption := MatterString(cmbMatterFind.EditText, 'SHORTDESCR');
   if qryFee.State = dsBrowse then
      qryFee.Edit;
   qryFee.FieldByName('FILEID').AsString := sMatter;
   qryFee.FieldByName('NMATTER').AsInteger := TableInteger('MATTER','FILEID', sMatter, 'NMATTER');
end;

procedure TfrmFeeEditQuick.DisplayFee(iFee : integer; AIsEditing: Boolean);
var
   lblDesc: string;
begin
   with qryFee do
   begin
      Close;
      ParamByName('Nfee').AsInteger := iFee;
      Open;
      DisplayAuthor(FieldByName('AUTHOR').AsString);
      DisplayMatter(cmbMatterFind.Text);
   end;
   cmbMatterFind.Enabled := AIsEditing;
   cmbCreated.Enabled := AIsEditing;
end;

procedure TfrmFeeEditQuick.DisplayAuthor(AAuthor: string);
var
   lsAuthorName: string;
begin
   try
      with dmAxiom.qryTmp do
      begin
         Close;
         SQL.Text := 'select name from employee where code = ' + quotedstr(AAuthor);
         Open;
         lsAuthorName := FieldByName('NAME').AsString;
         close;
      end;
   finally
      lblAuthor.Caption := AAuthor + ' - ' + lsAuthorName;
   end;
end;

procedure TfrmFeeEditQuick.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryScaleCostsList.Close;
   qryFee.Close;
end;

procedure TfrmFeeEditQuick.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if not FormExists(frmMatterSearch) then
      Application.CreateForm(TfrmMatterSearch, frmMatterSearch);
   if frmMatterSearch.ShowModal = mrOK then
   begin
      if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
      begin
         MsgErr('You may not post Fees to a matter that is archived.');
         cmbMatterFind.Text := '';
      end
      else if MatterIsCurrent(dmAxiom.qryMSearch.FieldByName('FILEID').AsString) then
      begin
         DisplayMatter(dmAxiom.qryMSearch.FieldByName('FILEID').AsString);
      end
      else
         MsgErr('Matter ' + dmAxiom.qryMSearch.FieldByName('FILEID').AsString + ' has been closed');
   end;
end;

procedure TfrmFeeEditQuick.cxDBButtonEdit1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   if MatterExists(UpperCase(cmbMatterFind.Text)) then
   begin
      if (IsMatterArchived(dmAxiom.qryMSearch.FieldByName('FILEID').AsString)) then
      begin
         MsgErr('You may not post Fees to a matter that is archived.');
         cmbMatterFind.Text := '';
      end
      else
      begin
         DisplayMatter(UpperCase(cmbMatterFind.Text));
      end;
   end
   else
   begin
      MsgErr('The selected Matter is not valid.  Please check and re-try.');
      cmbMatterFind.Text := '';
   end;
end;

procedure TfrmFeeEditQuick.mmoDescKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = ' ' then
      Quickcode(mmoDesc);
end;

procedure TfrmFeeEditQuick.cxButton1Click(Sender: TObject);
begin
   qryFee.Post;
   qryFee.ApplyUpdates;
   ModalResult := mrOk;
//   Close;
end;

end.
