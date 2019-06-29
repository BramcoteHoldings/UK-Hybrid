unit InvoiceChangeDueDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxDBEdit, DB, OracleUniProvider, Uni, MemDS,
  DBAccess, cxGraphics, cxLookAndFeels, Menus, ComCtrls, dxCore, cxLabel,
  cxDBLabel, cxDateUtils;

type
  TfrmInvoiceChangeDue = class(TForm)
    gbOriginal: TcxGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    qryAllocs: TUniQuery;
    qryTransitems: TUniQuery;
    qryInvoice: TUniQuery;
    dsInvoice: TUniDataSource;
    dtDueDate: TcxDateEdit;
    Label5: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DisplayInvoice(AnInvoice : integer);
  end;

var
  frmInvoiceChangeDue: TfrmInvoiceChangeDue;

implementation

uses AxiomData, MiscFunc;

{$R *.dfm}

procedure TfrmInvoiceChangeDue.DisplayInvoice(AnInvoice : integer);
begin
   qryInvoice.Close;
   qryInvoice.ParamByName('NINVOICE').AsInteger := AnInvoice;
   qryInvoice.Open;
   if qryInvoice.IsEmpty then
      Close
   else
   begin
//      Show;
   end;
end;

procedure TfrmInvoiceChangeDue.btnCancelClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmInvoiceChangeDue.btnOKClick(Sender: TObject);
var
   dtToday: TDateTime;
begin
   dtToday := Trunc(Now);
   if (dtDueDate.Date >= dtToday) then
   begin
      try
         dmAxiom.uniInsight.StartTransaction;
         qryInvoice.Edit;
         qryInvoice.FieldByName('DUE_DATE').AsDateTime := dtDueDate.Date;
         qryInvoice.Post;
         qryInvoice.ApplyUpdates;

         dmAxiom.uniInsight.Commit;
         Close;
      except
         On E: Exception do
         begin
           dmAxiom.uniInsight.Rollback;
           MsgErr('Error changing Due Date:' + #13 + #13 + E.Message);
         end;
      end;
   end
   else
      MsgErr('The Due Date cannot be less than Today!');
end;

end.
