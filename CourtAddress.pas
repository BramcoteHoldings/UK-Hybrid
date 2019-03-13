unit CourtAddress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleUniProvider, Uni, DBAccess, MemDS, StdCtrls,
  ImgList, DBActns, ActnList, ActnMan,
  ComCtrls, ToolWin, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxNavigator, cxDBNavigator, dxBar,
  dxBarDBNav, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxClasses;

type
  TfrmCourtAddress = class(TForm)
    dsCourtDetails: TUniDataSource;
    ilstToolbar: TImageList;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblState: TLabel;
    Label6: TLabel;
    qryCourtDetails: TUniQuery;
    qrySubJurisdiction: TUniQuery;
    dsSubJurisdiction: TUniDataSource;
    dfDescr: TcxDBTextEdit;
    dfAddress: TcxDBTextEdit;
    dfSuburb: TcxDBTextEdit;
    dfState: TcxDBTextEdit;
    dfPostCode: TcxDBTextEdit;
    Label1: TLabel;
    cmbSubJurisdiction: TcxDBLookupComboBox;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure cmbSubJurisdictionChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure navCourtdetailsButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCourtAddress: TfrmCourtAddress;

implementation

uses AxiomData, MiscFunc;

{$R *.dfm}

procedure TfrmCourtAddress.FormCreate(Sender: TObject);
begin
   qrySubJurisdiction.Open;
   qryCourtDetails.Open;
   if SystemString('LOCALE_NAME') <> '' then
   begin
      lblState.Caption := 'County';
   end;
end;

procedure TfrmCourtAddress.cmbSubJurisdictionChange(Sender: TObject);
begin
//   qryCourtDetails.Close;
   if qryCourtDetails.State in [dsEdit] then
   begin
//      qryCourtDetails.ParamByName('subjurisdiction').AsString := cmbSubJurisdiction.EditValue ;
//    try
//         qryCourtDetails.Execute;
//      except
         ///
//      end
   end
   else
   if qryCourtDetails.State in [dsInsert] then
         qryCourtDetails.FieldByName('subjurisdiction').AsString := cmbSubJurisdiction.EditValue;
end;

procedure TfrmCourtAddress.FormShow(Sender: TObject);
begin
   if not qryCourtDetails.Active then
      qryCourtDetails.Open;
end;

procedure TfrmCourtAddress.navCourtdetailsButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
   case AButtonIndex of
      NBDI_POST: begin
            if dfDescr.Text = '' then
            begin
               MsgErr('A description is required prior to saving this record');
               ADone := True;
            end
            else
            begin
               qryCourtDetails.Post;
               qryCourtDetails.ApplyUpdates;
               dmAxiom.uniInsight.Commit;
               ADone := True;
            end;
         end;
      NBDI_INSERT: qryCourtDetails.Insert;

      NBDI_EDIT: qryCourtDetails.Edit;

   end;
end;

procedure TfrmCourtAddress.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmCourtAddress.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   RemoveFromDesktop(Self);
end;

end.
