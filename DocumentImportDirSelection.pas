unit DocumentImportDirSelection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, DB, DBAccess,
  OracleUniProvider, Uni, MemDS, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxRadioGroup, cxCheckBox,
  cxLabel, Vcl.Menus, cxButtons, JvDriveCtrls, JvExStdCtrls, JvListBox,
  JvCombobox;

type
  TfrmSelectDirectory = class(TForm)
    JvDriveCombo1: TJvDriveCombo;
    lbDirectories: TJvDirectoryListBox;
    lbFiles: TJvFileListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    qryPRECCLASSIFICATION: TUniQuery;
    qryPRECCATEGORY: TUniQuery;
    dsPRECCATEGORY: TUniDataSource;
    dsPRECCLASSIFICATION: TUniDataSource;
    cmbCategory: TcxLookupComboBox;
    cmbClassification: TcxLookupComboBox;
    rgCopyDocuments: TcxRadioGroup;
    qryFolderList: TUniQuery;
    dsFolderList: TUniDataSource;
    cmbFolderList: TcxLookupComboBox;
    Label5: TLabel;
    cbEmailSplit: TcxCheckBox;
    cbCreateFolders: TcxCheckBox;
    txtPath: TcxLabel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    procedure lbDirectoriesDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure JvDriveCombo1Change(Sender: TObject);
  private
    { Private declarations }
    fDirectory: string;
    FCategory: string;
    FClassification: string;
    FMatterNo: integer;
    function GetDirectory: string;
    function GetCategory: string;
    function GetClassification: string;
  public
    { Public declarations }
    property Directory: string read GetDirectory write fDirectory;
    property PrecCategory: string read GetCategory write FCategory;
    property Classification: string read GetClassification write FClassification;
    property MatterNo: integer read FMatterNo write FMatterNo;
  end;

var
  frmSelectDirectory: TfrmSelectDirectory;

implementation

{$R *.dfm}

uses
   MiscFunc, AxiomData;

procedure TfrmSelectDirectory.lbDirectoriesDblClick(Sender: TObject);
begin
   txtPath.Caption := Directory;
end;

function TfrmSelectDirectory.GetDirectory: string;
begin
   Result := lbDirectories.Directory;
end;

procedure TfrmSelectDirectory.JvDriveCombo1Change(Sender: TObject);
begin
   txtPath.Caption := JvDriveCombo1.Drive + ':\';
end;

function TfrmSelectDirectory.GetCategory: string;
begin
   if cmbCategory.Text <> '' then
      Result := cmbCategory.EditValue
   else
      Result := '';
end;

function TfrmSelectDirectory.GetClassification: string;
begin
   if cmbClassification.Text <> '' then
      Result := cmbClassification.EditValue
   else
      Result := '';
end;

procedure TfrmSelectDirectory.FormShow(Sender: TObject);
begin
   try
      qryPRECCLASSIFICATION.Open;
      qryPRECCATEGORY.Open;
      qryFolderList.Close;
      qryFolderList.ParamByName('nmatter').AsInteger := MatterNo;
      qryFolderList.Open;
   finally
      if SystemString('DOC_DFLT_CATEGORY') <> '' then
         cmbCategory.EditValue := SystemString('DOC_DFLT_CATEGORY');
      if SystemString('DOC_DFLT_CLASSIFICATION') <> '' then
         cmbClassification.EditValue := SystemString('DOC_DFLT_CLASSIFICATION');
   end;
   txtPath.Caption := Directory;
end;

procedure TfrmSelectDirectory.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   qryPRECCLASSIFICATION.Close;
   qryPRECCATEGORY.Close;
   qryFolderList.Close;
end;

end.
