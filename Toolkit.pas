unit Toolkit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, ExtCtrls, DB, MemDS, DBAccess, OracleUniProvider, Uni,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  ComCtrls, cxGraphics, cxLookAndFeels, Vcl.Menus;

type
  TfrmToolkit = class(TForm)
    PageControl1: TPageControl;
    tbCheque: TTabSheet;
    tmrAllocSearch: TTimer;
    Panel1: TPanel;
    lblAlloc: TLabel;
    lblsMatter: TLabel;
    lblsDate: TLabel;
    lblsDescription: TLabel;
    lblsAmount: TLabel;
    edAlloc: TcxTextEdit;
    lblsBill: TLabel;
    lblMatter: TLabel;
    lblDate: TLabel;
    lblDescription: TLabel;
    lblAmount: TLabel;
    btnChequeOK: TcxButton;
    edBillNo: TcxTextEdit;
    qryNmemo: TUniQuery;
    qryChqAlloc: TUniQuery;
    btnCancel: TcxButton;
    btnRefresh: TcxButton;
    procedure tmrAllocSearchTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EnableTimer(Sender: TObject);
    procedure btnChequeOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmToolkit: TfrmToolkit;

implementation

uses
  MiscFunc;

{$R *.dfm}

procedure TfrmToolkit.tmrAllocSearchTimer(Sender: TObject);
begin
  tmrAllocSearch.Enabled := False;
  if (edAlloc.Text <> '') then
  begin
    // Search for alloc
    if qryChqAlloc.Active = True then
      qryChqAlloc.Close;
    qryChqAlloc.ParamByName('p_alloc').AsString := edAlloc.Text;
    qryChqAlloc.Open;

    if not qryChqAlloc.IsEmpty then
    begin
      lblMatter.Caption := qryChqAlloc.FieldByName('NMATTER').AsString;
      lblDate.Caption := qryChqAlloc.FieldByName('CREATED').AsString;
      lblDescription.Caption := qryChqAlloc.FieldByName('DESCR').AsString;
      lblAmount.Caption := qryChqAlloc.FieldByName('AMT').AsString;
      // lblBill.Caption := qryChqAlloc.FieldByName('REFNO').AsString;
    end
    else
    begin
      qryChqAlloc.Close;
      lblMatter.Caption := 'No allocation found!';
      lblDate.Caption := '';
      lblDescription.Caption := '';
      lblAmount.Caption := '';
      // lblBill.Caption := '';
    end;
  end
  else
  begin
    qryChqAlloc.Close;
    lblMatter.Caption := '';
    lblDate.Caption := '';
    lblDescription.Caption := '';
    lblAmount.Caption := '';
    // lblBill.Caption := '';
  end;
end;

procedure TfrmToolkit.EnableTimer(Sender: TObject);
begin
   tmrAllocSearch.Enabled := True;
end;

procedure TfrmToolkit.FormShow(Sender: TObject);
begin
  lblMatter.Caption := '';
  lblDate.Caption := '';
  lblDescription.Caption := '';
  lblAmount.Caption := '';
  // lblBill.Caption := '';
end;

procedure TfrmToolkit.btnChequeOKClick(Sender: TObject);
begin
  if qryChqAlloc.Active = True   then
  begin
    // Check if there is actually an alloc loaded
    if not qryChqAlloc.IsEmpty then
    begin
      { Doesnt need a corresponding nmemo value !!
      if qryChqAlloc.FieldByName('NMEMO').AsString = '' then
      begin
        MessageDlg('Alloc has no corresponding nmemo value.', mtWarning, [mbOK], 0);
        Exit;
      end;
      }

      if edBillNo.Text = '' then
      begin
        MessageDlg('Please enter a valid Bill number.', mtWarning, [mbOK], 0);
        Exit;
      end;

      // Open corresponding nmemo record and determine if entered refno is correct
      if qryNmemo.Active = True then
        qryNmemo.Close;
      //qryNmemo.ParamByName('p_nmemo').AsString := qryChqAlloc.FieldByName('NMEMO').AsString;
      qryNmemo.ParamByName('p_refno').AsString := edBillNo.Text;
      qryNmemo.Open;

      if not qryNmemo.IsEmpty then
      begin
        { Dont need this check since bill # entered IS the refno
        if qryNmemo.FieldByName('REFNO').AsString <> edBillNo.Text then
        begin
          MessageDlg('You have not entered a corresponding Bill number.', mtWarning, [mbOK], 0);
          Exit;
        end;
        }
      end
      else
      begin
        MessageDlg('No corresponding nmemo record could be found.', mtWarning, [mbOK], 0);
        Exit;
      end;

      // Open password dialog for security check
      if (LogIntoCheqReqTool) then
      begin
        qryChqAlloc.Edit;
        qryChqAlloc.FieldByName('BILLED').AsString := 'Y';
        qryChqAlloc.FieldByName('NMEMO').AsString := qryNmemo.FieldByName('NMEMO').AsString;
        //qryChqAlloc.ExecSql;
        qryChqAlloc.Post;
        MessageDlg('Alloc has been set to billed.', mtInformation, [mbOK], 0);
        tmrAllocSearch.Free;
        Close;
      end;
    end
    else
      MessageDlg('You have not entered a valid Alloc number.', mtWarning, [mbOK], 0);
  end
  else
    MessageDlg('Please enter a valid Alloc number.', mtWarning, [mbOK], 0);
end;



procedure TfrmToolkit.btnCancelClick(Sender: TObject);
begin
  tmrAllocSearch.Free;
  Close;
end;

procedure TfrmToolkit.btnRefreshClick(Sender: TObject);
begin
  tmrAllocSearchTimer(Sender);
end;

end.
