unit chequerenumber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl,
  Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel;

type
  TfrmChequeRenumber = class(TForm)
    lblPrinter: TcxLabel;
    teCheqNo: TcxTextEdit;
    btnOK: TcxButton;
    cxButton2: TcxButton;
    lblCurrentCheque: TcxLabel;
    qryChequeRenumber: TUniQuery;
    lblDate: TcxLabel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure teCheqNoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FPrinter: string;
    FChequeNo: string;
    FNCheque: integer;
    FChequeDate: string;
    FFromCheque: Boolean;
  public
    { Public declarations }
    property Printer: string read FPrinter write FPrinter;
    property ChequeNo: string read FChequeNo write FChequeNo;
    property NCheque: integer read FNCheque write FNCheque;
    property ChequeDate: string read FChequeDate write FChequeDate;
    property FromCheque: boolean read FFromCheque write FFromCheque;
  end;

var
  frmChequeRenumber: TfrmChequeRenumber;

implementation

uses
   axiomdata;
{$R *.dfm}

procedure TfrmChequeRenumber.btnOKClick(Sender: TObject);
begin
   try
      dmAxiom.uniInsight.StartTransaction;
      with qryChequeRenumber do
      begin
         if FromCheque then
         begin
            SQL.Clear;
            SQL.Add('update cheque set chqno = :cheqno where ncheque = :ncheque and trunc(created) = :chequedate');
            ParamByName('cheqno').AsString := teCheqNo.Text;
            ParamByName('ncheque').AsInteger := NCheque;
            ParamByName('chequedate').AsDate := StrToDate(ChequeDate);
            ExecSql;

            SQL.Clear;
            SQL.Add('update alloc set refno = :cheqno where ncheque = :ncheque and trunc(created) = :chequedate');
            ParamByName('cheqno').AsString := teCheqNo.Text;
            ParamByName('ncheque').AsInteger := NCheque;
            ParamByName('chequedate').AsDate := StrToDate(ChequeDate);
            ExecSql;
         end
         else
         begin
            SQL.Clear;
            SQL.Add('update receipt set rcptno = :rcptno where nreceipt = :nreceipt and trunc(created) = :receiptdate');
            ParamByName('rcptno').AsString := teCheqNo.Text;
            ParamByName('nreceipt').AsInteger := NCheque;
            ParamByName('receiptdate').AsDate := StrToDate(ChequeDate);
            ExecSql;

            SQL.Clear;
            SQL.Add('update alloc set refno = :rcptno where nreceipt = :nreceipt and trunc(created) = :receiptdate');
            ParamByName('rcptno').AsString := teCheqNo.Text;
            ParamByName('nreceipt').AsInteger := NCheque;
            ParamByName('receiptdate').AsDate := StrToDate(ChequeDate);
            ExecSql;
         end;
      end;
   finally
      dmAxiom.uniInsight.Commit;
      ModalResult := mrOK;
   end;
end;

procedure TfrmChequeRenumber.cxButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmChequeRenumber.FormShow(Sender: TObject);
begin
   if FromCheque then
   begin
      Self.Caption := 'Re Number Cheque';
      dxLayoutItem3.CaptionOptions.Text := 'Current Cheque #';
      dxLayoutItem4.CaptionOptions.Text := 'New Cheque #';
   end
   else
   begin
      Self.Caption := 'Re Number Receipt';
      dxLayoutItem3.CaptionOptions.Text := 'Current Receipt #';
      dxLayoutItem4.CaptionOptions.Text := 'New Receipt #';
   end;
   lblDate.Caption := ChequeDate;
   lblPrinter.Caption := Printer;
   lblCurrentCheque.Caption := ChequeNo;
   teCheqNo.Text := ChequeNo;
end;

procedure TfrmChequeRenumber.teCheqNoPropertiesChange(Sender: TObject);
begin
   btnOK.Enabled := (teCheqNo.Text <> '');
end;

end.
